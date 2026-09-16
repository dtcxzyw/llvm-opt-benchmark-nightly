Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 55
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_RNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB5_10ShapedText5build:bb.a
  %i.mo = shl nuw i64 %i.ml, 4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i1.i.i, i64 noundef %i.mo, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !25923
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB14_6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeNtNtNtB14_6layout3abs3AbsEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.bq, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsiSzwKAiqS6b_8smallvec8SmallVecANtNtNtCsdaEETE4DqmE_13typst_library4text4deco10Decorationj1_EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(472) %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  ret void

bb.br:                                            ; preds = %bb.bk
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @377) #57
          to label %bb.bs unwind label %bb.ml

bb.bs:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread435, %bb.br
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.bk
  %.idx = mul nuw nsw i64 %.sroa.0.1.i.i.i, 104
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0307.01160, i64 %.idx
  %i.mq = getelementptr i8, ptr %.sroa.0307.01160, i64 80
  %.val73 = load i64, ptr %i.mq, align 8, !alias.scope !140, !noundef !41
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0307.01160, i64 72
  %.val72 = load i64, ptr %i.mr, align 8, !alias.scope !139, !noundef !41
  br label %.lr.ph

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %.lr.ph
  %i.ms = fmul double %i.di, %.sroa.7.0.copyload  ; 2 uses
  %i.mt = call double @llvm.fabs.f64(double %i.ms)
  %i.mu = fcmp one double %i.mt, +inf
  %.neg = fneg double %i.ms
  %i.mv = select i1 %i.mu, double %.neg, double -0.000000e+00 ; 2 uses
  %.inv60 = fcmp ord double %i.mv, 0.000000e+00
  %spec.store.select3 = select i1 %.inv60, double %i.mv, double 0.000000e+00
  %i.mw = fadd double %spec.store.select1, %spec.store.select3 ; 2 uses
  %.inv61 = fcmp ord double %i.mw, 0.000000e+00
  %spec.store.select4 = select i1 %.inv61, double %i.mw, double 0.000000e+00 ; 3 uses
  %i.mx = mul nuw i64 %.sroa.0.1.i.i.i, 56        ; 3 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !25924
  %i.my = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.mx, i64 noundef range(i64 1, 17) 8) #56, !noalias !25924 ; 4 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.mx) #57
          to label %.noexc102 unwind label %bb.ml

.noexc102:                                        ; preds = %bb.bt
  unreachable

bb.bu:                                            ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  %.promoted = load double, ptr %i.hf, align 8
  %i.na = fdiv double %5, %.sroa.8.0.copyload     ; 2 uses
  %i.nb = call double @llvm.fabs.f64(double %i.na)
  %i.nc = fcmp ueq double %i.nb, +inf
  %..i.i.i.i.i.i.i.i = select i1 %i.nc, double 0.000000e+00, double %i.na
  %i.nd = insertelement <2 x double> poison, double %.sroa.8.0.copyload, i64 0
  %i.ne = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.bv

