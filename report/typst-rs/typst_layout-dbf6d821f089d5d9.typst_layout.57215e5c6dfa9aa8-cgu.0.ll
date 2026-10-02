Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer5float:bb.a
bb.ar:                                            ; preds = %bb.aq
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21280)
  call void @llvm.experimental.noalias.scope.decl(metadata !21281)
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21282)
  call void @llvm.experimental.noalias.scope.decl(metadata !21283)
  %i.gp = load ptr, ptr %i.go, align 8, !alias.scope !21284, !noalias !21285, !nonnull !41, !noundef !41
  %i.gq = atomicrmw sub ptr %i.gp, i64 1 release, align 8, !noalias !21286
  %i.gr = icmp eq i64 %i.gq, 1
  br i1 %i.gr, label %bb.as, label %.body.thread

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.go) #58
          to label %.body.thread unwind label %bb.at, !noalias !21287

bb.at:                                            ; preds = %bb.as
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21287
  unreachable

bb.au:                                            ; preds = %bb.ao
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 144 ; 2 uses
  %i.gu = load double, ptr %i.gt, align 8, !alias.scope !21273, !noalias !21274, !noundef !41
  %i.gv = fadd double %spec.store.select.i43, %i.gu ; 2 uses
  %.inv16.i = fcmp ord double %i.gv, 0.000000e+00
  %spec.store.select2.i = select i1 %.inv16.i, double %i.gv, double 0.000000e+00
  store double %spec.store.select2.i, ptr %i.gt, align 8, !alias.scope !21273, !noalias !21274
  %i.gw = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21275
  store ptr %2, ptr %i.b, align 8, !noalias !21275
  %.sroa.5.0..sroa_idx23.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5.0..sroa_idx23.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false), !noalias !21273
  call void @llvm.experimental.noalias.scope.decl(metadata !21288)
  call void @llvm.experimental.noalias.scope.decl(metadata !21289)
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 64 ; 2 uses
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !21290, !noalias !21291, !noundef !41 ; 3 uses
  %i.gz = load i64, ptr %i.gw, align 8, !range !45, !alias.scope !21290, !noalias !21291, !noundef !41
  %i.ha = icmp eq i64 %i.gy, %i.gz
  br i1 %i.ha, label %bb.av, label %bb.ba

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEE8grow_oneBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gw)
          to label %bb.ba unwind label %bb.aw, !noalias !21291

bb.aw:                                            ; preds = %bb.av
  %i.hb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21292)
  call void @llvm.experimental.noalias.scope.decl(metadata !21293)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21294)
  call void @llvm.experimental.noalias.scope.decl(metadata !21295)
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !21296, !noalias !21297, !nonnull !41, !noundef !41
  %i.he = atomicrmw sub ptr %i.hd, i64 1 release, align 8, !noalias !21298
  %i.hf = icmp eq i64 %i.he, 1
  br i1 %i.hf, label %bb.ax, label %.body.thread

bb.ax:                                            ; preds = %bb.aw
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hc) #58
          to label %.body.thread unwind label %bb.ay, !noalias !21299

bb.ay:                                            ; preds = %bb.ax
  %i.hg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21299
  unreachable

bb.az:                                            ; preds = %bb.aq, %bb.ap
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 80
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !21278, !noalias !21279, !nonnull !41, !noundef !41
  %i.hj = getelementptr inbounds nuw [56 x i8], ptr %i.hi, i64 %i.gk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hj, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false), !noalias !21287
  %i.hk = add i64 %i.gk, 1
  store i64 %i.hk, ptr %i.gj, align 8, !alias.scope !21278, !noalias !21279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21275
  br label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions10push_float.exit

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8, !alias.scope !21290, !noalias !21291, !nonnull !41, !noundef !41
  %i.hn = getelementptr inbounds nuw [56 x i8], ptr %i.hm, i64 %i.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.hn, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !21299
  %i.ho = add i64 %i.gy, 1
  store i64 %i.ho, ptr %i.gx, align 8, !alias.scope !21290, !noalias !21291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21275
  br label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions10push_float.exit

bb.bb:                                            ; preds = %bb.bd
  %i.hp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.bc:                                            ; preds = %bb.an
  %i.hq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21300)
  %i.hr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21301)
  call void @llvm.experimental.noalias.scope.decl(metadata !21302)
  %i.hs = load ptr, ptr %i.hr, align 8, !alias.scope !21303, !noalias !21273, !nonnull !41, !noundef !41
  %i.ht = atomicrmw sub ptr %i.hs, i64 1 release, align 8, !noalias !21303
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.bd, label %.body.thread

bb.bd:                                            ; preds = %bb.bc
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hr) #58
          to label %.body.thread unwind label %bb.bb

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions10push_float.exit: ; preds = %bb.ba, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 120 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21304)
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 136 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !21304, !noundef !41 ; 3 uses
  %i.hy = load i64, ptr %i.hv, align 8, !range !45, !alias.scope !21304, !noundef !41
  %i.hz = icmp eq i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions10push_float.exit
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hv) #58
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions10push_float.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 128
  %i.ib = load ptr, ptr %i.ia, align 8, !alias.scope !21304, !nonnull !41, !noundef !41
  %i.ic = getelementptr inbounds nuw [16 x i8], ptr %i.ib, i64 %i.hx
  store i128 %i.q, ptr %i.ic, align 16, !noalias !21304
  %i.id = add i64 %i.hx, 1
  store i64 %i.id, ptr %i.hw, align 8, !alias.scope !21304
  %i.ie = load i8, ptr %i.cg, align 4, !range !54, !noundef !41
  store i8 1, ptr %0, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ie, ptr %.sroa.418.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bg

bb.bg:                                            ; preds = %.loopexit75, %_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4pushBN_.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.bf
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ah, %bb.ag, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bg

.body.thread:                                     ; preds = %bb.bh, %bb.bi, %bb.bd, %bb.bc, %bb.ax, %bb.aw, %bb.as, %bb.ar
  %eh.lpad-body67 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.bh ], [ %i.hq, %bb.bd ], [ %i.hb, %bb.aw ], [ %i.gn, %bb.ar ], [ %i.gn, %bb.as ], [ %i.hq, %bb.bc ], [ %i.hb, %bb.ax ], [ %lpad.thr_comm, %bb.bi ]
  resume { ptr, i32 } %eh.lpad-body67

bb.bh:                                            ; preds = %bb.n, %bb.al, %bb.ac, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE8capacity0EB1S_.exit.i, %bb.aa, %bb.y
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21305)
  call void @llvm.experimental.noalias.scope.decl(metadata !21306)
  call void @llvm.experimental.noalias.scope.decl(metadata !21307)
  %i.if = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21308, !nonnull !41, !noundef !41
  %i.ig = atomicrmw sub ptr %i.if, i64 1 release, align 8, !noalias !21308
  %i.ih = icmp eq i64 %i.ig, 1
  br i1 %i.ih, label %bb.bi, label %.body.thread

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx) #58
          to label %.body.thread unwind label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer6column(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(440) %1, i128 noundef %2, ptr noundef align 16 %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.9878 = alloca [48 x i8], align 8         ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 12 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %.sroa.12806 = alloca [48 x i8], align 8        ; 2 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 12 uses
  %i.k = alloca [64 x i8], align 8                ; 14 uses
  %.sroa.13811.sroa.0 = alloca [24 x i8], align 8 ; 5 uses
  %.sroa.13811.sroa.7 = alloca [48 x i8], align 8 ; 5 uses
  %.sroa.10364 = alloca [32 x i8], align 8        ; 3 uses
  %i.l = alloca [56 x i8], align 8                ; 10 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [48 x i8], align 8                ; 6 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 9 uses
  %i.v = alloca [24 x i8], align 8                ; 9 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.13631.sroa.0 = alloca [24 x i8], align 8 ; 5 uses
  %i.y = alloca [48 x i8], align 8                ; 8 uses
  %i.z = alloca [48 x i8], align 8                ; 4 uses
  %i.aa = alloca [64 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [48 x i8], align 8               ; 8 uses
  %i.ae = alloca [48 x i8], align 8               ; 10 uses
  %i.af = alloca [48 x i8], align 8               ; 8 uses
  %i.ag = alloca [72 x i8], align 8               ; 10 uses
  %i.ah = alloca [8 x i8], align 8                ; 4 uses
  %i.ai = alloca [8 x i8], align 8                ; 5 uses
  %i.aj = alloca [64 x i8], align 8               ; 8 uses
  %i.ak = alloca [8 x i8], align 8                ; 4 uses
  %i.al = alloca [8 x i8], align 8                ; 6 uses
  %i.am = alloca [64 x i8], align 8               ; 7 uses
  %.sroa.9474.sroa.7 = alloca [6 x i8], align 2   ; 6 uses
  %.sroa.14467.sroa.0 = alloca [6 x i8], align 2  ; 5 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [16 x i8], align 8               ; 6 uses
  %i.aq = alloca [16 x i8], align 16              ; 6 uses
  %i.ar = alloca [8 x i8], align 8                ; 4 uses
  %i.as = alloca [8 x i8], align 8                ; 4 uses
  %i.at = alloca [8 x i8], align 8                ; 4 uses
  %i.au = alloca [8 x i8], align 8                ; 4 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [24 x i8], align 8               ; 5 uses
  %i.ax = alloca [48 x i8], align 8               ; 7 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [48 x i8], align 8               ; 6 uses
  %i.ba = alloca [176 x i8], align 16             ; 10 uses
  %i.bb = alloca [32 x i8], align 8               ; 8 uses
  %i.bc = alloca [32 x i8], align 8               ; 8 uses
  %i.bd = alloca [48 x i8], align 8               ; 11 uses
  %i.be = alloca [48 x i8], align 8               ; 4 uses
  %i.bf = alloca [48 x i8], align 8               ; 8 uses
  %i.bg = alloca [48 x i8], align 8               ; 9 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [24 x i8], align 8               ; 15 uses
  %i.bj = alloca [16 x i8], align 16              ; 9 uses
  %i.bk = alloca [176 x i8], align 8              ; 5 uses
  %i.bl = alloca [280 x i8], align 8              ; 10 uses
  %i.bm = alloca [176 x i8], align 8              ; 6 uses
  %.sroa.12384.sroa.10 = alloca [6 x i8], align 2 ; 8 uses
  %.sroa.12374.sroa.0 = alloca [6 x i8], align 2  ; 5 uses
  %i.bn = alloca [176 x i8], align 8              ; 6 uses
  %.sroa.11325 = alloca [6 x i8], align 2         ; 6 uses
  %i.bo = alloca [280 x i8], align 8              ; 37 uses
  %i.bp = alloca [24 x i8], align 8               ; 6 uses
  %i.bq = alloca [24 x i8], align 8               ; 7 uses
  %i.br = alloca [24 x i8], align 8               ; 4 uses
  %i.bs = alloca [24 x i8], align 8               ; 6 uses
  %i.bt = alloca [40 x i8], align 8               ; 14 uses
  %i.bu = alloca [40 x i8], align 8               ; 8 uses
  %i.bv = alloca [24 x i8], align 8               ; 4 uses
  %i.bw = alloca [24 x i8], align 8               ; 5 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [40 x i8], align 8               ; 9 uses
  %i.bz = alloca [64 x i8], align 8               ; 5 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [24 x i8], align 8               ; 5 uses
  %i.cc = alloca [40 x i8], align 8               ; 11 uses
  %i.cd = alloca [32 x i8], align 8               ; 8 uses
  %i.ce = alloca [48 x i8], align 8               ; 6 uses
  %i.cf = alloca [48 x i8], align 8               ; 8 uses
  %i.cg = alloca [48 x i8], align 8               ; 8 uses
  %i.ch = alloca [48 x i8], align 8               ; 4 uses
  %i.ci = alloca [48 x i8], align 8               ; 8 uses
  %i.cj = alloca [168 x i8], align 8              ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 5 uses
  %i.ck = alloca [168 x i8], align 8              ; 5 uses
  %i.cl = alloca [168 x i8], align 8              ; 5 uses
  %i.cm = alloca [48 x i8], align 8               ; 18 uses
  %i.cn = alloca [64 x i8], align 8               ; 8 uses
  %i.co = alloca [48 x i8], align 8               ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 7 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7compose10InsertionsEBH_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cp)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cq = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %i.cp, align 8
  %.sroa.5243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store i64 0, ptr %.sroa.5243.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7248.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.8250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8250.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 272
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx, i8 0, i64 32, i1 false)
  br label %common.resume

bb.c:                                             ; preds = %bb.a
  store i64 2, ptr %i.cp, align 8
  %.sroa.5243.0..sroa_idx244 = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  store i64 0, ptr %.sroa.5243.0..sroa_idx244, align 8
  %.sroa.6.0..sroa_idx246 = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.6.0..sroa_idx246, align 8
  %.sroa.7248.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7248.0..sroa_idx249, i8 0, i64 16, i1 false)
  %.sroa.8250.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.8250.0..sroa_idx251, align 8
  %.sroa.9.0..sroa_idx253 = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx253, i8 0, i64 16, i1 false)
  %.sroa.10.0..sroa_idx254 = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.10.0..sroa_idx254, align 8
  %.sroa.11.0..sroa_idx256 = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 2 uses
  %.sroa.13.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx256, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.13.0..sroa_idx260, align 8
  %.sroa.14.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %.sroa.15.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %1, i64 312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.14.0..sroa_idx262, i8 0, i64 32, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 14 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 136 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.ct, align 8 ; 2 uses
  store ptr null, ptr %i.ct, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %.split1717, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  store ptr %.sroa.0.0.copyload, ptr %i.cd, align 8
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.cv = load double, ptr %i.cu, align 8, !noundef !41
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.cx = load double, ptr %i.cw, align 8, !noundef !41
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21732)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !21733
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.cz = load ptr, ptr %i.cy, align 8, !alias.scope !21732, !noalias !21734, !nonnull !41, !align !46, !noundef !41
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 376 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !21732, !noalias !21734, !nonnull !41, !align !46, !noundef !41 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21735)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br), !noalias !21736
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.dd, i64 24, i1 false), !noalias !21737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq), !noalias !21736
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 112
  %i.df = load i8, ptr %i.de, align 8, !range !54, !alias.scope !21735, !noalias !21737, !noundef !41
  store double %i.cv, ptr %i.bq, align 8, !noalias !21736
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store double %i.cx, ptr %i.dg, align 8, !noalias !21736
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i8 %i.df, ptr %i.dh, align 8, !noalias !21736
  %i.di = getelementptr inbounds nuw i8, ptr %i.bq, i64 17
  store i8 0, ptr %i.di, align 1, !noalias !21736
  invoke void @_RNvNtCs7tN9tvpkfrg_12typst_layout4flow12layout_frame(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.cg, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc, i128 noundef 0, ptr noundef align 16 null, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.br, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.bq)
          to label %bb.f unwind label %bb.o, !inline_history !21316

