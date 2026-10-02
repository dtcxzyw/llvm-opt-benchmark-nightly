Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16layout_multiline:bb.a
    i8 1, label %bb.ay
    i8 2, label %bb.aw
  ]

bb.aw:                                            ; preds = %bb.ay, %bb.ax, %bb.av, %bb.at
  %.sroa.09.0.i = phi double [ 0.000000e+00, %bb.at ], [ 0.000000e+00, %bb.ax ], [ %i.gj, %bb.ay ], [ %spec.store.select5.i, %bb.av ]
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, double noundef %.pre128.i)
          to label %bb.az unwind label %bb.bf, !noalias !43038

default.unreachable.i64:                          ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av
  br label %bb.aw

bb.ay:                                            ; preds = %bb.av
  %i.gj = fmul nnan double %spec.store.select5.i, 5.000000e-01
  br label %bb.aw

bb.az:                                            ; preds = %bb.aw
  %i.gk = fadd double %i.ex, %i.ey                ; 2 uses
  %.inv50.i = fcmp ord double %i.gk, 0.000000e+00
  %spec.store.select7.i = select i1 %.inv50.i, double %i.gk, double 0.000000e+00
  %i.gl = load double, ptr %i.dy, align 8, !noalias !43038, !noundef !41
  %i.gm = fadd double %spec.store.select7.i, %i.gl ; 2 uses
  %.inv51.i = fcmp ord double %i.gm, 0.000000e+00
  %spec.store.select8.i = select i1 %.inv51.i, double %i.gm, double 0.000000e+00
  store double %spec.store.select8.i, ptr %i.dy, align 8, !noalias !43038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !43038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false), !noalias !43038
  store double %.sroa.09.0.i, ptr %i.el, align 8, !noalias !43038
  store double %spec.store.select3.i, ptr %i.em, align 8, !noalias !43038
  call void @llvm.experimental.noalias.scope.decl(metadata !43067)
  call void @llvm.experimental.noalias.scope.decl(metadata !43068)
  %i.gn = load i64, ptr %i.i, align 8, !range !45, !alias.scope !43067, !noalias !43069, !noundef !41
  %i.go = icmp eq i64 %i.eo, %i.gn
  br i1 %i.go, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtBR_5point5PointEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge.i unwind label %bb.bb, !noalias !43069

._crit_edge.i:                                    ; preds = %bb.ba
  %.pre129.i = load ptr, ptr %i.dw, align 8, !alias.scope !43067, !noalias !43069
  br label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.eq, ptr %i.ec, align 8, !noalias !43038
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !43038
  call void @llvm.experimental.noalias.scope.decl(metadata !43070)
  call void @llvm.experimental.noalias.scope.decl(metadata !43071)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43072)
  call void @llvm.experimental.noalias.scope.decl(metadata !43073)
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !43074, !noalias !43075, !nonnull !41, !noundef !41
  %i.gs = atomicrmw sub ptr %i.gr, i64 1 release, align 8, !noalias !43076
  %i.gt = icmp eq i64 %i.gs, 1
  br i1 %i.gt, label %bb.bc, label %.body.i

bb.bc:                                            ; preds = %bb.bb
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gq) #58
          to label %.body.i unwind label %bb.bd, !noalias !43075

bb.bd:                                            ; preds = %bb.bc
  %i.gu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43075
  unreachable

bb.be:                                            ; preds = %._crit_edge.i, %bb.az
  %i.gv = phi ptr [ %.pre129.i, %._crit_edge.i ], [ %i.en, %bb.az ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.gv, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.gw, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !43075
  store i64 %i.fd, ptr %i.dx, align 8, !alias.scope !43067, !noalias !43069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !43038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !43038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !43038
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.45.i.i.i.i)
  %i.gx = icmp eq ptr %i.eq, %i.eb
  br i1 %i.gx, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB15_3VecIB1P_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB28_3run16layout_multilines0_0ENCINvB3b_10stack_rowsBW_E0ENtNtNtB9_6traits8iterator8Iterator4nextB2a_.exit.thread.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecIBX_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1g_.exit.i.i.i.i

