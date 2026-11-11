Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19602
inline.NumDeleted: 9840
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_RNvNtCs7tN9tvpkfrg_12typst_layout6shapes14layout_polygon:bb.a

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %4, i64 noundef range(i64 1, 0) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.55.i.i.i.i = alloca [168 x i8], align 8  ; 4 uses
  %.sroa.8.i32.i.i.i = alloca [128 x i8], align 8 ; 4 uses
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 9 uses
  %i.d = alloca [88 x i8], align 8                ; 20 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [32 x i8], align 16               ; 5 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %5, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x double>, ptr %i.k, align 8     ; 3 uses
  %i.m = extractelement <2 x double> %i.l, i64 0
  %i.n = extractelement <2 x double> %i.l, i64 1
  invoke void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtB7_3rel3RelNtNtB7_3abs3AbsEE11relative_to(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, double noundef %i.m, double noundef %i.n)
          to label %bb.b unwind label %bb.y

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.o = load <2 x double>, ptr %i.i, align 16    ; 3 uses
  %i.p = load <2 x double>, ptr %.sroa.5.0..sroa_idx22, align 16
  %i.q = fadd <2 x double> %i.o, %i.p             ; 2 uses
  %i.r = fcmp ord <2 x double> %i.q, zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %i.q, <2 x double> zeroinitializer
  %i.t = fadd <2 x double> %i.l, %i.s             ; 2 uses
  %i.u = fcmp ord <2 x double> %i.t, zeroinitializer
  %i.v = select <2 x i1> %i.u, <2 x double> %i.t, <2 x double> zeroinitializer ; 2 uses
  %i.w = fneg <2 x double> %i.o
  %i.x = fcmp uno <2 x double> %i.o, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x double> zeroinitializer, <2 x double> %i.w
  store <2 x double> %i.y, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.z = extractelement <2 x double> %i.v, i64 0
  %i.aa = extractelement <2 x double> %i.v, i64 1
  call fastcc void @_RNvNtCs7tN9tvpkfrg_12typst_layout6shapes11styled_rect(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, double noundef %i.z, double noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %i.ad = load i64, ptr %i.f, align 8, !range !45, !noundef !41
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !41 ; 2 uses
  %i.ag = icmp ult i64 %i.af, 67818912035696881
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [136 x i8], ptr %i.ac, i64 %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %i.ac, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.h, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.j, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !39953
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = invoke fastcc noundef nonnull align 16 ptr @_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE8make_mutCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ak)
          to label %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i unwind label %bb.w, !noalias !39954 ; 4 uses

_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.b
  store i128 0, ptr %i.al, align 16, !noalias !39954
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39955)
  call void @llvm.experimental.noalias.scope.decl(metadata !39956)
  call void @llvm.experimental.noalias.scope.decl(metadata !39957)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 10 uses
  %i.ao = load i64, ptr %i.an, align 16, !alias.scope !39958, !noalias !39954, !noundef !41 ; 8 uses
  %i.ap = icmp ult i64 %i.ao, 48038396025285291
  call void @llvm.assume(i1 %i.ap)
  store i64 0, ptr %i.an, align 16, !alias.scope !39958, !noalias !39954
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 6 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !39958, !noalias !39954, !nonnull !41, !noundef !41 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.am, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !39955, !noalias !39953
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !39955, !noalias !39953
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %i.ao, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !39955, !noalias !39953
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.g, i64 48, i1 false), !alias.scope !39959, !noalias !39960
  call void @llvm.experimental.noalias.scope.decl(metadata !39961)
  call void @llvm.experimental.noalias.scope.decl(metadata !39962)
  store ptr inttoptr (i64 16 to ptr), ptr %i.d, align 8, !alias.scope !39963, !noalias !39953
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !39963, !noalias !39953
  %i.at = icmp eq i64 %i.ao, 0
  br i1 %i.at, label %bb.c, label %.loopexit.i.i.i

bb.c:                                             ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !39964)
  call void @llvm.experimental.noalias.scope.decl(metadata !39965)
  call void @llvm.experimental.noalias.scope.decl(metadata !39966)
  call void @llvm.experimental.noalias.scope.decl(metadata !39967)
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %.val.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !39968, !noalias !39969, !nonnull !41, !noundef !41 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.av, align 8, !alias.scope !39968, !noalias !39969, !nonnull !41, !noundef !41 ; 3 uses
  %i.aw = ptrtoint ptr %.val1.i.i.i.i.i.i to i64
  %i.ax = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = udiv exact i64 %i.ay, 136               ; 2 uses
  %i.ba = load i64, ptr %i.am, align 16, !range !45, !alias.scope !39970, !noalias !39971, !noundef !41
  %i.bb = icmp samesign ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.d, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, !prof !44

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef 0, i64 noundef %i.az, i64 noundef 16, i64 noundef 192)
          to label %.noexc2.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !39972

.noexc2.i.i:                                      ; preds = %bb.d
  %.pre.i.i.i.i.i = load i64, ptr %i.an, align 16, !alias.scope !39973, !noalias !39971
  %.pre21.i = load ptr, ptr %i.aq, align 8, !alias.scope !39973, !noalias !39971
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %.noexc2.i.i, %bb.c
  %i.bc = phi ptr [ %i.ar, %bb.c ], [ %.pre21.i, %.noexc2.i.i ]
  %i.bd = phi i64 [ 0, %bb.c ], [ %.pre.i.i.i.i.i, %.noexc2.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39974)
  call void @llvm.experimental.noalias.scope.decl(metadata !39975)
  call void @llvm.experimental.noalias.scope.decl(metadata !39976)
  call void @llvm.experimental.noalias.scope.decl(metadata !39977)
  call void @llvm.experimental.noalias.scope.decl(metadata !39978)
  %.not5.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i, %.val1.i.i.i.i.i.i
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB10_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EE11spec_extendB4p_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !39979, !noalias !39980, !nonnull !41, !align !46, !noundef !41
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bf, align 8, !alias.scope !39979, !noalias !39980, !nonnull !41, !align !46, !noundef !41
  br label %bb.e

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %bb.e
  store ptr %i.bi, ptr %i.au, align 8, !alias.scope !39981, !noalias !39953
  br label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB10_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EE11spec_extendB4p_.exit.i.i.i

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bg = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %bb.e ] ; 2 uses
  %i.bh = phi ptr [ %.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %i.bi, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %i.bh, i64 136, i1 false), !noalias !39982
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 136 ; 3 uses
  %i.bj = load i64, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !53, !noalias !39983, !noundef !41
  %i.bk = getelementptr inbounds nuw [192 x i8], ptr %i.bc, i64 %i.bg ; 4 uses
  %i.bl = load <2 x double>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39983
  store <2 x double> %i.bl, ptr %i.bk, align 16, !noalias !39984
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i64 2, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !39984
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i64 %i.bj, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !39984
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !39985
  %i.bm = add i64 %i.bg, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, %.val1.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB6_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBY_5frame9FrameItemEEINtB4_10SpecExtendBT_QINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB10_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EE11spec_extendB4p_.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bm, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ %i.bd, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i ]
  store i64 %.val2.i.i.i.i.i.i.i.i.i.i, ptr %i.an, align 16, !alias.scope !39973, !noalias !39986
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EENtNtNtB10_3ops4drop4Drop4dropB38_.exit.i.i