bb.bv:                                            ; preds = %.loopexit.i.i.i.i.i.i, %bb.bu
  %spec.store.select7.i.i.i.i.i.i.i.i1125 = phi double [ %.promoted, %bb.bu ], [ %spec.store.select7.i.i.i.i.i.i.i.i1124, %.loopexit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0384.1 = phi i64 [ %.sroa.0384.01158, %bb.bu ], [ %i.oj, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.nf = phi i64 [ 0, %bb.bu ], [ %i.pi, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.ng = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0307.01160, i64 %i.nf ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25925)
  call void @llvm.experimental.noalias.scope.decl(metadata !25926)
  %.not.i.i.i.i.i.i.i.i.i97 = icmp ule i64 %.val.i.i, %.sroa.0384.1
  %i.nh = icmp ult i64 %.sroa.0384.1, %.val7.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.i97, %i.nh
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.bw

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.bv
  %.sroa.062.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.sroa.062.0.in.v.i.i.i.i.i.i.i.i
  %.sroa.062.0.i.i.i.i.i.i.i.i = load double, ptr %.sroa.062.0.in.i.i.i.i.i.i.i.i, align 8, !alias.scope !25927, !noalias !25928, !noundef !41
  %.sroa.063.0.in.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.sroa.063.0.in.v.i.i.i.i.i.i.i.i
  %.sroa.063.0.i.i.i.i.i.i.i.i = load double, ptr %.sroa.063.0.in.i.i.i.i.i.i.i.i, align 8, !alias.scope !25927, !noalias !25928, !noundef !41
  %i.ni = fmul double %4, %.sroa.062.0.i.i.i.i.i.i.i.i ; 2 uses
  %.inv.i.i.i.i.i.i.i.i = fcmp ord double %i.ni, 0.000000e+00
  %i.nj = fmul double %4, %.sroa.063.0.i.i.i.i.i.i.i.i ; 2 uses
  %.inv66.i.i.i.i.i.i.i.i = fcmp ord double %i.nj, 0.000000e+00
  %spec.store.select1.i.i.i.i.i.i.i.i = select i1 %.inv66.i.i.i.i.i.i.i.i, double %i.nj, double 0.000000e+00
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 95
  %i.nl = load i8, ptr %i.nk, align 1, !range !54, !alias.scope !25927, !noalias !25928, !noundef !41
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = select i1 %i.nm, double %..i.i.i.i.i.i.i.i, double -0.000000e+00
  %.sroa.027.0.i.i.i.i.i.i.i.i = fadd double %spec.store.select1.i.i.i.i.i.i.i.i, %i.nn ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.np = load double, ptr %i.no, align 8, !alias.scope !25927, !noalias !25928, !noundef !41
  %i.nq = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nr = load double, ptr %i.nq, align 8, !alias.scope !25927, !noalias !25928, !noundef !41
  %spec.store.select.i.i.i.i.i.i.i.i = select i1 %.inv.i.i.i.i.i.i.i.i, double %i.ni, double 0.000000e+00 ; 3 uses
  %i.ns = insertelement <2 x double> poison, double %spec.store.select.i.i.i.i.i.i.i.i, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %.sroa.027.0.i.i.i.i.i.i.i.i, i64 1
  %i.nu = fmul <2 x double> %i.ne, %i.nt          ; 2 uses
  %i.nv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.nu)
  %i.nw = fcmp one <2 x double> %i.nv, splat (double +inf)
  %i.nx = select <2 x i1> %i.nw, <2 x double> %i.nu, <2 x double> zeroinitializer
  %i.ny = call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.nx) ; 2 uses
  %.inv69.i.i.i.i.i.i.i.i = fcmp ord double %i.ny, 0.000000e+00
  %spec.store.select6.i.i.i.i.i.i.i.i = select i1 %.inv69.i.i.i.i.i.i.i.i, double %i.ny, double 0.000000e+00
  %i.nz = fadd double %spec.store.select7.i.i.i.i.i.i.i.i1125, %spec.store.select6.i.i.i.i.i.i.i.i ; 2 uses
  %.inv70.i.i.i.i.i.i.i.i = fcmp ord double %i.nz, 0.000000e+00
  %spec.store.select7.i.i.i.i.i.i.i.i = select i1 %.inv70.i.i.i.i.i.i.i.i, double %i.nz, double 0.000000e+00 ; 2 uses
  store double %spec.store.select7.i.i.i.i.i.i.i.i, ptr %i.hf, align 8, !noalias !25929
  %i.oa = fadd double %spec.store.select.i.i.i.i.i.i.i.i, %i.np ; 2 uses
  %.inv71.i.i.i.i.i.i.i.i = fcmp ord double %i.oa, 0.000000e+00
  %spec.store.select8.i.i.i.i.i.i.i.i = select i1 %.inv71.i.i.i.i.i.i.i.i, double %i.oa, double 0.000000e+00
  %i.ob = insertelement <2 x double> poison, double %.sroa.027.0.i.i.i.i.i.i.i.i, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.nr, i64 1
  %i.od = insertelement <2 x double> poison, double %spec.store.select8.i.i.i.i.i.i.i.i, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %spec.store.select.i.i.i.i.i.i.i.i, i64 1
  %i.of = fadd <2 x double> %i.oc, %i.oe          ; 2 uses
  %i.og = fcmp ord <2 x double> %i.of, zeroinitializer
  %i.oh = select <2 x i1> %i.og, <2 x double> %i.of, <2 x double> zeroinitializer
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.bv
  %spec.store.select7.i.i.i.i.i.i.i.i1124 = phi double [ %spec.store.select7.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %spec.store.select7.i.i.i.i.i.i.i.i1125, %bb.bv ]
  %i.oi = phi <2 x double> [ %i.oh, %._crit_edge.i.i.i.i.i.i.i.i ], [ zeroinitializer, %bb.bv ]
  %i.oj = add i64 %.sroa.0384.1, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ng, i64 72
  %i.ol = load i64, ptr %i.ok, align 8, !alias.scope !25927, !noalias !25928, !noundef !41 ; 4 uses
  br i1 %i.hj, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i99

