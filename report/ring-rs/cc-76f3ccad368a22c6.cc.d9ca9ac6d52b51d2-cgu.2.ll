Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/cc-76f3ccad368a22c6.cc.d9ca9ac6d52b51d2-cgu.2?download=true
inline.NumInlined: 86
inline.NumDeleted: 9
begin_hunk_0_@_RNCNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcShE18allocate_for_slice0CsiHivYpkJ4Hu_2cc:bb.a
  %i.a = tail call { ptr, i64 } @_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global18alloc_impl_runtimeCsiHivYpkJ4Hu_2cc(i64 %0, i64 %1, i1 zeroext false) #21
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define { ptr, i64 } @_RNCNvMsq_NtCs1xwejQucwHj_5alloc4syncINtB7_3ArcShE18allocate_for_slices_0CsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = insertvalue { ptr, i64 } poison, ptr %1, 0
  %i.c = insertvalue { ptr, i64 } %i.b, i64 %i.a, 1
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i8 @_RNCNvNtCs1xwejQucwHj_5alloc3str13replace_ascii0CsiHivYpkJ4Hu_2cc(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %1, align 1                 ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = load i8, ptr %i.b, align 1
  %i.d = icmp eq i8 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i8, ptr %i.f, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.g, %bb.b ], [ %i.a, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathE4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsaL1QbXo9JQH_3std4path4PathEE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrE4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEBv_E4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str5OsStrEBP_EE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSTINtNtCs1xwejQucwHj_5alloc4sync3ArceEINtNtB4_6option6OptionBv_EE4iterCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvMs4_NtNtCs3oUPovFnLWP_4core5slice4iterINtB5_4IterTINtNtCs1xwejQucwHj_5alloc4sync3ArceEINtNtB9_6option6OptionBP_EEE3newCsiHivYpkJ4Hu_2cc(ptr align 8 %0, i64 %1) #21
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags5parse(ptr sret([144 x i8]) align 8 %0, ptr %1, i64 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 4 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [32 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [32 x i8], align 8               ; 7 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 7 uses
  %i.ap = alloca [32 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 7 uses
  %i.as = alloca [32 x i8], align 8               ; 7 uses
  %i.at = alloca [32 x i8], align 8               ; 7 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [16 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 5 uses
  %i.ax = alloca [24 x i8], align 8               ; 4 uses
  %i.ay = alloca [24 x i8], align 8               ; 9 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [16 x i8], align 8               ; 6 uses
  %i.bb = alloca [16 x i8], align 8               ; 5 uses
  %i.bc = alloca [32 x i8], align 8               ; 2 uses
  %i.bd = alloca [32 x i8], align 8               ; 3 uses
  %i.be = alloca [32 x i8], align 8               ; 3 uses
  %i.bf = alloca [128 x i8], align 8              ; 3 uses
  %i.bg = alloca [128 x i8], align 8              ; 2 uses
  %i.bh = alloca [128 x i8], align 8              ; 2 uses
  %i.bi = alloca [16 x i8], align 8               ; 4 uses
  %i.bj = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bk = extractvalue { ptr, i64 } %i.bj, 0
  %i.bl = extractvalue { ptr, i64 } %i.bj, 1
  %i.bm = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bn = extractvalue { ptr, i64 } %i.bm, 0
  %i.bo = extractvalue { ptr, i64 } %i.bm, 1
  %i.bp = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  %i.bs = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bt = extractvalue { ptr, i64 } %i.bs, 0
  %i.bu = extractvalue { ptr, i64 } %i.bs, 1
  %i.bv = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1
  %i.by = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.bz = extractvalue { ptr, i64 } %i.by, 0
  %i.ca = extractvalue { ptr, i64 } %i.by, 1
  %i.cb = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.cc = extractvalue { ptr, i64 } %i.cb, 0
  %i.cd = extractvalue { ptr, i64 } %i.cb, 1
  %i.ce = tail call i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30
  %i.cf = tail call i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30
  %i.cg = tail call i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30
  %i.ch = tail call i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30
  %i.ci = tail call { i32, i32 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionmENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.cj = extractvalue { i32, i32 } %i.ci, 0
  %i.ck = extractvalue { i32, i32 } %i.ci, 1
  %i.cl = tail call { ptr, i64 } @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionReENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30 ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %i.cl, 0
  %i.cn = extractvalue { ptr, i64 } %i.cl, 1
  %i.co = tail call i8 @_RNvXs7_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionbENtNtB7_7default7Default7defaultCsiHivYpkJ4Hu_2cc() #21, !noalias !30
  store ptr null, ptr %i.bi, align 8
  call void @_RINvMNtCs3oUPovFnLWP_4core3stre5splitReECsiHivYpkJ4Hu_2cc(ptr nonnull sret([128 x i8]) align 8 %i.bg, ptr %1, i64 %2, ptr nonnull @51, i64 1) #21
  call void @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3str4iter5SplitReENtB2_12IntoIterator9into_iterCsiHivYpkJ4Hu_2cc(ptr nonnull sret([128 x i8]) align 8 %i.bh, ptr nonnull align 8 %i.bg) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bf, ptr noundef nonnull align 8 dereferenceable(128) %i.bh, i64 128, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  br label %.outer

.outer:                                           ; preds = %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit, %bb.a
  %.sroa.49.0.ph = phi i8 [ %.sroa.49.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.co, %bb.a ] ; 18 uses
  %.sroa.47.0.ph = phi i8 [ %.sroa.47.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.ch, %bb.a ] ; 18 uses
  %.sroa.45.0.ph = phi i8 [ %.sroa.45.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cg, %bb.a ] ; 18 uses
  %.sroa.43.0.ph = phi i8 [ %.sroa.43.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cf, %bb.a ] ; 18 uses
  %.sroa.41.0.ph = phi i8 [ %.sroa.41.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.ce, %bb.a ] ; 18 uses
  %.sroa.39.0.ph = phi i8 [ %.sroa.39.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ 0, %bb.a ] ; 18 uses
  %.sroa.37.0.ph = phi i8 [ %.sroa.37.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ 0, %bb.a ] ; 18 uses
  %.sroa.35.0.ph = phi i64 [ %.sroa.35.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cn, %bb.a ] ; 18 uses
  %.sroa.33.0.ph = phi ptr [ %.sroa.33.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cm, %bb.a ] ; 18 uses
  %.sroa.31.0.ph = phi i64 [ %.sroa.31.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cd, %bb.a ] ; 18 uses
  %.sroa.29.0.ph = phi ptr [ %.sroa.29.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cc, %bb.a ] ; 18 uses
  %.sroa.27.0.ph = phi i64 [ %.sroa.27.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.ca, %bb.a ] ; 18 uses
  %.sroa.25.0.ph = phi ptr [ %.sroa.25.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bz, %bb.a ] ; 18 uses
  %.sroa.23.0.ph = phi i64 [ %.sroa.23.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bx, %bb.a ] ; 18 uses
  %.sroa.21.0.ph = phi ptr [ %.sroa.21.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bw, %bb.a ] ; 18 uses
  %.sroa.19.0.ph = phi i64 [ %.sroa.19.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bu, %bb.a ] ; 18 uses
  %.sroa.17.0.ph = phi ptr [ %.sroa.17.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bt, %bb.a ] ; 18 uses
  %.sroa.15.0.ph = phi i64 [ %.sroa.15.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.br, %bb.a ] ; 18 uses
  %.sroa.13.0.ph = phi ptr [ %.sroa.13.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bq, %bb.a ] ; 18 uses
  %.sroa.11.0.ph = phi i64 [ %.sroa.11.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bo, %bb.a ] ; 18 uses
  %.sroa.9.0.ph = phi ptr [ %.sroa.9.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bn, %bb.a ] ; 18 uses
  %.sroa.7.0.ph = phi i64 [ %.sroa.7.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bl, %bb.a ] ; 18 uses
  %.sroa.5.0.ph = phi ptr [ %.sroa.5.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.bk, %bb.a ] ; 18 uses
  %.sroa.3.0.ph = phi i32 [ %.sroa.3.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.ck, %bb.a ] ; 18 uses
  %.sroa.0.0.ph = phi i32 [ %.sroa.0.2, %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit ], [ %i.cj, %bb.a ] ; 18 uses
  %i.dz = call { ptr, i64 } @_RNvXsX_NtNtCs3oUPovFnLWP_4core3str4iterINtB5_5SplitReENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.bf) #21 ; 2 uses
  %i.ea = extractvalue { ptr, i64 } %i.dz, 0      ; 2 uses
  %.not80 = icmp eq ptr %i.ea, null
  br i1 %.not80, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.dm
  %.pn = phi { ptr, i64 } [ %i.ih, %bb.dm ], [ %i.dz, %.outer ]
  %i.eb = phi ptr [ %i.ii, %bb.dm ], [ %i.ea, %.outer ] ; 18 uses
  %i.ec = extractvalue { ptr, i64 } %.pn, 1       ; 18 uses
  %i.ed = call { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE4takeCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.bi) #21 ; 2 uses
  %i.ee = extractvalue { ptr, i64 } %i.ed, 0
  %i.ef = extractvalue { ptr, i64 } %i.ed, 1
  %i.eg = call { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE9unwrap_orCsiHivYpkJ4Hu_2cc(ptr %i.ee, i64 %i.ef, ptr nonnull inttoptr (i64 1 to ptr), i64 0) #21 ; 2 uses
  %i.eh = extractvalue { ptr, i64 } %i.eg, 0      ; 18 uses
  %i.ei = extractvalue { ptr, i64 } %i.eg, 1      ; 18 uses
  %i.ej = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3stre8is_emptyCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei) #21
  br i1 %i.ej, label %bb.dl, label %bb.c

.outer._crit_edge:                                ; preds = %.outer, %bb.dm
  store i32 %.sroa.0.0.ph, ptr %0, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.3.0.ph, ptr %.sroa.210.0..sroa_idx, align 4
  %.sroa.311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.ph, ptr %.sroa.311.0..sroa_idx, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0.ph, ptr %.sroa.412.0..sroa_idx, align 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.9.0.ph, ptr %.sroa.513.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.11.0.ph, ptr %.sroa.614.0..sroa_idx, align 8
  %.sroa.715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sroa.13.0.ph, ptr %.sroa.715.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.15.0.ph, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.916.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sroa.17.0.ph, ptr %.sroa.916.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.19.0.ph, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.1117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.21.0.ph, ptr %.sroa.1117.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.sroa.23.0.ph, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.1318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %.sroa.25.0.ph, ptr %.sroa.1318.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.27.0.ph, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.1519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.29.0.ph, ptr %.sroa.1519.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.31.0.ph, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.1720.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %.sroa.33.0.ph, ptr %.sroa.1720.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %.sroa.35.0.ph, ptr %.sroa.18.0..sroa_idx, align 8
  %.sroa.1921.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %.sroa.37.0.ph, ptr %.sroa.1921.0..sroa_idx, align 8
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 137
  store i8 %.sroa.39.0.ph, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.2122.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 %.sroa.41.0.ph, ptr %.sroa.2122.0..sroa_idx.a, align 2
  %.sroa.22.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 139
  store i8 %.sroa.43.0.ph, ptr %.sroa.22.0..sroa_idx.a, align 1
  %.sroa.2323.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 %.sroa.45.0.ph, ptr %.sroa.2323.0..sroa_idx.a, align 4
  %.sroa.24.0..sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 141
  store i8 %.sroa.47.0.ph, ptr %.sroa.24.0..sroa_idx.a, align 1
  %.sroa.2524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 142
  store i8 %.sroa.49.0.ph, ptr %.sroa.2524.0..sroa_idx, align 2
  br label %bb.b

bb.b:                                             ; preds = %bb.dn, %.outer._crit_edge
  ret void

bb.c:                                             ; preds = %bb.dl, %.lr.ph
  %i.ek = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @103, i64 9) #21, !noalias !31
  br i1 %i.ek, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.el = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @102, i64 2) #21, !noalias !31
  br i1 %i.el, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.em = call zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre11starts_withReECsiHivYpkJ4Hu_2cc(ptr nonnull %i.eb, i64 %i.ec, ptr nonnull @116, i64 10), !noalias !31
  br i1 %i.em, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.en = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @101, i64 2) #21, !noalias !31
  br i1 %i.en, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.eo = call { ptr, i64 } @_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsiHivYpkJ4Hu_2cc(ptr nonnull %i.eb, i64 %i.ec, i64 10, ptr nonnull align 8 @117) #21, !noalias !31 ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  br label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit

bb.h:                                             ; preds = %bb.f
  %i.er = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @104, i64 2) #21, !noalias !31
  br i1 %i.er, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.es = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @105, i64 2) #21, !noalias !31
  br i1 %i.es, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.et = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @106, i64 2) #21, !noalias !31
  br i1 %i.et, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eu = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @107, i64 2) #21, !noalias !31
  br i1 %i.eu, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ev = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @108, i64 6) #21, !noalias !31
  br i1 %i.ev, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ew = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @109, i64 2) #21, !noalias !31
  br i1 %i.ew, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ex = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @110, i64 7) #21, !noalias !31
  br i1 %i.ex, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ey = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @111, i64 2) #21, !noalias !31
  br i1 %i.ey, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ez = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @112, i64 6) #21, !noalias !31
  br i1 %i.ez, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fa = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @113, i64 2) #21, !noalias !31
  br i1 %i.fa, label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fb = call zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.eh, i64 %i.ei, ptr nonnull @114, i64 8) #21, !noalias !31 ; 2 uses
  %spec.select.i = select i1 %i.fb, ptr @113, ptr inttoptr (i64 1 to ptr)
  %spec.select7.i = select i1 %i.fb, i64 2, i64 0
  br label %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit

_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.sink6.i = phi ptr [ @113, %bb.q ], [ @111, %bb.o ], [ @109, %bb.m ], [ @107, %bb.k ], [ %i.eh, %bb.h ], [ @101, %bb.f ], [ @102, %bb.c ], [ @102, %bb.g ], [ @102, %bb.d ], [ %i.eh, %bb.j ], [ %i.eh, %bb.i ], [ @107, %bb.l ], [ @109, %bb.n ], [ @111, %bb.p ], [ %spec.select.i, %bb.r ] ; 2 uses
  %.sink4.i = phi i64 [ 2, %bb.q ], [ 2, %bb.o ], [ 2, %bb.m ], [ 2, %bb.k ], [ %i.ei, %bb.h ], [ 2, %bb.f ], [ 2, %bb.c ], [ 2, %bb.g ], [ 2, %bb.d ], [ %i.ei, %bb.j ], [ %i.ei, %bb.i ], [ 2, %bb.l ], [ 2, %bb.n ], [ 2, %bb.p ], [ %spec.select7.i, %bb.r ] ; 2 uses
  %.sink2.i = phi ptr [ %i.eb, %bb.q ], [ %i.eb, %bb.o ], [ %i.eb, %bb.m ], [ %i.eb, %bb.k ], [ %i.eb, %bb.h ], [ %i.eb, %bb.f ], [ %i.eb, %bb.c ], [ %i.ep, %bb.g ], [ %i.eb, %bb.d ], [ %i.eb, %bb.j ], [ %i.eb, %bb.i ], [ %i.eb, %bb.l ], [ %i.eb, %bb.n ], [ %i.eb, %bb.p ], [ %i.eb, %bb.r ] ; 2 uses
  %.sink.i = phi i64 [ %i.ec, %bb.q ], [ %i.ec, %bb.o ], [ %i.ec, %bb.m ], [ %i.ec, %bb.k ], [ %i.ec, %bb.h ], [ %i.ec, %bb.f ], [ %i.ec, %bb.c ], [ %i.eq, %bb.g ], [ %i.ec, %bb.d ], [ %i.ec, %bb.j ], [ %i.ec, %bb.i ], [ %i.ec, %bb.l ], [ %i.ec, %bb.n ], [ %i.ec, %bb.p ], [ %i.ec, %bb.r ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  store ptr %.sink6.i, ptr %i.bb, align 8, !noalias !32
  store i64 %.sink4.i, ptr %i.cr, align 8, !noalias !32
  call void @_RINvMNtCs3oUPovFnLWP_4core3stre10split_oncecECsiHivYpkJ4Hu_2cc(ptr nonnull sret([32 x i8]) align 8 %i.az, ptr %.sink2.i, i64 %.sink.i, i32 61) #21, !noalias !32
  %i.fc = load ptr, ptr %i.az, align 8, !noalias !32 ; 2 uses
  %.not.i = icmp eq ptr %i.fc, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit
  %i.fd = load i64, ptr %i.cs, align 8, !noalias !32
  %i.fe = load ptr, ptr %i.ct, align 8, !noalias !32
  %i.ff = load i64, ptr %i.cu, align 8, !noalias !32
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit
  %.sroa.9.0.i = phi i64 [ %i.ff, %bb.s ], [ undef, %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit ] ; 13 uses
  %.sroa.6.0.i = phi ptr [ %i.fe, %bb.s ], [ null, %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit ] ; 17 uses
  %.sroa.3.0.i = phi i64 [ %i.fd, %bb.s ], [ %.sink.i, %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit ]
  %.sroa.0.0.i = phi ptr [ %i.fc, %bb.s ], [ %.sink2.i, %_RNvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags5parse18handle_flag_prefix.exit ]
  store ptr %.sroa.0.0.i, ptr %i.ba, align 8, !noalias !32, !captures !4
  store i64 %.sroa.3.0.i, ptr %i.cv, align 8, !noalias !32
  %i.fg = call zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core3stre8is_emptyCsiHivYpkJ4Hu_2cc(ptr %.sink6.i, i64 %.sink4.i) #21, !noalias !32
  br i1 %i.fg, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.av, ptr nonnull align 8 %i.bb) #21, !noalias !32
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.au, ptr nonnull align 8 %i.ba) #21, !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !noalias !32
  %i.fh = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj3_Kj2_ECsiHivYpkJ4Hu_2cc(ptr nonnull @24, ptr nonnull align 8 %i.aw) #21, !noalias !32 ; 2 uses
  %i.fi = extractvalue { ptr, ptr } %i.fh, 0
  %i.fj = extractvalue { ptr, ptr } %i.fh, 1
  call void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.ax, ptr %i.fi, ptr %i.fj) #21, !noalias !32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false), !noalias !32
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.fk = load ptr, ptr %i.ba, align 8, !noalias !32
  %i.fl = load i64, ptr %i.cv, align 8, !noalias !32
  store ptr %i.fk, ptr %i.cx, align 8, !noalias !32
  store i64 %i.fl, ptr %i.cy, align 8, !noalias !32
  store i64 -1, ptr %i.ay, align 8, !noalias !32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fm = invoke { ptr, i64 } @_RNvXse_NtCs1xwejQucwHj_5alloc6borrowINtB5_3CoweEINtNtCs3oUPovFnLWP_4core7convert5AsRefeE6as_refCsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ay)
          to label %bb.y unwind label %bb.x, !noalias !32 ; 2 uses