.loopexit.i.i.i:                                  ; preds = %_RINvYINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBP_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_folduNCINvMNtNtB2a_3ops9try_traitINtB3d_17NeverShortCircuituE10wrap_mut_2uBK_NCINvNvB22_8for_each4callBK_INvNtB2a_3mem4dropBK_EE0E0B3z_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 4 uses
  %.val22.pre.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !39963, !noalias !39953 ; 5 uses
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.val23.pre.i.i.i = load ptr, ptr %.phi.trans.insert80.i.i.i, align 8, !alias.scope !39963, !noalias !39953 ; 5 uses
  %i.bn = ptrtoint ptr %.val23.pre.i.i.i to i64   ; 2 uses
  %i.bo = ptrtoint ptr %.val22.pre.i.i.i to i64
  %i.bp = sub nuw i64 %i.bn, %i.bo                ; 2 uses
  %i.bq = udiv exact i64 %i.bp, 136               ; 9 uses
  %.not.i.i.i = icmp eq ptr %.val23.pre.i.i.i, %.val22.pre.i.i.i
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.i

.thread.i.i:                                      ; preds = %.loopexit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39987
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i: ; preds = %bb.l
  store ptr %i.cr, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !39953
  %.pre.i.i.i = ptrtoint ptr %i.cr to i64
  %.pre.i.i = sub nuw i64 %i.bn, %.pre.i.i.i      ; 2 uses
  %.pre22.i.i = udiv exact i64 %.pre.i.i, 136
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i
  %.pre-phi23.i.i = phi i64 [ %i.bq, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.pre22.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i ] ; 4 uses
  %.pre-phi.i.i = phi i64 [ %i.bp, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %.pre.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i ]
  %.val.i.i.i30.i.i.i = phi ptr [ %.val22.pre.i.i.i, %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.cr, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !39987
  call void @llvm.experimental.noalias.scope.decl(metadata !39988)
  call void @llvm.experimental.noalias.scope.decl(metadata !39989)
  %i.br = mul i64 %.pre-phi23.i.i, 192            ; 3 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.pre-phi.i.i, 6533221859438799440
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.g, label %bb.f, !prof !144

bb.f:                                             ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.f
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #55, !noalias !39990
  %i.bt = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.br, i64 noundef range(i64 1, 17) 16) #55, !noalias !39990 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.g, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i = phi i64 [ %i.br, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ undef, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 16, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i.i.i.i) #56
          to label %.noexc3.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !39972

.noexc3.i.i:                                      ; preds = %bb.g
  unreachable

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i, %bb.f, %.thread.i.i
  %.pre-phi234954.i.i = phi i64 [ %.pre-phi23.i.i, %bb.f ], [ %.pre-phi23.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %.thread.i.i ]
  %i.bv = phi i64 [ %i.bq, %bb.f ], [ %i.bq, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %.thread.i.i ] ; 3 uses
  %.val.i.i.i30.i5053.i.i = phi ptr [ %.val.i.i.i30.i.i.i, %bb.f ], [ %.val.i.i.i30.i.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ %.val22.pre.i.i.i, %.thread.i.i ] ; 2 uses
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.f ], [ %i.bt, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ inttoptr (i64 16 to ptr), %.thread.i.i ] ; 5 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %.pre-phi23.i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i ], [ 0, %.thread.i.i ] ; 2 uses
  %i.bw = icmp samesign ule i64 %.pre-phi234954.i.i, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.experimental.noalias.scope.decl(metadata !39991)
  call void @llvm.experimental.noalias.scope.decl(metadata !39992)
  call void @llvm.experimental.noalias.scope.decl(metadata !39993)
  call void @llvm.experimental.noalias.scope.decl(metadata !39994)
  call void @llvm.experimental.noalias.scope.decl(metadata !39995)
  call void @llvm.experimental.noalias.scope.decl(metadata !39996)
  call void @llvm.experimental.noalias.scope.decl(metadata !39997)
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i30.i5053.i.i, %.val23.pre.i.i.i
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !39998, !noalias !39999, !nonnull !41, !align !46, !noundef !41
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !39998, !noalias !39999, !nonnull !41, !align !46, !noundef !41
  br label %bb.h

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %bb.h
  store ptr %i.cb, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !40000, !noalias !39953
  br label %bb.n

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bz = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %bb.h ] ; 2 uses
  %i.ca = phi ptr [ %.val.i.i.i30.i5053.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %bb.h ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull align 8 dereferenceable(136) %i.ca, i64 136, i1 false), !noalias !40001
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 136 ; 3 uses
  %i.cc = load i64, ptr %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !53, !noalias !40002, !noundef !41
  %i.cd = getelementptr inbounds nuw [192 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.bz ; 4 uses
  %i.ce = load <2 x double>, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !40002
  store <2 x double> %i.ce, ptr %i.cd, align 16, !noalias !40003
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store i64 2, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 16, !noalias !40003
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store i64 %i.cc, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !40003
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(136) %i.a, i64 136, i1 false), !noalias !40004
  %i.cf = add nuw nsw i64 %i.bz, 1                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cb, %.val23.pre.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.i:                                             ; preds = %.loopexit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !40005)
  %i.cg = load i64, ptr %i.am, align 16, !range !45, !noalias !40006, !noundef !41
  %i.ch = sub nsw i64 %i.cg, %i.ao
  %i.ci = icmp ugt i64 %i.bq, %i.ch
  br i1 %i.ci, label %bb.j, label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, !prof !44

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.am, i64 noundef %i.ao, i64 noundef %i.bq, i64 noundef 16, i64 noundef 192)
          to label %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !39972

