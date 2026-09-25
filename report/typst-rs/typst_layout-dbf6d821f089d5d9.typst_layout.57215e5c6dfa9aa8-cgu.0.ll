Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build:bb.a
  br i1 %i.aik, label %bb.jm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.iz) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.jx

bb.jn:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !26148)
  %i.ail = icmp eq i32 %i.aid, 0
  br i1 %i.ail, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.experimental.noalias.scope.decl(metadata !26149)
  call void @llvm.experimental.noalias.scope.decl(metadata !26150)
  call void @llvm.experimental.noalias.scope.decl(metadata !26151)
  %i.aim = load ptr, ptr %i.iz, align 8, !alias.scope !26152, !nonnull !41, !noundef !41
  %i.ain = atomicrmw sub ptr %i.aim, i64 1 release, align 8, !noalias !26152
  %i.aio = icmp eq i64 %i.ain, 1
  br i1 %i.aio, label %bb.jp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176

bb.jp:                                            ; preds = %bb.jo
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.iz) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.jx

bb.jq:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !26153)
  %i.aip = load i64, ptr %i.iz, align 8, !range !52, !alias.scope !26154, !noundef !41
  switch i64 %i.aip, label %bb.jr [
    i64 0, label %bb.jt
    i64 1, label %bb.jv
  ]

bb.jr:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !26155)
  call void @llvm.experimental.noalias.scope.decl(metadata !26156)
  %i.aiq = load ptr, ptr %i.jb, align 8, !alias.scope !26157, !nonnull !41, !noundef !41
  %i.air = atomicrmw sub ptr %i.aiq, i64 1 release, align 8, !noalias !26157
  %i.ais = icmp eq i64 %i.air, 1
  br i1 %i.ais, label %bb.js, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176

bb.js:                                            ; preds = %bb.jr
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient13ConicGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.jx

bb.jt:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !26158)
  call void @llvm.experimental.noalias.scope.decl(metadata !26159)
  %i.ait = load ptr, ptr %i.jb, align 8, !alias.scope !26160, !nonnull !41, !noundef !41
  %i.aiu = atomicrmw sub ptr %i.ait, i64 1 release, align 8, !noalias !26160
  %i.aiv = icmp eq i64 %i.aiu, 1
  br i1 %i.aiv, label %bb.ju, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176

bb.ju:                                            ; preds = %bb.jt
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14LinearGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.jx

bb.jv:                                            ; preds = %bb.jq
  call void @llvm.experimental.noalias.scope.decl(metadata !26161)
  call void @llvm.experimental.noalias.scope.decl(metadata !26162)
  %i.aiw = load ptr, ptr %i.jb, align 8, !alias.scope !26163, !nonnull !41, !noundef !41
  %i.aix = atomicrmw sub ptr %i.aiw, i64 1 release, align 8, !noalias !26163
  %i.aiy = icmp eq i64 %i.aix, 1
  br i1 %i.aiy, label %bb.jw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176

bb.jw:                                            ; preds = %bb.jv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient14RadialGradientE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jb) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176 unwind label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.ju, %bb.js, %bb.jp, %bb.jm
  %i.aiz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aja = load i64, ptr %i.ad, align 8, !range !70, !alias.scope !26164, !noalias !25948, !noundef !41 ; 2 uses
  %i.ajb = icmp sgt i64 %i.aja, 0
  br i1 %i.ajb, label %common.resume.sink.split.i, label %.body149.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176: ; preds = %bb.jv, %bb.jt, %bb.jr, %bb.jo, %bb.jn, %bb.jl, %bb.jm, %bb.jp, %bb.js, %bb.ju, %bb.jw
  call void @llvm.experimental.noalias.scope.decl(metadata !26165)
  %i.ajc = load i64, ptr %i.ad, align 8, !range !70, !alias.scope !26166, !noalias !25948, !noundef !41 ; 2 uses
  %i.ajd = icmp sgt i64 %i.ajc, 0
  br i1 %i.ajd, label %bb.jy, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i

bb.jy:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176
  %.val1.i1.i.i117 = load ptr, ptr %i.jh, align 8, !alias.scope !26166, !noalias !25948, !nonnull !41, !noundef !41
  %i.aje = shl nuw i64 %i.ajc, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i117, i64 noundef %i.aje, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !26167
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.jy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout.exit176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !25948
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !25948
  br label %bb.mg