bb.e:                                             ; preds = %bb.m
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  br label %common.resume

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq), !noalias !21736
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br), !noalias !21736
  %i.dk = load i64, ptr %i.cg, align 8, !range !52, !noalias !21733, !noundef !41 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !noalias !21733 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !noalias !21733 ; 2 uses
  br i1 %i.dl, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.611.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %.sroa.10.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.0..sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..sroa_idx.i, i64 24, i1 false), !noalias !21733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !21733
  store i64 %i.dk, ptr %i.cf, align 8, !noalias !21733
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  store ptr %i.dn, ptr %.sroa.6.0..sroa_idx3.i, align 8, !noalias !21733
  %.sroa.8.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.dp, ptr %.sroa.8.0..sroa_idx5.i, align 8, !noalias !21733
  %i.dq = load ptr, ptr %i.da, align 8, !alias.scope !21732, !noalias !21734, !nonnull !41, !align !46, !noundef !41
  %i.dr = getelementptr i8, ptr %i.dq, i64 96
  %.val16.i = load double, ptr %i.dr, align 8, !noalias !21733
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions23push_footnote_separator(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cp, double %.val16.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.cf)
          to label %bb.h unwind label %bb.o, !noalias !21734, !inline_history !21317

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !21733
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.du = load ptr, ptr %.sroa.7.0..sroa_idx3, align 8, !nonnull !41, !noundef !41 ; 4 uses
  %i.dv = icmp eq ptr %i.du, %i.dt
  br i1 %i.dv, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 48 ; 2 uses
  store ptr %i.dw, ptr %.sroa.7.0..sroa_idx3, align 8
  %.sroa.0299.0.copyload300 = load i64, ptr %i.du, align 8, !noalias !21738 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0299.0.copyload300, 2
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.i, !prof !47

bb.i:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.6301.0..sroa_idx302 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i64 %.sroa.0299.0.copyload300, ptr %i.ce, align 8, !noalias !21733
  %.sroa.6301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6301.0..sroa_idx302, i64 40, i1 false)
  %i.dx = load ptr, ptr %i.da, align 8, !alias.scope !21732, !noalias !21734, !nonnull !41, !align !46, !noundef !41
  %i.dy = getelementptr i8, ptr %i.dx, i64 104
  %.val17.i = load double, ptr %i.dy, align 8, !noalias !21734
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB4_10Insertions13push_footnote(ptr noalias nofree noundef align 8 dereferenceable(168) %i.cp, double %.val17.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ce)
          to label %bb.k unwind label %bb.o, !noalias !21734, !inline_history !21317

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %bb.h, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #57
          to label %bb.j unwind label %bb.o, !noalias !21734, !inline_history !21317

bb.j:                                             ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.dz = icmp eq ptr %i.dt, %i.dw
  br i1 %i.dz, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !alias.scope !21739, !noalias !21734, !noundef !41
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit81, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.ea)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit81 unwind label %bb.e

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !21733
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cd), !inline_history !21317
  br label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit81: ; preds = %bb.l, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %i.cd, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !21733
  br label %bb.r

common.resume:                                    ; preds = %bb.b, %.body.i91.thread1047, %bb.mn, %bb.mo, %bb.mt, %.thread1090, %bb.o, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.dj, %bb.e ], [ %i.ed, %bb.o ], [ %.pn41.pn.ph, %.body.i91.thread1047 ], [ %i.cq, %bb.b ], [ %.pn1086, %.thread1090 ], [ %i.app, %bb.mo ], [ %i.app, %bb.mn ], [ %.pn1086, %bb.mt ]
  resume { ptr, i32 } %common.resume.op

bb.o:                                             ; preds = %bb.d, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.i, %bb.g
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cd) #54
          to label %common.resume unwind label %bb.p, !inline_history !21317

bb.p:                                             ; preds = %bb.o
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21734, !inline_history !21317
  unreachable

bb.q:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !21733
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.cd), !inline_history !21317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 2, ptr %i.ef, align 8
  %.sroa.4280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.dn, ptr %.sroa.4280.0..sroa_idx, align 8
  %.sroa.5281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.dp, ptr %.sroa.5281.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEEECs7tN9tvpkfrg_12typst_layout.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  br label %.split1717

.split1717:                                       ; preds = %bb.c, %bb.r
  %i.eg = load ptr, ptr %i.cr, align 8, !nonnull !41, !align !46, !noundef !41
  call fastcc void @_RNvXs8_NtCs7tN9tvpkfrg_12typst_layout4flowNtB5_4WorkNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.ck, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.eg) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cn, i64 40 ; 2 uses
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.sroa.6305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  %.sroa.7306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %.sroa.8307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cm, i64 8 ; 5 uses
  %.sroa.5310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 3 uses
  %.sroa.6311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %.sroa.7312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %.sroa.8313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.bo, i64 264 ; 16 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 11 uses
  %.sroa.4.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.bo, i64 72 ; 8 uses
  %.sroa.5.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.bo, i64 80 ; 13 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bo, i64 88 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.er = getelementptr inbounds nuw i8, ptr %i.bm, i64 168
  %.sroa.7355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.9358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.9361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.10364.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.eu = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.fa = getelementptr inbounds nuw i8, ptr %i.j, i64 57
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.fd = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 57
  %i.ff = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.4.0..sroa_idx.i.i204 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa_idx.i.i205 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %.sroa.6.0..sroa_idx.i.i206 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.7.0..sroa_idx.i.i207 = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 4 uses
  %.sroa.8870.0..sroa_idx871 = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.5895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.6896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.8.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.10.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4844.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.5845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %.sroa.6846.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.7847.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48 ; 3 uses
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.624.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.4.0..sroa_idx.i25.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  %.sroa.610.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.bo, i64 40 ; 11 uses
  %.sroa.7645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 56 ; 2 uses
  %.sroa.4633.0..sroa_idx634 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.5639.0..sroa_idx640 = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.7645.0..sroa_idx646 = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.ft = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %5 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %7 = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.439.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.540.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.6758.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %.sroa.5778.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.6779.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 5 uses
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bo, i64 57
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ac, i64 17
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.4.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.5.0..sroa_idx.i.i156 = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 5 uses
  %.sroa.68.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.gh = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.4611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ag, i64 56 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.gn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.go = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.gq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  %.sroa.4746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.5747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %.sroa.6748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.5717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %.sroa.6718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.7719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %.sroa.5685.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %.sroa.6686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.7687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.5531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %.sroa.4.0..sroa_idx.i.i161 = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.5506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %.sroa.6507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.7508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.4339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 9 ; 2 uses
  %.sroa.5340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %.sroa.6341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 16 ; 2 uses
  %.sroa.7342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cn, i64 56
  %i.gx = getelementptr inbounds nuw i8, ptr %i.cn, i64 57
  %i.gy = getelementptr inbounds nuw i8, ptr %i.bl, i64 80 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bl, i64 88 ; 9 uses
  %.sroa.6.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 7 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.bl, i64 64 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  %i.hk = getelementptr inbounds nuw i8, ptr %i.bl, i64 264 ; 2 uses
  %.sroa.4114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.5115.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.6116.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 2 uses
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.660.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.6449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %.sroa.4139.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %.sroa.570.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 17
  %.sroa.7.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 18
  %.sroa.9.sroa.3.0..sroa.9.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %.sroa.1071.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %.sroa.1172.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  %.sroa.42083.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.82085.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.6.0..sroa_idx2073 = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %.sroa.72074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %.sroa.92076.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bo, i64 96
  br label %bb.t

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit73, %bb.mw, %bb.mm, %bb.q
  ret void

.loopexit1168:                                    ; preds = %._crit_edge, %bb.lu, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit.i.i.i, %bb.kz, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildE4sizeBO_.exit.i.i.i107
  %lpad.loopexit1170 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i91.thread1047

.loopexit.split-lp1169:                           ; preds = %.thread.i.i.i.i.invoke
  %lpad.loopexit.split-lp1171 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i91.thread1047

bb.t:                                             ; preds = %.split1717, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameNtNtCs7tN9tvpkfrg_12typst_layout4flow4StopEEB1T_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %i.hs = load <2 x double>, ptr %.sroa.15.0..sroa_idx264, align 8
  %i.ht = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hs) ; 2 uses
  %.inv.i = fcmp ord double %i.ht, 0.000000e+00
  %i.hu = load double, ptr %i.eh, align 8, !noundef !41
  %.neg = fneg double %i.ht
  %i.hv = select i1 %.inv.i, double %.neg, double -0.000000e+00
  %i.hw = fadd double %i.hu, %i.hv                ; 2 uses
  %.inv = fcmp ord double %i.hw, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.hw, double 0.000000e+00
  store double %spec.store.select1, ptr %i.eh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  call void @llvm.experimental.noalias.scope.decl(metadata !21740)
  call void @llvm.experimental.noalias.scope.decl(metadata !21741)
  %i.hx = load ptr, ptr %i.cr, align 8, !alias.scope !21741, !noalias !21742, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 96 ; 2 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !21743, !nonnull !41, !noundef !41 ; 4 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 104 ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !noalias !21743, !noundef !41 ; 5 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.hy, align 8, !noalias !21743
  store i64 0, ptr %i.ia, align 8, !noalias !21743
  %.not.i.i.i114 = icmp eq ptr %i.hz, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i114, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ic = getelementptr inbounds i8, ptr %i.hz, i64 -16
  %i.id = load atomic i64, ptr %i.ic acquire, align 8, !noalias !21744
  %i.ie = icmp eq i64 %i.id, 1
  %i.if = zext i1 %i.ie to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.t, %bb.u
  %.sroa.02.0.i.i.i115 = phi i8 [ %i.if, %bb.u ], [ 1, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc), !noalias !21743
  store ptr %i.hz, ptr %i.cc, align 8, !noalias !21743
  store i64 %i.ib, ptr %.sroa.5304.0..sroa_idx, align 8, !noalias !21743
  store i64 %i.ib, ptr %.sroa.7306.0..sroa_idx, align 8, !noalias !21743
  store i8 %.sroa.02.0.i.i.i115, ptr %.sroa.8307.0..sroa_idx, align 8, !noalias !21743
  %.not1719 = icmp eq i64 %i.ib, 0
  br i1 %.not1719, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit
  %i.ig = trunc nuw i8 %.sroa.02.0.i.i.i115 to i1
  br label %bb.w

._crit_edge:                                      ; preds = %bb.lv, %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBQ_5model8footnote12FootnoteElemEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterCs7tN9tvpkfrg_12typst_layout.exit
  store i64 %i.ib, ptr %.sroa.6305.0..sroa_idx, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsakL8LGkl72C_4ecow3vec8IntoIterINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1l_5model8footnote12FootnoteElemEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(40) %i.cc)
          to label %.noexc unwind label %.loopexit1168, !inline_history !21328

.noexc:                                           ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !21743
  %i.ih = load ptr, ptr %i.cr, align 8, !alias.scope !21741, !noalias !21742, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 80 ; 2 uses
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !21742, !nonnull !41, !noundef !41 ; 8 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 88 ; 2 uses
  %i.il = load i64, ptr %i.ik, align 8, !noalias !21742, !noundef !41 ; 4 uses
  store ptr inttoptr (i64 16 to ptr), ptr %i.ii, align 8, !noalias !21742
  store i64 0, ptr %i.ik, align 8, !noalias !21742
  %.not.i.i.i112 = icmp ne ptr %i.ij, inttoptr (i64 16 to ptr) ; 5 uses
  br i1 %.not.i.i.i112, label %bb.v, label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBO_.exit

bb.v:                                             ; preds = %.noexc
  %i.im = getelementptr inbounds i8, ptr %i.ij, i64 -16
  %i.in = load atomic i64, ptr %i.im acquire, align 8, !noalias !21745
  %i.io = icmp eq i64 %i.in, 1
  %i.ip = zext i1 %i.io to i8
  br label %_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBO_.exit

_RNvXsx_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecRNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect11PlacedChildENtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iterBO_.exit: ; preds = %.noexc, %bb.v
  %.sroa.02.0.i.i.i113 = phi i8 [ %i.ip, %bb.v ], [ 1, %.noexc ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.by), !noalias !21743
  store ptr %i.ij, ptr %i.by, align 8, !noalias !21743
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer6column:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !21883
  %i.vh = load double, ptr %i.fo, align 8, !alias.scope !21885, !noalias !21886, !noundef !41
  %i.vi = load double, ptr %i.fp, align 8, !alias.scope !21885, !noalias !21886, !noundef !41
  %i.vj = load i8, ptr %.sroa.7645.0..sroa_idx, align 8, !range !54, !alias.scope !21885, !noalias !21886, !noundef !41
  %i.vk = load i8, ptr %i.ga, align 1, !range !54, !alias.scope !21885, !noalias !21886, !noundef !41
  store double %i.vh, ptr %i.ac, align 8, !noalias !21883
  store double %i.vi, ptr %i.gb, align 8, !noalias !21883
  store i8 %i.vj, ptr %i.gc, align 8, !noalias !21883
  store i8 %i.vk, ptr %i.gd, align 1, !noalias !21883
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB4_11SingleChild6layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.ad, ptr noundef nonnull align 16 %i.ve, ptr noalias nofree noundef align 8 dereferenceable(200) %i.vg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac)
          to label %.noexc186 unwind label %.body.i91.thread1053.loopexit, !inline_history !21460

.noexc186:                                        ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !21883
  %i.vl = load i64, ptr %i.ad, align 8, !range !52, !noalias !21883, !noundef !41 ; 2 uses
  %i.vm = icmp eq i64 %i.vl, 2
  %i.vn = load ptr, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !21883 ; 2 uses
  %i.vo = load i64, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !21883 ; 2 uses
  br i1 %i.vm, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i.thread, label %bb.dr

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i.thread: ; preds = %.noexc186
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21883
  br label %.loopexit2600

bb.dr:                                            ; preds = %.noexc186
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.616.0..sroa_idx.i.i, i64 24, i1 false), !noalias !21883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !21883
  store i64 %i.vl, ptr %i.ae, align 8, !noalias !21883
  store ptr %i.vn, ptr %.sroa.4.0..sroa_idx.i17.i, align 8, !noalias !21883
  store i64 %i.vo, ptr %.sroa.5.0..sroa_idx.i.i156, align 8, !noalias !21883
  %i.vp = load i64, ptr %i.ve, align 16, !range !49, !noalias !21884, !noundef !41
  %i.vq = trunc nuw i64 %i.vp to i1
  br i1 %i.vq, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.vr = getelementptr inbounds nuw i8, ptr %i.ve, i64 8
  %i.vs = load double, ptr %i.vr, align 8, !noalias !21884, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !21883
  %i.vt = load ptr, ptr %i.en, align 8, !alias.scope !21885, !noalias !21886, !nonnull !41, !align !46, !noundef !41
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4flow7composeNtB2_8Composer9footnotes(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef align 8 dereferenceable(440) %i.vt, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ae, double noundef 0.000000e+00, i1 noundef zeroext false, i1 noundef zeroext true)
          to label %bb.du unwind label %.body235.thread959, !noalias !21886, !inline_history !21543

bb.dt:                                            ; preds = %bb.dr
  %i.vu = load double, ptr %i.fs, align 8, !alias.scope !21885, !noalias !21886, !noundef !41
  %i.vv = load double, ptr %i.ge, align 8, !noalias !21883, !noundef !41
  %i.vw = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs4fits(double noundef %i.vu, double noundef %i.vv)
          to label %bb.ee unwind label %.body235.thread959, !noalias !21884, !inline_history !21543

.body235.thread959:                               ; preds = %bb.dt, %bb.dw, %bb.ds, %bb.ef
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body235.thread

.body235:                                         ; preds = %bb.ei
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i91.thread

bb.du:                                            ; preds = %bb.ds
  %i.vx = load i8, ptr %i.ab, align 8, !range !91, !noalias !21883, !noundef !41
  %.not.i18.i = icmp eq i8 %i.vx, -1
  br i1 %.not.i18.i, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !noalias !21887
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21883
  br label %bb.ec