._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i: ; preds = %bb.j
  %.pre.i = load ptr, ptr %i.aq, align 8, !noalias !40006
  br label %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i, %bb.i
  %i.cj = phi ptr [ %.pre.i, %._RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i_crit_edge.i ], [ %i.ar, %bb.i ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [192 x i8], ptr %i.cj, i64 %i.bq
  %i.cl = mul nuw nsw i64 %i.ao, 192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.ck, ptr nonnull align 16 %i.cj, i64 %i.cl, i1 false), !noalias !40006
  store i64 %i.bq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !40007, !noalias !39953
  call void @llvm.experimental.noalias.scope.decl(metadata !40008)
  %i.cm = load i64, ptr %i.an, align 16, !noalias !40009, !noundef !41 ; 2 uses
  %.not.i33.i.i.i = icmp ult i64 %i.cm, %i.bq
  br i1 %.not.i33.i.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.preheader.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.preheader.i: ; preds = %_RNvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB7_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB13_5frame9FrameItemEE9move_tailCs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %.val.i.i35.i.i.i = load ptr, ptr %i.cn, align 8, !alias.scope !40010, !noalias !39953, !nonnull !41, !align !46
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val1.i.i36.i.i.i = load ptr, ptr %i.co, align 8, !alias.scope !40010, !noalias !39953, !nonnull !41, !align !46
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.i

bb.k:                                             ; preds = %bb.l
  %i.cp = icmp eq ptr %i.cr, %.val23.pre.i.i.i
  br i1 %i.cp, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EENtNtNtB10_3ops4drop4Drop4dropB38_.exit.i.loopexit.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.i: ; preds = %bb.k, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.preheader.i
  %.sroa.01.012.i38.i.i13.i = phi i64 [ %i.ct, %bb.k ], [ %i.cm, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.preheader.i ] ; 2 uses
  %i.cq = phi ptr [ %i.cr, %bb.k ], [ %.val22.pre.i.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 136 ; 6 uses
  %.sroa.0.0.copyload2.i.i40.i.i.i = load i64, ptr %i.cq, align 8, !noalias !40011 ; 2 uses
  %.not.i.i41.i.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i40.i.i.i, -1
  br i1 %.not.i.i41.i.i.i, label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EENtNtNtB10_3ops4drop4Drop4dropB38_.exit.i.loopexit.i, label %bb.l

bb.l:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i39.i.i.i
  %.sroa.6.0..sroa_idx3.i.i42.i.i.i = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i32.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.8.i32.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.6.0..sroa_idx3.i.i42.i.i.i, i64 128, i1 false), !noalias !40009
  %i.cs = load i64, ptr %.val1.i.i36.i.i.i, align 8, !range !53, !noalias !40012, !noundef !41
  %i.ct = add nuw nsw i64 %.sroa.01.012.i38.i.i13.i, 1 ; 2 uses
  %i.cu = load ptr, ptr %i.aq, align 8, !noalias !40009, !nonnull !41, !noundef !41
  %i.cv = getelementptr inbounds nuw [192 x i8], ptr %i.cu, i64 %.sroa.01.012.i38.i.i13.i ; 5 uses
  %i.cw = load <2 x double>, ptr %.val.i.i35.i.i.i, align 8, !noalias !40012
  store <2 x double> %i.cw, ptr %i.cv, align 16, !noalias !40009
  %.sroa.52.0..sroa_idx.i44.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i64 2, ptr %.sroa.52.0..sroa_idx.i44.i.i.i, align 16, !noalias !40009
  %.sroa.63.0..sroa_idx.i45.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store i64 %i.cs, ptr %.sroa.63.0..sroa_idx.i45.i.i.i, align 8, !noalias !40009
  %.sroa.7.0..sroa_idx.i46.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  store i64 %.sroa.0.0.copyload2.i.i40.i.i.i, ptr %.sroa.7.0..sroa_idx.i46.i.i.i, align 16, !noalias !40009
  %.sroa.8.0..sroa_idx.i47.i.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.8.0..sroa_idx.i47.i.i.i, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.8.i32.i.i.i, i64 128, i1 false), !noalias !40009
  %i.cx = load i64, ptr %i.an, align 16, !noalias !40009, !noundef !41
  %i.cy = add i64 %i.cx, 1
  store i64 %i.cy, ptr %i.an, align 16, !noalias !40009
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i32.i.i.i)
  %exitcond.not.i48.i.i.i = icmp eq i64 %i.ct, %i.bq
  br i1 %exitcond.not.i48.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB8_9into_iter8IntoIterNtNtNtB16_9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EEB4f_.exit49.thread.loopexit.i.i.i, label %bb.k

bb.m:                                             ; preds = %bb.p
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #53
          to label %.body.i.i unwind label %bb.s, !noalias !39971

bb.n:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cf, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtBJ_5frame9FrameItemEE7reserveCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 6 uses
  %i.da = icmp ult i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, 48038396025285291
  call void @llvm.assume(i1 %i.da)
  %.idx.i.i.i = mul nuw nsw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, 192
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i, i64 %.idx.i.i.i ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %i.c, align 8, !noalias !39987
  %i.dc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %i.dc, align 8, !noalias !39987
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %i.dd, align 8, !noalias !39987
  %i.de = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.db, ptr %i.de, align 8, !noalias !39987
  %.not16.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not16.i.i.i, label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.o

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i: ; preds = %bb.r, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB11_5frame9FrameItemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  store ptr %i.dq, ptr %i.dd, align 8, !noalias !39987
  br label %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.q, %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.loopexit.i.i.i, %bb.n
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1u_5frame9FrameItemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c)
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !39972

.noexc5.i.i:                                      ; preds = %_RINvMs2_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtNtB8_5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB14_5frame9FrameItemEE4fillINtNtB8_9into_iter8IntoIterBZ_EECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !39987
  br label %_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library9visualize5shape5ShapeENCNvNtCs7tN9tvpkfrg_12typst_layout6shapes15fill_and_stroke0EENtNtNtB10_3ops4drop4Drop4dropB38_.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !40013)
  %i.df = add nuw nsw i64 %i.bv, %i.ao            ; 2 uses
  %i.dg = load i64, ptr %i.am, align 16, !range !45, !noalias !40014, !noundef !41
  %i.dh = sub nsw i64 %i.dg, %i.df
  %i.di = icmp ugt i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %i.dh
  br i1 %i.di, label %bb.p, label %bb.q, !prof !44

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(16) %i.am, i64 noundef %i.df, i64 noundef %.val2.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 16, i64 noundef 192)
          to label %bb.q unwind label %bb.m, !noalias !39971

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dj = add nuw nsw i64 %.val2.i.i.i.i.i.i.i.i.i.i.i.i, %i.bv ; 4 uses
  %i.dk = load ptr, ptr %i.aq, align 8, !noalias !40014, !nonnull !41, !noundef !41 ; 2 uses
  %i.dl = getelementptr inbounds nuw [192 x i8], ptr %i.dk, i64 %i.bv
  %i.dm = getelementptr inbounds nuw [192 x i8], ptr %i.dk, i64 %i.dj
  %i.dn = mul nuw nsw i64 %i.ao, 192
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.dm, ptr nonnull align 16 %i.dl, i64 %i.dn, i1 false), !noalias !40014
  store i64 %i.dj, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !40015, !noalias !39953