.lr.ph.i.i.i.i.i.i.i.i.i99:                       ; preds = %bb.bw, %bb.bx
  %.sroa.01.017.i.i.i.i.i.i.i.i.i = phi i64 [ %i.on, %bb.bx ], [ 0, %bb.bw ] ; 3 uses
  %.sroa.05.016.i.i.i.i.i.i.i.i.i = phi ptr [ %i.op, %bb.bx ], [ %i.hg, %bb.bw ] ; 3 uses
  %i.om = load i64, ptr %.sroa.05.016.i.i.i.i.i.i.i.i.i, align 8, !noalias !25930, !noundef !41
  %i.on = add i64 %i.om, %.sroa.01.017.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i100 = icmp ule i64 %.sroa.01.017.i.i.i.i.i.i.i.i.i, %i.ol
  %i.oo = icmp ult i64 %i.ol, %i.on
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = and i1 %.not.i.i.i.i.i.i.i.i.i.i100, %i.oo
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i99
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.hi
  br i1 %i.oq, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i99

bb.by:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i99
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.05.016.i.i.i.i.i.i.i.i.i, i64 8
  %i.os = load i64, ptr %i.or, align 8, !range !53, !noalias !25930, !noundef !41
  %i.ot = sub nuw i64 %i.ol, %.sroa.01.017.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ou = icmp ugt i64 %i.ot, 65535
  %i.ov = trunc nuw i64 %i.ot to i16
  %i.ow = call i16 @llvm.uadd.sat.i16(i16 %i.ov, i16 %i.hk)
  %i.ox = select i1 %i.ou, i16 %i.hk, i16 %i.ow
  br label %.loopexit.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.bx, %bb.by, %bb.bw
  %.sroa.3.0.i.i.i.i.i.i.i.i.i = phi i16 [ %i.ox, %bb.by ], [ %i.hk, %bb.bw ], [ %i.hk, %bb.bx ]
  %.sroa.0.0.i76.i.i.i.i.i.i.i.i = phi i64 [ %i.os, %bb.by ], [ 1, %bb.bw ], [ 1, %bb.bx ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ng, i64 92
  %i.oz = load i16, ptr %i.oy, align 4, !alias.scope !25927, !noalias !25928, !noundef !41
  %i.pa = sub i64 %i.ol, %..i                     ; 2 uses
  %i.pb = trunc nuw i64 %i.pa to i16
  %.not74.i.i.i.i.i.i.i.i = icmp ult i64 %i.pa, 65536
  %.sroa.018.0.i.i.i.i.i.i.i.i = select i1 %.not74.i.i.i.i.i.i.i.i, i16 %i.pb, i16 -1
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ng, i64 80
  %i.pd = load i64, ptr %i.pc, align 8, !alias.scope !25927, !noalias !25928, !noundef !41
  %i.pe = sub i64 %i.pd, %..i                     ; 2 uses
  %i.pf = trunc nuw i64 %i.pe to i16
  %.not75.i.i.i.i.i.i.i.i = icmp ult i64 %i.pe, 65536
  %.sroa.020.0.i.i.i.i.i.i.i.i = select i1 %.not75.i.i.i.i.i.i.i.i, i16 %i.pf, i16 -1
  %i.pg = select i1 %.not.i.i.i.i.i.i.i.i, i16 %.sroa.3.0.i.i.i.i.i.i.i.i.i, i16 -1
  %i.ph = getelementptr inbounds nuw [56 x i8], ptr %i.my, i64 %i.nf ; 7 uses
  store i64 %.sroa.0.0.i76.i.i.i.i.i.i.i.i, ptr %i.ph, align 8, !noalias !25931
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  store i16 %i.pg, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !25931
  %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  store <2 x double> %i.oi, ptr %.sroa.65.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !25931
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i, i8 0, i64 16, i1 false), !noalias !25932
  %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 48
  store i16 %.sroa.018.0.i.i.i.i.i.i.i.i, ptr %.sroa.98.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !25931
  %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 50
  store i16 %.sroa.020.0.i.i.i.i.i.i.i.i, ptr %.sroa.109.0..sroa_idx.i.i.i.i.i.i.i, align 2, !noalias !25931
  %.sroa.1110.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ph, i64 52
  store i16 %i.oz, ptr %.sroa.1110.0..sroa_idx.i.i.i.i.i.i.i, align 4, !noalias !25931
  %i.pi = add nuw i64 %i.nf, 1                    ; 2 uses
  %i.pj = icmp eq i64 %i.pi, %.sroa.0.1.i.i.i
  br i1 %i.pj, label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit, label %bb.bv

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.01122 = phi ptr [ %i.pk, %.lr.ph ], [ %.sroa.0307.01160, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.03861121 = phi i64 [ %..i, %.lr.ph ], [ %.val72, %.lr.ph.preheader ]
  %.sroa.7.03871120 = phi i64 [ %..i103, %.lr.ph ], [ %.val73, %.lr.ph.preheader ]
  %i.pk = getelementptr inbounds nuw i8, ptr %.sroa.0.01122, i64 104 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.01122, i64 72
  %i.pm = load i64, ptr %i.pl, align 8, !noundef !41
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.pm, i64 %.sroa.0.03861121) ; 6 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.0.01122, i64 80
  %i.po = load i64, ptr %i.pn, align 8, !noundef !41
  %..i103 = call noundef i64 @llvm.umax.i64(i64 %i.po, i64 %.sroa.7.03871120) ; 3 uses
  %i.pp = icmp eq ptr %i.pk, %i.mp
  br i1 %i.pp, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i, label %.lr.ph

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit: ; preds = %.loopexit.i.i.i.i.i.i
  %i.pq = add i64 %.sroa.0384.01158, %.sroa.0.1.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bo)
  store ptr %.sroa.0309.0.copyload, ptr %i.bo, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bn)
  call void @llvm.experimental.noalias.scope.decl(metadata !25933)
  call void @llvm.experimental.noalias.scope.decl(metadata !25934)
  %i.pr = load i32, ptr %.sroa.0.0.i82, align 8, !range !110, !alias.scope !25934, !noalias !25933, !noundef !41 ; 3 uses
  %i.ps = icmp samesign ugt i32 %i.pr, 1
  %i.pt = zext nneg i32 %i.pr to i64
  %i.pu = add nsw i64 %i.pt, -1
  %i.pv = select i1 %i.ps, i64 %i.pu, i64 0
  switch i64 %i.pv, label %bb.bz [
    i64 0, label %bb.ca
    i64 1, label %bb.cb
    i64 2, label %bb.ci
  ]