bb.dw:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !21883
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor10flush_tags(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.bo)
          to label %bb.dx unwind label %.body235.thread959, !noalias !21886, !inline_history !21543

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !21883
  store double %i.vs, ptr %i.gf, align 8, !noalias !21883
  store i8 0, ptr %i.gg, align 1, !noalias !21883
  store ptr %i.ve, ptr %i.gh, align 8, !noalias !21883
  store i8 2, ptr %i.aa, align 8, !noalias !21883
  call void @llvm.experimental.noalias.scope.decl(metadata !21888)
  %i.vy = load i64, ptr %.sroa.5.0..sroa_idx.i87, align 8, !alias.scope !21888, !noalias !21889, !noundef !41 ; 3 uses
  %i.vz = load i64, ptr %i.eo, align 8, !range !45, !alias.scope !21888, !noalias !21889, !noundef !41
  %i.wa = icmp eq i64 %i.vy, %i.vz
  br i1 %i.wa, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4flow10distribute4ItemE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eo)
          to label %bb.eb unwind label %bb.dz, !noalias !21889

bb.dz:                                            ; preds = %bb.dy
  %i.wb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow10distribute4ItemEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.aa) #54
          to label %.body235.thread unwind label %bb.ea, !noalias !21890

bb.ea:                                            ; preds = %bb.dz
  %i.wc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21890
  unreachable

bb.eb:                                            ; preds = %bb.dy, %bb.dx
  %i.wd = load ptr, ptr %.sroa.4.0..sroa_idx.i86, align 8, !alias.scope !21888, !noalias !21889, !nonnull !41, !noundef !41
  %i.we = getelementptr inbounds nuw [64 x i8], ptr %i.wd, i64 %i.vy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.we, ptr noundef nonnull align 8 dereferenceable(64) %i.aa, i64 64, i1 false), !noalias !21890
  %i.wf = add i64 %i.vy, 1
  store i64 %i.wf, ptr %.sroa.5.0..sroa_idx.i87, align 8, !alias.scope !21888, !noalias !21889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !21883
  store i8 -1, ptr %i.an, align 8, !alias.scope !21881, !noalias !21887
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eh, %bb.eb, %bb.dv
  call void @llvm.experimental.noalias.scope.decl(metadata !21891)
  call void @llvm.experimental.noalias.scope.decl(metadata !21892), !noalias !21881
  call void @llvm.experimental.noalias.scope.decl(metadata !21893), !noalias !21881
  %i.wg = load ptr, ptr %.sroa.5.0..sroa_idx.i.i156, align 8, !alias.scope !21894, !noalias !21895, !nonnull !41, !noundef !41
  %i.wh = atomicrmw sub ptr %i.wg, i64 1 release, align 8, !noalias !21896
  %i.wi = icmp eq i64 %i.wh, 1
  br i1 %i.wi, label %bb.ed, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i

bb.ed:                                            ; preds = %bb.ec
  fence acquire, !noalias !21881
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i156) #58
          to label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i unwind label %.body.i91.thread1053.loopexit, !inline_history !21460

bb.ee:                                            ; preds = %bb.dt
  br i1 %i.vw, label %bb.ei, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.wj = invoke noundef zeroext i1 @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout7regionsNtB5_7Regions12may_progress(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.bo)
          to label %bb.eg unwind label %.body235.thread959, !noalias !21886, !inline_history !21543

bb.eg:                                            ; preds = %bb.ef
  br i1 %i.wj, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  store i8 0, ptr %i.an, align 8, !alias.scope !21881, !noalias !21887
  store i8 0, ptr %.sroa.410.0..sroa_idx.i.i, align 1, !alias.scope !21881, !noalias !21887
  br label %bb.ec

bb.ei:                                            ; preds = %bb.eg, %bb.ee
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !21883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.z, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false), !noalias !21883
  %i.wk = getelementptr inbounds nuw i8, ptr %i.ve, i64 160
  %i.wl = load i8, ptr %i.wk, align 16, !range !48, !noalias !21884, !noundef !41
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ve, i64 161
  %i.wn = load i8, ptr %i.wm, align 1, !range !48, !noalias !21884, !noundef !41
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ve, i64 162
  %i.wp = load i8, ptr %i.wo, align 2, !range !54, !noalias !21884, !noundef !41
  %i.wq = trunc nuw i8 %i.wp to i1
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor5frame(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.bo, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.z, i8 noundef %i.wl, i8 noundef %i.wn, i1 noundef zeroext %i.wq, i1 noundef zeroext false)
          to label %bb.ej unwind label %.body235, !noalias !21820, !inline_history !21543

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !21883
  br label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i

.body235.thread:                                  ; preds = %bb.dz, %.body235.thread959
  %eh.lpad-body236958 = phi { ptr, i32 } [ %lpad.thr_comm, %.body235.thread959 ], [ %i.wb, %bb.dz ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21897)
  call void @llvm.experimental.noalias.scope.decl(metadata !21898), !noalias !21881
  call void @llvm.experimental.noalias.scope.decl(metadata !21899), !noalias !21881
  %i.wr = load ptr, ptr %.sroa.5.0..sroa_idx.i.i156, align 8, !alias.scope !21900, !noalias !21895, !nonnull !41, !noundef !41
  %i.ws = atomicrmw sub ptr %i.wr, i64 1 release, align 8, !noalias !21901
  %i.wt = icmp eq i64 %i.ws, 1
  br i1 %i.wt, label %bb.ek, label %.body.i91.thread

bb.ek:                                            ; preds = %.body235.thread
  fence acquire, !noalias !21881
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i.i156) #58
          to label %.body.i91.thread unwind label %bb.el, !noalias !21820, !inline_history !21460

bb.el:                                            ; preds = %bb.ek
  %i.wu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21886, !inline_history !21543
  unreachable

_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor6single.exit.i: ; preds = %bb.ed, %bb.ec, %bb.ej
  %.pr = load i8, ptr %i.an, align 8, !noalias !21849 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !21883
  %.not4.i = icmp eq i8 %.pr, -1
  br i1 %.not4.i, label %bb.go, label %.loopexit2600.loopexit

bb.em:                                            ; preds = %.lr.ph1703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14467.sroa.0)
  %i.wv = getelementptr inbounds nuw i8, ptr %.val.i.i941701, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !alias.scope !21812, !noalias !21813, !nonnull !41, !noundef !41 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21902)
  %i.wx = invoke noundef zeroext i1 @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library6layout7regionsNtB5_7Regions7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.bo)
          to label %.noexc188 unwind label %.body.i91.thread1053.loopexit, !inline_history !21460

.noexc188:                                        ; preds = %bb.em
  br i1 %i.wx, label %.loopexit1158, label %bb.en

bb.en:                                            ; preds = %.noexc188
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13631.sroa.0)
  %i.wy = load ptr, ptr %i.en, align 8, !alias.scope !21903, !noalias !21904, !nonnull !41, !align !46, !noundef !41
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 360
  %i.xa = load ptr, ptr %i.wz, align 8, !noalias !21904, !nonnull !41, !align !46, !noundef !41 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !21905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !noalias !21904
  %i.xb = load <2 x double>, ptr %i.fs, align 8, !noalias !21904 ; 2 uses
  %.sroa.7645.0.copyload = load i64, ptr %.sroa.7645.0..sroa_idx, align 8, !noalias !21904
  call void @llvm.experimental.noalias.scope.decl(metadata !21906)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !21905
  %i.xc = load <2 x i64>, ptr %i.fn, align 8, !noalias !21904
  %.sroa.4633.0.copyload = load i64, ptr %i.fn, align 8, !noalias !21904
  store <2 x i64> %i.xc, ptr %.sroa.4633.0..sroa_idx634, align 8, !noalias !21907
  store <2 x double> %i.xb, ptr %.sroa.5639.0..sroa_idx640, align 8, !noalias !21907
  store i64 %.sroa.7645.0.copyload, ptr %.sroa.7645.0..sroa_idx646, align 8, !noalias !21907
  call void @llvm.experimental.noalias.scope.decl(metadata !21908), !noalias !21909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !21910
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xa, i64 40
  %i.xe = load ptr, ptr %i.xd, align 8, !alias.scope !21911, !noalias !21912, !nonnull !41, !align !59, !noundef !41
  %8 = getelementptr inbounds nuw i8, ptr %i.xa, i64 48
  %9 = getelementptr inbounds nuw i8, ptr %i.xa, i64 88
  %10 = getelementptr inbounds nuw i8, ptr %i.xa, i64 120
  %11 = getelementptr inbounds nuw i8, ptr %i.xa, i64 144
  store ptr %i.ww, ptr %i.l, align 8, !noalias !21910
  store ptr %i.xa, ptr %i.ft, align 8, !noalias !21910
  store ptr %i.xe, ptr %i.fu, align 8, !noalias !21910
  store ptr %8, ptr %i.fv, align 8, !noalias !21910
  store ptr %9, ptr %5, align 8, !noalias !21910
  store ptr %10, ptr %6, align 8, !noalias !21910
  store ptr %11, ptr %7, align 8, !noalias !21910
  invoke fastcc void @_RINvMs3_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectINtB6_10CachedCellINtNtCs3oUPovFnLWP_4core6result6ResultNtNtNtCsdaEETE4DqmE_13typst_library6layout8fragment8FragmentINtNtCsakL8LGkl72C_4ecow3vec6EcoVecNtNtB1P_4diag16SourceDiagnosticEEE11get_or_initNCNvMs0_B6_NtB6_10MultiChild11layout_full0NtNtB1N_7regions7RegionsEBa_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 16 %i.ww, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.m, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %i.l)
          to label %.noexc189 unwind label %.body.i91.thread1053.loopexit, !inline_history !21460

.noexc189:                                        ; preds = %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !21910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !21905
  %i.xf = load i64, ptr %i.q, align 8, !range !70, !noalias !21905, !noundef !41 ; 2 uses
  %i.xg = icmp eq i64 %i.xf, -1
  %i.xh = load ptr, ptr %.sroa.439.0..sroa_idx.i.i, align 8, !noalias !21905, !nonnull !41, !noundef !41 ; 9 uses
  %i.xi = load i64, ptr %.sroa.540.0..sroa_idx.i.i, align 8, !noalias !21905 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !21905
  br i1 %i.xg, label %.loopexit1159, label %bb.eo

bb.eo:                                            ; preds = %.noexc189
  %.idx1131 = mul nuw nsw i64 %i.xi, 48
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xh, i64 %.idx1131 ; 2 uses
  %.not2.not.not.i.i.i.not.not.not.not.not.not4193.not = icmp eq i64 %i.xi, 0
  br i1 %.not2.not.not.i.i.i.not.not.not.not.not.not4193.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i, label %.lr.ph4196

bb.ep:                                            ; preds = %.lr.ph4196
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xl, i64 48 ; 2 uses
  %.not2.not.not.i.i.i.not.not.not.not.not.not.not = icmp eq ptr %i.xk, %i.xj
  br i1 %.not2.not.not.i.i.i.not.not.not.not.not.not.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i, label %.lr.ph4196

.lr.ph4196:                                       ; preds = %bb.eo, %bb.ep
  %i.xl = phi ptr [ %i.xk, %bb.ep ], [ %i.xh, %bb.eo ] ; 2 uses
  %i.xm = getelementptr i8, ptr %i.xl, i64 16
  %.val.i.i53.i = load ptr, ptr %i.xm, align 8, !noalias !21913, !nonnull !41, !noundef !41
  %i.xn = getelementptr inbounds nuw i8, ptr %.val.i.i53.i, i64 48
  %i.xo = load i64, ptr %i.xn, align 16, !noalias !21913, !noundef !41 ; 2 uses
  %i.xp = icmp ult i64 %i.xo, 48038396025285291
  call void @llvm.assume(i1 %i.xp), !noalias !21909
  %.not.i.i54.i = icmp eq i64 %i.xo, 0
  br i1 %.not.i.i54.i, label %bb.ep, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i: ; preds = %bb.ep, %.lr.ph4196, %bb.eo
  %.not2.not.not.i.i.i.not.not.not.not.not.not.lcssa = phi i8 [ 0, %bb.eo ], [ 0, %bb.ep ], [ 1, %.lr.ph4196 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !21905
  %i.xq = icmp ult i64 %i.xi, 192153584101141163
  call void @llvm.assume(i1 %i.xq), !noalias !21909
  store ptr %i.xh, ptr %i.p, align 8, !noalias !21905
  store i64 %i.xf, ptr %i.fw, align 8, !noalias !21905
  store ptr %i.xh, ptr %i.fx, align 8, !noalias !21905
  store ptr %i.xj, ptr %i.fy, align 8, !noalias !21905
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !21905
  call void @llvm.experimental.noalias.scope.decl(metadata !21914), !noalias !21909
  %i.xr = icmp eq i64 %i.xi, 0
  br i1 %i.xr, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.eq:                                            ; preds = %bb.ew
  %i.xs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i91.thread

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xh, i64 48 ; 2 uses
  store ptr %i.xt, ptr %i.fx, align 8, !alias.scope !21914, !noalias !21915
  %.sroa.0756.0.copyload = load i64, ptr %i.xh, align 8, !noalias !21916 ; 3 uses
  %.not.i50.i = icmp eq i64 %.sroa.0756.0.copyload, 2
  br i1 %.not.i50.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.thread, label %bb.es, !prof !47

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit.i.i, %bb.ey, %bb.er
  %.pn.pn.i.i155 = phi { ptr, i32 } [ %i.xu, %bb.er ], [ %i.xx, %bb.ey ], [ %i.xx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #54
          to label %.body.i91.thread unwind label %bb.ex, !noalias !21917, !inline_history !21575

bb.er:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.thread
  %i.xu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.es:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.6758.0..sroa.5751.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.xh, i64 8
  store i64 %.sroa.0756.0.copyload, ptr %i.o, align 8, !noalias !21905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6758.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6758.0..sroa.5751.8..sroa_idx, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !21905
  call void @llvm.experimental.noalias.scope.decl(metadata !21918), !noalias !21909
  %i.xv = icmp eq i64 %i.xi, 1
  br i1 %i.xv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit51.i.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit51.i.i: ; preds = %bb.es
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xh, i64 96
  store ptr %i.xw, ptr %i.fx, align 8, !alias.scope !21918, !noalias !21919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.xt, i64 48, i1 false), !noalias !21920
  %.pr965 = load i64, ptr %i.n, align 8, !noalias !21905
  %.not43.i.i = icmp eq i64 %.pr965, 2
  br i1 %.not43.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.eu

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.thread: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB2A_10MultiChild6layout0EB2E_.exit.i.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @346) #57
          to label %bb.et unwind label %bb.er, !noalias !21917, !inline_history !21575

bb.et:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i.i.thread
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit.i.i: ; preds = %bb.ev
  %i.xx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21921), !noalias !21909
  call void @llvm.experimental.noalias.scope.decl(metadata !21922), !noalias !21909
  call void @llvm.experimental.noalias.scope.decl(metadata !21923), !noalias !21909
  %i.xy = load ptr, ptr %.sroa.5778.0..sroa_idx, align 8, !alias.scope !21924, !noalias !21905, !nonnull !41, !noundef !41
  %i.xz = atomicrmw sub ptr %i.xy, i64 1 release, align 8, !noalias !21925
  %i.ya = icmp eq i64 %i.xz, 1
  br i1 %i.ya, label %bb.ey, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.es, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit51.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21905
  br label %bb.ew

bb.eu:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit51.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !21926), !noalias !21909
  call void @llvm.experimental.noalias.scope.decl(metadata !21927), !noalias !21909
  call void @llvm.experimental.noalias.scope.decl(metadata !21928), !noalias !21909
  call void @llvm.experimental.noalias.scope.decl(metadata !21929), !noalias !21909
  %i.yb = load ptr, ptr %i.fz, align 8, !alias.scope !21930, !noalias !21905, !nonnull !41, !noundef !41
  %i.yc = atomicrmw sub ptr %i.yb, i64 1 release, align 8, !noalias !21931
  %i.yd = icmp eq i64 %i.yc, 1
  br i1 %i.yd, label %bb.ev, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i