bb.jz:                                            ; preds = %.noexc153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !25948
  %i.ajf = load double, ptr %i.ae, align 8, !noalias !25948, !noundef !41 ; 2 uses
  store double %i.agd, ptr %i.w, align 8, !alias.scope !26168, !noalias !25948
  store double %i.ajf, ptr %i.jp, align 8, !alias.scope !26168, !noalias !25948
  store double %spec.store.select18.i, ptr %i.jq, align 8, !alias.scope !26168, !noalias !25948
  store double %i.ajf, ptr %i.jr, align 8, !alias.scope !26168, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !25948
  store i64 0, ptr %i.v, align 8, !noalias !25948
  store ptr inttoptr (i64 8 to ptr), ptr %i.js, align 8, !noalias !25948
  store i64 0, ptr %i.jt, align 8, !noalias !25948
  %i.ajg = load ptr, ptr %.sroa.4320.0..sroa_idx, align 8, !alias.scope !25947, !noalias !25949, !nonnull !41, !noundef !41 ; 2 uses
  %i.ajh = load i64, ptr %.sroa.5321.0..sroa_idx, align 8, !alias.scope !25947, !noalias !25949, !noundef !41 ; 2 uses
  %.idx.i118 = mul nuw nsw i64 %i.ajh, 56
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajg, i64 %.idx.i118
  %i.ajj = icmp eq i64 %i.ajh, 0
  br i1 %i.ajj, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.jz
  %i.ajk = fsub double %spec.store.select17.i, %spec.store.select14.i ; 2 uses
  %.inv232699.i = fcmp ord double %i.ajk, 0.000000e+00
  %spec.store.select26700.i = select i1 %.inv232699.i, double %i.ajk, double 0.000000e+00
  br label %bb.kb

.lr.ph.i:                                         ; preds = %bb.jz
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.rq, i64 96 ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.rq, i64 200
  %i.ajn = insertelement <2 x double> poison, double %i.afp, i64 0
  %i.ajo = shufflevector <2 x double> %i.ajn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.ka