bb.x:                                             ; preds = %.noexc5, %.noexc4, %.noexc, %bb.be, %.invoke.i, %bb.df, %bb.db, %bb.cx, %bb.cr, %bb.cn, %bb.cj, %bb.ci, %bb.ce, %bb.cb, %bb.ca, %bb.by, %bb.bx, %bb.bv, %bb.bt, %bb.bs, %bb.bq, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bb, %bb.az, %bb.ax, %bb.aw, %bb.au, %bb.at, %.noexc32.i, %.noexc31.i, %.noexc30.i, %bb.ar, %bb.ao, %.noexc26.i, %.noexc25.i, %.noexc24.i, %bb.am, %bb.aj, %bb.ah, %bb.af, %.noexc21.i, %.noexc20.i, %.noexc.i, %bb.ad, %bb.aa, %bb.y, %bb.w
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CoweEECsiHivYpkJ4Hu_2cc(ptr nonnull align 8 %i.ay) #22
          to label %bb.dk unwind label %bb.dj

bb.y:                                             ; preds = %bb.w
  %i.fo = extractvalue { ptr, i64 } %i.fm, 0      ; 25 uses
  %i.fp = extractvalue { ptr, i64 } %i.fm, 1      ; 25 uses
  %i.fq = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @25, i64 12)
          to label %bb.z unwind label %bb.x, !noalias !32

bb.z:                                             ; preds = %bb.y
  br i1 %i.fq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fr = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @26, i64 20)
          to label %bb.ae unwind label %bb.x, !noalias !32

bb.ab:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !33)
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !35
  store ptr %i.fo, ptr %i.y, align 8, !noalias !36
  store i64 %i.fp, ptr %i.du, align 8, !noalias !36
  %.not.i.i.i = icmp eq ptr %.sroa.6.0.i, null
  br i1 %.not.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %.sroa.6.0.i, ptr %i.dv, align 8, !alias.scope !37, !noalias !32
  store i64 %.sroa.9.0.i, ptr %i.dw, align 8, !alias.scope !37, !noalias !32
  store i64 -2, ptr %i.as, align 8, !alias.scope !37, !noalias !32
  br label %bb.df

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.t, ptr nonnull align 8 %i.y) #21
          to label %.noexc.i unwind label %bb.x, !noalias !36

.noexc.i:                                         ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !noalias !36
end_hunk_0
begin_hunk_1_@_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags5parse:bb.a
  br i1 %.not.i.i29.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr %.sroa.6.0.i, ptr %i.dl, align 8, !alias.scope !47, !noalias !32
  store i64 %.sroa.9.0.i, ptr %i.dm, align 8, !alias.scope !47, !noalias !32
  store i64 -2, ptr %i.ao, align 8, !alias.scope !47, !noalias !32
  br label %bb.cx

bb.ar:                                            ; preds = %bb.ap
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.h, ptr nonnull align 8 %i.m) #21
          to label %.noexc30.i unwind label %bb.x, !noalias !46

.noexc30.i:                                       ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !46
  %i.gc = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj15_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @17, ptr nonnull align 8 %i.i) #21
          to label %.noexc31.i unwind label %bb.x, !noalias !46 ; 2 uses

.noexc31.i:                                       ; preds = %.noexc30.i
  %i.gd = extractvalue { ptr, ptr } %i.gc, 0
  %i.ge = extractvalue { ptr, ptr } %i.gc, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr %i.gd, ptr %i.ge) #21
          to label %.noexc32.i unwind label %bb.x, !noalias !46

.noexc32.i:                                       ; preds = %.noexc31.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !46
  invoke void @_RINvMCsiHivYpkJ4Hu_2ccNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB3_(ptr nonnull sret([32 x i8]) align 8 %i.l, i8 8, ptr nonnull align 8 %i.k)
          to label %.noexc33.i unwind label %bb.x, !noalias !46

.noexc33.i:                                       ; preds = %.noexc32.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !32
  br label %bb.cx

bb.as:                                            ; preds = %bb.ao
  br i1 %i.gb, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gf = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @31, i64 5)
          to label %bb.av unwind label %bb.x, !noalias !32