bb.ev:                                            ; preds = %bb.eu
  fence acquire, !noalias !21909
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fz) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit.i.i, !noalias !21917, !inline_history !21575

bb.ew:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.0776.0.copyload = phi i64 [ %.sroa.0756.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.0776.0.copyload.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i ] ; 2 uses
  %.not.i20.i.not = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i ] ; 2 uses
  %.sroa.0759.0 = phi i64 [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i ]
  %.sroa.14765.0 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %.sroa.4633.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i ]
  %i.ye = phi <2 x double> [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout.exit.i.i ], [ %i.xb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i ]
  %.sroa.4777.0.copyload = load ptr, ptr %.sroa.6758.0..sroa_idx, align 8, !noalias !21905 ; 2 uses
  %.sroa.5778.0.copyload = load i64, ptr %.sroa.5778.0..sroa_idx, align 8, !noalias !21905 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13631.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6779.0..sroa_idx, i64 24, i1 false), !noalias !21932
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !21905
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p)
          to label %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i unwind label %bb.eq, !noalias !21917, !inline_history !21575

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit56.i.i: ; preds = %bb.eu, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !21905
  %.sroa.0776.0.copyload.pre = load i64, ptr %i.o, align 8, !noalias !21905
  br label %bb.ew

bb.ex:                                            ; preds = %bb.ey, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.yf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !21917, !inline_history !21575
  unreachable

bb.ey:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEEB13_.exit.i.i
  fence acquire, !noalias !21909
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.5778.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.ex, !noalias !21917, !inline_history !21575

_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i: ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !21905
  %i.yg = icmp eq i64 %.sroa.0776.0.copyload, 2
  br i1 %i.yg, label %.loopexit1159, label %bb.ez

.loopexit1159:                                    ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i, %.noexc189
  %.sroa.10630.0976 = phi i64 [ %i.xi, %.noexc189 ], [ %.sroa.5778.0.copyload, %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i ]
  %.sroa.7629.0975 = phi ptr [ %i.xh, %.noexc189 ], [ %.sroa.4777.0.copyload, %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13631.sroa.0)
  br label %.loopexit1158

bb.ez:                                            ; preds = %_RNvMs0_NtNtCs7tN9tvpkfrg_12typst_layout4flow7collectNtB5_10MultiChild6layout.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !21933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.425.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.13631.sroa.0, i64 24, i1 false), !noalias !21933
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13631.sroa.0)
  store i64 %.sroa.0776.0.copyload, ptr %i.y, align 8, !noalias !21933
  store ptr %.sroa.4777.0.copyload, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !21933
  store i64 %.sroa.5778.0.copyload, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !21933
  %.cast.i.i = inttoptr i64 %.sroa.5778.0.copyload to ptr
  %i.yh = getelementptr inbounds nuw i8, ptr %.cast.i.i, i64 48
  %i.yi = load i64, ptr %i.yh, align 16, !noalias !21904, !noundef !41 ; 2 uses
  %i.yj = icmp ult i64 %i.yi, 48038396025285291
  call void @llvm.assume(i1 %i.yj)
  %i.yk = icmp eq i64 %i.yi, 0
  %i.yl = trunc nuw i8 %.not2.not.not.i.i.i.not.not.not.not.not.not.lcssa to i1
  %i.ym = and i1 %i.yk, %i.yl
  %or.cond = and i1 %i.ym, %.not.i20.i.not
  br i1 %or.cond, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.fc, %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !21933
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !21933
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false), !noalias !21933
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ww, i64 128
  %i.yo = load i8, ptr %i.yn, align 16, !range !48, !noalias !21934, !noundef !41
  %i.yp = getelementptr inbounds nuw i8, ptr %i.ww, i64 129
  %i.yq = load i8, ptr %i.yp, align 1, !range !48, !noalias !21934, !noundef !41
  %i.yr = getelementptr inbounds nuw i8, ptr %i.ww, i64 130
  %i.ys = load i8, ptr %i.yr, align 2, !range !54, !noalias !21934, !noundef !41
  %i.yt = trunc nuw i8 %i.ys to i1
  invoke fastcc void @_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4flow10distributeNtB4_11Distributor5frame(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.bo, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.w, i8 noundef %i.yo, i8 noundef %i.yq, i1 noundef zeroext %i.yt, i1 noundef zeroext true)
          to label %bb.fd unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEBH_.exit.i, !noalias !21904, !inline_history !21593

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4flow7collect10MultiSpillEBH_.exit.i: ; preds = %bb.fa
  %i.yu = landingpad { ptr, i32 }
          cleanup
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter16measure_auto_row:bb.a
bb.ce:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i
  %i.rg = mul nuw i64 %.val2.i, 40
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i893, i64 noundef %i.rg, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29646
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit

.body:                                            ; preds = %.loopexit484, %.loopexit.split-lp485, %bb.eb, %bb.ea, %.body.i, %bb.di, %bb.bv, %bb.bu, %.loopexit.split-lp, %bb.cc
  %.pn82 = phi { ptr, i32 } [ %lpad.phi491, %.body.i ], [ %eh.lpad-body187.ph, %bb.cc ], [ %i.qi, %bb.bv ], [ %i.qi, %bb.bu ], [ %eh.lpad-body187.ph, %.loopexit.split-lp ], [ %.pn80, %bb.eb ], [ %lpad.phi491, %bb.di ], [ %.pn80, %bb.ea ], [ %lpad.loopexit486, %.loopexit484 ], [ %lpad.loopexit.split-lp487, %.loopexit.split-lp485 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !29650)
  %.val.i881 = load ptr, ptr %i.ac, align 8, !alias.scope !29650, !nonnull !41, !noundef !41 ; 2 uses
  %.val1.i882 = load i64, ptr %i.ad, align 8, !alias.scope !29650, !noundef !41 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29651)
  %i.rh = icmp eq i64 %.val1.i882, 0
  br i1 %i.rh, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i888, label %.lr.ph.i.i.i883

.lr.ph.i.i.i883:                                  ; preds = %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887
  %.sroa.0.011.i.i.i884 = phi i64 [ %i.rj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887 ], [ 0, %.body ] ; 2 uses
  %i.ri = getelementptr inbounds nuw [40 x i8], ptr %.val.i881, i64 %.sroa.0.011.i.i.i884 ; 2 uses
  %i.rj = add nuw nsw i64 %.sroa.0.011.i.i.i884, 1 ; 2 uses
  %i.rk = getelementptr i8, ptr %i.ri, i64 16
  %.val8.i.i.i885 = load i64, ptr %i.rk, align 8, !range !45, !alias.scope !29652, !noalias !29650, !noundef !41 ; 2 uses
  %i.rl = icmp eq i64 %.val8.i.i.i885, 0
  br i1 %i.rl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887, label %bb.cf

bb.cf:                                            ; preds = %.lr.ph.i.i.i883
  %i.rm = getelementptr i8, ptr %i.ri, i64 24
  %.val9.i.i.i886 = load ptr, ptr %i.rm, align 8, !alias.scope !29651, !noalias !29650, !nonnull !41, !noundef !41
  %i.rn = shl nuw i64 %.val8.i.i.i885, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i886, i64 noundef %i.rn, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29653
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887: ; preds = %bb.cf, %.lr.ph.i.i.i883
  %i.ro = icmp eq i64 %i.rj, %.val1.i882
  br i1 %i.ro, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i888, label %.lr.ph.i.i.i883

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i888: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i887, %.body
  %.val2.i889 = load i64, ptr %i.x, align 8, !range !45, !alias.scope !29650, !noundef !41 ; 2 uses
  %i.rp = icmp eq i64 %.val2.i889, 0
  br i1 %i.rp, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit890, label %bb.cg

bb.cg:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i888
  %i.rq = mul nuw i64 %.val2.i889, 40
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i881, i64 noundef %i.rq, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29650
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit890

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit890: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i888, %bb.cg
  call void @llvm.experimental.noalias.scope.decl(metadata !29654)
  %.val.i169 = load i64, ptr %i.y, align 8, !range !45, !alias.scope !29654, !noundef !41 ; 2 uses
  %i.rr = icmp eq i64 %.val.i169, 0
  br i1 %i.rr, label %bb.fr, label %bb.fs

.loopexit484:                                     ; preds = %bb.b, %bb.cp
  %lpad.loopexit486 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp485:                            ; preds = %bb.cs
  %lpad.loopexit.split-lp487 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ch:                                            ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !29590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not70 = icmp eq ptr %.sroa.08.1.i, null
  br i1 %.not70, label %._crit_edge.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.1.i, ptr %i.rs, align 8
  %i.rt = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.1.i, ptr %i.rt, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.cj

bb.cj:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspans19CellMeasurementDataEBH_.exit128, %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !29655)
  %.val.i99 = load ptr, ptr %i.ac, align 8, !alias.scope !29655, !nonnull !41, !noundef !41 ; 2 uses
  %.val1.i100 = load i64, ptr %i.ad, align 8, !alias.scope !29655, !noundef !41 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29656)
  %i.ru = icmp eq i64 %.val1.i100, 0
  br i1 %i.ru, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i106, label %.lr.ph.i.i.i101

.lr.ph.i.i.i101:                                  ; preds = %bb.cj, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105
  %.sroa.0.011.i.i.i102 = phi i64 [ %i.rw, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105 ], [ 0, %bb.cj ] ; 2 uses
  %i.rv = getelementptr inbounds nuw [40 x i8], ptr %.val.i99, i64 %.sroa.0.011.i.i.i102 ; 2 uses
  %i.rw = add nuw nsw i64 %.sroa.0.011.i.i.i102, 1 ; 2 uses
  %i.rx = getelementptr i8, ptr %i.rv, i64 16
  %.val8.i.i.i103 = load i64, ptr %i.rx, align 8, !range !45, !alias.scope !29657, !noalias !29655, !noundef !41 ; 2 uses
  %i.ry = icmp eq i64 %.val8.i.i.i103, 0
  br i1 %i.ry, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i.i101
  %i.rz = getelementptr i8, ptr %i.rv, i64 24
  %.val9.i.i.i104 = load ptr, ptr %i.rz, align 8, !alias.scope !29656, !noalias !29655, !nonnull !41, !noundef !41
  %i.sa = shl nuw i64 %.val8.i.i.i103, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i104, i64 noundef %i.sa, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29658
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105: ; preds = %bb.ck, %.lr.ph.i.i.i101
  %i.sb = icmp eq i64 %i.rw, %.val1.i100
  br i1 %i.sb, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i106, label %.lr.ph.i.i.i101

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i106: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTjjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i105, %bb.cj
  %.val2.i107 = load i64, ptr %i.x, align 8, !range !45, !alias.scope !29655, !noundef !41 ; 2 uses
  %i.sc = icmp eq i64 %.val2.i107, 0
  br i1 %i.sc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit108, label %bb.cl

bb.cl:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i106
  %i.sd = mul nuw i64 %.val2.i107, 40
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i99, i64 noundef %i.sd, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29655
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit108

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ce, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjIBw_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7tN9tvpkfrg_12typst_layout.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit168

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit168: ; preds = %bb.fq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit108, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTjjIBC_NtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEEEECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  ret void

bb.cm:                                            ; preds = %bb.b
  %i.se = load i64, ptr %i.w, align 8, !range !49, !noundef !41
  %i.sf = trunc nuw i64 %i.se to i1
  br i1 %i.sf, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.sg = load i64, ptr %i.aj, align 8, !noundef !41
  %i.sh = load i64, ptr %i.ak, align 8, !noundef !41 ; 16 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not71 = icmp eq i64 %i.sg, %.sroa.056.0609
  br i1 %.not71, label %bb.cp, label %.backedge

bb.co:                                            ; preds = %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.backedge

bb.cp:                                            ; preds = %bb.cn
  %i.si = invoke noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.ai, i64 noundef %.sroa.056.0609, i64 noundef %i.sh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @427)
          to label %bb.cq unwind label %.loopexit484 ; 5 uses

bb.cq:                                            ; preds = %bb.cp
  %.not72 = icmp eq ptr %i.si, null
  br i1 %.not72, label %bb.cs, label %bb.cr, !prof !44

bb.cr:                                            ; preds = %bb.cq
  %i.sj = load i8, ptr %i.al, align 8, !range !54, !noundef !41
  %i.sk = trunc nuw i8 %i.sj to i1                ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 56 ; 2 uses
  %i.sm = load i64, ptr %i.sl, align 8, !range !53, !noundef !41 ; 2 uses
  %i.sn = shl i64 %i.sm, 1
  %i.so = add i64 %i.sn, -1
  %.sroa.04.0 = select i1 %i.sk, i64 %i.so, i64 %i.sm ; 5 uses
  %i.sp = icmp ugt i64 %.sroa.04.0, 1             ; 2 uses
  br i1 %i.sp, label %bb.cu, label %bb.da

bb.cs:                                            ; preds = %bb.cq
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @428) #57
          to label %bb.ct unwind label %.loopexit.split-lp485

bb.ct:                                            ; preds = %bb.cs
  unreachable

bb.cu:                                            ; preds = %bb.cr
  %i.sq = load ptr, ptr %i.am, align 8, !nonnull !41, !noundef !41 ; 2 uses
  %i.sr = load i64, ptr %i.an, align 8, !noundef !41 ; 4 uses
  %i.ss = getelementptr inbounds nuw [32 x i8], ptr %i.sq, i64 %i.sr ; 2 uses
  %i.st = call i64 @llvm.usub.sat.i64(i64 %i.sr, i64 %i.sh) ; 2 uses
  %i.su = icmp ugt i64 %i.st, %.sroa.04.0
  br i1 %i.su, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.cv

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.cu
  %.neg.i111 = add nuw nsw i64 %.sroa.04.0, 1
  %.neg11.i = sub i64 %.neg.i111, %i.st           ; 2 uses
  %i.sv = getelementptr inbounds [32 x i8], ptr %i.ss, i64 %.neg11.i
  %i.sw = getelementptr inbounds i8, ptr %i.sv, i64 -32
  %i.sx = add i64 %i.sr, 576460752303423487
  %i.sy = add i64 %i.sx, %.neg11.i
  %.pre17.i = and i64 %i.sy, 576460752303423487
  br label %bb.cv

bb.cv:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i, %bb.cu
  %.pre-phi18.i = phi i64 [ %.pre17.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.sr, %bb.cu ] ; 3 uses
  %.val13.i.i = phi ptr [ %i.sw, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i ], [ %i.ss, %bb.cu ]
  %.not.i.i = icmp ugt i64 %.pre-phi18.i, %i.sh
  br i1 %.not.i.i, label %bb.cw, label %.backedge

bb.cw:                                            ; preds = %bb.cv
  %i.sz = sub nuw nsw i64 %.pre-phi18.i, %i.sh
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cy, %bb.cw
  %i.ta = phi ptr [ %.val13.i.i, %bb.cw ], [ %i.tc, %bb.cy ] ; 2 uses
  %.sroa.3.0.i.i.i.i = phi i64 [ %i.sz, %bb.cw ], [ %i.te, %bb.cy ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %.pre-phi18.i, %bb.cw ], [ %i.td, %bb.cy ]
  %i.tb = icmp eq ptr %i.sq, %i.ta
  br i1 %i.tb, label %.backedge, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.tc = getelementptr inbounds i8, ptr %i.ta, i64 -32 ; 2 uses
  %i.td = add i64 %.sroa.0.0.i.i.i.i, -1          ; 2 uses
  %i.te = add nsw i64 %.sroa.3.0.i.i.i.i, -1      ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.tc, align 8, !alias.scope !29659, !noalias !29660
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.tf = icmp eq i64 %i.te, 0                    ; 2 uses
  %brmerge.i.i.i.i.i.i = select i1 %i.tf, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %brmerge.i.i.i.i.i.i, label %bb.cz, label %bb.cx