bb.ka:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i, %.lr.ph.i
  %i.ajp = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph.i ], [ %i.alf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %i.ajq = phi i64 [ 0, %.lr.ph.i ], [ %i.alg, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i = phi double [ undef, %.lr.ph.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i655.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 5 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i = phi double [ undef, %.lr.ph.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i643.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 5 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i = phi double [ undef, %.lr.ph.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i629.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i = phi double [ undef, %.lr.ph.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i616.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 5 uses
  %.promoted91.i609.i = phi i64 [ undef, %.lr.ph.i ], [ %.promoted91.i610.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %.sroa.0209.0454.i = phi double [ %i.agd, %.lr.ph.i ], [ %spec.store.select25.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 2 uses
  %.sroa.050.0453.i = phi ptr [ %i.ajg, %.lr.ph.i ], [ %i.ajr, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i ] ; 4 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.050.0453.i, i64 56 ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr %.sroa.050.0453.i, i64 24
  %i.ajt = load double, ptr %i.ajs, align 8, !noundef !41
  %i.aju = fmul double %i.afp, %i.ajt             ; 2 uses
  %i.ajv = call double @llvm.fabs.f64(double %i.aju)
  %i.ajw = fcmp one double %i.ajv, +inf
  %spec.store.select35.i = select i1 %i.ajw, double %i.aju, double 0.000000e+00
  %i.ajx = fadd double %.sroa.0209.0454.i, %spec.store.select35.i ; 2 uses
  %.inv228.i = fcmp ord double %i.ajx, 0.000000e+00
  %spec.store.select23.i = select i1 %.inv228.i, double %i.ajx, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !25948
  %i.ajy = load double, ptr %i.ajl, align 8, !noundef !41
  store i64 0, ptr %i.u, align 8, !noalias !25948
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !25948
  store i64 0, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !25948
  store double %i.ajy, ptr %i.ju, align 8, !noalias !25948
  store double %i.afp, ptr %i.jv, align 8, !noalias !25948
  store double %spec.store.select23.i, ptr %i.jw, align 8, !noalias !25948
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !25948
  %i.ajz = getelementptr inbounds nuw i8, ptr %.sroa.050.0453.i, i64 52
  %i.aka = load i16, ptr %i.ajz, align 4, !noundef !41
  invoke fastcc void @_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face13outline_glyph(ptr noalias nofree noundef align 2 captures(address) dereferenceable(10) %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(2776) %i.ajm, i16 noundef %i.aka, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) @658)
          to label %bb.kc unwind label %bb.lb

._crit_edge.i:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i
  %.pre662.i = load i64, ptr %i.v, align 8, !range !45, !alias.scope !26169, !noalias !25948 ; 2 uses
  %i.akb = fsub double %spec.store.select17.i, %spec.store.select14.i ; 2 uses
  %.inv232.i = fcmp ord double %i.akb, 0.000000e+00
  %spec.store.select26.i = select i1 %.inv232.i, double %i.akb, double 0.000000e+00 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26169)
  %i.akc = icmp eq i64 %i.alg, %.pre662.i
  br i1 %i.akc, label %bb.kb, label %bb.ld

bb.kb:                                            ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %spec.store.select26702.i = phi double [ %spec.store.select26700.i, %._crit_edge.thread.i ], [ %spec.store.select26.i, %._crit_edge.i ]
  %i.akd = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.alg, %._crit_edge.i ]
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #58
          to label %._crit_edge663.i unwind label %.loopexit.split-lp.i119.loopexit.split-lp

._crit_edge663.i:                                 ; preds = %bb.kb
  %.pre664.i = load i64, ptr %i.v, align 8, !range !45, !alias.scope !26170, !noalias !25948
  br label %bb.ld

bb.kc:                                            ; preds = %bb.ka
  %.sroa.0282.0.copyload.i = load i64, ptr %i.u, align 8, !noalias !25948 ; 4 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !25948 ; 8 uses
  %.sroa.5284.0.copyload.i = load i64, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !25948
  %i.ake = getelementptr inbounds nuw i8, ptr %.sroa.050.0453.i, i64 16
  %i.akf = load double, ptr %i.ake, align 8, !noundef !41
  %i.akg = fmul double %i.afp, %i.akf             ; 2 uses
  %i.akh = call double @llvm.fabs.f64(double %i.akg)
  %i.aki = fcmp one double %i.akh, +inf
  %spec.store.select36.i = select i1 %i.aki, double %i.akg, double 0.000000e+00
  %i.akj = fadd double %.sroa.0209.0454.i, %spec.store.select36.i ; 2 uses
  %.inv230.i = fcmp ord double %i.akj, 0.000000e+00
  %spec.store.select25.i = select i1 %.inv230.i, double %i.akj, double 0.000000e+00
  %i.akk = load i16, ptr %i.t, align 2, !range !131, !noalias !25948, !noundef !41
  %i.akl = trunc nuw i16 %i.akk to i1
  br i1 %i.akl, label %bb.kd, label %bb.kf

bb.kd:                                            ; preds = %bb.kc
  %.sroa.0157.0.copyload.i = load i64, ptr %i.jx, align 2, !noalias !25948 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !26171
  %i.akm = load double, ptr %i.ajl, align 8, !noalias !26172, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !26171
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.sroa.0157.0.copyload.i, 16
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.sroa.0157.0.copyload.i, 48
  %.sroa.4.0.extract.trunc.i.i = trunc i64 %.sroa.4.0.extract.shift.i.i to i16
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i to i16
  %6 = insertelement <2 x i16> poison, i16 %.sroa.6.0.extract.trunc.i.i, i64 0
  %7 = insertelement <2 x i16> %6, i16 %.sroa.4.0.extract.trunc.i.i, i64 1
  %i.akn = sitofp <2 x i16> %7 to <2 x double>
  %i.ako = insertelement <2 x double> poison, double %i.akm, i64 0
  %i.akp = shufflevector <2 x double> %i.ako, <2 x double> poison, <2 x i32> zeroinitializer
  %i.akq = fdiv <2 x double> %i.akn, %i.akp       ; 2 uses
  %i.akr = fcmp ord <2 x double> %i.akq, zeroinitializer
  %i.aks = select <2 x i1> %i.akr, <2 x double> %i.akq, <2 x double> zeroinitializer
  %i.akt = fmul <2 x double> %i.ajo, %i.aks       ; 2 uses
  %i.aku = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.akt)
  %i.akv = fcmp one <2 x double> %i.aku, splat (double +inf)
  %i.akw = fneg <2 x double> %i.akt
  %i.akx = select <2 x i1> %i.akv, <2 x double> %i.akw, <2 x double> splat (double -0.000000e+00) ; 2 uses
  %i.aky = fcmp ord <2 x double> %i.akx, zeroinitializer
  %i.akz = select <2 x i1> %i.aky, <2 x double> %i.akx, <2 x double> zeroinitializer ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  store double %i.ala, ptr %i.k, align 8, !noalias !26171
  %i.alb = extractelement <2 x double> %i.akz, i64 1
  store double %i.alb, ptr %i.j, align 8, !noalias !26171
  %i.alc = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.k)
          to label %.noexc257.i unwind label %bb.kh

.noexc257.i:                                      ; preds = %bb.kd
  %i.ald = icmp sgt i8 %i.alc, -1
  br i1 %i.ald, label %bb.ke, label %.thread292.i

.thread292.i:                                     ; preds = %.noexc257.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26171
  br label %bb.kf

bb.ke:                                            ; preds = %.noexc257.i
  %i.ale = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.kj unwind label %bb.kh

bb.kf:                                            ; preds = %.loopexit.loopexit.i.i.i.i.i, %bb.kj, %.thread292.i, %bb.kc
  %i.alf = phi ptr [ %i.ajp, %.thread292.i ], [ %i.ajp, %bb.kc ], [ %i.alo, %.loopexit.loopexit.i.i.i.i.i ], [ %i.ajp, %bb.kj ]
  %i.alg = phi i64 [ %i.ajq, %.thread292.i ], [ %i.ajq, %bb.kc ], [ %i.alp, %.loopexit.loopexit.i.i.i.i.i ], [ %i.ajq, %bb.kj ] ; 4 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i655.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i, %.thread292.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i, %bb.kc ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i656.i, %.loopexit.loopexit.i.i.i.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i, %bb.kj ]
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i643.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i, %.thread292.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i, %bb.kc ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i644.i, %.loopexit.loopexit.i.i.i.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i, %bb.kj ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i629.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i, %.thread292.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i, %bb.kc ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i630.i, %.loopexit.loopexit.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i, %bb.kj ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i616.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i, %.thread292.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i, %bb.kc ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i617.i, %.loopexit.loopexit.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i, %bb.kj ]
  %.promoted91.i610.i = phi i64 [ %.promoted91.i609.i, %.thread292.i ], [ %.promoted91.i609.i, %bb.kc ], [ %.promoted91.i611.i1131, %.loopexit.loopexit.i.i.i.i.i ], [ %.promoted91.i609.i, %bb.kj ]
  %i.alh = icmp eq i64 %.sroa.0282.0.copyload.i, 0
  br i1 %i.alh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.ali = mul nuw i64 %.sroa.0282.0.copyload.i, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.ali, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdqxqgV7ixUt_5kurbo7bezpath7BezPathECs7tN9tvpkfrg_12typst_layout.exit.i

bb.kh:                                            ; preds = %bb.ke, %bb.kd
  %i.alj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i125

.body.i125:                                       ; preds = %bb.ky, %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.kh
  %eh.lpad-body.i126 = phi { ptr, i32 } [ %i.alj, %bb.kh ], [ %i.anx, %bb.ky ], [ %lpad.loopexit.i.i132, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i128, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.alk = icmp eq i64 %.sroa.0282.0.copyload.i, 0
  br i1 %i.alk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i, label %bb.ki

bb.ki:                                            ; preds = %.body.i125
  %i.all = mul nuw i64 %.sroa.0282.0.copyload.i, 56
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.all, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout6inline4deco14BezPathBuilderEBH_.exit.i

bb.kj:                                            ; preds = %bb.ke
  %i.alm = icmp slt i8 %i.ale, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !26171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !26171
  br i1 %i.alm, label %bb.kk, label %bb.kf

bb.kk:                                            ; preds = %bb.kj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !25948
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.aln = getelementptr inbounds nuw [56 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.5284.0.copyload.i ; 4 uses
  store i64 0, ptr %i.s, align 8, !noalias !25948
  store i64 0, ptr %.sroa.5178.0..sroa_idx.i, align 8, !noalias !25948
  store i64 0, ptr %.sroa.7180.0..sroa_idx.i, align 8, !noalias !25948
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.7180.sroa.5.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25948
  store ptr %i.aln, ptr %.sroa.7180.sroa.6.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25948
  store <2 x ptr> %i.kl, ptr %.sroa.7180.sroa.7.0..sroa.7180.0..sroa_idx.sroa_idx.i, align 8, !noalias !25948
  call void @llvm.experimental.noalias.scope.decl(metadata !26173)
  call void @llvm.experimental.noalias.scope.decl(metadata !26174)
  br label %bb.kl

bb.kl:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.kk
  %i.alo = phi ptr [ %i.anu, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.ajp, %bb.kk ] ; 2 uses
  %i.alp = phi i64 [ %i.anw, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.ajq, %bb.kk ] ; 6 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i653.i = phi double [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i, %bb.kk ] ; 2 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i641.i = phi double [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i, %bb.kk ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i627.i = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i, %bb.kk ] ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i614.i = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i, %bb.kk ] ; 2 uses
  %.promoted91.i608.i = phi i64 [ %i.ani, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.promoted91.i609.i, %bb.kk ] ; 3 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i146.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i145.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i628.i, %bb.kk ] ; 3 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i133.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i132.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i642.i, %bb.kk ] ; 2 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i121.i.i = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i120.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i654.i, %bb.kk ] ; 2 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i109.i.i = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i108.i.i.lcssa, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i615.i, %bb.kk ] ; 3 uses
  %i.alq = phi ptr [ %.lcssa570, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.kk ] ; 2 uses
  %i.alr = phi i1 [ %.lcssa562, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ false, %bb.kk ] ; 3 uses
  %i.als = phi i1 [ true, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ false, %bb.kk ]
  call void @llvm.experimental.noalias.scope.decl(metadata !26175)
  call void @llvm.experimental.noalias.scope.decl(metadata !26176)
  call void @llvm.experimental.noalias.scope.decl(metadata !26177)
  %i.alt = load i32, ptr %i.jz, align 8, !noalias !25948
  %i.alu = zext i32 %i.alt to i64                 ; 2 uses
  %i.alv = icmp ne i64 %.promoted91.i608.i, %i.alu
  %or.cond.i1271126.not = select i1 %i.als, i1 %i.alv, i1 false
  br i1 %or.cond.i1271126.not, label %._crit_edge, label %.lr.ph1138