bb.bf:                                            ; preds = %bb.aw
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.eq, ptr %i.ec, align 8, !noalias !43038
  store i64 %i.fd, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !43038
  call void @llvm.experimental.noalias.scope.decl(metadata !43077)
  %i.gz = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43078)
  call void @llvm.experimental.noalias.scope.decl(metadata !43079)
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !43080, !noalias !43038, !nonnull !41, !noundef !41
  %i.hb = atomicrmw sub ptr %i.ha, i64 1 release, align 8, !noalias !43081
  %i.hc = icmp eq i64 %i.hb, 1
  br i1 %i.hc, label %bb.bg, label %.body.i

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gz) #58
          to label %.body.i unwind label %bb.bh, !noalias !43038

bb.bh:                                            ; preds = %bb.bi, %bb.bg, %.body56.i, %.body.i
  %i.hd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43038
  unreachable

bb.bi:                                            ; preds = %bb.ae
  %i.he = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1e_3VecIB1Y_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2h_3run16layout_multilines0_0EEB2j_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.q) #54
          to label %.body unwind label %bb.bh, !noalias !43042

bb.bj:                                            ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtBG_3map3MapIB1m_INtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtB1L_3VecIB2v_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEENCNvNtB2O_3run16layout_multilines0_0ENCINvB3R_10stack_rowsB1B_E0EEEB2Q_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !43038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.080, i64 24, i1 false)
  %.sroa.481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x double> %i.ft, ptr %.sroa.481.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.080)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.ac, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43082
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit52

.thread:                                          ; preds = %.thread96.loopexit, %.thread96.loopexit.split-lp, %bb.n, %bb.w
  %.pn95 = phi { ptr, i32 } [ %i.br, %bb.n ], [ %lpad.phi, %bb.w ], [ %lpad.loopexit115, %.thread96.loopexit ], [ %lpad.loopexit.split-lp116, %.thread96.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_IBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEEB1m_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.t) #54
          to label %.body unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run18layout_aligned_row(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [304 x i8], align 16              ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !41 ; 6 uses
  %i.i = icmp ult i64 %i.h, 64051194700380388
  tail call void @llvm.assume(i1 %i.i)
  %i.j = mul nuw nsw i64 %i.h, 24                 ; 2 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.a
  store i64 0, ptr %i.f, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.m, align 8
  br label %._crit_edge

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !43096
  %i.n = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43096 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.j) #57
  unreachable

.lr.ph:                                           ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i
  store i64 %i.h, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !41, !noundef !41 ; 3 uses
  %.idx = mul nuw nsw i64 %i.h, 144
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

.body:                                            ; preds = %bb.l, %bb.y, %bb.c
  %.pn = phi { ptr, i32 } [ %eh.lpad-body.ph, %bb.y ], [ %i.v, %bb.c ], [ %i.ao, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #54
          to label %common.resume unwind label %bb.z

bb.c:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %.lr.ph, %bb.x
  %i.w = phi ptr [ %i.n, %.lr.ph ], [ %i.bx, %bb.x ]
  %.val5.i = phi i64 [ 0, %.lr.ph ], [ %i.bz, %bb.x ] ; 4 uses
  %.sroa.0.047 = phi ptr [ %i.s, %.lr.ph ], [ %i.x, %bb.x ] ; 2 uses
  %.sroa.8.046 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.x ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.047, i64 144 ; 2 uses
  %i.y = add nuw nsw i64 %.sroa.8.046, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 dereferenceable(80) %2, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %.sroa.0.047, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.c

._crit_edge:                                      ; preds = %bb.x, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7tN9tvpkfrg_12typst_layout.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit: ; preds = %bb.i, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.z = load i64, ptr %i.e, align 8, !range !70, !noundef !41 ; 3 uses
  %i.aa = icmp eq i64 %i.z, -1
  %i.ab = load ptr, ptr %.sroa.417.0..sroa_idx, align 8 ; 3 uses
  %i.ac = load i64, ptr %.sroa.518.0..sroa_idx, align 8 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br i1 %i.aa, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ac, ptr %i.ae, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !43097)
  %.val4.i = load ptr, ptr %i.p, align 8, !alias.scope !43097, !nonnull !41, !noundef !41 ; 3 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1f_(ptr noalias nofree noundef nonnull readonly align 8 %.val4.i, i64 noundef %.val5.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i unwind label %bb.g, !noalias !43097

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43097, !noundef !41 ; 2 uses
  %i.ag = icmp eq i64 %.val2.i, 0
  br i1 %i.ag, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43097
  br label %common.resume

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %bb.f
  %.val.i = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43097, !noundef !41 ; 2 uses
  %i.ai = icmp eq i64 %.val.i, 0
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit, label %bb.i

bb.i:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecIBw_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_.exit.i
  %i.aj = mul nuw i64 %.val.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !43097
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecIBC_NtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEEB1i_.exit

common.resume:                                    ; preds = %.body, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.af, %bb.g ], [ %i.af, %bb.h ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.e
  store i64 %i.z, ptr %i.c, align 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %i.ac, ptr %.sroa.5.0..sroa_idx, align 8
  %i.ak = and i64 %.sroa.8.046, 1
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %4, label %.thread41

.thread41:                                        ; preds = %bb.o, %bb.n, %bb.p, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i, %4, %bb.w, %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !43098)
  %i.am = load i64, ptr %i.f, align 8, !range !45, !alias.scope !43098, !noalias !43099, !noundef !41
  %i.an = icmp eq i64 %.val5.i, %i.am
  br i1 %i.an, label %bb.k, label %bb.x