bb.cz:                                            ; preds = %bb.cy
  %not. = xor i1 %i.tf, true
  %i.tg = select i1 %not., i1 true, i1 %.not.i.i.i.i.i.i
  %.not74 = icmp eq i64 %i.td, %4
  %or.cond449 = select i1 %i.tg, i1 %.not74, i1 false
  br i1 %or.cond449, label %bb.da, label %.backedge

bb.da:                                            ; preds = %bb.cz, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.th = getelementptr i8, ptr %i.si, i64 48
  %.val87 = load i64, ptr %i.th, align 8          ; 2 uses
  %.val88 = load i64, ptr %i.sl, align 8          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29661)
  call void @llvm.experimental.noalias.scope.decl(metadata !29662)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 %i.ao, ptr %i.m, align 1, !noalias !29663
  %i.ti = shl i64 %.val88, 1
  %i.tj = add i64 %i.ti, -1
  %storemerge.i112 = select i1 %i.sk, i64 %i.tj, i64 %.val88 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !29663
  store i64 0, ptr %i.l, align 8, !noalias !29663
  store ptr inttoptr (i64 8 to ptr), ptr %i.ap, align 8, !noalias !29663
  store i64 0, ptr %i.aq, align 8, !noalias !29663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !29663
  store ptr %i.m, ptr %i.k, align 8, !noalias !29663
  store ptr %1, ptr %i.ar, align 8, !noalias !29663
  store ptr %i.l, ptr %i.as, align 8, !noalias !29663
  %i.tk = icmp eq i64 %storemerge.i112, 1
  br i1 %i.tk, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !29663
  invoke fastcc void @_RNCNvMNtNtCs7tN9tvpkfrg_12typst_layout4grid8rowspansNtNtB6_8layouter12GridLayouter33prepare_auto_row_cell_measurement0B8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.k)
          to label %bb.dj unwind label %.body.i.loopexit, !noalias !29664

bb.dc:                                            ; preds = %bb.da
  br i1 %i.ax, label %.loopexit38.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.tl = add i64 %storemerge.i112, %i.sh         ; 3 uses
  br i1 %i.ds, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.dd, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.ud, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ 0, %bb.dd ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i = phi double [ %.sroa.0.0.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ -0.000000e+00, %bb.dd ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1 ], [ 0, %bb.dd ]
  %i.tm = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.sroa.04.0.i.i.i.i.i ; 3 uses
  %i.tn = load i64, ptr %i.tm, align 8, !range !52, !alias.scope !29665, !noalias !29666, !noundef !41
  %i.to = icmp eq i64 %i.tn, 2
  br i1 %i.to, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i, label %bb.de

bb.de:                                            ; preds = %.new
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 48
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.tp, align 8, !alias.scope !29667, !noalias !29668, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ule i64 %i.sh, %.val.i.i.i.i.i.i.i
  %i.tq = icmp ult i64 %.val.i.i.i.i.i.i.i, %i.tl
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i, %i.tq
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.df, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i

bb.df:                                            ; preds = %bb.de
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.ts = load double, ptr %i.tr, align 8, !alias.scope !29665, !noalias !29666, !noundef !41
  %i.tt = fadd double %.sroa.02.0.i.i.i.i.i, %i.ts
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i: ; preds = %bb.df, %bb.de, %.new
  %.sroa.0.0.i.i.i.i.i.i = phi double [ %i.tt, %bb.df ], [ %.sroa.02.0.i.i.i.i.i, %.new ], [ %.sroa.02.0.i.i.i.i.i, %bb.de ] ; 3 uses
  %i.tu = getelementptr inbounds nuw [64 x i8], ptr %i.au, i64 %.sroa.04.0.i.i.i.i.i ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 64
  %i.tw = load i64, ptr %i.tv, align 8, !range !52, !alias.scope !29665, !noalias !29666, !noundef !41
  %i.tx = icmp eq i64 %i.tw, 2
  br i1 %i.tx, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1, label %bb.dg

bb.dg:                                            ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 112
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %i.ty, align 8, !alias.scope !29667, !noalias !29668, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp ule i64 %i.sh, %.val.i.i.i.i.i.i.i.1
  %i.tz = icmp ult i64 %.val.i.i.i.i.i.i.i.1, %i.tl
  %.sroa.0.0.i.i.i.i.i.i.i.i.1 = and i1 %.not.i.i.i.i.i.i.i.i.1, %i.tz
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.1, label %bb.dh, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1

bb.dh:                                            ; preds = %bb.dg
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tu, i64 96
  %i.ub = load double, ptr %i.ua, align 8, !alias.scope !29665, !noalias !29666, !noundef !41
  %i.uc = fadd double %.sroa.0.0.i.i.i.i.i.i, %i.ub
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i.1: ; preds = %bb.dh, %bb.dg, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.1 = phi double [ %i.uc, %bb.dh ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCs7tN9tvpkfrg_12typst_layout4grid8layouter3RowNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsdNCNvMNtB1f_8rowspansNtB1d_12GridLayouter33prepare_auto_row_cell_measurements_0NCINvNtB6_3map8map_foldB21_NtNtCs6xpQEr8gLsQ_11typst_utils6scalar6ScalardNCINvXsa_B23_B21_NtNtNtB8_6traits5accum3Sum3sumINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2Q_EE0NCIB49_B4x_ddNCINvXsq_B4z_B4x_B5y_3sumINtB4b_3MapB62_B5h_EE0NCINvXs26_B5A_dB5y_3sumIB7x_B7w_B77_EE0E0E0E0B1h_.exit.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.dg ] ; 3 uses
  %i.ud = add nuw i64 %.sroa.04.0.i.i.i.i.i, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit38.i.loopexit.unr-lcssa, label %.new

.body.i.loopexit:                                 ; preds = %bb.db, %bb.dq
  %lpad.loopexit489 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i.loopexit.split-lp:                        ; preds = %.invoke.i
  %lpad.loopexit.split-lp490 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body.i.loopexit.split-lp, %.body.i.loopexit
  %lpad.phi491 = phi { ptr, i32 } [ %lpad.loopexit489, %.body.i.loopexit ], [ %lpad.loopexit.split-lp490, %.body.i.loopexit.split-lp ] ; 2 uses
  %.val.i.pre.i = load i64, ptr %i.l, align 8, !range !45, !alias.scope !29669, !noalias !29663 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29669)
  %i.ue = icmp eq i64 %.val.i.pre.i, 0
  br i1 %i.ue, label %.body, label %bb.di

bb.di:                                            ; preds = %.body.i
  %.val1.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !29669, !noalias !29663, !nonnull !41, !noundef !41
  %i.uf = shl nuw i64 %.val.i.pre.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.uf, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !29670
  br label %.body

bb.dj:                                            ; preds = %bb.db
  %i.ug = load ptr, ptr %i.j, align 8, !noalias !29663, !align !46, !noundef !41
  %i.uh = load i64, ptr %i.cj, align 8, !noalias !29663
  %i.ui = load i64, ptr %i.ck, align 8, !range !49, !noalias !29663, !noundef !41
  %i.uj = load double, ptr %i.cl, align 8, !noalias !29663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !29663
  %i.uk = load i8, ptr %i.m, align 1, !range !54, !noalias !29663, !noundef !41
  %i.ul = trunc nuw i8 %i.uk to i1
  %.sroa.028.0.i = select i1 %i.ul, double %i.ci, double +inf
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i, %bb.dr, %bb.dj
  %.sroa.028.1.i = phi double [ %.sroa.028.0.i, %bb.dj ], [ %.sroa.028.2.i, %bb.dr ], [ %i.ws, %bb.dv ], [ %i.ws, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.427.0.i = phi i64 [ %i.uh, %bb.dj ], [ %i.xa, %bb.dr ], [ undef, %bb.dv ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.026.0.i = phi ptr [ %i.ug, %bb.dj ], [ %i.wz, %bb.dr ], [ null, %bb.dv ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.025.1.i = phi double [ %.sroa.025.0.i, %bb.dj ], [ %.sroa.025.2.i, %bb.dr ], [ %i.abh, %bb.dv ], [ %i.abh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.521.0.i = phi double [ %i.uj, %bb.dj ], [ %i.xc, %bb.dr ], [ %spec.store.select3.i.i, %bb.dv ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.020.0.i = phi i64 [ %i.ui, %bb.dj ], [ %i.xb, %bb.dr ], [ 1, %bb.dv ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 2 uses
  %.sroa.09.0.i = phi double [ 0.000000e+00, %bb.dj ], [ %spec.store.select.i114, %bb.dr ], [ %spec.store.select.i114, %bb.dv ], [ %spec.store.select.i114, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 3 uses
  %.sroa.0.0.i115 = phi i64 [ 0, %bb.dj ], [ 0, %bb.dr ], [ %i.wx, %bb.dv ], [ %i.wx, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsEECs7tN9tvpkfrg_12typst_layout.exit70.i ] ; 10 uses
  %i.um = load i8, ptr %i.al, align 8, !range !54, !noalias !29671, !noundef !41
  %i.un = trunc nuw i8 %i.um to i1
  %i.uo = shl i64 %.val87, 1
  %i.up = add i64 %i.uo, -1
  %.sroa.0.0.i.i = select i1 %i.un, i64 %i.up, i64 %.val87
  %i.uq = sub nuw nsw i64 %i.af, %.sroa.056.0609
  %..i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.uq, i64 %.sroa.0.0.i.i) ; 4 uses
  %invariant.gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.cn, i64 %.sroa.056.0609 ; 9 uses
  %.not.i.i.i.i.i.i116 = icmp eq i64 %..i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i116, label %.loopexit481, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.dk
  %xtraiter1638 = and i64 %..i.i.i.i.i.i.i, 7     ; 3 uses
  %i.ur = icmp samesign ult i64 %..i.i.i.i.i.i.i, 8
  br i1 %i.ur, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter1642 = and i64 %..i.i.i.i.i.i.i, 1152921504606846968
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.010.i.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.vh, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.02.09.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.vf, %.lr.ph.i.i.i.i.i.i ] ; 9 uses
  %niter1643 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter1643.next.7, %.lr.ph.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i = load double, ptr %gep.i.i.i.i.i.i, align 8, !noalias !29672, !noundef !41
  %i.us = fadd double %.sroa.0.010.i.i.i.i.i.i, %.val8.i.i.i.i.i.i
  %i.ut = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.ut, i64 8
  %.val8.i.i.i.i.i.i.1 = load double, ptr %gep.i.i.i.i.i.i.1, align 8, !noalias !29672, !noundef !41
  %i.uu = fadd double %i.us, %.val8.i.i.i.i.i.i.1
  %i.uv = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.uv, i64 16
  %.val8.i.i.i.i.i.i.2 = load double, ptr %gep.i.i.i.i.i.i.2, align 8, !noalias !29672, !noundef !41
  %i.uw = fadd double %i.uu, %.val8.i.i.i.i.i.i.2
  %i.ux = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.ux, i64 24
  %.val8.i.i.i.i.i.i.3 = load double, ptr %gep.i.i.i.i.i.i.3, align 8, !noalias !29672, !noundef !41
  %i.uy = fadd double %i.uw, %.val8.i.i.i.i.i.i.3
  %i.uz = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.4 = getelementptr i8, ptr %i.uz, i64 32
  %.val8.i.i.i.i.i.i.4 = load double, ptr %gep.i.i.i.i.i.i.4, align 8, !noalias !29672, !noundef !41
  %i.va = fadd double %i.uy, %.val8.i.i.i.i.i.i.4
  %i.vb = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.5 = getelementptr i8, ptr %i.vb, i64 40
  %.val8.i.i.i.i.i.i.5 = load double, ptr %gep.i.i.i.i.i.i.5, align 8, !noalias !29672, !noundef !41
  %i.vc = fadd double %i.va, %.val8.i.i.i.i.i.i.5
  %i.vd = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.6 = getelementptr i8, ptr %i.vd, i64 48
  %.val8.i.i.i.i.i.i.6 = load double, ptr %gep.i.i.i.i.i.i.6, align 8, !noalias !29672, !noundef !41
  %i.ve = fadd double %i.vc, %.val8.i.i.i.i.i.i.6
  %i.vf = add nuw nsw i64 %.sroa.02.09.i.i.i.i.i.i, 8 ; 2 uses
  %i.vg = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.7 = getelementptr i8, ptr %i.vg, i64 56
  %.val8.i.i.i.i.i.i.7 = load double, ptr %gep.i.i.i.i.i.i.7, align 8, !noalias !29672, !noundef !41
  %i.vh = fadd double %i.ve, %.val8.i.i.i.i.i.i.7 ; 3 uses
  %niter1643.next.7 = add i64 %niter1643, 8       ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter6layout:bb.a
  %i.ea = call double @llvm.fabs.f64(double %i.cl)
  %i.eb = fcmp ueq double %i.ea, +inf
  %i.ec = icmp samesign ult i64 %.sroa.13.0.i.i, 1152921504606846976
  %i.ed = icmp eq i64 %.sroa.13.0.i.i, 0
  %.idx2947 = shl nuw nsw i64 %.sroa.13.0.i.i, 3
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.8.0.i.i, i64 %.idx2947
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bz, i64 56
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !31024, !noalias !31025 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !31024, !noalias !31025
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.eo = load i64, ptr %i.en, align 8, !alias.scope !31024, !noalias !31025 ; 2 uses
  %i.ep = load ptr, ptr %i.em, align 8, !alias.scope !31024, !noalias !31025, !nonnull !41 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.et = getelementptr inbounds nuw i8, ptr %i.bl, i64 57
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 209
  %i.ey = load i8, ptr %i.ex, align 1, !range !54, !alias.scope !31024, !noalias !31025
  %i.ez = trunc nuw i8 %i.ey to i1
  %.sroa.450.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.551.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.637.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.840.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.fb = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 4 uses
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %bb.q, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i
  %.sroa.8100.0.ph.i.i = phi i64 [ %i.fh, %bb.q ], [ 0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i ]
  %.sroa.098.0.ph.i.i = phi ptr [ %i.fg, %bb.q ], [ %i.du, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i ]
  %.sroa.058.0.ph.i.i = phi double [ %spec.store.select.i.i, %bb.q ], [ 0.000000e+00, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i ] ; 3 uses
  %.sroa.0.0.ph.i.i = phi i64 [ %i.fq, %bb.q ], [ 0, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_9enumerate9EnumerateINtNtNtB1D_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEENCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4F_12GridLayouter20measure_auto_columns0ENCB4A_s_0EE9from_iterB4J_.exit.i.i ] ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %.outer.i.i
  %.sroa.8100.0.i.i = phi i64 [ %i.fh, %bb.o ], [ %.sroa.8100.0.ph.i.i, %.outer.i.i ] ; 6 uses
  %.sroa.098.0.i.i = phi ptr [ %i.fg, %bb.o ], [ %.sroa.098.0.ph.i.i, %.outer.i.i ] ; 3 uses
  %i.fc = icmp eq ptr %.sroa.098.0.i.i, %i.dv
  br i1 %i.fc, label %bb.n, label %bb.o

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.ax, %bb.aw, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit134.i.i
  %.pn.i.i = phi { ptr, i32 } [ %i.km, %bb.aw ], [ %i.km, %bb.ax ], [ %lpad.loopexit.i.i, %.loopexit134.i.i ], [ %lpad.loopexit136.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp137.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.fd = icmp eq i64 %.sroa.0.0115.i.i, 0
  br i1 %i.fd, label %.thread, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.fe = shl nuw i64 %.sroa.0.0115.i.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.i.i) ]
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.i.i, i64 noundef %i.fe, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !31023
  br label %.thread

.loopexit134.i.i:                                 ; preds = %bb.al
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %bb.az, %bb.au, %bb.ar, %bb.w, %.lr.ph.i.i
  %lpad.loopexit136.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %select.unfold.i.i.i, %bb.z, %bb.r
  %lpad.loopexit.split-lp137.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ff = icmp eq i64 %.sroa.0.0115.i.i, 0
  br i1 %i.ff, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter20measure_auto_columns.exit.thread82.i, label %_RNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB4_12GridLayouter20measure_auto_columns.exit.i

bb.o:                                             ; preds = %bb.l
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.098.0.i.i, i64 32 ; 2 uses
  %i.fh = add i64 %.sroa.8100.0.i.i, 1            ; 2 uses
  %.sroa.0101.0.copyload.i.i = load i64, ptr %.sroa.098.0.i.i, align 8, !noalias !31023
  %i.fi = icmp eq i64 %.sroa.0101.0.copyload.i.i, 0
  br i1 %i.fi, label %bb.p, label %bb.l

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp), !noalias !31026
  store double 0.000000e+00, ptr %i.bp, align 8, !noalias !31026
  %i.fj = load i64, ptr %i.dw, align 8, !noalias !31023, !noundef !41 ; 3 uses
  %i.fk = icmp ult i64 %i.fj, 288230376151711744
  call void @llvm.assume(i1 %i.fk)
  %.not187.i.i = icmp eq i64 %i.fj, 0
  br i1 %.not187.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.p
  %i.fl = icmp ult i64 %.sroa.8100.0.i.i, %.val45.i
  br i1 %i.fl, label %bb.q, label %bb.r

.lr.ph.i.i:                                       ; preds = %bb.p, %.backedge.i.i
  %.sroa.043.0186.i.i = phi i64 [ %i.fm, %.backedge.i.i ], [ 0, %bb.p ] ; 8 uses
  %i.fm = add nuw nsw i64 %.sroa.043.0186.i.i, 1  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo), !noalias !31026
  invoke void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid20parent_cell_position(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bz, i64 noundef %.sroa.8100.0.i.i, i64 noundef %.sroa.043.0186.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !31023

bb.q:                                             ; preds = %._crit_edge.i.i
  %i.fn = load double, ptr %i.bp, align 8, !noalias !31026, !noundef !41 ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.8100.0.i.i
  store double %i.fn, ptr %i.fo, align 8, !noalias !31023
  %i.fp = fadd double %.sroa.058.0.ph.i.i, %i.fn  ; 2 uses
  %.inv.i.i = fcmp ord double %i.fp, 0.000000e+00
  %spec.store.select.i.i = select i1 %.inv.i.i, double %i.fp, double 0.000000e+00
  %i.fq = add i64 %.sroa.0.0.ph.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp), !noalias !31026
  br label %.outer.i.i

bb.r:                                             ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8100.0.i.i, i64 noundef %.val45.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #57
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !31023

bb.s:                                             ; preds = %bb.z, %bb.r
  unreachable

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.fr = load i64, ptr %i.bo, align 8, !range !49, !noalias !31026, !noundef !41
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ft = load i64, ptr %i.dx, align 8, !noalias !31026, !noundef !41 ; 10 uses
  %i.fu = load i64, ptr %i.dy, align 8, !noalias !31026, !noundef !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !31026
  %.not68.i.i = icmp eq i64 %i.fu, %.sroa.043.0186.i.i
  br i1 %.not68.i.i, label %bb.w, label %.backedge.i.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo), !noalias !31026
  br label %.backedge.i.i

bb.w:                                             ; preds = %bb.u
  %i.fv = invoke noundef align 8 ptr @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library6layout4grid7resolveNtB5_8CellGrid4cell(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.bz, i64 noundef %i.ft, i64 noundef %.sroa.043.0186.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438)
          to label %bb.x unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !31023 ; 4 uses

bb.x:                                             ; preds = %bb.w
  %.not69.i.i = icmp eq ptr %i.fv, null
  br i1 %.not69.i.i, label %bb.z, label %bb.y, !prof !44

bb.y:                                             ; preds = %bb.x
  %i.fw = load i8, ptr %i.dz, align 8, !range !54, !noalias !31023, !noundef !41
  %i.fx = trunc nuw i8 %i.fw to i1                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 48 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !range !53, !noalias !31023, !noundef !41 ; 2 uses
  %i.ga = shl i64 %i.fz, 1
  %i.gb = add i64 %i.ga, -1
  %storemerge.i.i = select i1 %i.fx, i64 %i.gb, i64 %i.fz ; 5 uses
  %i.gc = icmp ugt i64 %storemerge.i.i, 1
  br i1 %i.gc, label %bb.aa, label %.critedge.i.i

bb.z:                                             ; preds = %bb.x
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @439) #57
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !31023