bb.bz:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit
  unreachable

bb.ca:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit
  %i.pw = trunc i32 %i.pr to i1
  br i1 %i.pw, label %bb.cj, label %bb.ck

bb.cb:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit
  %.val.i104 = load i64, ptr %i.ho, align 8, !range !52, !alias.scope !25934, !noalias !25933, !noundef !41 ; 2 uses
  %.val3.i105 = load ptr, ptr %i.hq, align 8, !alias.scope !25934, !noalias !25933, !nonnull !41, !noundef !41 ; 2 uses
  %i.px = atomicrmw add ptr %.val3.i105, i64 1 monotonic, align 8, !noalias !25935
  %i.py = icmp slt i64 %i.px, 0                   ; 3 uses
  switch i64 %.val.i104, label %.unreachabledefault [
    i64 0, label %bb.cc
    i64 1, label %bb.cd
    i64 2, label %bb.ce
  ]

.unreachabledefault:                              ; preds = %bb.cb
  unreachable

default.unreachable:                              ; preds = %bb.ih, %bb.ds, %bb.do
  unreachable

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.py, label %bb.cf, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.cd:                                            ; preds = %bb.cb
  br i1 %i.py, label %bb.cg, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.ce:                                            ; preds = %bb.cb
  br i1 %i.py, label %bb.ch, label %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.cf:                                            ; preds = %bb.cc
  call void @llvm.trap()
  unreachable