end_hunk_0
begin_hunk_1_@_RNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB5_17LineBreakIteratorNtNtB7_14rule_segmenter4Utf8ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout:bb.a
bb.by:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE6map_orjNvYNtNtCselBS6QMlFOX_13icu_segmenter14rule_segmenter4Utf8NtBX_13RuleBreakType8char_lenECs7tN9tvpkfrg_12typst_layout.exit
  store i32 -1, ptr %i.b, align 8
  store i64 0, ptr %i.e, align 8
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ma = load i64, ptr %i.lz, align 8, !noundef !41
  br label %.loopexit268

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecjEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bx, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecjEINtB2_12SpecFromIterjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1m_4skip4SkipINtNtNtB1q_5slice4iter4IterjEENCNvXs4_NtCselBS6QMlFOX_13icu_segmenter4lineINtB30_17LineBreakIteratorNtNtB32_14rule_segmenter4Utf8ENtNtNtB1o_6traits8iterator8Iterator4next0EE9from_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %.sroa.4.0.i.i.i402, ptr %i.d, align 8
  store ptr %.sroa.10.0.i.i.i401, ptr %i.bi, align 8
  store i64 %.sroa.5.0.copyload.sink.i.i.i.i.i.i, ptr %i.e, align 8
  %i.mb = load i32, ptr %i.b, align 8, !range !122, !noundef !41
  %.not183 = icmp ne i32 %i.mb, -1                ; 2 uses
  %i.mc = load i64, ptr %i.a, align 8
  %.sroa.27.13 = select i1 %.not183, i64 %i.mc, i64 undef
  br label %.loopexit268

bb.bz:                                            ; preds = %bb.c
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.me = load i64, ptr %i.md, align 8, !noundef !41
  %i.mf = icmp eq i64 %i.me, 0
  br i1 %i.mf, label %bb.ca, label %.loopexit268

bb.ca:                                            ; preds = %bb.bz
  store i64 1, ptr %i.md, align 8
  br label %.loopexit268
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i64 @_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator10advance_byCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !41, !noundef !41 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = udiv exact i64 %i.e, 48
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.f) ; 5 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %..i
  store ptr %i.g, ptr %i.a, align 8
  %i.h = icmp eq ptr %.val3, %.val
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.0.09.i = phi i64 [ %i.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.09.i
  %i.j = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47683)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47685)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !47686, !nonnull !41, !noundef !41
  %i.m = atomicrmw add ptr %i.l, i64 -1 release, align 8, !noalias !47687
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.o = icmp eq i64 %i.j, %..i
  br i1 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.j, %..i
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.s, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %.val, i64 %.sroa.0.110.i
  %i.s = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47688)
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47690)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !47691, !nonnull !41, !noundef !41
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !noalias !47692
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t) #57
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.x = icmp eq i64 %i.s, %..i
  br i1 %i.x, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit8.i, %bb.c
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #54
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.a
  %i.z = sub nuw i64 %1, %..i
  ret i64 %i.z
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke11FixedStrokeEENtNtB16_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.d = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(320) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c) #58
  br i1 %i.d, label %bb.b, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e) #58
  br i1 %i.f, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.h = tail call fastcc noundef zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3cmp9PartialEq2eqCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.g) #58
  br i1 %i.h, label %bb.c, label %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread

_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a, %bb.b, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @767, i64 noundef 5)
  %i.i = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @769, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @768)
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @770, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @768)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @771, i64 noundef 5, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @768)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @772, i64 noundef 6, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @768)
  %i.o = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.c:                                             ; preds = %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @773, i64 noundef 13)
  br i1 %i.p, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47696)
  %i.q = load i64, ptr %0, align 8, !range !60, !alias.scope !47696, !noundef !41
  %.not.i = icmp eq i64 %i.q, -2
  br i1 %.not.i, label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, label %.split

.split:                                           ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !47697
  store ptr %0, ptr %i.a, align 8, !noalias !47697
  %i.r = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @843, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @850)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !47697
  br i1 %i.r, label %bb.f, label %bb.e

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @841, i64 noundef 4), !noalias !47696
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @728, i64 noundef 1)
  br label %bb.f