bb.aa:                                            ; preds = %bb.y
  %i.gd = load ptr, ptr %i.ca, align 8, !noalias !31023, !nonnull !41, !noundef !41 ; 2 uses
  %i.ge = load i64, ptr %i.cc, align 8, !noalias !31023, !noundef !41 ; 4 uses
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %i.gg = call i64 @llvm.usub.sat.i64(i64 %i.ge, i64 %i.ft) ; 2 uses
  %i.gh = icmp ugt i64 %i.gg, %storemerge.i.i
  br i1 %i.gh, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.ab

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.aa
  %.neg.i.i.i = add nuw nsw i64 %storemerge.i.i, 1
  %.neg11.i.i.i = sub i64 %.neg.i.i.i, %i.gg      ; 2 uses
  %i.gi = getelementptr inbounds [32 x i8], ptr %i.gf, i64 %.neg11.i.i.i
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -32
  %i.gk = add i64 %i.ge, 576460752303423487
  %i.gl = add i64 %i.gk, %.neg11.i.i.i
  %.pre17.i.i.i = and i64 %i.gl, 576460752303423487
  br label %bb.ab

bb.ab:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i.i.i, %bb.aa
  %.pre-phi18.i.i.i = phi i64 [ %.pre17.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.ge, %bb.aa ] ; 3 uses
  %.val13.i.i.i.i = phi ptr [ %i.gj, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4skipINtB5_4SkipINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsdaEETE4DqmE_13typst_library6layout9container6SizingEEENtNtNtB9_6traits12double_ended19DoubleEndedIterator8nth_backCs7tN9tvpkfrg_12typst_layout.exit.i.i.i ], [ %i.gf, %bb.aa ]
  %.not.i.i.i.i = icmp ugt i64 %.pre-phi18.i.i.i, %i.ft
  br i1 %.not.i.i.i.i, label %bb.ac, label %.backedge.i.i

bb.ac:                                            ; preds = %bb.ab
  %i.gm = sub nuw nsw i64 %.pre-phi18.i.i.i, %i.ft
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %i.gn = phi ptr [ %.val13.i.i.i.i, %bb.ac ], [ %i.gp, %bb.ae ] ; 2 uses
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.gm, %bb.ac ], [ %i.gr, %bb.ae ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ %.pre-phi18.i.i.i, %bb.ac ], [ %i.gq, %bb.ae ]
  %i.go = icmp eq ptr %i.gd, %i.gn
  br i1 %i.go, label %.backedge.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = getelementptr inbounds i8, ptr %i.gn, i64 -32 ; 2 uses
  %i.gq = add i64 %.sroa.0.0.i.i.i.i.i.i, -1      ; 2 uses
  %i.gr = add nsw i64 %.sroa.3.0.i.i.i.i.i.i, -1  ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.gp, align 8, !range !52, !alias.scope !31027, !noalias !31028, !noundef !41
  %.not.i.i.i.i.i.i84.i.i = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.gs = icmp eq i64 %i.gr, 0                    ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i = or i1 %i.gs, %.not.i.i.i.i.i.i84.i.i
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %bb.af, label %bb.ad

bb.af:                                            ; preds = %bb.ae
  %.not188.i.i = xor i1 %i.gs, true
  %.not.i.i = or i1 %.not.i.i.i.i.i.i84.i.i, %.not188.i.i
  %.not71.i.i = icmp eq i64 %i.gq, %.sroa.8100.0.i.i
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not71.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.ag, label %.backedge.i.i

bb.ag:                                            ; preds = %bb.af
  br i1 %i.eb, label %.critedge.i.i, label %bb.ah

.critedge.i.i:                                    ; preds = %bb.aj, %bb.ah, %bb.ag, %bb.y
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fv, i64 56
  %i.gu = load i64, ptr %i.gt, align 8, !range !53, !noalias !31023, !noundef !41 ; 2 uses
  %i.gv = shl i64 %i.gu, 1
  %i.gw = add i64 %i.gv, -1
  %.sroa.026.0.i.i = select i1 %i.fx, i64 %i.gw, i64 %i.gu
  %i.gx = load ptr, ptr %i.ef, align 8, !noalias !31023, !nonnull !41, !noundef !41 ; 3 uses
  %i.gy = load i64, ptr %i.dw, align 8, !noalias !31023, !noundef !41 ; 2 uses
  %i.gz = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.gy
  %.not.i.i86.i.i = icmp eq i64 %.sroa.043.0186.i.i, 0
  br i1 %.not.i.i86.i.i, label %._crit_edge.i.i.i.i.preheader, label %bb.am

._crit_edge.i.i.i.i.preheader:                    ; preds = %bb.am, %.critedge.i.i
  %.ph = phi ptr [ %i.gx, %.critedge.i.i ], [ %i.ib, %bb.am ]
  br label %._crit_edge.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.assume(i1 %i.ec)
  br i1 %i.ed, label %.critedge.i.i, label %.lr.ph2935

.lr.ph2935:                                       ; preds = %bb.ah
  %i.ha = add i64 %storemerge.i.i, %i.ft
  br label %bb.aj

bb.ai:                                            ; preds = %bb.aj
  %i.hb = getelementptr inbounds nuw i8, ptr %i.hd, i64 8 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.ee
  br i1 %i.hc, label %.backedge.i.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph2935, %bb.ai
  %i.hd = phi ptr [ %.sroa.8.0.i.i, %.lr.ph2935 ], [ %i.hb, %bb.ai ] ; 2 uses
  %.val3.i.i.i = load i64, ptr %i.hd, align 8, !alias.scope !31029, !noalias !31030, !noundef !41 ; 2 uses
  %.not.i.i.i.i.i = icmp ule i64 %i.ft, %.val3.i.i.i
  %i.he = icmp ult i64 %.val3.i.i.i, %i.ha
  %.sroa.0.0.i.i.i.i.i = and i1 %.not.i.i.i.i.i, %i.he
  br i1 %.sroa.0.0.i.i.i.i.i, label %bb.ai, label %.critedge.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.preheader, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i
  %i.hf = phi i64 [ %i.hj, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i ], [ %.sroa.026.0.i.i, %._crit_edge.i.i.i.i.preheader ]
  %i.hg = phi ptr [ %i.hi, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i ], [ %.ph, %._crit_edge.i.i.i.i.preheader ] ; 6 uses
  %.sroa.0.0.i.i.i89.i.i = phi double [ %spec.store.select1.i.i.i.i.i.i.i, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i ], [ 0.000000e+00, %._crit_edge.i.i.i.i.preheader ] ; 2 uses
  %i.hh = icmp eq ptr %i.hg, %i.gz
  br i1 %i.hh, label %.thread126.i.loopexit.i, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !31031)
  %i.hj = add i64 %i.hf, -1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31032)
  %i.hk = load i64, ptr %i.hg, align 8, !range !52, !alias.scope !31033, !noalias !31034, !noundef !41
  %i.hl = icmp eq i64 %i.hk, 1
  br i1 %i.hl, label %bb.al, label %.thread126.i.loopexit.i

bb.al:                                            ; preds = %bb.ak
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.ho = load double, ptr %i.hn, align 8, !alias.scope !31033, !noalias !31034, !noundef !41
  %i.hp = load double, ptr %i.hm, align 8, !alias.scope !31033, !noalias !31034, !noundef !41
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hr = load double, ptr %i.hq, align 8, !alias.scope !31033, !noalias !31034, !noundef !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !31035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.eg, i64 24, i1 false), !noalias !31036
  %i.hs = invoke noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.hp, double noundef %i.hr, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bi)
          to label %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i unwind label %.loopexit134.i.i, !noalias !31023

_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !31035
  %i.ht = fmul double %i.ei, %i.ho                ; 2 uses
  %i.hu = call double @llvm.fabs.f64(double %i.ht)
  %i.hv = fcmp one double %i.hu, +inf
  %.sroa.0.0.i.i.i.i.i.i.i.i = select i1 %i.hv, double %i.ht, double 0.000000e+00
  %i.hw = fadd double %.sroa.0.0.i.i.i.i.i.i.i.i, %i.hs ; 2 uses
  %.inv.i.i.i.i.i.i.i = fcmp ord double %i.hw, 0.000000e+00
  %spec.store.select.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i, double %i.hw, double 0.000000e+00
  %i.hx = fadd double %.sroa.0.0.i.i.i89.i.i, %spec.store.select.i.i.i.i.i.i.i ; 2 uses
  %.inv8.i.i.i.i.i.i.i = fcmp ord double %i.hx, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i = select i1 %.inv8.i.i.i.i.i.i.i, double %i.hx, double 0.000000e+00 ; 2 uses
  %i.hy = icmp eq i64 %i.hj, 0
  br i1 %i.hy, label %.thread126.i.loopexit.i, label %._crit_edge.i.i.i.i

bb.am:                                            ; preds = %.critedge.i.i
  %i.hz = add nsw i64 %.sroa.043.0186.i.i, -1     ; 2 uses
  %.not.i.not.i.i.i.i = icmp ult i64 %i.hz, %i.gy
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr %i.gx, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i.preheader, label %.thread126.i.i

.thread126.i.loopexit.i:                          ; preds = %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i, %bb.ak, %._crit_edge.i.i.i.i
  %.sroa.027.0.i.ph.i = phi double [ %spec.store.select1.i.i.i.i.i.i.i, %_RNCNvMs_NtNtCs7tN9tvpkfrg_12typst_layout4grid8layouterNtB6_12GridLayouter20measure_auto_columnss3_0Ba_.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i89.i.i, %._crit_edge.i.i.i.i ], [ %i.ei, %bb.ak ]
  %.val81.i.pre.i = load i64, ptr %i.fy, align 8, !noalias !31023 ; 2 uses
  %.pre191.i = load i8, ptr %i.dz, align 8, !range !54, !noalias !31037
  %.pre194.i = trunc nuw i8 %.pre191.i to i1
  %.pre195.i = shl i64 %.val81.i.pre.i, 1
  %.pre197.i = add i64 %.pre195.i, -1
  %.pre199.i = select i1 %.pre194.i, i64 %.pre197.i, i64 %.val81.i.pre.i
  br label %.thread126.i.i