bb.k:                                             ; preds = %.thread41
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEE8grow_oneB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %._crit_edge51 unwind label %bb.l, !noalias !43099

._crit_edge51:                                    ; preds = %bb.k
  %.pre52 = load ptr, ptr %i.p, align 8, !alias.scope !43098, !noalias !43099
  br label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.c) #54
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43100
  unreachable

4:                                                ; preds = %bb.j
  %5 = or disjoint i64 %.sroa.8.046, 1            ; 2 uses
  %6 = icmp samesign ult i64 %5, %i.h
  br i1 %6, label %bb.n, label %.thread41

bb.n:                                             ; preds = %4
  %i.aq = getelementptr inbounds nuw [144 x i8], ptr %i.s, i64 %5 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43101)
  %i.ar = load i64, ptr %i.aq, align 16, !range !95, !alias.scope !43101, !noundef !41
  %i.as = icmp samesign ult i64 %i.ar, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.au = load i64, ptr %i.at, align 16, !range !113, !alias.scope !43101
  %i.av = icmp eq i64 %i.au, 0
  %or.cond.i22 = select i1 %i.as, i1 %i.av, i1 false ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.ax = load ptr, ptr %i.aw, align 16, !alias.scope !43101, !nonnull !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !43101
  %.sroa.05.0.i = select i1 %or.cond.i22, ptr %i.ax, ptr %i.aq ; 2 uses
  %i.ba = mul nuw nsw i64 %i.az, 144
  %.idx78 = select i1 %or.cond.i22, i64 %i.ba, i64 144 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %.idx78
  %i.bc = icmp samesign eq i64 %.idx78, 0
  br i1 %i.bc, label %.thread41, label %.lr.ph77

bb.o:                                             ; preds = %.lr.ph77
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bf, i64 144 ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.bb
  br i1 %i.be, label %.thread41, label %.lr.ph77

.lr.ph77:                                         ; preds = %bb.n, %bb.o
  %i.bf = phi ptr [ %i.bd, %bb.o ], [ %.sroa.05.0.i, %bb.n ] ; 5 uses
  %i.bg = load i64, ptr %i.bf, align 16, !range !95, !noalias !43102, !noundef !41 ; 3 uses
  %.not.i.i = icmp eq i64 %i.bg, 4
  br i1 %.not.i.i, label %bb.o, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i: ; preds = %.lr.ph77
  %i.bh = icmp samesign ult i64 %i.bg, 2
  br i1 %i.bh, label %bb.p, label %.thread41

bb.p:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCsdaEETE4DqmE_13typst_library4math2ir4item8MathItemENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run16alignment_lspace0EB2G_.exit.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 43
  %i.bj = load i8, ptr %i.bi, align 1, !range !54, !noundef !41
  %i.bk = trunc nuw i8 %i.bj to i1
  %i.bl = trunc nuw i64 %i.bg to i1
  %or.cond11.i = and i1 %i.bl, %i.bk
  br i1 %or.cond11.i, label %bb.q, label %.thread41

bb.q:                                             ; preds = %bb.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bn = load double, ptr %i.bm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !43101
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) %i.bo, i64 24, i1 false)
  %i.bp = invoke noundef double @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library6layout2emNtB5_2EmNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.bn, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !43101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %i.bp, ptr %i.u, align 8
  store i64 3, ptr %i.d, align 16
  %i.br = icmp eq i64 %i.ac, %i.z
  br i1 %i.br, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge50 unwind label %bb.u