bb.au:                                            ; preds = %bb.as
  %i.gg = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE2orCsiHivYpkJ4Hu_2cc(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, ptr nonnull @12, i64 4)
          to label %bb.cw unwind label %bb.x, !noalias !32 ; 2 uses

bb.av:                                            ; preds = %bb.at
  br i1 %i.gf, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gh = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @32, i64 19)
          to label %bb.ay unwind label %bb.x, !noalias !32

bb.ax:                                            ; preds = %bb.av
  %i.gi = invoke { ptr, i64 } @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionReE2orCsiHivYpkJ4Hu_2cc(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, ptr nonnull @12, i64 4)
          to label %bb.cv unwind label %bb.x, !noalias !32 ; 2 uses

bb.ay:                                            ; preds = %bb.aw
  br i1 %i.gh, label %bb.cd, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gj = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @33, i64 18)
          to label %bb.ba unwind label %bb.x, !noalias !32

bb.ba:                                            ; preds = %bb.az
  br i1 %i.gj, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.gk = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @34, i64 15)
          to label %bb.bf unwind label %bb.x, !noalias !32

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49), !noalias !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50
  store ptr %i.fo, ptr %i.f, align 8, !noalias !51
  store i64 %i.fp, ptr %i.df, align 8, !noalias !51
  %.not.i.i = icmp eq ptr %.sroa.6.0.i, null
  br i1 %.not.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store ptr %.sroa.6.0.i, ptr %i.dg, align 8, !alias.scope !52, !noalias !32
  store i64 %.sroa.9.0.i, ptr %i.dh, align 8, !alias.scope !52, !noalias !32
  store i64 -2, ptr %i.am, align 8, !alias.scope !52, !noalias !32
  br label %bb.cr

bb.be:                                            ; preds = %bb.bc
  invoke void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayReECs3U9i7nQCKwt_15find_msvc_tools(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.f) #21
          to label %.noexc unwind label %bb.x, !noalias !51

.noexc:                                           ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !noalias !51
  %i.gl = invoke { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj15_Kj1_ECsiHivYpkJ4Hu_2cc(ptr nonnull @17, ptr nonnull align 8 %i.b) #21
          to label %.noexc4 unwind label %bb.x, !noalias !51 ; 2 uses

.noexc4:                                          ; preds = %.noexc
  %i.gm = extractvalue { ptr, ptr } %i.gl, 0
  %i.gn = extractvalue { ptr, ptr } %i.gl, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc3fmt6formatCsiHivYpkJ4Hu_2cc(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr %i.gm, ptr %i.gn) #21
          to label %.noexc5 unwind label %bb.x, !noalias !51

.noexc5:                                          ; preds = %.noexc4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !51
  invoke void @_RINvMCsiHivYpkJ4Hu_2ccNtB3_5Error3newNtNtCs1xwejQucwHj_5alloc6string6StringEB3_(ptr nonnull sret([32 x i8]) align 8 %i.e, i8 8, ptr nonnull align 8 %i.d)
          to label %.noexc6 unwind label %bb.x, !noalias !51

.noexc6:                                          ; preds = %.noexc5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !32
  br label %bb.cr

bb.bf:                                            ; preds = %bb.bb
  br i1 %i.gk, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.go = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @35, i64 22)
          to label %bb.bi unwind label %bb.x, !noalias !32

bb.bh:                                            ; preds = %bb.bf
  %i.gp = invoke i8 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE6map_orIBw_bEINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB14_17RustcCodegenFlags14set_rustc_flag11arg_to_boolBI_EEB16_(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, i8 1)
          to label %bb.cd unwind label %bb.x, !noalias !32

bb.bi:                                            ; preds = %bb.bg
  br i1 %i.go, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.gq = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @36, i64 12)
          to label %bb.bl unwind label %bb.x, !noalias !32

bb.bk:                                            ; preds = %bb.bi
  %i.gr = invoke i8 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE6map_orIBw_bEINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB14_17RustcCodegenFlags14set_rustc_flag11arg_to_boolBI_EEB16_(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, i8 1)
          to label %bb.cd unwind label %bb.x, !noalias !32

bb.bl:                                            ; preds = %bb.bj
  br i1 %i.gq, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gs = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @37, i64 12)
          to label %bb.bo unwind label %bb.x, !noalias !32

bb.bn:                                            ; preds = %bb.bl
  %i.gt = invoke i8 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE6map_orIBw_bEINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB14_17RustcCodegenFlags14set_rustc_flag11arg_to_boolBI_EEB16_(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, i8 1)
          to label %bb.cd unwind label %bb.x, !noalias !32

bb.bo:                                            ; preds = %bb.bm
  br i1 %i.gs, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gu = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @38, i64 19)
          to label %bb.br unwind label %bb.x, !noalias !32

bb.bq:                                            ; preds = %bb.bo
  %i.gv = invoke i8 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE6map_orIBw_bEINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB14_17RustcCodegenFlags14set_rustc_flag11arg_to_boolBI_EEB16_(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i, i8 1)
          to label %bb.cd unwind label %bb.x, !noalias !32

bb.br:                                            ; preds = %bb.bp
  br i1 %i.gu, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.gw = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @39, i64 19)
          to label %bb.bu unwind label %bb.x, !noalias !32

bb.bt:                                            ; preds = %bb.bu, %bb.br
  invoke fastcc void @_RNCNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags14set_rustc_flag0B6_(ptr noalias align 8 %i.ak, ptr %i.fo, i64 %i.fp, ptr %.sroa.6.0.i, i64 %.sroa.9.0.i)
          to label %bb.cn unwind label %bb.x, !noalias !32

bb.bu:                                            ; preds = %bb.bs
  br i1 %i.gw, label %bb.bt, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.gx = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @40, i64 15)
          to label %bb.bw unwind label %bb.x, !noalias !32

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.gx, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gy = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @41, i64 17)
          to label %bb.bz unwind label %bb.x, !noalias !32