.thread126.i.i:                                   ; preds = %.thread126.i.loopexit.i, %bb.am
  %.sroa.0.0.i90.i.pre-phi.i = phi i64 [ %.pre199.i, %.thread126.i.loopexit.i ], [ %storemerge.i.i, %bb.am ]
  %.sroa.027.0.i.i = phi double [ %.sroa.027.0.i.ph.i, %.thread126.i.loopexit.i ], [ 0.000000e+00, %bb.am ] ; 2 uses
  %i.ic = call noundef range(i64 0, 2305843009213693952) i64 @llvm.usub.sat.i64(i64 %.val45.i, i64 %i.ft)
  %..i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.ic, i64 %.sroa.0.0.i90.i.pre-phi.i) ; 4 uses
  %invariant.gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %.val.i, i64 %i.ft ; 9 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.thread126.i.i
  %xtraiter = and i64 %..i.i.i.i.i.i.i.i, 7       ; 3 uses
  %i.id = icmp ult i64 %..i.i.i.i.i.i.i.i, 8
  br i1 %i.id, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %..i.i.i.i.i.i.i.i, -8
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.sroa.0.010.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.it, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.02.09.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.ir, %.lr.ph.i.i.i.i.i.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %.val8.i.i.i.i.i.i.i = load double, ptr %gep.i.i.i.i.i.i.i, align 8, !noalias !31038, !noundef !41
  %i.ie = fadd double %.sroa.0.010.i.i.i.i.i.i.i, %.val8.i.i.i.i.i.i.i
  %i.if = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.1 = getelementptr i8, ptr %i.if, i64 8
  %.val8.i.i.i.i.i.i.i.1 = load double, ptr %gep.i.i.i.i.i.i.i.1, align 8, !noalias !31038, !noundef !41
  %i.ig = fadd double %i.ie, %.val8.i.i.i.i.i.i.i.1
  %i.ih = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.2 = getelementptr i8, ptr %i.ih, i64 16
  %.val8.i.i.i.i.i.i.i.2 = load double, ptr %gep.i.i.i.i.i.i.i.2, align 8, !noalias !31038, !noundef !41
  %i.ii = fadd double %i.ig, %.val8.i.i.i.i.i.i.i.2
  %i.ij = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.3 = getelementptr i8, ptr %i.ij, i64 24
  %.val8.i.i.i.i.i.i.i.3 = load double, ptr %gep.i.i.i.i.i.i.i.3, align 8, !noalias !31038, !noundef !41
  %i.ik = fadd double %i.ii, %.val8.i.i.i.i.i.i.i.3
  %i.il = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.4 = getelementptr i8, ptr %i.il, i64 32
  %.val8.i.i.i.i.i.i.i.4 = load double, ptr %gep.i.i.i.i.i.i.i.4, align 8, !noalias !31038, !noundef !41
  %i.im = fadd double %i.ik, %.val8.i.i.i.i.i.i.i.4
  %i.in = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.5 = getelementptr i8, ptr %i.in, i64 40
  %.val8.i.i.i.i.i.i.i.5 = load double, ptr %gep.i.i.i.i.i.i.i.5, align 8, !noalias !31038, !noundef !41
  %i.io = fadd double %i.im, %.val8.i.i.i.i.i.i.i.5
  %i.ip = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.6 = getelementptr i8, ptr %i.ip, i64 48
  %.val8.i.i.i.i.i.i.i.6 = load double, ptr %gep.i.i.i.i.i.i.i.6, align 8, !noalias !31038, !noundef !41
  %i.iq = fadd double %i.io, %.val8.i.i.i.i.i.i.i.6
  %i.ir = add nuw i64 %.sroa.02.09.i.i.i.i.i.i.i, 8 ; 2 uses
  %i.is = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i
  %gep.i.i.i.i.i.i.i.7 = getelementptr i8, ptr %i.is, i64 56
  %.val8.i.i.i.i.i.i.i.7 = load double, ptr %gep.i.i.i.i.i.i.i.7, align 8, !noalias !31038, !noundef !41
  %i.it = fadd double %i.iq, %.val8.i.i.i.i.i.i.i.7 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.sroa.0.010.i.i.i.i.i.i.i.epil.init = phi double [ -0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.it, %.loopexit.i.i.loopexit.unr-lcssa ]
  %.sroa.02.09.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ir, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod3579 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod3579)
  br label %.lr.ph.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.epil.preheader
  %.sroa.0.010.i.i.i.i.i.i.i.epil = phi double [ %i.iv, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.sroa.0.010.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %.sroa.02.09.i.i.i.i.i.i.i.epil = phi i64 [ %i.iu, %.lr.ph.i.i.i.i.i.i.i.epil ], [ %.sroa.02.09.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %i.iu = add nuw i64 %.sroa.02.09.i.i.i.i.i.i.i.epil, 1
  %gep.i.i.i.i.i.i.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i.i.i, i64 %.sroa.02.09.i.i.i.i.i.i.i.epil
  %.val8.i.i.i.i.i.i.i.epil = load double, ptr %gep.i.i.i.i.i.i.i.epil, align 8, !noalias !31038, !noundef !41
  %i.iv = fadd double %.sroa.0.010.i.i.i.i.i.i.i.epil, %.val8.i.i.i.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i.i.epil, !llvm.loop !30217

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.epil, %.thread126.i.i
  %.sroa.0.0.lcssa.i.i.i.i.i.i.i = phi double [ -0.000000e+00, %.thread126.i.i ], [ %i.it, %.loopexit.i.i.loopexit.unr-lcssa ], [ %i.iv, %.lr.ph.i.i.i.i.i.i.i.epil ] ; 2 uses
  %.inv.i.i.i.i = fcmp ord double %.sroa.0.0.lcssa.i.i.i.i.i.i.i, 0.000000e+00
  %spec.store.select.i.i.i.i = select i1 %.inv.i.i.i.i, double %.sroa.0.0.lcssa.i.i.i.i.i.i.i, double 0.000000e+00 ; 2 uses
  br i1 %i.el, label %select.unfold.i.i.i, label %bb.an

end_hunk_3
begin_hunk_4_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout6inline7prepare7prepare:bb.a
  br i1 %i.sn, label %bb.es, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i59.i

bb.es:                                            ; preds = %bb.er
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs4ofGZotLxya_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v) #58
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i59.i unwind label %.loopexit297.loopexit.i.i.i, !noalias !47417

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i59.i: ; preds = %bb.es, %bb.er
  %i.so = load ptr, ptr %i.gy, align 8, !alias.scope !47426, !noalias !47418, !nonnull !41, !noundef !41
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.si
  store i64 %.sroa.011.0402.i.i.i, ptr %i.sp, align 8, !noalias !47417
  %i.sq = add i64 %i.si, 1                        ; 5 uses
  store i64 %i.sq, ptr %i.gz, align 8, !alias.scope !47426, !noalias !47418
  %i.sr = icmp ult i64 %i.sj, %.val92.i.i.i
  br i1 %i.sr, label %bb.ep, label %.loopexit296.i.i.i

switch.lookup2660:                                ; preds = %bb.eq
  %i.ss = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sroa.011.0402.i.i.i ; 2 uses
  %switch.tableidx2658 = add i8 %.sroa.016.1.ph419.i.i.i, -8 ; 2 uses
  %i.st = icmp ult i8 %switch.tableidx2658, 12
  %switch.maskindex = zext nneg i8 %switch.tableidx2658 to i16
  %switch.shifted = lshr i16 2313, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %i.su = select i1 %i.st, i1 %switch.lobit, i1 false
  %.sroa.016.2.i.i.i = select i1 %i.su, i8 14, i8 %.sroa.016.1.ph419.i.i.i ; 2 uses
  store i8 %.sroa.016.2.i.i.i, ptr %i.ss, align 1, !alias.scope !47419, !noalias !47420
  br label %.loopexit298.i.i.i

.loopexit298.i.i.i.loopexit:                      ; preds = %bb.eq
  %i.sv = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.sroa.011.0402.i.i.i
  br label %.loopexit298.i.i.i

.loopexit298.i.i.i:                               ; preds = %.loopexit298.i.i.i.loopexit, %switch.lookup2660
  %i.sw = phi ptr [ %i.ss, %switch.lookup2660 ], [ %i.sv, %.loopexit298.i.i.i.loopexit ] ; 4 uses
  %i.sx = phi i8 [ %.sroa.016.2.i.i.i, %switch.lookup2660 ], [ %i.sl, %.loopexit298.i.i.i.loopexit ] ; 12 uses
  switch i8 %i.sx, label %.thread.i32.i.i [
    i8 0, label %.sink.split.sink.split.i.i.i
    i8 5, label %bb.et
    i8 9, label %bb.eu
    i8 17, label %bb.eu
  ]

bb.et:                                            ; preds = %.loopexit298.i.i.i
  %i.sy = trunc nuw i8 %.sroa.05.1.ph421.i.i.i to i1
  br i1 %i.sy, label %.sink.split.sink.split.i.i.i, label %.thread.thread655.i.i.i

bb.eu:                                            ; preds = %.loopexit298.i.i.i, %.loopexit298.i.i.i
  br label %.thread.i32.i.i

.thread.i32.i.i:                                  ; preds = %bb.eu, %.loopexit298.i.i.i
  %.sroa.05.2.i.i.i = phi i8 [ %.sroa.05.1.ph421.i.i.i, %.loopexit298.i.i.i ], [ 0, %bb.eu ] ; 12 uses
  switch i8 %i.sx, label %.sink.split.i35.i.i [
    i8 4, label %bb.ew
    i8 5, label %.thread.thread655.i.i.i
    i8 6, label %bb.ew
    i8 7, label %bb.fe
  ]

thread-pre-split.sink.split.i.i.i:                ; preds = %bb.ff, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit130.i.i.i, %.thread.thread655.i.i.i
  %.sink.i34.i.i = phi i64 [ %i.yv, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit130.i.i.i ], [ 0, %.thread.thread655.i.i.i ], [ 0, %bb.ff ]
  %.sroa.05.2657.ph.i.i.i = phi i8 [ %.sroa.05.2.i.i.i, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit130.i.i.i ], [ %.sroa.05.2658.i.i.i, %.thread.thread655.i.i.i ], [ %.sroa.05.2658.i.i.i, %bb.ff ]
  %.ph813.i.i.i = phi i8 [ 7, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecjE8push_mutCs7tN9tvpkfrg_12typst_layout.exit130.i.i.i ], [ 5, %.thread.thread655.i.i.i ], [ 5, %bb.ff ]
  store i64 %.sink.i34.i.i, ptr %i.gx, align 8, !noalias !47418
  br label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %bb.gm, %.loopexit.i.i.i.i117.i.i.i, %bb.gh, %thread-pre-split.sink.split.i.i.i
  %.sroa.05.2657.i.i.i = phi i8 [ %.sroa.05.2657.ph.i.i.i, %thread-pre-split.sink.split.i.i.i ], [ %.sroa.05.2.i.i.i, %bb.gh ], [ %.sroa.05.2.i.i.i, %.loopexit.i.i.i.i117.i.i.i ], [ %.sroa.05.2.i.i.i, %bb.gm ]
  %i.sz = phi i8 [ %.ph813.i.i.i, %thread-pre-split.sink.split.i.i.i ], [ %i.sx, %bb.gh ], [ %i.sx, %.loopexit.i.i.i.i117.i.i.i ], [ %i.sx, %bb.gm ]
  %.pr.i.i.i = load i8, ptr %i.sw, align 1, !alias.scope !47419, !noalias !47420
  br label %bb.ev

bb.ev:                                            ; preds = %bb.go, %thread-pre-split.i.i.i
  %.sroa.05.2641.i.i.i = phi i8 [ %.sroa.05.2657.i.i.i, %thread-pre-split.i.i.i ], [ %.sroa.05.2.i.i.i, %bb.go ] ; 2 uses
  %i.ta = phi i8 [ %i.sz, %thread-pre-split.i.i.i ], [ %i.sx, %bb.go ] ; 2 uses
  %i.tb = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.xy, %bb.go ] ; 2 uses
  store i64 0, ptr %i.gz, align 8, !noalias !47418
  %.not82.i.i.i = icmp eq i8 %i.tb, 7
  br i1 %.not82.i.i.i, label %.outer.i.i.i, label %bb.gt

bb.ew:                                            ; preds = %.thread.i32.i.i, %.thread.i32.i.i
  %i.tc = icmp eq i64 %.sroa.011.0402.i.i.i, 0
  br i1 %i.tc, label %bb.ez, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %.not.i.i.i.i.i = icmp ult i64 %.sroa.011.0402.i.i.i, %i.ib
  br i1 %.not.i.i.i.i.i, label %bb.ey, label %.split.i.i.i.i.i

.split.i.i.i.i.i:                                 ; preds = %bb.ex
  %i.td = icmp eq i64 %.sroa.011.0402.i.i.i, %i.ib
  br i1 %i.td, label %bb.ez, label %bb.fg

bb.ey:                                            ; preds = %bb.ex
  %i.te = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sroa.011.0402.i.i.i
  %i.tf = load i8, ptr %i.te, align 1, !alias.scope !47427, !noalias !47428, !noundef !41
  %i.tg = icmp sgt i8 %i.tf, -65
  br i1 %i.tg, label %bb.ez, label %bb.fg

bb.ez:                                            ; preds = %bb.ey, %.split.i.i.i.i.i, %bb.ew
  %i.th = getelementptr inbounds nuw i8, ptr %i.ic, i64 %.sroa.011.0402.i.i.i ; 4 uses
  %i.ti = icmp samesign eq i64 %.sroa.011.0402.i.i.i, %i.ib
  br i1 %i.ti, label %bb.fg, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.tj = load i8, ptr %i.th, align 1, !alias.scope !47429, !noalias !47430, !noundef !41 ; 4 uses
  %i.tk = icmp sgt i8 %i.tj, -1
  br i1 %i.tk, label %.thread.i.i37.i.i, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i55.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i55.i: ; preds = %bb.fa
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  %i.tm = and i8 %i.tj, 31
  %i.tn = zext nneg i8 %i.tm to i32               ; 3 uses
  %i.to = icmp samesign ne i64 %i.sj, %i.ib
  call void @llvm.assume(i1 %i.to)
  %i.tp = load i8, ptr %i.tl, align 1, !alias.scope !47429, !noalias !47430, !noundef !41
  %i.tq = shl nuw nsw i32 %i.tn, 6
  %i.tr = and i8 %i.tp, 63
  %i.ts = zext nneg i8 %i.tr to i32               ; 2 uses
  %i.tt = or disjoint i32 %i.tq, %i.ts
  %i.tu = icmp samesign ugt i8 %i.tj, -33
  br i1 %i.tu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i57.i, label %bb.fb

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i57.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i55.i
  %i.tv = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  %i.tw = add nuw nsw i64 %.sroa.011.0402.i.i.i, 2
  %i.tx = icmp samesign ne i64 %i.tw, %i.ib
  call void @llvm.assume(i1 %i.tx)
  %i.ty = load i8, ptr %i.tv, align 1, !alias.scope !47429, !noalias !47430, !noundef !41
  %i.tz = shl nuw nsw i32 %i.ts, 6
  %i.ua = and i8 %i.ty, 63
  %i.ub = zext nneg i8 %i.ua to i32
  %i.uc = or disjoint i32 %i.tz, %i.ub            ; 2 uses
  %i.ud = shl nuw nsw i32 %i.tn, 12
  %i.ue = or disjoint i32 %i.uc, %i.ud
  %i.uf = icmp samesign ugt i8 %i.tj, -17
  br i1 %i.uf, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i58.i, label %bb.fb

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i58.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i57.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.th, i64 3
  %i.uh = add nuw nsw i64 %.sroa.011.0402.i.i.i, 3
  %i.ui = icmp samesign ne i64 %i.uh, %i.ib
  call void @llvm.assume(i1 %i.ui)
  %i.uj = load i8, ptr %i.ug, align 1, !alias.scope !47429, !noalias !47430, !noundef !41
  %i.uk = shl nuw nsw i32 %i.tn, 18
  %i.ul = and i32 %i.uk, 1835008
  %i.um = shl nuw nsw i32 %i.uc, 6
  %i.un = and i8 %i.uj, 63
  %i.uo = zext nneg i8 %i.un to i32
  %i.up = or disjoint i32 %i.um, %i.uo
  %i.uq = or disjoint i32 %i.up, %i.ul
  br label %bb.fb