.lr.ph1138:                                       ; preds = %bb.kl, %.noexc5.i.i
  %i.alw = phi i1 [ true, %.noexc5.i.i ], [ %i.alr, %bb.kl ]
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i77.i.i.i.i.i1137 = phi double [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i73.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i109.i.i, %bb.kl ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i105.i.i.i.i.i1136 = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i101.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i146.i.i, %bb.kl ]
  %i.alx = phi i1 [ %i.amf, %.noexc5.i.i ], [ %i.alr, %bb.kl ]
  %i.aly = phi ptr [ %i.ana, %.noexc5.i.i ], [ %i.alq, %bb.kl ] ; 9 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i108.i.i1135 = phi double [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i105.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i109.i.i, %bb.kl ]
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i120.i.i1134 = phi double [ %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i121.i.i, %bb.kl ]
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i132.i.i1133 = phi double [ %.lcssa.sink.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i133.i.i, %bb.kl ]
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i145.i.i1132 = phi double [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i142.i.i, %.noexc5.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i146.i.i, %bb.kl ]
  %.promoted91.i611.i1131 = phi i64 [ 0, %.noexc5.i.i ], [ %.promoted91.i608.i, %bb.kl ]
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i1130 = phi double [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i619.i, %.noexc5.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i614.i, %bb.kl ] ; 3 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i1129 = phi double [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i632.i, %.noexc5.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i627.i, %bb.kl ] ; 3 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i1128 = phi double [ %.lcssa.sink.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i641.i, %bb.kl ] ; 3 uses
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i1127 = phi double [ %.lcssa251.sink.i.i.i.i.i.i.i.i.i.i, %.noexc5.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i653.i, %bb.kl ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26178)
  call void @llvm.experimental.noalias.scope.decl(metadata !26179)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !26180
  call void @llvm.experimental.noalias.scope.decl(metadata !26181)
  call void @llvm.experimental.noalias.scope.decl(metadata !26182)
  call void @llvm.experimental.noalias.scope.decl(metadata !26183)
  %i.alz = icmp eq ptr %i.aly, %i.aln
  br i1 %i.alz, label %.loopexit.loopexit.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph1138
  %i.ama = getelementptr inbounds nuw i8, ptr %i.aly, i64 56 ; 6 uses
  %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aly, align 8, !noalias !26184 ; 3 uses
  %.sroa.82.0..sroa_idx3.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.82.0..sroa_idx3.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 12 uses
  %.sroa.82.sroa.6.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 16
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.82.sroa.6.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 11 uses
  %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 24
  %.sroa.82.sroa.8.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 32
  %.sroa.82.sroa.8.0.copyload.i.peel.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.82.sroa.8.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 2 uses
  %i.amb = load <2 x double>, ptr %.sroa.82.sroa.7.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 4 uses
  %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 40
  %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aly, i64 48
  %.sroa.82.sroa.10.0.copyload.i.peel.i.i.i.i.i.i.i.i.i = load double, ptr %.sroa.82.sroa.10.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 2 uses
  %i.amc = load <2 x double>, ptr %.sroa.82.sroa.9.0..sroa.82.0..sroa_idx3.sroa_idx.i.peel.i.i.i.i.i.i.i.i.i, align 8, !noalias !26184 ; 3 uses
  %.not.i.peel.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.peel.i.i.i.i.i.i.i.i.i, label %.loopexit.loopexit.i.i.i.i.i, label %bb.km