bb.cg:                                            ; preds = %bb.cd
  call void @llvm.trap()
  unreachable

bb.ch:                                            ; preds = %bb.ce
  call void @llvm.trap()
  unreachable

_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.ce, %bb.cd, %bb.cc
  store i64 %.val.i104, ptr %i.hp, align 8, !alias.scope !25933, !noalias !25934
  store ptr %.val3.i105, ptr %i.hr, align 8, !alias.scope !25933, !noalias !25934
  store i32 2, ptr %i.bn, align 8, !alias.scope !25933, !noalias !25934
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.ci:                                            ; preds = %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library4text4item5GlyphEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout6inline7shaping11ShapedGlyphENCNvMs1_B3E_NtB3E_10ShapedText5builds_0EE9from_iterB3I_.exit
  %i.pz = load ptr, ptr %i.ho, align 8, !alias.scope !25934, !noalias !25933, !nonnull !41, !noundef !41 ; 2 uses
  %i.qa = atomicrmw add ptr %i.pz, i64 1 monotonic, align 8, !noalias !25935
  %i.qb = icmp slt i64 %i.qa, 0
  br i1 %i.qb, label %bb.co, label %bb.cn

bb.cj:                                            ; preds = %bb.ca
  %i.qc = load ptr, ptr %i.ho, align 8, !alias.scope !25934, !noalias !25933, !nonnull !41, !noundef !41 ; 2 uses
  %i.qd = atomicrmw add ptr %i.qc, i64 1 monotonic, align 8, !noalias !25935
  %i.qe = icmp slt i64 %i.qd, 0
  br i1 %i.qe, label %bb.cm, label %bb.cl

bb.ck:                                            ; preds = %bb.ca
  %.sroa.01.0.copyload.i = load i32, ptr %i.hs, align 4, !alias.scope !25934, !noalias !25933
  %.sroa.6.0.pre.i = load ptr, ptr %i.ho, align 8, !alias.scope !25934, !noalias !25933
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.6.0.i = phi ptr [ %.sroa.6.0.pre.i, %bb.ck ], [ %i.qc, %bb.cj ]
  %.sroa.5.0.i = phi i32 [ %.sroa.01.0.copyload.i, %bb.ck ], [ undef, %bb.cj ]
  %.sroa.0.0.i107 = phi i32 [ 0, %bb.ck ], [ 1, %bb.cj ]
  %.sroa.7.0.i = load double, ptr %i.hq, align 8, !alias.scope !25934, !noalias !25933
  store i32 %.sroa.0.0.i107, ptr %i.bn, align 8, !alias.scope !25933, !noalias !25934
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i108, align 4, !alias.scope !25933, !noalias !25934
  store ptr %.sroa.6.0.i, ptr %i.hp, align 8, !alias.scope !25933, !noalias !25934
  store double %.sroa.7.0.i, ptr %i.hr, align 8, !alias.scope !25933, !noalias !25934
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.cm:                                            ; preds = %bb.cj
  call void @llvm.trap()
  unreachable