bb.by:                                            ; preds = %bb.bw
  %i.gz = invoke { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionReE8and_thenmINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB11_17RustcCodegenFlags14set_rustc_flag10arg_to_u32BI_EEB13_(ptr %.sroa.6.0.i, i64 %.sroa.9.0.i)
          to label %bb.ci unwind label %bb.x, !noalias !32 ; 2 uses

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.gy, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ha = invoke zeroext i1 @_RNvXs_NtNtCs3oUPovFnLWP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCsiHivYpkJ4Hu_2cc(ptr %i.fo, i64 %i.fp, ptr nonnull @42, i64 17)
          to label %bb.cc unwind label %bb.x, !noalias !32

bb.cb:                                            ; preds = %bb.cc, %bb.bz
  invoke fastcc void @_RNCNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB4_17RustcCodegenFlags14set_rustc_flag0B6_(ptr noalias align 8 %i.ag, ptr %i.fo, i64 %i.fp, ptr %.sroa.6.0.i, i64 %.sroa.9.0.i)
          to label %bb.ce unwind label %bb.x, !noalias !32

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.ha, label %bb.cb, label %bb.cd

bb.cd:                                            ; preds = %bb.bh, %bb.bk, %bb.bn, %bb.bq, %bb.ay, %bb.ag, %bb.ae, %bb.di, %bb.de, %bb.da, %bb.cw, %bb.cv, %bb.cu, %bb.cq, %bb.cm, %bb.ch, %bb.cc
  %.sroa.49.1 = phi i8 [ %.sroa.49.0.ph, %bb.di ], [ %.sroa.49.0.ph, %bb.cc ], [ %.sroa.49.0.ph, %bb.ae ], [ %.sroa.49.0.ph, %bb.de ], [ %.sroa.49.0.ph, %bb.da ], [ %.sroa.49.0.ph, %bb.cw ], [ %.sroa.49.0.ph, %bb.cv ], [ %.sroa.49.0.ph, %bb.ag ], [ %.sroa.49.0.ph, %bb.cu ], [ %.sroa.49.0.ph, %bb.bk ], [ %.sroa.49.0.ph, %bb.bn ], [ %.sroa.49.0.ph, %bb.bq ], [ 1, %bb.ay ], [ %.sroa.49.0.ph, %bb.cq ], [ %.sroa.49.0.ph, %bb.cm ], [ %.sroa.49.0.ph, %bb.ch ], [ %.sroa.49.0.ph, %bb.bh ]
  %.sroa.47.1 = phi i8 [ %.sroa.47.0.ph, %bb.di ], [ %.sroa.47.0.ph, %bb.cc ], [ %.sroa.47.0.ph, %bb.ae ], [ %.sroa.47.0.ph, %bb.de ], [ %.sroa.47.0.ph, %bb.da ], [ %.sroa.47.0.ph, %bb.cw ], [ %.sroa.47.0.ph, %bb.cv ], [ %.sroa.47.0.ph, %bb.ag ], [ %.sroa.47.0.ph, %bb.cu ], [ %.sroa.47.0.ph, %bb.bk ], [ %.sroa.47.0.ph, %bb.bn ], [ %i.gv, %bb.bq ], [ %.sroa.47.0.ph, %bb.ay ], [ %.sroa.47.0.ph, %bb.cq ], [ %.sroa.47.0.ph, %bb.cm ], [ %.sroa.47.0.ph, %bb.ch ], [ %.sroa.47.0.ph, %bb.bh ]
  %.sroa.45.1 = phi i8 [ %.sroa.45.0.ph, %bb.di ], [ %.sroa.45.0.ph, %bb.cc ], [ %.sroa.45.0.ph, %bb.ae ], [ %.sroa.45.0.ph, %bb.de ], [ %.sroa.45.0.ph, %bb.da ], [ %.sroa.45.0.ph, %bb.cw ], [ %.sroa.45.0.ph, %bb.cv ], [ %.sroa.45.0.ph, %bb.ag ], [ %.sroa.45.0.ph, %bb.cu ], [ %.sroa.45.0.ph, %bb.bk ], [ %i.gt, %bb.bn ], [ %.sroa.45.0.ph, %bb.bq ], [ %.sroa.45.0.ph, %bb.ay ], [ %.sroa.45.0.ph, %bb.cq ], [ %.sroa.45.0.ph, %bb.cm ], [ %.sroa.45.0.ph, %bb.ch ], [ %.sroa.45.0.ph, %bb.bh ]
  %.sroa.43.1 = phi i8 [ %.sroa.43.0.ph, %bb.di ], [ %.sroa.43.0.ph, %bb.cc ], [ %.sroa.43.0.ph, %bb.ae ], [ %.sroa.43.0.ph, %bb.de ], [ %.sroa.43.0.ph, %bb.da ], [ %.sroa.43.0.ph, %bb.cw ], [ %.sroa.43.0.ph, %bb.cv ], [ %.sroa.43.0.ph, %bb.ag ], [ %.sroa.43.0.ph, %bb.cu ], [ %i.gr, %bb.bk ], [ %.sroa.43.0.ph, %bb.bn ], [ %.sroa.43.0.ph, %bb.bq ], [ %.sroa.43.0.ph, %bb.ay ], [ %.sroa.43.0.ph, %bb.cq ], [ %.sroa.43.0.ph, %bb.cm ], [ %.sroa.43.0.ph, %bb.ch ], [ %.sroa.43.0.ph, %bb.bh ]
  %.sroa.41.1 = phi i8 [ %.sroa.41.0.ph, %bb.di ], [ %.sroa.41.0.ph, %bb.cc ], [ %.sroa.41.0.ph, %bb.ae ], [ %.sroa.41.0.ph, %bb.de ], [ %.sroa.41.0.ph, %bb.da ], [ %.sroa.41.0.ph, %bb.cw ], [ %.sroa.41.0.ph, %bb.cv ], [ %.sroa.41.0.ph, %bb.ag ], [ %.sroa.41.0.ph, %bb.cu ], [ %.sroa.41.0.ph, %bb.bk ], [ %.sroa.41.0.ph, %bb.bn ], [ %.sroa.41.0.ph, %bb.bq ], [ %.sroa.41.0.ph, %bb.ay ], [ %.sroa.41.0.ph, %bb.cq ], [ %.sroa.41.0.ph, %bb.cm ], [ %.sroa.41.0.ph, %bb.ch ], [ %i.gp, %bb.bh ]
  %.sroa.39.1 = phi i8 [ %.sroa.39.0.ph, %bb.di ], [ %.sroa.39.0.ph, %bb.cc ], [ %.sroa.39.0.ph, %bb.ae ], [ %.sroa.39.0.ph, %bb.de ], [ %.sroa.39.0.ph, %bb.da ], [ %.sroa.39.0.ph, %bb.cw ], [ %.sroa.39.0.ph, %bb.cv ], [ 1, %bb.ag ], [ %.sroa.39.0.ph, %bb.cu ], [ %.sroa.39.0.ph, %bb.bk ], [ %.sroa.39.0.ph, %bb.bn ], [ %.sroa.39.0.ph, %bb.bq ], [ %.sroa.39.0.ph, %bb.ay ], [ %.sroa.39.0.ph, %bb.cq ], [ %.sroa.39.0.ph, %bb.cm ], [ %.sroa.39.0.ph, %bb.ch ], [ %.sroa.39.0.ph, %bb.bh ]
  %.sroa.37.1 = phi i8 [ %.sroa.37.0.ph, %bb.di ], [ %.sroa.37.0.ph, %bb.cc ], [ 1, %bb.ae ], [ %.sroa.37.0.ph, %bb.de ], [ %.sroa.37.0.ph, %bb.da ], [ %.sroa.37.0.ph, %bb.cw ], [ %.sroa.37.0.ph, %bb.cv ], [ %.sroa.37.0.ph, %bb.ag ], [ %.sroa.37.0.ph, %bb.cu ], [ %.sroa.37.0.ph, %bb.bk ], [ %.sroa.37.0.ph, %bb.bn ], [ %.sroa.37.0.ph, %bb.bq ], [ %.sroa.37.0.ph, %bb.ay ], [ %.sroa.37.0.ph, %bb.cq ], [ %.sroa.37.0.ph, %bb.cm ], [ %.sroa.37.0.ph, %bb.ch ], [ %.sroa.37.0.ph, %bb.bh ]
  %.sroa.35.1 = phi i64 [ %.sroa.35.0.ph, %bb.di ], [ %.sroa.35.0.ph, %bb.cc ], [ %.sroa.35.0.ph, %bb.ae ], [ %.sroa.35.0.ph, %bb.de ], [ %.sroa.35.0.ph, %bb.da ], [ %.sroa.35.0.ph, %bb.cw ], [ %.sroa.35.0.ph, %bb.cv ], [ %.sroa.35.0.ph, %bb.ag ], [ %.sroa.35.0.ph, %bb.cu ], [ %.sroa.35.0.ph, %bb.bk ], [ %.sroa.35.0.ph, %bb.bn ], [ %.sroa.35.0.ph, %bb.bq ], [ %.sroa.35.0.ph, %bb.ay ], [ %.sroa.35.0.ph, %bb.cq ], [ %.sroa.35.0.ph, %bb.cm ], [ %i.hd, %bb.ch ], [ %.sroa.35.0.ph, %bb.bh ]
  %.sroa.33.1 = phi ptr [ %.sroa.33.0.ph, %bb.di ], [ %.sroa.33.0.ph, %bb.cc ], [ %.sroa.33.0.ph, %bb.ae ], [ %.sroa.33.0.ph, %bb.de ], [ %.sroa.33.0.ph, %bb.da ], [ %.sroa.33.0.ph, %bb.cw ], [ %.sroa.33.0.ph, %bb.cv ], [ %.sroa.33.0.ph, %bb.ag ], [ %.sroa.33.0.ph, %bb.cu ], [ %.sroa.33.0.ph, %bb.bk ], [ %.sroa.33.0.ph, %bb.bn ], [ %.sroa.33.0.ph, %bb.bq ], [ %.sroa.33.0.ph, %bb.ay ], [ %.sroa.33.0.ph, %bb.cq ], [ %.sroa.33.0.ph, %bb.cm ], [ %i.hc, %bb.ch ], [ %.sroa.33.0.ph, %bb.bh ]
  %.sroa.31.1 = phi i64 [ %.sroa.31.0.ph, %bb.di ], [ %.sroa.31.0.ph, %bb.cc ], [ %.sroa.31.0.ph, %bb.ae ], [ %.sroa.31.0.ph, %bb.de ], [ %.sroa.31.0.ph, %bb.da ], [ %.sroa.31.0.ph, %bb.cw ], [ %.sroa.31.0.ph, %bb.cv ], [ %.sroa.31.0.ph, %bb.ag ], [ %i.ho, %bb.cu ], [ %.sroa.31.0.ph, %bb.bk ], [ %.sroa.31.0.ph, %bb.bn ], [ %.sroa.31.0.ph, %bb.bq ], [ %.sroa.31.0.ph, %bb.ay ], [ %.sroa.31.0.ph, %bb.cq ], [ %.sroa.31.0.ph, %bb.cm ], [ %.sroa.31.0.ph, %bb.ch ], [ %.sroa.31.0.ph, %bb.bh ]
  %.sroa.29.1 = phi ptr [ %.sroa.29.0.ph, %bb.di ], [ %.sroa.29.0.ph, %bb.cc ], [ %.sroa.29.0.ph, %bb.ae ], [ %.sroa.29.0.ph, %bb.de ], [ %.sroa.29.0.ph, %bb.da ], [ %.sroa.29.0.ph, %bb.cw ], [ %.sroa.29.0.ph, %bb.cv ], [ %.sroa.29.0.ph, %bb.ag ], [ %i.hn, %bb.cu ], [ %.sroa.29.0.ph, %bb.bk ], [ %.sroa.29.0.ph, %bb.bn ], [ %.sroa.29.0.ph, %bb.bq ], [ %.sroa.29.0.ph, %bb.ay ], [ %.sroa.29.0.ph, %bb.cq ], [ %.sroa.29.0.ph, %bb.cm ], [ %.sroa.29.0.ph, %bb.ch ], [ %.sroa.29.0.ph, %bb.bh ]
  %.sroa.27.1 = phi i64 [ %.sroa.27.0.ph, %bb.di ], [ %.sroa.27.0.ph, %bb.cc ], [ %.sroa.27.0.ph, %bb.ae ], [ %.sroa.27.0.ph, %bb.de ], [ %.sroa.27.0.ph, %bb.da ], [ %.sroa.27.0.ph, %bb.cw ], [ %i.hq, %bb.cv ], [ %.sroa.27.0.ph, %bb.ag ], [ %.sroa.27.0.ph, %bb.cu ], [ %.sroa.27.0.ph, %bb.bk ], [ %.sroa.27.0.ph, %bb.bn ], [ %.sroa.27.0.ph, %bb.bq ], [ %.sroa.27.0.ph, %bb.ay ], [ %.sroa.27.0.ph, %bb.cq ], [ %.sroa.27.0.ph, %bb.cm ], [ %.sroa.27.0.ph, %bb.ch ], [ %.sroa.27.0.ph, %bb.bh ]
  %.sroa.25.1 = phi ptr [ %.sroa.25.0.ph, %bb.di ], [ %.sroa.25.0.ph, %bb.cc ], [ %.sroa.25.0.ph, %bb.ae ], [ %.sroa.25.0.ph, %bb.de ], [ %.sroa.25.0.ph, %bb.da ], [ %.sroa.25.0.ph, %bb.cw ], [ %i.hp, %bb.cv ], [ %.sroa.25.0.ph, %bb.ag ], [ %.sroa.25.0.ph, %bb.cu ], [ %.sroa.25.0.ph, %bb.bk ], [ %.sroa.25.0.ph, %bb.bn ], [ %.sroa.25.0.ph, %bb.bq ], [ %.sroa.25.0.ph, %bb.ay ], [ %.sroa.25.0.ph, %bb.cq ], [ %.sroa.25.0.ph, %bb.cm ], [ %.sroa.25.0.ph, %bb.ch ], [ %.sroa.25.0.ph, %bb.bh ]
  %.sroa.23.1 = phi i64 [ %.sroa.23.0.ph, %bb.di ], [ %.sroa.23.0.ph, %bb.cc ], [ %.sroa.23.0.ph, %bb.ae ], [ %.sroa.23.0.ph, %bb.de ], [ %.sroa.23.0.ph, %bb.da ], [ %i.hs, %bb.cw ], [ %.sroa.23.0.ph, %bb.cv ], [ %.sroa.23.0.ph, %bb.ag ], [ %.sroa.23.0.ph, %bb.cu ], [ %.sroa.23.0.ph, %bb.bk ], [ %.sroa.23.0.ph, %bb.bn ], [ %.sroa.23.0.ph, %bb.bq ], [ %.sroa.23.0.ph, %bb.ay ], [ %.sroa.23.0.ph, %bb.cq ], [ %.sroa.23.0.ph, %bb.cm ], [ %.sroa.23.0.ph, %bb.ch ], [ %.sroa.23.0.ph, %bb.bh ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.0.ph, %bb.di ], [ %.sroa.21.0.ph, %bb.cc ], [ %.sroa.21.0.ph, %bb.ae ], [ %.sroa.21.0.ph, %bb.de ], [ %.sroa.21.0.ph, %bb.da ], [ %i.hr, %bb.cw ], [ %.sroa.21.0.ph, %bb.cv ], [ %.sroa.21.0.ph, %bb.ag ], [ %.sroa.21.0.ph, %bb.cu ], [ %.sroa.21.0.ph, %bb.bk ], [ %.sroa.21.0.ph, %bb.bn ], [ %.sroa.21.0.ph, %bb.bq ], [ %.sroa.21.0.ph, %bb.ay ], [ %.sroa.21.0.ph, %bb.cq ], [ %.sroa.21.0.ph, %bb.cm ], [ %.sroa.21.0.ph, %bb.ch ], [ %.sroa.21.0.ph, %bb.bh ]
  %.sroa.19.1 = phi i64 [ %.sroa.19.0.ph, %bb.di ], [ %.sroa.19.0.ph, %bb.cc ], [ %.sroa.19.0.ph, %bb.ae ], [ %.sroa.19.0.ph, %bb.de ], [ %i.hv, %bb.da ], [ %.sroa.19.0.ph, %bb.cw ], [ %.sroa.19.0.ph, %bb.cv ], [ %.sroa.19.0.ph, %bb.ag ], [ %.sroa.19.0.ph, %bb.cu ], [ %.sroa.19.0.ph, %bb.bk ], [ %.sroa.19.0.ph, %bb.bn ], [ %.sroa.19.0.ph, %bb.bq ], [ %.sroa.19.0.ph, %bb.ay ], [ %.sroa.19.0.ph, %bb.cq ], [ %.sroa.19.0.ph, %bb.cm ], [ %.sroa.19.0.ph, %bb.ch ], [ %.sroa.19.0.ph, %bb.bh ]
  %.sroa.17.1 = phi ptr [ %.sroa.17.0.ph, %bb.di ], [ %.sroa.17.0.ph, %bb.cc ], [ %.sroa.17.0.ph, %bb.ae ], [ %.sroa.17.0.ph, %bb.de ], [ %i.hu, %bb.da ], [ %.sroa.17.0.ph, %bb.cw ], [ %.sroa.17.0.ph, %bb.cv ], [ %.sroa.17.0.ph, %bb.ag ], [ %.sroa.17.0.ph, %bb.cu ], [ %.sroa.17.0.ph, %bb.bk ], [ %.sroa.17.0.ph, %bb.bn ], [ %.sroa.17.0.ph, %bb.bq ], [ %.sroa.17.0.ph, %bb.ay ], [ %.sroa.17.0.ph, %bb.cq ], [ %.sroa.17.0.ph, %bb.cm ], [ %.sroa.17.0.ph, %bb.ch ], [ %.sroa.17.0.ph, %bb.bh ]
  %.sroa.15.1 = phi i64 [ %.sroa.15.0.ph, %bb.di ], [ %.sroa.15.0.ph, %bb.cc ], [ %.sroa.15.0.ph, %bb.ae ], [ %i.hy, %bb.de ], [ %.sroa.15.0.ph, %bb.da ], [ %.sroa.15.0.ph, %bb.cw ], [ %.sroa.15.0.ph, %bb.cv ], [ %.sroa.15.0.ph, %bb.ag ], [ %.sroa.15.0.ph, %bb.cu ], [ %.sroa.15.0.ph, %bb.bk ], [ %.sroa.15.0.ph, %bb.bn ], [ %.sroa.15.0.ph, %bb.bq ], [ %.sroa.15.0.ph, %bb.ay ], [ %.sroa.15.0.ph, %bb.cq ], [ %.sroa.15.0.ph, %bb.cm ], [ %.sroa.15.0.ph, %bb.ch ], [ %.sroa.15.0.ph, %bb.bh ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0.ph, %bb.di ], [ %.sroa.13.0.ph, %bb.cc ], [ %.sroa.13.0.ph, %bb.ae ], [ %i.hx, %bb.de ], [ %.sroa.13.0.ph, %bb.da ], [ %.sroa.13.0.ph, %bb.cw ], [ %.sroa.13.0.ph, %bb.cv ], [ %.sroa.13.0.ph, %bb.ag ], [ %.sroa.13.0.ph, %bb.cu ], [ %.sroa.13.0.ph, %bb.bk ], [ %.sroa.13.0.ph, %bb.bn ], [ %.sroa.13.0.ph, %bb.bq ], [ %.sroa.13.0.ph, %bb.ay ], [ %.sroa.13.0.ph, %bb.cq ], [ %.sroa.13.0.ph, %bb.cm ], [ %.sroa.13.0.ph, %bb.ch ], [ %.sroa.13.0.ph, %bb.bh ]
  %.sroa.11.1 = phi i64 [ %i.id, %bb.di ], [ %.sroa.11.0.ph, %bb.cc ], [ %.sroa.11.0.ph, %bb.ae ], [ %.sroa.11.0.ph, %bb.de ], [ %.sroa.11.0.ph, %bb.da ], [ %.sroa.11.0.ph, %bb.cw ], [ %.sroa.11.0.ph, %bb.cv ], [ %.sroa.11.0.ph, %bb.ag ], [ %.sroa.11.0.ph, %bb.cu ], [ %.sroa.11.0.ph, %bb.bk ], [ %.sroa.11.0.ph, %bb.bn ], [ %.sroa.11.0.ph, %bb.bq ], [ %.sroa.11.0.ph, %bb.ay ], [ %.sroa.11.0.ph, %bb.cq ], [ %.sroa.11.0.ph, %bb.cm ], [ %.sroa.11.0.ph, %bb.ch ], [ %.sroa.11.0.ph, %bb.bh ]
  %.sroa.9.1 = phi ptr [ %i.ic, %bb.di ], [ %.sroa.9.0.ph, %bb.cc ], [ %.sroa.9.0.ph, %bb.ae ], [ %.sroa.9.0.ph, %bb.de ], [ %.sroa.9.0.ph, %bb.da ], [ %.sroa.9.0.ph, %bb.cw ], [ %.sroa.9.0.ph, %bb.cv ], [ %.sroa.9.0.ph, %bb.ag ], [ %.sroa.9.0.ph, %bb.cu ], [ %.sroa.9.0.ph, %bb.bk ], [ %.sroa.9.0.ph, %bb.bn ], [ %.sroa.9.0.ph, %bb.bq ], [ %.sroa.9.0.ph, %bb.ay ], [ %.sroa.9.0.ph, %bb.cq ], [ %.sroa.9.0.ph, %bb.cm ], [ %.sroa.9.0.ph, %bb.ch ], [ %.sroa.9.0.ph, %bb.bh ]
  %.sroa.7.1 = phi i64 [ %.sroa.7.0.ph, %bb.di ], [ %.sroa.7.0.ph, %bb.cc ], [ %.sroa.7.0.ph, %bb.ae ], [ %.sroa.7.0.ph, %bb.de ], [ %.sroa.7.0.ph, %bb.da ], [ %.sroa.7.0.ph, %bb.cw ], [ %.sroa.7.0.ph, %bb.cv ], [ %.sroa.7.0.ph, %bb.ag ], [ %.sroa.7.0.ph, %bb.cu ], [ %.sroa.7.0.ph, %bb.bk ], [ %.sroa.7.0.ph, %bb.bn ], [ %.sroa.7.0.ph, %bb.bq ], [ %.sroa.7.0.ph, %bb.ay ], [ %i.hl, %bb.cq ], [ %.sroa.7.0.ph, %bb.cm ], [ %.sroa.7.0.ph, %bb.ch ], [ %.sroa.7.0.ph, %bb.bh ]
  %.sroa.5.1 = phi ptr [ %.sroa.5.0.ph, %bb.di ], [ %.sroa.5.0.ph, %bb.cc ], [ %.sroa.5.0.ph, %bb.ae ], [ %.sroa.5.0.ph, %bb.de ], [ %.sroa.5.0.ph, %bb.da ], [ %.sroa.5.0.ph, %bb.cw ], [ %.sroa.5.0.ph, %bb.cv ], [ %.sroa.5.0.ph, %bb.ag ], [ %.sroa.5.0.ph, %bb.cu ], [ %.sroa.5.0.ph, %bb.bk ], [ %.sroa.5.0.ph, %bb.bn ], [ %.sroa.5.0.ph, %bb.bq ], [ %.sroa.5.0.ph, %bb.ay ], [ %i.hk, %bb.cq ], [ %.sroa.5.0.ph, %bb.cm ], [ %.sroa.5.0.ph, %bb.ch ], [ %.sroa.5.0.ph, %bb.bh ]
  %.sroa.3.1 = phi i32 [ %.sroa.3.0.ph, %bb.di ], [ %.sroa.3.0.ph, %bb.cc ], [ %.sroa.3.0.ph, %bb.ae ], [ %.sroa.3.0.ph, %bb.de ], [ %.sroa.3.0.ph, %bb.da ], [ %.sroa.3.0.ph, %bb.cw ], [ %.sroa.3.0.ph, %bb.cv ], [ %.sroa.3.0.ph, %bb.ag ], [ %.sroa.3.0.ph, %bb.cu ], [ %.sroa.3.0.ph, %bb.bk ], [ %.sroa.3.0.ph, %bb.bn ], [ %.sroa.3.0.ph, %bb.bq ], [ %.sroa.3.0.ph, %bb.ay ], [ %.sroa.3.0.ph, %bb.cq ], [ %i.hi, %bb.cm ], [ %.sroa.3.0.ph, %bb.ch ], [ %.sroa.3.0.ph, %bb.bh ]
  %.sroa.0.1 = phi i32 [ %.sroa.0.0.ph, %bb.di ], [ %.sroa.0.0.ph, %bb.cc ], [ %.sroa.0.0.ph, %bb.ae ], [ %.sroa.0.0.ph, %bb.de ], [ %.sroa.0.0.ph, %bb.da ], [ %.sroa.0.0.ph, %bb.cw ], [ %.sroa.0.0.ph, %bb.cv ], [ %.sroa.0.0.ph, %bb.ag ], [ %.sroa.0.0.ph, %bb.cu ], [ %.sroa.0.0.ph, %bb.bk ], [ %.sroa.0.0.ph, %bb.bn ], [ %.sroa.0.0.ph, %bb.bq ], [ %.sroa.0.0.ph, %bb.ay ], [ %.sroa.0.0.ph, %bb.cq ], [ %i.hh, %bb.cm ], [ %.sroa.0.0.ph, %bb.ch ], [ %.sroa.0.0.ph, %bb.bh ]
  store i64 -2, ptr %i.bd, align 8, !alias.scope !32
  br label %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit

bb.ce:                                            ; preds = %bb.cb
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.ah, ptr nonnull align 8 %i.ag)
          to label %bb.cf unwind label %bb.x, !noalias !32

