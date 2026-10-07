Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 56
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns:bb.a
bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %.sroa.01.0.i, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = load i32, ptr %i.p, align 1
  %i.r = xor i32 %i.q, 1702132080
  %i.s = getelementptr i8, ptr %i.p, i64 4
  %i.t = load i16, ptr %i.s, align 1
  %i.u = zext i16 %i.t to i32
  %i.v = xor i32 %i.u, 29811
  %i.w = or i32 %i.r, %i.v
  %i.x = icmp ne i32 %i.w, 0
  %i.y = zext i1 %i.x to i32
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.sroa.gep2 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.01.0.i.sroa.sel4 = select i1 %i.e, ptr %.sroa.gep2, ptr %.sroa.gep3
  %i.aa = load i64, ptr %.sroa.01.0.i.sroa.sel4, align 8, !noundef !11
  %i.ab = icmp eq i64 %i.aa, 5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.gep5 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.01.0.i.sroa.sel7 = select i1 %i.e, ptr %.sroa.gep5, ptr %.sroa.gep6
  %i.ac = load ptr, ptr %.sroa.01.0.i.sroa.sel7, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 %i.ad, 1852989815
  %i.af = getelementptr i8, ptr %i.ac, i64 4
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = zext i8 %i.ag to i32
  %i.ai = xor i32 %i.ah, 115
  %i.aj = or i32 %i.ae, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.i = phi i1 [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ %i.am, %bb.f ], [ false, %bb.e ]
  %i.an = icmp eq i64 %i.d, 0
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.j)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns0Bb_.exit

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.ao

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns0Bb_.exit

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns0Bb_.exit: ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns0Bb_.exit
  %.sroa.0.0 = phi i1 [ %.sroa.0.0.i, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_pytest_style5rules5warns15is_pytest_warns0Bb_.exit ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch20lazy_import_mismatch(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 17 uses
  %.sroa.438 = alloca ptr, align 8                ; 5 uses
  %.sroa.6 = alloca i64, align 8                  ; 5 uses
  %.sroa.8 = alloca ptr, align 8                  ; 4 uses
  %.sroa.10 = alloca ptr, align 8                 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1135
  %.sroa.04.0.copyload.i = load i8, ptr %i.r, align 1
  %i.s = trunc nuw i8 %.sroa.04.0.copyload.i to i1
  br i1 %i.s, label %bb.b, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread

bb.b:                                             ; preds = %bb.a
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1137
  %.sroa.55.0.copyload.i = load i8, ptr %.sroa.55.0..sroa_idx.i, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.4.0.copyload.fr.i = freeze i8 %.sroa.4.0.copyload.i ; 2 uses
  %i.t = icmp eq i8 %.sroa.4.0.copyload.fr.i, 3
  %i.u = icmp ult i8 %.sroa.55.0.copyload.i, 15
  %i.v = icmp ult i8 %.sroa.4.0.copyload.fr.i, 3
  %i.w = select i1 %i.t, i1 %i.u, i1 %i.v
  br i1 %i.w, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef i8 @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker19lazy_import_context(ptr noundef nonnull align 8 %0)
  %.not.i = icmp eq i8 %i.x, -1
  br i1 %.not.i, label %bb.d, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.z = load i8, ptr %i.y, align 4, !range !33, !noundef !11 ; 2 uses
  %i.aa = icmp samesign ugt i8 %i.z, 1
  %i.ab = zext nneg i8 %i.z to i64
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = select i1 %i.aa, i64 %i.ac, i64 0       ; 3 uses
  switch i64 %i.ad, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread [
    i64 16, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit
    i64 17, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.af = load i8, ptr %i.ae, align 1, !range !22, !noundef !11 ; 4 uses
  %.not11.i = icmp eq i8 %i.af, -1
  br i1 %.not11.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !4497, !noundef !11
  %i.ai = and i64 %i.ah, 72057594037927935
  %i.aj = icmp ult i8 %i.af, -48
  %i.ak = zext i8 %i.af to i64
  %i.al = add nsw i64 %i.ak, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 16)
  %.sroa.0.0.i.i = select i1 %i.aj, i64 %spec.store.select.i.i, i64 %i.ai
  %i.am = icmp eq i64 %.sroa.0.0.i.i, 10
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !11 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.aq, 80
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i
  %i.as = phi ptr [ %i.at, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i ], [ %i.ao, %bb.g ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 63
  %i.av = load i8, ptr %i.au, align 1, !range !25, !alias.scope !4498, !noalias !4499, !noundef !11 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !4498, !noalias !4499, !noundef !11
  %i.ay = and i64 %i.ax, 72057594037927935
  %i.az = icmp ult i8 %i.av, -48
  %i.ba = zext i8 %i.av to i64
  %i.bb = add nsw i64 %i.ba, -192
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.bb, i64 16)
  %.sroa.0.0.i.i.i.i = select i1 %i.az, i64 %spec.store.select.i.i.i.i, i64 %i.ay
  %i.bc = icmp eq i64 %.sroa.0.0.i.i.i.i, 1
  br i1 %i.bc, label %.split.i.i, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %i.bd = icmp ugt i8 %i.av, -49
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !4498, !noalias !4499
  %.sroa.01.0.i.i.i.i = select i1 %i.bd, ptr %i.bf, ptr %i.be
  %lhsc.i.i.i = load i8, ptr %.sroa.01.0.i.i.i.i, align 1, !noalias !4499
  %i.bg = icmp eq i8 %lhsc.i.i.i, 42
  br i1 %i.bg, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread, label %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i

_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not6.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not6.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  %i.bh = icmp ugt i8 %i.af, -49
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !4497
  %.sroa.01.0.i.i = select i1 %i.bh, ptr %i.bj, ptr %i.bi ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i) ]
  %i.bk = load i64, ptr %.sroa.01.0.i.i, align 1
  %i.bl = xor i64 %i.bk, 7310034288222035807
  %i.bm = getelementptr i8, ptr %.sroa.01.0.i.i, i64 8
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = zext i16 %i.bn to i64
  %i.bp = xor i64 %i.bo, 24415
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit.thread, label %bb.g

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit: ; preds = %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i, %bb.g, %bb.d
  %.sink = phi i64 [ 36, %bb.d ], [ 72, %bb.g ], [ 72, %_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy0Bb_.exit.backedge.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.sroa.0.0.i = load i8, ptr %i.bu, align 4, !range !39, !noundef !11
  %i.bv = trunc nuw i8 %.sroa.0.0.i to i1         ; 4 uses
  %. = select i1 %i.bv, i64 712, i64 664
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !11, !align !20, !noundef !11
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !11, !align !20, !noundef !11
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %. ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !13, !noundef !11
  %.not12 = icmp eq i64 %i.cb, -1
  %.sroa.09.0.v = select i1 %.not12, i64 8, i64 24
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.09.0.v
  %i.cc = load i64, ptr %.sroa.09.0, align 8, !range !13, !noundef !11
  %i.cd = icmp eq i64 %i.cc, -1
  br i1 %i.cd, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch18lazy_import_policy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  switch i64 %i.ad, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch27report_all_matching_imports.exit [
    i64 16, label %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split.preheader.i
    i64 17, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4500
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.cf = load i32, ptr %i.ce, align 4, !noalias !4502, !noundef !11
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.ch = load i8, ptr %i.cg, align 1, !range !22, !noalias !4502, !noundef !11 ; 4 uses
  %.not.i17.i = icmp eq i8 %i.ch, -1
  br i1 %.not.i17.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !alias.scope !4503, !noalias !4502, !noundef !11
  %i.cl = and i64 %i.ck, 72057594037927935
  %i.cm = icmp ult i8 %i.ch, -48
  %i.cn = zext i8 %i.ch to i64
  %i.co = add nsw i64 %i.cn, -192
  %spec.store.select.i.i18.i = tail call i64 @llvm.umin.i64(i64 %i.co, i64 16)
  %.sroa.0.0.i.i19.i = select i1 %i.cm, i64 %spec.store.select.i.i18.i, i64 %i.cl
  %i.cp = icmp ugt i8 %i.ch, -49
  %i.cq = load ptr, ptr %i.ci, align 8, !alias.scope !4503, !noalias !4502
  %.sroa.01.0.i.i20.i = select i1 %i.cp, ptr %i.cq, ptr %i.ci
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.5.0.i21.i = phi i64 [ %.sroa.0.0.i.i19.i, %bb.k ], [ undef, %bb.j ]
  %.sroa.0.0.i22.i = phi ptr [ %.sroa.01.0.i.i20.i, %bb.k ], [ null, %bb.j ]
  %i.cr = load i64, ptr %0, align 8, !range !17, !noalias !4502, !noundef !11
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit25.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !4502, !nonnull !11, !align !20, !noundef !11
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !noalias !4502, !noundef !11
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit25.i

_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit25.i: ; preds = %bb.m, %bb.l
  %.sroa.52.0.i23.i = phi i64 [ %i.cw, %bb.m ], [ undef, %bb.l ]
  %.sroa.01.0.i24.i = phi ptr [ %i.cu, %bb.m ], [ null, %bb.l ]
  call void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers28resolve_imported_module_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i32 noundef %i.cf, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i22.i, i64 %.sroa.5.0.i21.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) %.sroa.01.0.i24.i, i64 %.sroa.52.0.i23.i), !noalias !4500
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.cx, align 8, !alias.scope !4501, !noalias !4500
  %.pre.i = load i64, ptr %i.e, align 8, !range !35, !alias.scope !4504, !noalias !4505 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4504)
  %i.cy = icmp ne i64 %.pre.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = icmp sgt i64 %.pre.i, -9223372036854775806
  br i1 %i.cz, label %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit39.split.split.us153.i, label %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit73.thread.i