bb.km:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB4_6CopiedINtNtNtBa_5slice4iter4IterNtNtCsdqxqgV7ixUt_5kurbo7bezpath6PathElEENtNtNtB8_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.lr.ph.i.i.i.i.i.i.i.i.i.i
  br i1 %i.alw, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  switch i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i
    i64 1, label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i
    i64 2, label %bb.kp
    i64 3, label %bb.ko
    i64 4, label %bb.kt
  ], !prof !26185

bb.ko:                                            ; preds = %bb.kn
  %i.amd = extractelement <2 x double> %i.amc, i64 0
  br label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i

bb.kp:                                            ; preds = %bb.kn
  %i.ame = extractelement <2 x double> %i.amb, i64 0
  br label %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i

_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %bb.kp, %bb.ko, %bb.kn, %bb.kn
  %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i = phi double [ %i.amd, %bb.ko ], [ %i.ame, %bb.kp ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kn ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kn ] ; 6 uses
  %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i = phi double [ %.sroa.82.sroa.10.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.ko ], [ %.sroa.82.sroa.8.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kp ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kn ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i.i.i, %bb.kn ] ; 5 uses
  store i64 1, ptr %.sroa.7180.0..sroa_idx.i, align 8, !alias.scope !26186, !noalias !26187
  store double %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !26186, !noalias !26187
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i: ; preds = %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i, %bb.km
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i651.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i652.i1127, %bb.km ]
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i639.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i640.i1128, %bb.km ]
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i626.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i631.i1129, %bb.km ] ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i613.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.promoted.i618.i1130, %bb.km ] ; 5 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i143.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i145.i.i1132, %bb.km ] ; 5 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i130.i.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i132.i.i1133, %bb.km ] ; 6 uses
  %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i118.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.6.0.copyload.i.peel.i.i.i.i.i.i.i120.i.i1134, %bb.km ] ; 6 uses
  %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i106.i.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.82.sroa.0.0.copyload.i.peel.i.i.i.i.i.i.i108.i.i1135, %bb.km ] ; 5 uses
  %i.amf = phi i1 [ true, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %i.alx, %bb.km ] ; 2 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i102.i.i.i.i.i = phi double [ %.sink.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.promoted.i.i.i.i.i105.i.i.i.i.i1136, %bb.km ] ; 8 uses
  %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i74.i.i.i.i.i = phi double [ %.sink4.i.i.sroa.phi.sroa.speculated.i.peel.i.i.i.i.i.i.i.i.i, %_RNCNvXsc_NtCsdqxqgV7ixUt_5kurbo7bezpathINtB7_8SegmentsINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBZ_5slice4iter4IterNtB7_6PathElEEENtNtNtBX_6traits8iterator8Iterator4next0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.peel.i.i.i.i.i.i.i.i.i ], [ %.sroa.4.0..sroa_idx.i.promoted.i.i.i.i.i77.i.i.i.i.i1137, %bb.km ] ; 8 uses
  %i.amg = extractelement <2 x double> %i.amc, i64 0
  switch i64 %.sroa.0.0.copyload1.i.peel.i.i.i.i.i.i.i.i.i, label %default.unreachable.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %bb.kr
    i64 1, label %.loopexit.i.i.i.i.i.i.i.i.i
    i64 2, label %.loopexit68.i.i.i.i.i.i.i.i.i
    i64 3, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4Q1BBFz20BJ_8arrayvec8arrayvec8IntoIterNtNtCsdqxqgV7ixUt_5kurbo7bezpath16LineIntersectionKj3_EEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i64 4, label %bb.kq
  ]

bb.kq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTNtNtCsdqxqgV7ixUt_5kurbo5point5PointBJ_EE18get_or_insert_withNCNvXsc_NtBN_7bezpathINtB1Q_8SegmentsINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtNtB5_5slice4iter4IterNtB1Q_6PathElEEENtNtNtB2q_6traits8iterator8Iterator4next0ECs7tN9tvpkfrg_12typst_layout.exit.i.peel.i.i.i.i.i.i.i.i.i
end_hunk_0