bb.f:                                             ; preds = %.split, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.e
  %.sroa.0.0.shrunk = phi i1 [ %i.o, %_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB2_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB6_9visualize6stroke11FixedStrokeEE10is_uniformCs7tN9tvpkfrg_12typst_layout.exit.thread ], [ true, %bb.c ], [ %i.t, %bb.e ], [ true, %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeENtNtB7_3fmt5Debug3fmtCs7tN9tvpkfrg_12typst_layout.exit ], [ true, %.split ]
  ret i1 %.sroa.0.0.shrunk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs5_NtCs4vtCw9T9d1A_20unicode_segmentation4wordNtB5_11UWordBoundsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [12 x i8], align 4                ; 28 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !41 ; 18 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.cj, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !nonnull !41, !noundef !41 ; 13 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 14 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %.promoted378 = load i8, ptr %i.h, align 8      ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.lr.ph, %bb.ar
  %.sroa.074.0.ph367616 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %.sroa.074.0.ph367606, %bb.ar ] ; 2 uses
  %.sroa.073.0.ph368602 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %.sroa.073.0.ph368592, %bb.ar ] ; 2 uses
  %.promoted381 = phi i8 [ %.promoted378, %.lr.ph.lr.ph ], [ %.promoted379, %bb.ar ] ; 2 uses
  %i.j = phi i8 [ %.promoted378, %.lr.ph.lr.ph ], [ -1, %bb.ar ] ; 2 uses
  %.sroa.011.0355 = phi i1 [ false, %.lr.ph.lr.ph ], [ %.sroa.011.1, %bb.ar ] ; 2 uses
  %.sroa.028.0354 = phi i8 [ 1, %.lr.ph.lr.ph ], [ %.sroa.028.2689, %bb.ar ] ; 2 uses
  %.sroa.050.0353 = phi i8 [ 0, %.lr.ph.lr.ph ], [ %.sroa.050.1, %bb.ar ] ; 2 uses
  %.sroa.42.0352 = phi i8 [ undef, %.lr.ph.lr.ph ], [ %.sroa.42.1, %bb.ar ] ; 2 uses
  %.sroa.0.0136351 = phi ptr [ %i.f, %.lr.ph.lr.ph ], [ %.sroa.0.1660, %bb.ar ] ; 4 uses
  %.sroa.11.0350 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %i.ds, %bb.ar ] ; 2 uses
  %1 = ptrtoint ptr %.sroa.0.0136351 to i64       ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351, i64 1 ; 2 uses
  %i.l = load i8, ptr %.sroa.0.0136351, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.m = icmp sgt i8 %i.l, -1
  br i1 %i.m, label %bb.c, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt7:                                       ; preds = %.outer.jt7, %bb.at
  %.sroa.074.0.ph367612 = phi i64 [ %.sroa.074.0.ph367617, %bb.at ], [ %.sroa.074.1.jt7, %.outer.jt7 ] ; 7 uses
  %.sroa.073.0.ph368598 = phi i8 [ %.sroa.073.0.ph368603, %bb.at ], [ %.sroa.073.1.jt7, %.outer.jt7 ] ; 7 uses
  %.promoted381.jt7 = phi i8 [ %i.ek, %bb.at ], [ %.promoted380686, %.outer.jt7 ] ; 5 uses
  %.sroa.011.0355.jt7 = phi i1 [ %.sroa.011.0355628, %bb.at ], [ %.sroa.011.0355483.jt7, %.outer.jt7 ] ; 4 uses
  %.sroa.028.0354.jt7 = phi i8 [ %.sroa.028.2, %bb.at ], [ %.sroa.028.2542.jt7, %.outer.jt7 ] ; 2 uses
  %.sroa.42.0352.jt7 = phi i8 [ 1, %bb.at ], [ %.sroa.42.2.jt7, %.outer.jt7 ] ; 6 uses
  %.sroa.0.0136351.jt7 = phi ptr [ %.sroa.0.1, %bb.at ], [ %.sroa.0.1672, %.outer.jt7 ] ; 4 uses
  %.sroa.11.0350.jt7 = phi i64 [ %i.by, %bb.at ], [ %i.el, %.outer.jt7 ] ; 8 uses
  %2 = ptrtoint ptr %.sroa.0.0136351.jt7 to i64   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351.jt7, i64 1 ; 8 uses
  %i.o = load i8, ptr %.sroa.0.0136351.jt7, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.e, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt5:                                       ; preds = %.outer.jt5
  %3 = ptrtoint ptr %.sroa.0.1673 to i64          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.1673, i64 1 ; 6 uses
  %i.r = load i8, ptr %.sroa.0.1673, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %bb.f, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt8:                                       ; preds = %.outer.jt8, %bb.as
  %i.t = phi i8 [ -1, %bb.as ], [ %.promoted380, %.outer.jt8 ] ; 3 uses
  %.sroa.028.0354.jt8 = phi i8 [ %.sroa.028.2, %bb.as ], [ 18, %.outer.jt8 ] ; 2 uses
  %.sroa.050.0353.jt8 = phi i8 [ 9, %bb.as ], [ 8, %.outer.jt8 ] ; 4 uses
  %4 = ptrtoint ptr %.sroa.0.1 to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 1 ; 6 uses
  %i.v = load i8, ptr %.sroa.0.1, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt10:                                      ; preds = %.outer.jt10
  %5 = ptrtoint ptr %.sroa.0.1668 to i64          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.1668, i64 1 ; 6 uses
  %i.y = load i8, ptr %.sroa.0.1668, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.z = icmp sgt i8 %i.y, -1
  br i1 %i.z, label %bb.h, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt6:                                       ; preds = %.outer.jt6
  %6 = ptrtoint ptr %.sroa.0.1669 to i64          ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.1669, i64 1 ; 6 uses
  %i.ab = load i8, ptr %.sroa.0.1669, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt4:                                       ; preds = %.outer.jt4
  %7 = ptrtoint ptr %.sroa.0.1674 to i64          ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.1674, i64 1 ; 6 uses
  %i.ae = load i8, ptr %.sroa.0.1674, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %bb.j, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt1:                                       ; preds = %.outer.jt1
  %8 = ptrtoint ptr %.sroa.0.1670 to i64          ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.1670, i64 1 ; 6 uses
  %i.ah = load i8, ptr %.sroa.0.1670, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.ai = icmp sgt i8 %i.ah, -1
  br i1 %i.ai, label %bb.k, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