bb.n:                                             ; preds = %bb.aa, %bb.u, %bb.o
  %.pn.i = phi { ptr, i32 } [ %i.eh, %bb.aa ], [ %i.ed, %bb.u ], [ %i.da, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_(ptr noalias noundef align 8 dereferenceable(32) %i.k) #49
          to label %common.resume unwind label %bb.ab

bb.o:                                             ; preds = %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split.preheader.i: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4500
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %1, ptr %i.db, align 8, !alias.scope !4506, !noalias !4500
  store i64 -9223372036854775808, ptr %i.k, align 8, !alias.scope !4506, !noalias !4500
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !noalias !4507, !nonnull !11, !noundef !11 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !noalias !4507, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.df, 80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.1094.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.di = getelementptr i8, ptr %0, i64 1024
  %i.dj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dk = icmp eq i64 %i.df, 0
  br i1 %i.dk, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i, label %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i

_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split.preheader.i, %bb.z
  %.sroa.489.0.i70 = phi ptr [ %i.dl, %bb.z ], [ %i.dd, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split.preheader.i ] ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.489.0.i70, i64 80 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.489.0.i70, i64 63
  %i.dn = load i8, ptr %i.dm, align 1, !range !25, !alias.scope !4508, !noalias !4509, !noundef !11 ; 3 uses
  %i.do = icmp ugt i8 %i.dn, -49
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.489.0.i70, i64 48 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !alias.scope !4508, !noalias !4509
  %.sroa.01.0.i.i43.i = select i1 %i.do, ptr %i.dq, ptr %i.dp
  %i.dr = ptrtoint ptr %.sroa.01.0.i.i43.i to i64
  %i.ds = icmp ult i8 %i.dn, -48
  %i.dt = zext i8 %i.dn to i64
  %i.du = add nsw i64 %i.dt, -192
  %spec.store.select.i.i41.i = call i64 @llvm.umin.i64(i64 %i.du, i64 16)
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.489.0.i70, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !4508, !noalias !4509, !noundef !11
  %i.dx = and i64 %i.dw, 72057594037927935
  %.sroa.0.0.i.i42.i = select i1 %i.ds, i64 %spec.store.select.i.i41.i, i64 %i.dx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4500
  store ptr null, ptr %i.j, align 8, !noalias !4500
  store i64 %i.dr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4500
  store i64 %.sroa.0.0.i.i42.i, ptr %.sroa.1094.0..sroa_idx.i, align 8, !noalias !4500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4500
  store i64 83, ptr %i.i, align 8, !noalias !4500
  store ptr %.sroa.489.0.i70, ptr %i.dh, align 8, !noalias !4500
  invoke void @_RNvMs5_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8settingsNtB5_14ImportSelector4find(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j)
          to label %bb.s unwind label %bb.o

.loopexit.i19:                                    ; preds = %bb.z
  %.pre85 = load i64, ptr %i.k, align 8, !range !35, !alias.scope !4510, !noalias !4500 ; 2 uses
  %i.dy = icmp ne i64 %.pre85, -9223372036854775807
  call void @llvm.assume(i1 %i.dy)
  switch i64 %.pre85, label %bb.p [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i
    i64 -9223372036854775806, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i
    i64 -9223372036854775807, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i
    i64 -9223372036854775808, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i
  ]

bb.p:                                             ; preds = %.loopexit.i19
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.az, %bb.bj, %bb.n, %bb.q, %.body.i, %bb.ai
  %common.resume.op = phi { ptr, i32 } [ %i.is, %bb.bj ], [ %i.fi, %bb.ai ], [ %eh.lpad-body.i, %.body.i ], [ %i.dz, %bb.q ], [ %.pn.i, %bb.n ], [ %.pn, %bb.az ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.p
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit.i: ; preds = %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split.preheader.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i, %.loopexit.i19, %.loopexit.i19, %.loopexit.i19, %.loopexit.i19, %.loopexit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4500
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules20lazy_import_mismatch27report_all_matching_imports.exit

bb.s:                                             ; preds = %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.eb = load i64, ptr %i.f, align 8, !range !27, !noalias !4500, !noundef !11
  %.not8.i = icmp eq i64 %i.eb, -2
  br i1 %.not8.i, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !4500
  %i.ec = invoke { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i)
          to label %bb.v unwind label %bb.aa      ; 2 uses

bb.u:                                             ; preds = %bb.x
end_hunk_0
begin_hunk_1_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports27banned_module_level_imports:bb.a
  %i.cm = ptrtoint ptr %.sroa.01.0.i36.i to i64
  br label %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit

_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.r, %bb.t, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i
  %.sroa.23.0 = phi ptr [ %.sroa.12.0, %bb.t ], [ %.sroa.415.0, %bb.r ], [ %i.bw, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.14.0 = phi i64 [ 19, %bb.t ], [ 83, %bb.r ], [ 83, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.13.0 = phi i64 [ undef, %bb.t ], [ undef, %bb.r ], [ %.sroa.0.0.i.i.i, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.1020.0 = phi i64 [ %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre, %bb.t ], [ %.sroa.0.0.i.i10, %bb.r ], [ %i.cm, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.7.0 = phi i64 [ %i.bv, %bb.t ], [ %i.bu, %bb.r ], [ %.sroa.6.0..sroa.6.0..sroa.6.0..sroa.6.0.copyload.pre, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.019.0 = phi ptr [ null, %bb.t ], [ null, %bb.r ], [ %.sroa.415.0, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0, %bb.t ], [ %.sroa.15.0, %bb.r ], [ %i.by, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.12.1 = phi ptr [ null, %bb.t ], [ %.sroa.12.0, %bb.r ], [ null, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  %.sroa.415.1 = phi ptr [ %.sroa.415.0, %bb.t ], [ %i.bi, %bb.r ], [ %.sroa.415.0, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %.sroa.019.0, ptr %i.e, align 8
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  store i64 %.sroa.1020.0, ptr %.sroa.1020.0..sroa_idx, align 8
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.14.0, ptr %i.d, align 8
  store ptr %.sroa.23.0, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cn = load ptr, ptr %i.bf, align 8, !nonnull !11, !align !20, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 648
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 656
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !11
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cr, i64 %i.ct
  invoke void @_RINvMs0_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8matchersNtB6_15NameMatchPolicy4findINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvYB2S_INtNtB1M_7convert5AsRefeE6as_refEEBc_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu)
          to label %bb.z unwind label %bb.o

.loopexit:                                        ; preds = %bb.q, %bb.p, %bb.u, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit
  %i.cv = load i64, ptr %i.f, align 8, !range !35, !alias.scope !4550, !noundef !11 ; 2 uses
  %i.cw = icmp ne i64 %i.cv, -9223372036854775807
  call void @llvm.assume(i1 %i.cw)
  switch i64 %i.cv, label %bb.w [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775806, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775807, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775808, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
  ]

bb.w:                                             ; preds = %.loopexit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %common.resume unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.n, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.x ], [ %.pn, %bb.n ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.w
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit: ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.m

bb.z:                                             ; preds = %_RNvXs1_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB5_30BannedModuleImportPoliciesIterNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next.exit
  %i.cz = load i64, ptr %i.c, align 8, !range !13, !noundef !11
  %.not2 = icmp eq i64 %i.cz, -1
  br i1 %.not2, label %bb.af, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.da = invoke { i32, i32 } @_RNvXs82_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d)
          to label %bb.ac unwind label %bb.ag     ; 2 uses

bb.ab:                                            ; preds = %bb.ac
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.ac:                                            ; preds = %bb.aa
  %i.dc = extractvalue { i32, i32 } %i.da, 0
  %i.dd = extractvalue { i32, i32 } %i.da, 1
  %i.de = load ptr, ptr %i.bf, align 8, !nonnull !11, !align !20, !noundef !11
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules19flake8_tidy_imports5rules27banned_module_level_imports24BannedModuleLevelImportsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull align 8 %i.de, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i32 noundef %i.dc, i32 noundef %i.dd)
          to label %bb.ad unwind label %bb.ab

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %bb.ae unwind label %bb.o

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit.split

bb.ag:                                            ; preds = %bb.aa
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports24BannedModuleLevelImportsEBL_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #49
          to label %bb.n unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.n
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if14unnecessary_if(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [12 x i8], align 4                ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 3 uses
  %i.g = alloca [40 x i8], align 8                ; 7 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !11 ; 2 uses
  %i.p = icmp ult i64 %i.o, 96076792050570582
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %bb.b, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !4565, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.s, align 8, !noundef !11
  %i.v = tail call noundef zeroext i1 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers12is_stub_body(ptr noundef nonnull align 8 %i.t, i64 noundef %i.u)
  br i1 %i.v, label %bb.c, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.x = tail call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing22is_type_checking_block(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.w)
  br i1 %i.x, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 6 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 5 uses
  %i.af = load i32, ptr %i.ae, align 4, !noundef !11
  %i.ag = tail call noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i32 noundef %i.af) ; 2 uses
  %i.ah = load i32, ptr %i.ad, align 8, !noundef !11 ; 2 uses
  %.not.i = icmp ugt i32 %i.ah, %i.ag
  br i1 %.not.i, label %bb.e, label %bb.f, !prof !10

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @158) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.r, align 8, !alias.scope !4566, !nonnull !11, !noundef !11 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !11 ; 2 uses
  %.not4.i = icmp eq i64 %i.aj, 0
  br i1 %.not4.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = load i32, ptr %i.ae, align 4, !noundef !11
  %i.al = tail call noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges13full_line_end(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ac, i32 noundef %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !11, !align !20, !noundef !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = tail call noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao, i32 noundef %i.ah, i32 noundef %i.ag)
  br i1 %i.ap, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = getelementptr [88 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 -72    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ar) ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.at = load ptr, ptr %i.as, align 8, !align !20, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !11, !align !20, !noundef !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.01.0.i.i = phi ptr [ %i.av, %bb.i ], [ %i.at, %bb.h ]
  %i.aw = load ptr, ptr %i.y, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !noundef !11 ; 2 uses
  %i.ba = load i32, ptr %i.ad, align 8, !noundef !11
  %i.bb = tail call { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az) ; 2 uses
  %i.bc = extractvalue { ptr, i64 } %i.bb, 0
  %.not9.i.i = icmp eq ptr %i.bc, null
  %i.bd = extractvalue { ptr, i64 } %i.bb, 1
  %.sroa.3.0.i.i = select i1 %.not9.i.i, i64 0, i64 %i.bd ; 2 uses
  %i.be = icmp ugt i64 %.sroa.3.0.i.i, 4294967295
  %i.bf = shl nuw i64 %.sroa.3.0.i.i, 32
  %.sroa.09.0.insert.insert.i.i.i = select i1 %i.be, i64 513, i64 %i.bf ; 2 uses
  %i.bg = trunc i64 %.sroa.09.0.insert.insert.i.i.i to i1
  br i1 %i.bg, label %bb.k, label %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, !prof !10

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4567
  store i8 2, ptr %i.f, align 1, !noalias !4567
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 43, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @81, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @406) #46
  unreachable

_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i: ; preds = %bb.j
  %.sroa.6.0.extract.shift.i.i.i.i = lshr i64 %.sroa.09.0.insert.insert.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.6.0.extract.shift.i.i.i.i to i32
  %i.bh = tail call { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens5after(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.01.0.i.i, i32 noundef %i.al) ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0      ; 3 uses
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %.idx.i.i = mul nuw nsw i64 %i.bj, 12
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx.i.i
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, %bb.m
  %.sroa.06.011.i.i = phi ptr [ %i.bw, %bb.m ], [ %i.bi, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 10
  %i.bn = load i8, ptr %i.bm, align 2, !range !43, !noundef !11
  switch i8 %i.bn, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit [
    i8 12, label %bb.l
    i8 13, label %bb.m
    i8 14, label %bb.m
    i8 15, label %bb.m
    i8 16, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.bo = getelementptr i8, ptr %i.aq, i64 12
  %i.bp = load i8, ptr %i.bo, align 4, !range !33, !noundef !11
  %i.bq = tail call i8 @llvm.umax.i8(i8 %i.bp, i8 1)
  %narrow1.i.i.i = add nuw nsw i8 %i.bq, 1
  %switch.offset.i.i.i = zext nneg i8 %narrow1.i.i.i to i64
  %i.br = load i32, ptr %.sroa.06.011.i.i, align 4, !noundef !11
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !11
  %i.bu = tail call noundef i32 @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers25comment_indentation_after(i64 noundef %switch.offset.i.i.i, ptr noundef nonnull align 8 %i.ar, i32 noundef %i.br, i32 noundef %i.bt, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.az)
  %i.bv = icmp ugt i32 %i.bu, %.sroa.6.0.extract.trunc.i.i.i.i
  br i1 %i.bv, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit.thread, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit

bb.m:                                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i.i, i64 12 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, %i.bk
  br i1 %i.bx, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit, label %.lr.ph.i.i

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit: ; preds = %.lr.ph.i.i, %bb.m, %_RNvXs_NtCs2MoD74u7shA_14ruff_text_size6traitsReNtB4_7TextLen8text_len.exit.i.i, %bb.l, %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !11, !noundef !11
  %i.ca = tail call noundef i8 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers11side_effectNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if14unnecessary_if0EB16_(ptr noundef nonnull align 8 %i.bz, ptr noundef nonnull align 8 %0)
  %i.cb = icmp eq i8 %i.ca, 2
  br i1 %i.cb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cc = load i32, ptr %i.ad, align 8, !noundef !11
  %i.cd = load i32, ptr %i.ae, align 4, !noundef !11
  call void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules14unnecessary_if13UnnecessaryIfEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %0, i32 noundef %i.cc, i32 noundef %i.cd)
  br label %switch.lookup

bb.o:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if20if_contains_comments.exit
  %i.ce = load ptr, ptr %i.by, align 8, !nonnull !11, !noundef !11
  %i.cf = tail call noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_exprNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if14unnecessary_ifs_0EB18_(ptr noundef nonnull align 8 %i.ce)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cg = load i32, ptr %i.ad, align 8, !noundef !11
  %i.ch = load i32, ptr %i.ae, align 4, !noundef !11
  call void @_RINvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_7Checker17report_diagnosticNtNtNtNtNtBa_5rules4ruff5rules14unnecessary_if13UnnecessaryIfEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull align 8 %0, i32 noundef %i.cg, i32 noundef %i.ch)
  br i1 %i.cf, label %switch.lookup, label %bb.be

switch.lookup:                                    ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ci = load ptr, ptr %i.by, align 8, !nonnull !11, !noundef !11 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4568)
  %i.cj = load i32, ptr %i.ci, align 8, !range !32, !noalias !4568, !noundef !11 ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.ck
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.cl = zext nneg i32 %i.cj to i64
  %switch.gep48 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.704, i64 %i.cl
  %switch.load49 = load i8, ptr %switch.gep48, align 1
  %switch.ext50 = zext i8 %switch.load49 to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext50
  %.sroa.0.0.i.i = load i32, ptr %i.cm, align 4, !noalias !4568, !noundef !11
  %.sroa.34.0.i.i = load i32, ptr %i.cn, align 4, !noalias !4568, !noundef !11
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !4568, !align !20, !noundef !11 ; 2 uses
  %.not.i7 = icmp eq ptr %i.cp, null
  br i1 %.not.i7, label %bb.p, label %bb.q

bb.p:                                             ; preds = %switch.lookup
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 920
  %i.cr = load ptr, ptr %i.cq, align 8, !noalias !4568, !nonnull !11, !align !20, !noundef !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %switch.lookup
  %.sroa.0.0.i8 = phi ptr [ %i.cr, %bb.p ], [ %i.cp, %switch.lookup ]
  %i.cs = invoke { ptr, i64 } @_RNvMNtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtB2_6Tokens8in_range(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i8, i32 noundef %.sroa.0.0.i.i, i32 noundef %.sroa.34.0.i.i)
          to label %.noexc unwind label %bb.bd    ; 2 uses

.noexc:                                           ; preds = %bb.q
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 3 uses
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ct) ]
  %.idx.i.i9 = mul nuw nsw i64 %i.cu, 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx.i.i9
  %.not.i.i10 = icmp eq i64 %i.cu, 0
  br i1 %.not.i.i10, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if24has_top_level_line_break.exit.i, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.noexc, %bb.r
  %.sroa.01.09.i.i = phi i32 [ %.sroa.01.1.i.i, %bb.r ], [ 0, %.noexc ] ; 7 uses
  %.sroa.05.08.i.i = phi ptr [ %i.cw, %bb.r ], [ %i.ct, %.noexc ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 12 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.05.08.i.i, i64 10
  %i.cy = load i8, ptr %i.cx, align 2, !range !43, !noalias !4568, !noundef !11
  switch i8 %i.cy, label %bb.r [
    i8 13, label %bb.s
    i8 14, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.u
    i8 23, label %bb.v
    i8 38, label %bb.u
    i8 39, label %bb.v
  ]

bb.r:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %.lr.ph.i.i11
  %.sroa.01.1.i.i = phi i32 [ %.sroa.01.09.i.i, %.lr.ph.i.i11 ], [ %.sroa.01.09.i.i, %bb.s ], [ %.sroa.01.09.i.i, %bb.t ], [ %i.db, %bb.u ], [ %i.dc, %bb.v ]
  %.not14.i.i = icmp eq ptr %i.cw, %i.cv
  br i1 %.not14.i.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if24has_top_level_line_break.exit.i, label %.lr.ph.i.i11

bb.s:                                             ; preds = %.lr.ph.i.i11
  %i.cz = icmp eq i32 %.sroa.01.09.i.i, 0
  br i1 %i.cz, label %bb.ac, label %bb.r

bb.t:                                             ; preds = %.lr.ph.i.i11
  %i.da = icmp eq i32 %.sroa.01.09.i.i, 0
  br i1 %i.da, label %bb.ac, label %bb.r

bb.u:                                             ; preds = %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11
  %i.db = add i32 %.sroa.01.09.i.i, 1
  br label %bb.r

bb.v:                                             ; preds = %.lr.ph.i.i11, %.lr.ph.i.i11, %.lr.ph.i.i11
  %i.dc = call i32 @llvm.usub.sat.i32(i32 %.sroa.01.09.i.i, i32 1)
  br label %bb.r

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules14unnecessary_if24has_top_level_line_break.exit.i: ; preds = %bb.r, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4568
  %i.dd = load ptr, ptr %i.y, align 8, !noalias !4568, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.de = load i32, ptr %i.ci, align 8, !range !32, !noalias !4568, !noundef !11 ; 3 uses
  %i.df = zext nneg i32 %i.de to i64
  %switch.gep52 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range, i64 %i.df
  %switch.load53 = load i8, ptr %switch.gep52, align 1
  %switch.ext54 = zext i8 %switch.load53 to i64
  %i.dg = zext nneg i32 %i.de to i64
  %switch.gep55 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.704, i64 %i.dg
  %switch.load56 = load i8, ptr %switch.gep55, align 1
  %switch.ext57 = zext i8 %switch.load56 to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext54
  %i.di = getelementptr inbounds nuw i8, ptr %i.ci, i64 %switch.ext57
  %.sroa.0.0.i31.i = load i32, ptr %i.dh, align 4, !noalias !4568, !noundef !11 ; 4 uses
  %.sroa.34.0.i32.i = load i32, ptr %i.di, align 4, !noalias !4568, !noundef !11 ; 4 uses
  %.val27.i = load ptr, ptr %i.dd, align 8, !noalias !4568, !nonnull !11, !noundef !11 ; 8 uses
  %i.dj = getelementptr i8, ptr %i.dd, i64 8
  %.val28.i = load i64, ptr %i.dj, align 8, !noalias !4568, !noundef !11 ; 9 uses
  %i.dk = zext i32 %.sroa.0.0.i31.i to i64        ; 10 uses
  %i.dl = zext i32 %.sroa.34.0.i32.i to i64       ; 9 uses
  %.not.i.i.i = icmp ugt i32 %.sroa.0.0.i31.i, %.sroa.34.0.i32.i
end_hunk_1