bb.cf:                                            ; preds = %bb.ce
  %i.hb = load i64, ptr %i.ah, align 8, !noalias !32
  %.not2.i = icmp eq i64 %i.hb, -2
  br i1 %.not2.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.ch:                                            ; preds = %bb.cf
  %i.hc = load ptr, ptr %i.cz, align 8, !noalias !32
  %i.hd = load i64, ptr %i.da, align 8, !noalias !32
  br label %bb.cd

bb.ci:                                            ; preds = %bb.by
  %i.he = extractvalue { i32, i32 } %i.gz, 0
  %i.hf = extractvalue { i32, i32 } %i.gz, 1
  invoke fastcc void @_RINvNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB5_17RustcCodegenFlags14set_rustc_flag22flag_not_empty_genericmEB7_(ptr noalias align 8 %i.ai, ptr %i.fo, i64 %i.fp, i32 %i.he, i32 %i.hf)
          to label %bb.cj unwind label %bb.x, !noalias !32

bb.cj:                                            ; preds = %bb.ci
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionmENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1a_(ptr nonnull sret([32 x i8]) align 8 %i.aj, ptr nonnull align 8 %i.ai)
          to label %bb.ck unwind label %bb.x, !noalias !32

bb.ck:                                            ; preds = %bb.cj
  %i.hg = load i64, ptr %i.aj, align 8, !noalias !32
  %.not3.i = icmp eq i64 %i.hg, -2
  br i1 %.not3.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.cm:                                            ; preds = %bb.ck
  %i.hh = load i32, ptr %i.db, align 8, !noalias !32
  %i.hi = load i32, ptr %i.dc, align 4, !noalias !32
  br label %bb.cd