._crit_edge50:                                    ; preds = %bb.t
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.d) #54
          to label %bb.y unwind label %bb.v, !noalias !43103

bb.v:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !43103
  unreachable

bb.w:                                             ; preds = %._crit_edge50, %bb.s
  %i.bu = phi ptr [ %.pre, %._crit_edge50 ], [ %i.ab, %bb.s ]
  %i.bv = getelementptr inbounds nuw [304 x i8], ptr %i.bu, i64 %i.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.bv, ptr noundef nonnull align 16 dereferenceable(304) %i.d, i64 304, i1 false), !noalias !43103
  %i.bw = add i64 %i.ac, 1
  store i64 %i.bw, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread41

bb.x:                                             ; preds = %._crit_edge51, %.thread41
  %i.bx = phi ptr [ %.pre52, %._crit_edge51 ], [ %i.w, %.thread41 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %.val5.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.bz = add i64 %.val5.i, 1                     ; 2 uses
  store i64 %i.bz, ptr %i.q, align 8, !alias.scope !43098, !noalias !43099
  %i.ca = icmp eq ptr %i.x, %i.t
  br i1 %i.ca, label %._crit_edge, label %bb.d

bb.y:                                             ; preds = %bb.r, %bb.u
  %eh.lpad-body.ph = phi { ptr, i32 } [ %i.bq, %bb.r ], [ %i.bs, %bb.u ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #54
          to label %.body unwind label %bb.z

bb.z:                                             ; preds = %bb.y, %.body
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run19row_into_line_frame(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %2, i64 noundef range(i64 0, 1152921504606846976) %3, i8 noundef range(i8 0, 3) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [304 x i8], align 16              ; 10 uses
  %.sroa.769 = alloca [296 x i8], align 8         ; 14 uses
  %i.c = alloca [32 x i8], align 8                ; 20 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = load i64, ptr %5, align 8, !range !49, !noundef !41
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load double, ptr %i.h, align 8, !noundef !41
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.k = load double, ptr %i.j, align 8, !noundef !41
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !41, !noundef !41
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !41
  %i.p = invoke fastcc { double, double } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math3run11measure_row(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.m, i64 noundef %i.o)
          to label %bb.d unwind label %bb.al      ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { double, double } %i.p, 0
  %i.r = extractvalue { double, double } %i.p, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.5.0 = phi double [ %i.k, %bb.b ], [ %i.r, %bb.d ]
  %.sroa.07.0 = phi double [ %i.i, %bb.b ], [ %i.q, %bb.d ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.s = fadd double %.sroa.5.0, %.sroa.07.0      ; 2 uses
  %.inv = fcmp ord double %i.s, 0.000000e+00
  %spec.store.select = select i1 %.inv, double %i.s, double 0.000000e+00
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, double noundef 0.000000e+00, double noundef %spec.store.select, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605)
          to label %bb.f unwind label %bb.al

bb.f:                                             ; preds = %bb.e
  store i64 1, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store double %.sroa.07.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %3 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !41, !noundef !41 ; 9 uses
  %i.x = load i64, ptr %1, align 8, !range !45, !noundef !41 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noundef !41 ; 3 uses
  %i.aa = icmp ult i64 %i.z, 384307168202282326
  call void @llvm.assume(i1 %i.aa)
  %.idx122 = mul nuw nsw i64 %i.z, 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx122 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  store ptr %i.w, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.x, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.ab, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ac = icmp eq i64 %i.z, 0
  br i1 %i.ac, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.lr.ph

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.lr.ph: ; preds = %bb.f
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 11 uses
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 6 uses
  %.sroa.619.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.inv55 = fcmp ord double %.sroa.07.0, 0.000000e+00
  %spec.store.select4 = select i1 %.inv55, double %.sroa.07.0, double 0.000000e+00 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !43132)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  store ptr %i.ai, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !43132, !noalias !43133
  %.sroa.0.0.copyload65291 = load i64, ptr %i.w, align 8, !noalias !43132 ; 2 uses
  %.not292 = icmp eq i64 %.sroa.0.0.copyload65291, -1
  br i1 %.not292, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1c_.exit.thread, label %.lr.ph

end_hunk_0