.lr.ph.jt3:                                       ; preds = %.outer.jt3
  %9 = ptrtoint ptr %.sroa.0.1671 to i64          ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.1671, i64 1 ; 6 uses
  %i.ak = load i8, ptr %.sroa.0.1671, align 1, !noalias !47710, !noundef !41 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %.lr.ph.jt7, %.lr.ph.jt5, %.lr.ph.jt8, %.lr.ph.jt10, %.lr.ph.jt6, %.lr.ph.jt4, %.lr.ph.jt1, %.lr.ph.jt3, %bb.b
  %i.am = phi i8 [ %i.o, %.lr.ph.jt7 ], [ %i.r, %.lr.ph.jt5 ], [ %i.v, %.lr.ph.jt8 ], [ %i.y, %.lr.ph.jt10 ], [ %i.ab, %.lr.ph.jt6 ], [ %i.ae, %.lr.ph.jt4 ], [ %i.ah, %.lr.ph.jt1 ], [ %i.ak, %.lr.ph.jt3 ], [ %i.l, %bb.b ] ; 3 uses
  %i.an = phi ptr [ %i.n, %.lr.ph.jt7 ], [ %i.q, %.lr.ph.jt5 ], [ %i.u, %.lr.ph.jt8 ], [ %i.x, %.lr.ph.jt10 ], [ %i.aa, %.lr.ph.jt6 ], [ %i.ad, %.lr.ph.jt4 ], [ %i.ag, %.lr.ph.jt1 ], [ %i.aj, %.lr.ph.jt3 ], [ %i.k, %bb.b ] ; 2 uses
  %10 = phi i64 [ %2, %.lr.ph.jt7 ], [ %3, %.lr.ph.jt5 ], [ %4, %.lr.ph.jt8 ], [ %5, %.lr.ph.jt10 ], [ %6, %.lr.ph.jt6 ], [ %7, %.lr.ph.jt4 ], [ %8, %.lr.ph.jt1 ], [ %9, %.lr.ph.jt3 ], [ %1, %bb.b ] ; 3 uses
  %.sroa.11.0350639 = phi i64 [ %.sroa.11.0350.jt7, %.lr.ph.jt7 ], [ %i.en, %.lr.ph.jt5 ], [ %i.by, %.lr.ph.jt8 ], [ %i.eq, %.lr.ph.jt10 ], [ %i.es, %.lr.ph.jt6 ], [ %i.eu, %.lr.ph.jt4 ], [ %i.ew, %.lr.ph.jt1 ], [ %i.ey, %.lr.ph.jt3 ], [ %.sroa.11.0350, %bb.b ] ; 3 uses
  %.sroa.0.0136351638 = phi ptr [ %.sroa.0.0136351.jt7, %.lr.ph.jt7 ], [ %.sroa.0.1673, %.lr.ph.jt5 ], [ %.sroa.0.1, %.lr.ph.jt8 ], [ %.sroa.0.1668, %.lr.ph.jt10 ], [ %.sroa.0.1669, %.lr.ph.jt6 ], [ %.sroa.0.1674, %.lr.ph.jt4 ], [ %.sroa.0.1670, %.lr.ph.jt1 ], [ %.sroa.0.1671, %.lr.ph.jt3 ], [ %.sroa.0.0136351, %bb.b ] ; 3 uses
  %.sroa.42.0352634 = phi i8 [ %.sroa.42.0352.jt7, %.lr.ph.jt7 ], [ undef, %.lr.ph.jt5 ], [ undef, %.lr.ph.jt8 ], [ undef, %.lr.ph.jt10 ], [ %.sroa.42.2.jt6, %.lr.ph.jt6 ], [ undef, %.lr.ph.jt4 ], [ undef, %.lr.ph.jt1 ], [ undef, %.lr.ph.jt3 ], [ %.sroa.42.0352, %bb.b ] ; 3 uses
  %.sroa.050.0353631 = phi i8 [ 7, %.lr.ph.jt7 ], [ 5, %.lr.ph.jt5 ], [ %.sroa.050.0353.jt8, %.lr.ph.jt8 ], [ 10, %.lr.ph.jt10 ], [ 6, %.lr.ph.jt6 ], [ 4, %.lr.ph.jt4 ], [ %.sroa.050.2.jt1, %.lr.ph.jt1 ], [ 3, %.lr.ph.jt3 ], [ %.sroa.050.0353, %bb.b ] ; 3 uses
  %.sroa.028.0354629 = phi i8 [ %.sroa.028.0354.jt7, %.lr.ph.jt7 ], [ 5, %.lr.ph.jt5 ], [ %.sroa.028.0354.jt8, %.lr.ph.jt8 ], [ 17, %.lr.ph.jt10 ], [ 15, %.lr.ph.jt6 ], [ 8, %.lr.ph.jt4 ], [ %.sroa.028.2542.jt1, %.lr.ph.jt1 ], [ 14, %.lr.ph.jt3 ], [ %.sroa.028.0354, %bb.b ] ; 3 uses
  %.sroa.011.0355620 = phi i1 [ %.sroa.011.0355.jt7, %.lr.ph.jt7 ], [ %.sroa.011.0355483.jt5, %.lr.ph.jt5 ], [ %.sroa.011.0355628, %.lr.ph.jt8 ], [ %.sroa.011.0355483.jt10, %.lr.ph.jt10 ], [ %.sroa.011.0355483.jt6, %.lr.ph.jt6 ], [ %.sroa.011.0355483.jt4, %.lr.ph.jt4 ], [ %.sroa.011.0355483.jt1, %.lr.ph.jt1 ], [ %.sroa.011.0355483.jt3, %.lr.ph.jt3 ], [ %.sroa.011.0355, %bb.b ] ; 3 uses
  %i.ao = phi i8 [ %.promoted381.jt7, %.lr.ph.jt7 ], [ %.promoted380687, %.lr.ph.jt5 ], [ %i.t, %.lr.ph.jt8 ], [ %.promoted380682, %.lr.ph.jt10 ], [ %.promoted380683, %.lr.ph.jt6 ], [ %.promoted380688, %.lr.ph.jt4 ], [ %.promoted380684, %.lr.ph.jt1 ], [ %.promoted380685, %.lr.ph.jt3 ], [ %i.j, %bb.b ] ; 3 uses
  %.promoted381618 = phi i8 [ %.promoted381.jt7, %.lr.ph.jt7 ], [ %.promoted380687, %.lr.ph.jt5 ], [ %.promoted380, %.lr.ph.jt8 ], [ %.promoted380682, %.lr.ph.jt10 ], [ %.promoted380683, %.lr.ph.jt6 ], [ %.promoted380688, %.lr.ph.jt4 ], [ %.promoted380684, %.lr.ph.jt1 ], [ %.promoted380685, %.lr.ph.jt3 ], [ %.promoted381, %bb.b ] ; 3 uses
  %.sroa.074.0.ph367605 = phi i64 [ %.sroa.074.0.ph367612, %.lr.ph.jt7 ], [ %.sroa.074.1.jt5, %.lr.ph.jt5 ], [ %.sroa.074.0.ph367617, %.lr.ph.jt8 ], [ %.sroa.074.1.jt10, %.lr.ph.jt10 ], [ %.sroa.074.1.jt6, %.lr.ph.jt6 ], [ %.sroa.074.1.jt4, %.lr.ph.jt4 ], [ %.sroa.074.1.jt1, %.lr.ph.jt1 ], [ %.sroa.074.1.jt3, %.lr.ph.jt3 ], [ %.sroa.074.0.ph367616, %bb.b ] ; 3 uses
  %.sroa.073.0.ph368591 = phi i8 [ %.sroa.073.0.ph368598, %.lr.ph.jt7 ], [ %.sroa.073.1.jt5, %.lr.ph.jt5 ], [ %.sroa.073.0.ph368603, %.lr.ph.jt8 ], [ %.sroa.073.1.jt10, %.lr.ph.jt10 ], [ %.sroa.073.1.jt6, %.lr.ph.jt6 ], [ %.sroa.073.1.jt4, %.lr.ph.jt4 ], [ %.sroa.073.1.jt1, %.lr.ph.jt1 ], [ %.sroa.073.1.jt3, %.lr.ph.jt3 ], [ %.sroa.073.0.ph368602, %bb.b ] ; 3 uses
  %i.ap = and i8 %i.am, 31
  %i.aq = zext nneg i8 %i.ap to i32               ; 3 uses
  %i.ar = icmp ne ptr %i.an, %i.g
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 2 ; 3 uses
  %i.at = load i8, ptr %i.an, align 1, !noalias !47710, !noundef !41
  %i.au = shl nuw nsw i32 %i.aq, 6
  %i.av = and i8 %i.at, 63
  %i.aw = zext nneg i8 %i.av to i32               ; 2 uses
  %i.ax = or disjoint i32 %i.au, %i.aw
  %i.ay = icmp samesign ugt i8 %i.am, -33
  br i1 %i.ay, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.az = zext nneg i8 %i.l to i32
  br label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %i.ba = icmp ne ptr %i.as, %i.g
  call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 3 ; 3 uses
  %i.bc = load i8, ptr %i.as, align 1, !noalias !47710, !noundef !41
  %i.bd = shl nuw nsw i32 %i.aw, 6
  %i.be = and i8 %i.bc, 63
  %i.bf = zext nneg i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf            ; 2 uses
  %i.bh = shl nuw nsw i32 %i.aq, 12
  %i.bi = or disjoint i32 %i.bg, %i.bh
  %i.bj = icmp samesign ugt i8 %i.am, -17
  br i1 %i.bj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i, label %bb.d

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i
  %i.bk = icmp ne ptr %i.bb, %i.g
  call void @llvm.assume(i1 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.0136351638, i64 4
  %i.bm = load i8, ptr %i.bb, align 1, !noalias !47710, !noundef !41
  %i.bn = shl nuw nsw i32 %i.aq, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bg, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i, %bb.c, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %11 = phi i64 [ %10, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %10, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %1, %bb.c ], [ %10, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.11.0350659 = phi i64 [ %.sroa.11.0350639, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.11.0350639, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.11.0350, %bb.c ], [ %.sroa.11.0350639, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 30 uses
  %.sroa.42.0352637 = phi i8 [ %.sroa.42.0352634, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.42.0352634, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.42.0352, %bb.c ], [ %.sroa.42.0352634, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 5 uses
  %.sroa.050.0353633 = phi i8 [ %.sroa.050.0353631, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.050.0353631, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.050.0353, %bb.c ], [ %.sroa.050.0353631, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 7 uses
  %.sroa.028.0354630 = phi i8 [ %.sroa.028.0354629, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.028.0354629, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.028.0354, %bb.c ], [ %.sroa.028.0354629, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.011.0355628 = phi i1 [ %.sroa.011.0355620, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.011.0355620, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.011.0355, %bb.c ], [ %.sroa.011.0355620, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 18 uses
  %i.bu = phi i8 [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %i.j, %bb.c ], [ %i.ao, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 2 uses
  %.promoted381619 = phi i8 [ %.promoted381618, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.promoted381618, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.promoted381, %bb.c ], [ %.promoted381618, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.074.0.ph367617 = phi i64 [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.074.0.ph367616, %bb.c ], [ %.sroa.074.0.ph367605, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 24 uses
  %.sroa.073.0.ph368603 = phi i8 [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %.sroa.073.0.ph368602, %bb.c ], [ %.sroa.073.0.ph368591, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 24 uses
  %.sroa.0.1 = phi ptr [ %i.bl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %i.k, %bb.c ], [ %i.as, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 27 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.bt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i ], [ %i.bi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i ], [ %i.az, %bb.c ], [ %i.ax, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i ] ; 3 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.bv)
  %i.bw = ptrtoint ptr %.sroa.0.1 to i64
  %i.bx = sub i64 %.sroa.11.0350659, %11          ; 2 uses
  %i.by = add i64 %i.bx, %i.bw                    ; 26 uses
  %i.bz = icmp eq i8 %.sroa.028.0354630, 18
  %.not115 = icmp eq i8 %i.bu, -1
  br i1 %.not115, label %bb.v, label %bb.m

bb.e:                                             ; preds = %.lr.ph.jt7
  %i.ca = zext nneg i8 %i.o to i32                ; 2 uses
  %i.cb = ptrtoint ptr %i.n to i64
  %i.cc = sub i64 %.sroa.11.0350.jt7, %2
  %i.cd = add i64 %i.cc, %i.cb                    ; 6 uses
  %i.ce = icmp eq i8 %.sroa.028.0354.jt7, 18
  %.not115.jt7 = icmp eq i8 %.promoted381.jt7, -1
  br i1 %.not115.jt7, label %bb.w, label %bb.n

bb.f:                                             ; preds = %.lr.ph.jt5
  %i.cf = ptrtoint ptr %i.q to i64
  %i.cg = sub i64 %i.en, %3
  %i.ch = add i64 %i.cg, %i.cf                    ; 4 uses
  %.not115.jt5 = icmp eq i8 %.promoted380687, -1
  br i1 %.not115.jt5, label %bb.x, label %bb.o

bb.g:                                             ; preds = %.lr.ph.jt8
  %i.ci = zext nneg i8 %i.v to i32                ; 2 uses
  %i.cj = ptrtoint ptr %i.u to i64
  %i.ck = add i64 %i.bx, %i.cj                    ; 4 uses
  %i.cl = icmp eq i8 %.sroa.028.0354.jt8, 18
  %.not115.jt8 = icmp eq i8 %i.t, -1
  br i1 %.not115.jt8, label %bb.y, label %bb.p

bb.h:                                             ; preds = %.lr.ph.jt10
  %i.cm = ptrtoint ptr %i.x to i64
  %i.cn = sub i64 %i.eq, %5
  %i.co = add i64 %i.cn, %i.cm                    ; 4 uses
  %.not115.jt10 = icmp eq i8 %.promoted380682, -1
  br i1 %.not115.jt10, label %bb.z, label %bb.q

bb.i:                                             ; preds = %.lr.ph.jt6
  %i.cp = ptrtoint ptr %i.aa to i64
  %i.cq = sub i64 %i.es, %6
  %i.cr = add i64 %i.cq, %i.cp                    ; 4 uses
  %.not115.jt6 = icmp eq i8 %.promoted380683, -1
  br i1 %.not115.jt6, label %bb.aa, label %bb.r

bb.j:                                             ; preds = %.lr.ph.jt4
  %i.cs = ptrtoint ptr %i.ad to i64
  %i.ct = sub i64 %i.eu, %7
  %i.cu = add i64 %i.ct, %i.cs                    ; 4 uses
  %.not115.jt4 = icmp eq i8 %.promoted380688, -1
  br i1 %.not115.jt4, label %bb.ab, label %bb.s

bb.k:                                             ; preds = %.lr.ph.jt1
  %i.cv = ptrtoint ptr %i.ag to i64
  %i.cw = sub i64 %i.ew, %8
  %i.cx = add i64 %i.cw, %i.cv                    ; 4 uses
  %.not115.jt1 = icmp eq i8 %.promoted380684, -1
  br i1 %.not115.jt1, label %bb.ac, label %bb.t

bb.l:                                             ; preds = %.lr.ph.jt3
  %i.cy = ptrtoint ptr %i.aj to i64
  %i.cz = sub i64 %i.ey, %9
  %i.da = add i64 %i.cz, %i.cy                    ; 4 uses
  %.not115.jt3 = icmp eq i8 %.promoted380685, -1
  br i1 %.not115.jt3, label %bb.ad, label %bb.u

.outer._crit_edge:                                ; preds = %bb.ar
  %i.db = icmp eq i8 %.sroa.050.1, 7
  br i1 %i.db, label %.thread, label %.thread147

bb.m:                                             ; preds = %bb.d
  store i8 -1, ptr %i.h, align 8
  br label %bb.ae

bb.n:                                             ; preds = %bb.e
  store i8 -1, ptr %i.h, align 8
  br label %bb.ag

bb.o:                                             ; preds = %bb.f
  store i8 -1, ptr %i.h, align 8
  br label %bb.ah

bb.p:                                             ; preds = %bb.g
  store i8 -1, ptr %i.h, align 8
  br label %bb.ai

bb.q:                                             ; preds = %bb.h
  store i8 -1, ptr %i.h, align 8
  br label %bb.aj

bb.r:                                             ; preds = %bb.i
  store i8 -1, ptr %i.h, align 8
  br label %bb.ak

bb.s:                                             ; preds = %bb.j
  store i8 -1, ptr %i.h, align 8
  br label %bb.al

bb.t:                                             ; preds = %bb.k
  store i8 -1, ptr %i.h, align 8
  br label %bb.am

bb.u:                                             ; preds = %bb.l
  store i8 -1, ptr %i.h, align 8
  br label %bb.an

bb.v:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %.sroa.4.0.i.ph.i)
  %i.dc = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ae

bb.w:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.ca)
  %i.dd = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ag

bb.x:                                             ; preds = %bb.f
  %i.de = zext nneg i8 %i.r to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.de)
  %i.df = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ah

bb.y:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.ci)
  %i.dg = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ai

bb.z:                                             ; preds = %bb.h
  %i.dh = zext nneg i8 %i.y to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dh)
  %i.di = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.aa:                                            ; preds = %bb.i
  %i.dj = zext nneg i8 %i.ab to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dj)
  %i.dk = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ak

bb.ab:                                            ; preds = %bb.j
  %i.dl = zext nneg i8 %i.ae to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dl)
  %i.dm = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.al

bb.ac:                                            ; preds = %bb.k
  %i.dn = zext nneg i8 %i.ah to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dn)
  %i.do = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.am

bb.ad:                                            ; preds = %bb.l
  %i.dp = zext nneg i8 %i.ak to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs4vtCw9T9d1A_20unicode_segmentation6tables4word13word_category(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.b, i32 noundef %i.dp)
  %i.dq = load i8, ptr %i.i, align 4, !range !146, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.an

bb.ae:                                            ; preds = %bb.m, %bb.v
  %.promoted380 = phi i8 [ -1, %bb.m ], [ %.promoted381619, %bb.v ] ; 21 uses
  %.sroa.028.2 = phi i8 [ %i.bu, %bb.m ], [ %i.dc, %bb.v ] ; 19 uses
  %i.dr = icmp eq i8 %.sroa.050.0353633, 0
  br i1 %i.dr, label %bb.ao, label %bb.af

bb.af:                                            ; preds = %bb.ae
  switch i8 %.sroa.028.2, label %bb.ao [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ag:                                            ; preds = %bb.w, %bb.n
  %.promoted380.jt7 = phi i8 [ %.promoted381.jt7, %bb.w ], [ -1, %bb.n ] ; 6 uses
  %.sroa.028.2.jt7 = phi i8 [ %i.dd, %bb.w ], [ %.promoted381.jt7, %bb.n ] ; 7 uses
  switch i8 %.sroa.028.2.jt7, label %bb.ap [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ah:                                            ; preds = %bb.x, %bb.o
  %.sroa.028.2.jt5 = phi i8 [ %i.df, %bb.x ], [ %.promoted380687, %bb.o ] ; 5 uses
  switch i8 %.sroa.028.2.jt5, label %bb.bd [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ai:                                            ; preds = %bb.y, %bb.p
  %.promoted380.jt8 = phi i8 [ %.promoted380, %bb.y ], [ -1, %bb.p ] ; 4 uses
  %.sroa.028.2.jt8 = phi i8 [ %i.dg, %bb.y ], [ %i.t, %bb.p ] ; 7 uses
  switch i8 %.sroa.028.2.jt8, label %bb.aq [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.aj:                                            ; preds = %bb.z, %bb.q
  %.sroa.028.2.jt10 = phi i8 [ %i.di, %bb.z ], [ %.promoted380682, %bb.q ] ; 5 uses
  switch i8 %.sroa.028.2.jt10, label %bb.bg [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ak:                                            ; preds = %bb.aa, %bb.r
  %.sroa.028.2.jt6 = phi i8 [ %i.dk, %bb.aa ], [ %.promoted380683, %bb.r ] ; 5 uses
  switch i8 %.sroa.028.2.jt6, label %bb.be [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ab, %bb.s
  %.sroa.028.2.jt4 = phi i8 [ %i.dm, %bb.ab ], [ %.promoted380688, %bb.s ] ; 5 uses
  switch i8 %.sroa.028.2.jt4, label %bb.bc [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.am:                                            ; preds = %bb.ac, %bb.t
  %.sroa.028.2.jt1 = phi i8 [ %i.do, %bb.ac ], [ %.promoted380684, %bb.t ] ; 5 uses
  switch i8 %.sroa.028.2.jt1, label %bb.ba [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.ad, %bb.u
  %.sroa.028.2.jt3 = phi i8 [ %i.dq, %bb.ad ], [ %.promoted380685, %bb.u ] ; 5 uses
  switch i8 %.sroa.028.2.jt3, label %bb.bb [
    i8 4, label %bb.ar
    i8 6, label %bb.ar
    i8 18, label %bb.ar
  ]

bb.ao:                                            ; preds = %bb.ae, %bb.af
  br i1 %i.bz, label %bb.av, label %bb.au

bb.ap:                                            ; preds = %bb.ag
  br i1 %i.ce, label %bb.aw, label %bb.bf

bb.aq:                                            ; preds = %bb.ai
  br i1 %i.cl, label %bb.ax, label %.thread150
end_hunk_1