bb.cn:                                            ; preds = %bb.bt
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.al, ptr nonnull align 8 %i.ak)
          to label %bb.co unwind label %bb.x, !noalias !32

bb.co:                                            ; preds = %bb.cn
  %i.hj = load i64, ptr %i.al, align 8, !noalias !32
  %.not4.i = icmp eq i64 %i.hj, -2
  br i1 %.not4.i, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.al, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.cq:                                            ; preds = %bb.co
  %i.hk = load ptr, ptr %i.dd, align 8, !noalias !32
  %i.hl = load i64, ptr %i.de, align 8, !noalias !32
  br label %bb.cd

bb.cr:                                            ; preds = %.noexc6, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.an, ptr nonnull align 8 %i.am)
          to label %bb.cs unwind label %bb.x, !noalias !32

bb.cs:                                            ; preds = %bb.cr
  %i.hm = load i64, ptr %i.an, align 8, !noalias !32
  %.not5.i = icmp eq i64 %i.hm, -2
  br i1 %.not5.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.cu:                                            ; preds = %bb.cs
  %i.hn = load ptr, ptr %i.di, align 8, !noalias !32
  %i.ho = load i64, ptr %i.dj, align 8, !noalias !32
  br label %bb.cd

bb.cv:                                            ; preds = %bb.ax
  %i.hp = extractvalue { ptr, i64 } %i.gi, 0
  %i.hq = extractvalue { ptr, i64 } %i.gi, 1
  br label %bb.cd