bb.cn:                                            ; preds = %bb.ci
  store ptr %i.pz, ptr %i.hp, align 8, !alias.scope !25933, !noalias !25934
  store i32 3, ptr %i.bn, align 8, !alias.scope !25933, !noalias !25934
  br label %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit

bb.co:                                            ; preds = %bb.ci
  call void @llvm.trap()
  unreachable

bb.cp:                                            ; preds = %bb.cy
  %i.qf = atomicrmw sub ptr %.sroa.0309.0.copyload, i64 1 release, align 8, !noalias !25936
  %i.qg = icmp eq i64 %i.qf, 1
  br i1 %i.qg, label %bb.cq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit

bb.cq:                                            ; preds = %bb.cp
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.mk

_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.cn, %bb.cl, %_RNvXs7_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8GradientNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bm)
  %i.qh = load i64, ptr %i.br, align 8, !range !52, !noundef !41
  %.not62 = icmp eq i64 %i.qh, 2
  br i1 %.not62, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  invoke fastcc void @_RNvXsi_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(96) %i.be, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.br)
          to label %bb.da unwind label %bb.cz

bb.cs:                                            ; preds = %_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library9visualize5paintNtB5_5PaintNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit
  store i64 -2, ptr %i.bm, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5builds0_0Bb_.exit, %bb.cs
  %i.qi = sub i64 %..i, %i.hy                     ; 6 uses
  %i.qj = sub i64 %..i103, %i.hy                  ; 6 uses
  %i.qk = icmp ugt i64 %i.qi, %i.qj
  %i.ql = icmp ugt i64 %i.qj, %i.hw
  %or.cond.i = or i1 %i.qk, %i.ql
  br i1 %or.cond.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread435, label %bb.cu, !prof !120

bb.cu:                                            ; preds = %bb.ct
  %i.qm = icmp eq i64 %i.qi, %i.hw
  br i1 %i.qm, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.qn = icmp eq i64 %..i, %i.hy
  br i1 %i.qn, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cx, %bb.cv
  %i.qo = icmp eq i64 %i.qj, %i.hw
  br i1 %i.qo, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit

bb.cx:                                            ; preds = %bb.cv
  %i.qp = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.qi
  %i.qq = load i8, ptr %i.qp, align 1, !alias.scope !25937, !noundef !41
  %i.qr = icmp sgt i8 %i.qq, -65
  br i1 %i.qr, label %bb.cw, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread435, !prof !121

bb.cy:                                            ; preds = %.body115, %bb.cz
  %.pn = phi { ptr, i32 } [ %eh.lpad-body116, %.body115 ], [ %i.qs, %bb.cz ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #54
          to label %bb.cp unwind label %bb.mk

bb.cz:                                            ; preds = %bb.da, %bb.cr
  %i.qs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.da:                                            ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bc, ptr noundef nonnull align 8 dereferenceable(96) %i.be, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMs0_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeINtB5_6StrokeNtNtNtB9_6layout3abs3AbsE17unwrap_or_default(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.bd, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.bc)
          to label %_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5builds0_0Bb_.exit unwind label %bb.cz

_RNCNvMs1_NtNtCs7tN9tvpkfrg_12typst_layout6inline7shapingNtB7_10ShapedText5builds0_0Bb_.exit: ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, ptr noundef nonnull align 8 dereferenceable(80) %i.bd, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.ct

bb.db:                                            ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread435
  %i.qt = landingpad { ptr, i32 }
          cleanup
  br label %.body115

.body115:                                         ; preds = %bb.dd, %bb.db
  %eh.lpad-body116 = phi { ptr, i32 } [ %i.qt, %bb.db ], [ %i.rb, %bb.dd ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.bm) #54
          to label %bb.cy unwind label %bb.mk

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit: ; preds = %bb.cw
  %i.qu = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.qj
  %i.qv = load i8, ptr %i.qu, align 1, !alias.scope !25937, !noundef !41
  %i.qw = icmp sgt i8 %i.qv, -65
  br i1 %i.qw, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread435, !prof !62

end_hunk_0