bb.fb:                                            ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i58.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i57.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i55.i
  %.sroa.4.0.i.ph.i.i.i56.i = phi i32 [ %i.ue, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i.i.i.i57.i ], [ %i.uq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i.i.i.i58.i ], [ %i.tt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i55.i ] ; 4 uses
  %i.ur = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i56.i, 1114112
  call void @llvm.assume(i1 %i.ur)
  %i.us = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i56.i, 128
  br i1 %i.us, label %.thread.i.i37.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ut = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i56.i, 2048
  br i1 %i.ut, label %.thread.i.i37.i.i, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.uu = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i56.i, 65536
  %..i.i36.i.i = select i1 %i.uu, i64 3, i64 4
  br label %.thread.i.i37.i.i

.thread.thread655.i.i.i:                          ; preds = %.thread.i32.i.i, %bb.et
  %.sroa.05.2658.i.i.i = phi i8 [ %.sroa.05.2.i.i.i, %.thread.i32.i.i ], [ 0, %bb.et ] ; 2 uses
  %i.uv = load ptr, ptr %i.gw, align 8, !noalias !47418, !nonnull !41, !noundef !41 ; 2 uses
  %i.uw = load i64, ptr %i.gx, align 8, !noalias !47418, !noundef !41 ; 2 uses
  %.idx441.i.i.i = shl nuw nsw i64 %i.uw, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 %.idx441.i.i.i
  %i.uy = icmp eq i64 %i.uw, 0
  br i1 %i.uy, label %thread-pre-split.sink.split.i.i.i, label %.lr.ph411.i.i.i

bb.fe:                                            ; preds = %.thread.i32.i.i
  %i.uz = icmp eq i8 %.sroa.036.1.ph418.i.i.i, 5
  br i1 %i.uz, label %.sink.split.sink.split.i.i.i, label %bb.gp

.lr.ph411.i.i.i:                                  ; preds = %.thread.thread655.i.i.i, %bb.ff
  %.sroa.018.0410.i.i.i = phi ptr [ %i.vc, %bb.ff ], [ %i.uv, %.thread.thread655.i.i.i ] ; 2 uses
  %i.va = load i64, ptr %.sroa.018.0410.i.i.i, align 8, !noalias !47417, !noundef !41 ; 3 uses
  %i.vb = icmp ult i64 %i.va, %i.ib
  br i1 %i.vb, label %bb.ff, label %.invoke.i24.i.i

bb.ff:                                            ; preds = %.lr.ph411.i.i.i
  %i.vc = getelementptr inbounds nuw i8, ptr %.sroa.018.0410.i.i.i, i64 8 ; 2 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.va
  store i8 5, ptr %i.vd, align 1, !alias.scope !47419, !noalias !47420
  %i.ve = icmp eq ptr %i.vc, %i.ux
  br i1 %i.ve, label %thread-pre-split.sink.split.i.i.i, label %.lr.ph411.i.i.i

.thread.i.i37.i.i:                                ; preds = %bb.fd, %bb.fc, %bb.fb, %bb.fa
  %.sroa.3.0.i.ph.i.i.i = phi i64 [ 1, %bb.fb ], [ %..i.i36.i.i, %bb.fd ], [ 2, %bb.fc ], [ 1, %bb.fa ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !47418
  %i.vf = add i64 %.sroa.3.0.i.ph.i.i.i, %.sroa.011.0402.i.i.i ; 2 uses
  invoke void @_RNvMNtCsgCGKXfV80i0_12unicode_bidi7prepareNtB2_20IsolatingRunSequence18iter_forwards_from(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.0442.i.i, i64 noundef %i.vf, i64 noundef %.sroa.7.0427.i.i.i)
          to label %bb.fh unwind label %.loopexit297.loopexit.split-lp.i.i.i, !noalias !47417

bb.fg:                                            ; preds = %bb.ez, %bb.ey, %.split.i.i.i.i.i
  %i.vg = add nsw i64 %.sroa.011.0402.i.i.i, -1   ; 3 uses
  %i.vh = icmp ult i64 %i.vg, %i.ib
  br i1 %i.vh, label %bb.go, label %.invoke.i24.i.i

bb.fh:                                            ; preds = %.thread.i.i37.i.i
  %.sroa.0131.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !noalias !47418
  %.sroa.5132.0.copyload.i.i.i = load i64, ptr %.sroa.5132.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 3 uses
  %.sroa.9.0.copyload.i.i.i = load i64, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 2 uses
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !noalias !47418
  %.sroa.13.0.copyload.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 3 uses
  %.sroa.20.0.copyload.i.i.i = load i64, ptr %.sroa.20.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 2 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !noalias !47418
  %.sroa.24.0.copyload.i.i.i = load i64, ptr %.sroa.24.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 3 uses
  %.sroa.28.0.copyload.i.i.i = load i64, ptr %.sroa.28.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 2 uses
  %.sroa.29.0.copyload.i.i.i = load ptr, ptr %.sroa.29.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 3 uses
  %.sroa.31.0.copyload.i.i.i = load ptr, ptr %.sroa.31.0..sroa_idx.i.i.i, align 8, !noalias !47418 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !47418
  %i.vi = trunc nuw i64 %.sroa.0131.0.copyload.i.i.i to i1
  %i.vj = icmp ult i64 %.sroa.5132.0.copyload.i.i.i, %.sroa.9.0.copyload.i.i.i
  %or.cond285.i.i.i = select i1 %i.vi, i1 %i.vj, i1 false
  br i1 %or.cond285.i.i.i, label %.lr.ph.i.i.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.fh
  %umax.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ib, i64 %.sroa.5132.0.copyload.i.i.i) ; 2 uses
  br label %bb.fi

bb.fi:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.vk = phi i64 [ %.sroa.5132.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.vl, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i ] ; 3 uses
  %i.vl = add i64 %i.vk, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.vk, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.invoke811.i.i.i, label %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

.invoke811.i.i.i:                                 ; preds = %bb.fi, %bb.fk, %bb.fn, %bb.fm
  %i.vm = phi i64 [ %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.fm ], [ %umax.i.i.i.i.i.i.i.i.i, %bb.fk ], [ %umax.i.i21.i.i.i.i.i.i.i, %bb.fn ], [ %umax.i.i.i.i.i, %bb.fi ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.vm, i64 noundef range(i64 0, -9223372036854775808) %i.ib, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #53
          to label %.cont812.i.i.i unwind label %.loopexit.split-lp.i25.i.i, !noalias !47417

.cont812.i.i.i:                                   ; preds = %.invoke811.i.i.i
  unreachable

_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %bb.fi
  %i.vn = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.vk
  %i.vo = load i8, ptr %i.vn, align 1, !range !47365, !alias.scope !47419, !noalias !47431, !noundef !41 ; 2 uses
  switch i8 %i.vo, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i [
    i8 3, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i8 10, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i8 12, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i8 15, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i8 18, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
    i8 20, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i
  ]

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i: ; preds = %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %exitcond21.not.i.i.i.i.i = icmp eq i64 %i.vl, %.sroa.9.0.copyload.i.i.i
  br i1 %exitcond21.not.i.i.i.i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i, label %bb.fi

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i, %bb.fh
  switch i64 %.sroa.10.0.copyload.i.i.i, label %bb.fj [
    i64 2, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
    i64 0, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i
  ]

bb.fj:                                            ; preds = %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %i.vp = icmp ult i64 %.sroa.13.0.copyload.i.i.i, %.sroa.20.0.copyload.i.i.i
  br i1 %i.vp, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.fj
  %umax.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ib, i64 %.sroa.13.0.copyload.i.i.i) ; 2 uses
  br label %bb.fk

bb.fk:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.vq = phi i64 [ %.sroa.13.0.copyload.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.vr, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.vr = add i64 %i.vq, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vq, %umax.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %.invoke811.i.i.i, label %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fk
  %i.vs = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.vq
  %i.vt = load i8, ptr %i.vs, align 1, !range !47365, !alias.scope !47419, !noalias !47432, !noundef !41 ; 2 uses
  switch i8 %i.vt, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i [
    i8 3, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
    i8 10, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
    i8 12, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
    i8 15, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
    i8 18, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
    i8 20, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  ]

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i
  %exitcond21.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vr, %.sroa.20.0.copyload.i.i.i
  br i1 %exitcond21.not.i.i.i.i.i.i.i.i.i, label %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i, label %bb.fk

_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %bb.fj, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.29.0.copyload.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.copyload.i.i.i) ]
  %i.vu = icmp eq ptr %.sroa.29.0.copyload.i.i.i, %.sroa.31.0.copyload.i.i.i
  br i1 %i.vu, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph413.i.i.i

.lr.ph413.i.i.i:                                  ; preds = %bb.fl, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i
  %i.vv = phi ptr [ %i.vw, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.29.0.copyload.i.i.i, %bb.fl ] ; 3 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 16 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vv, align 8, !alias.scope !47433, !noalias !47434, !noundef !41 ; 3 uses
  %i.vx = getelementptr i8, ptr %i.vv, i64 8
  %.val9.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.vx, align 8, !alias.scope !47435, !noalias !47434, !noundef !41 ; 2 uses
  %i.vy = icmp ult i64 %.val8.i.i.i.i.i.i.i.i.i.i, %.val9.i.i.i.i.i.i.i.i.i.i
  br i1 %i.vy, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph413.i.i.i
  %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ib, i64 %.val8.i.i.i.i.i.i.i.i.i.i) ; 2 uses
  br label %bb.fm

bb.fm:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vz = phi i64 [ %.val8.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wa, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wa = add i64 %i.vz, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.vz, %umax.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.invoke811.i.i.i, label %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fm
  %i.wb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.vz
  %i.wc = load i8, ptr %i.wb, align 1, !range !47365, !alias.scope !47419, !noalias !47436, !noundef !41 ; 2 uses
  switch i8 %i.wc, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i [
    i8 3, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 10, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 12, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 15, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 18, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i8 20, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %exitcond21.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.wa, %.val9.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond21.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, label %bb.fm

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph413.i.i.i
  %i.wd = icmp eq ptr %i.vw, %.sroa.31.0.copyload.i.i.i
  br i1 %i.wd, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph413.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldRINtNtNtBa_3ops5range5RangejEB10_uINtNtB15_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENvYB10_NtNtBa_5clone5Clone5cloneNCINvNvMsg_NtB6_7flattenINtB3O_13FlattenCompatppE13iter_try_fold7flattenB10_uB1x_NCINvNvXsi_B3O_B41_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenB10_uB1x_NCIB2_jB27_uB1x_NCINvNtB2d_8implicit12resolve_weakeE0NCINvNvB5f_4find5checkB27_NvNtB2d_7prepare17not_removed_by_x9E0E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %bb.fl, %_RNCINvNvXsi_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator8try_fold7flattenINtNtNtBg_3ops5range5RangejEuINtNtB2d_12control_flow11ControlFlowNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassENCINvNtBc_3map12map_try_foldjB3b_uB2B_NCINvNtB3h_8implicit12resolve_weakeE0NCINvNvB1j_4find5checkB3b_NvNtB3h_7prepare17not_removed_by_x9E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i.i
  %i.we = trunc nuw i64 %.sroa.22.0.copyload.i.i.i to i1
  %i.wf = icmp ult i64 %.sroa.24.0.copyload.i.i.i, %.sroa.28.0.copyload.i.i.i
  %or.cond286.i.i.i = select i1 %i.we, i1 %i.wf, i1 false
  br i1 %or.cond286.i.i.i, label %.lr.ph.i.i19.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i

.lr.ph.i.i19.i.i.i.i.i.i.i:                       ; preds = %.loopexit.i.i.i.i.i.i.i
  %umax.i.i21.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.ib, i64 %.sroa.24.0.copyload.i.i.i) ; 2 uses
  br label %bb.fn

bb.fn:                                            ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i, %.lr.ph.i.i19.i.i.i.i.i.i.i
  %i.wg = phi i64 [ %.sroa.24.0.copyload.i.i.i, %.lr.ph.i.i19.i.i.i.i.i.i.i ], [ %i.wh, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i ] ; 3 uses
  %i.wh = add i64 %i.wg, 1                        ; 2 uses
  %exitcond.not.i.i22.i.i.i.i.i.i.i = icmp eq i64 %i.wg, %umax.i.i21.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i22.i.i.i.i.i.i.i, label %.invoke811.i.i.i, label %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i

_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i: ; preds = %bb.fn
  %i.wi = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.wg
  %i.wj = load i8, ptr %i.wi, align 1, !range !47365, !alias.scope !47419, !noalias !47437, !noundef !41 ; 2 uses
  switch i8 %i.wj, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i [
    i8 3, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
    i8 10, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
    i8 12, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
    i8 15, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
    i8 18, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
    i8 20, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i
  ]

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i: ; preds = %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i
  %exitcond21.not.i.i25.i.i.i.i.i.i.i = icmp eq i64 %i.wh, %.sroa.28.0.copyload.i.i.i
  br i1 %exitcond21.not.i.i25.i.i.i.i.i.i.i, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.fn

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i
  %i.wk = phi i8 [ %i.wc, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qx, %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNtNtBR_8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB8_12control_flow11ControlFlowB2f_ENCINvNtB2l_8implicit12resolve_weakeE0NCINvNvBL_4find5checkB2f_NvNtB2l_7prepare17not_removed_by_x9E0E0B3f_ECs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i ], [ %i.wj, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i23.i.i.i.i.i.i.i ], [ %i.qx, %.loopexit.i.i.i.i.i.i.i ], [ %i.vt, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qx, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB9_12control_flow11ControlFlowB1z_ENCINvNtB1F_8implicit12resolve_weakeE0NCINvNvNtNtNtBX_6traits8iterator8Iterator4find5checkB1z_NvNtB1F_7prepare17not_removed_by_x9E0E0INtB7_5FnMutTujEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i24.i.i.i.i.i.i.i ], [ %i.vo, %_RNCINvNtCsgCGKXfV80i0_12unicode_bidi8implicit12resolve_weakeE0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.wl = icmp eq i8 %i.wk, 5
  %i.wm = trunc nuw i8 %.sroa.05.2.i.i.i to i1
  %or.cond.i.i.i = select i1 %i.wl, i1 %i.wm, i1 false
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i8 1, i8 %i.wk ; 3 uses
  switch i8 %.sroa.0.1.ph422.i.i.i, label %bb.fs [
    i8 1, label %bb.fo
    i8 5, label %bb.fp
  ]

bb.fo:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.wn = icmp eq i8 %i.sx, 4
  %i.wo = icmp eq i8 %spec.store.select.i.i.i, 1
  %or.cond4.i38.i.i = select i1 %i.wn, i1 %i.wo, i1 false
  br i1 %or.cond4.i38.i.i, label %.sink.split.sink.split.i.i.i, label %bb.fs

bb.fp:                                            ; preds = %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterB10_EB10_NvYB10_NtNtBb_5clone5Clone5cloneEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldjNtNtNtCsgCGKXfV80i0_12unicode_bidi9char_data6tables9BidiClassuINtNtB15_12control_flow11ControlFlowB48_ENCINvNtB4e_8implicit12resolve_weakeE0NCINvNvB2X_4find5checkB48_NvNtB4e_7prepare17not_removed_by_x9E0E0B58_ECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  switch i8 %i.sx, label %bb.fs [
    i8 4, label %bb.fq
    i8 6, label %bb.fr
  ]

bb.fq:                                            ; preds = %bb.fp
  %i.wp = icmp eq i8 %spec.store.select.i.i.i, 5
  br i1 %i.wp, label %.sink.split.sink.split.i.i.i, label %bb.fs

bb.fr:                                            ; preds = %bb.fp
  %i.wq = icmp eq i8 %spec.store.select.i.i.i, 5
end_hunk_4