bb.cw:                                            ; preds = %bb.au
  %i.hr = extractvalue { ptr, i64 } %i.gg, 0
  %i.hs = extractvalue { ptr, i64 } %i.gg, 1
  br label %bb.cd

bb.cx:                                            ; preds = %.noexc33.i, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.ap, ptr nonnull align 8 %i.ao)
          to label %bb.cy unwind label %bb.x, !noalias !32

bb.cy:                                            ; preds = %bb.cx
  %i.ht = load i64, ptr %i.ap, align 8, !noalias !32
  %.not6.i = icmp eq i64 %i.ht, -2
  br i1 %.not6.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.da:                                            ; preds = %bb.cy
  %i.hu = load ptr, ptr %i.dn, align 8, !noalias !32
  %i.hv = load i64, ptr %i.do, align 8, !noalias !32
  br label %bb.cd

bb.db:                                            ; preds = %.noexc27.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !40
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.ar, ptr nonnull align 8 %i.aq)
          to label %bb.dc unwind label %bb.x, !noalias !32

bb.dc:                                            ; preds = %bb.db
  %i.hw = load i64, ptr %i.ar, align 8, !noalias !32
  %.not7.i = icmp eq i64 %i.hw, -2
  br i1 %.not7.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, i64 32, i1 false), !noalias !32
  br label %.invoke.i

bb.de:                                            ; preds = %bb.dc
  %i.hx = load ptr, ptr %i.ds, align 8, !noalias !32
  %i.hy = load i64, ptr %i.dt, align 8, !noalias !32
  br label %bb.cd

bb.df:                                            ; preds = %.noexc22.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !35
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtB7_6option6OptionReENtCsiHivYpkJ4Hu_2cc5ErrorENtNtNtB7_3ops9try_trait3Try6branchB1b_(ptr nonnull sret([32 x i8]) align 8 %i.at, ptr nonnull align 8 %i.as)
          to label %bb.dg unwind label %bb.x, !noalias !32

bb.dg:                                            ; preds = %bb.df
  %i.hz = load i64, ptr %i.at, align 8, !noalias !32
  %.not8.i = icmp eq i64 %i.hz, -2
  br i1 %.not8.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.at, i64 32, i1 false), !noalias !32
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.dh, %bb.dd, %bb.cz, %bb.ct, %bb.cp, %bb.cl, %bb.cg
  %i.ia = phi ptr [ %i.z, %bb.dh ], [ %i.aa, %bb.dd ], [ %i.ab, %bb.cz ], [ %i.ac, %bb.ct ], [ %i.ad, %bb.cp ], [ %i.ae, %bb.cl ], [ %i.af, %bb.cg ]
  %i.ib = phi ptr [ @50, %bb.dh ], [ @49, %bb.dd ], [ @48, %bb.cz ], [ @47, %bb.ct ], [ @46, %bb.cp ], [ @45, %bb.cl ], [ @44, %bb.cg ]
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtCsiHivYpkJ4Hu_2cc5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBN_(ptr nonnull sret([32 x i8]) align 8 %i.bd, ptr nonnull align 8 %i.ia, ptr nonnull align 8 %i.ib)
          to label %_RNvMNtCsiHivYpkJ4Hu_2cc5flagsNtB2_17RustcCodegenFlags14set_rustc_flag.exit unwind label %bb.x

bb.di:                                            ; preds = %bb.dg
  %i.ic = load ptr, ptr %i.dx, align 8, !noalias !32
  %i.id = load i64, ptr %i.dy, align 8, !noalias !32
  br label %bb.cd

bb.dj:                                            ; preds = %bb.x
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.dk:                                            ; preds = %bb.x
end_hunk_1
