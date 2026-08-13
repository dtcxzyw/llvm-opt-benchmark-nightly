inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type22bad_string_format_type:bb.a
bb.ca:                                            ; preds = %bb.bz
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4943
  unreachable

bb.cb:                                            ; preds = %bb.bu
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4943
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.sroa.0.0.i56, label %bb.ce, label %bb.cd

bb.cc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4910
  br i1 %.sroa.0.2.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type17is_valid_constant.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !noundef !12
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.jl = load i32, ptr %i.jk, align 4, !noundef !12
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !12, !align !171, !noundef !12
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules22bad_string_format_type19BadStringFormatTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull align 8 %i.jn, i32 noundef %i.jj, i32 noundef %i.jl)
          to label %bb.ch unwind label %.loopexit.split-lp

bb.ce:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type17is_valid_constant.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit, %bb.ci, %bb.cc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtBG_6string6StringEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.cf
  %common.resume.op = phi { ptr, i32 } [ %i.jo, %bb.cf ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtBG_6string6StringEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ce
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ch:                                            ; preds = %bb.cd
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.ci unwind label %.loopexit.split-lp

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ce

bb.cj:                                            ; preds = %.body
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules24import_outside_top_level24import_outside_top_level(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 22 uses
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 6 uses
  %.sroa.9 = alloca i64, align 8                  ; 5 uses
  %.sroa.11 = alloca i64, align 8                 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !noundef !12 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.i = load i32, ptr %i.h, align 8, !range !3224, !noundef !12
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !3837, !noundef !12
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !12, !align !171, !noundef !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load i64, ptr %i.u, align 8, !noundef !12
  %i.w = and i64 %i.v, 8388608
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit, %bb.b, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  ret void

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4958)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.z = load i8, ptr %i.y, align 4, !range !733, !noalias !4958, !noundef !12 ; 2 uses
  %i.aa = icmp samesign ugt i8 %i.z, 1
  %i.ab = zext nneg i8 %i.z to i64
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = select i1 %i.aa, i64 %i.ac, i64 0
  switch i64 %i.ad, label %bb.g [
    i64 16, label %bb.h
    i64 17, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775806, ptr %i.e, align 8, !alias.scope !4958
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.ae, align 8, !alias.scope !4958
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !4958
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !noalias !4958, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.ai = load i8, ptr %i.ah, align 1, !range !176, !noalias !4958, !noundef !12 ; 4 uses
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !4961, !noalias !4958, !noundef !12
  %i.am = and i64 %i.al, 72057594037927935
  %i.an = icmp ult i8 %i.ai, -48
  %i.ao = zext i8 %i.ai to i64
  %i.ap = add nsw i64 %i.ao, -192
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.ap, i64 16)
  %.sroa.0.0.i.i = select i1 %i.an, i64 %spec.store.select.i.i, i64 %i.am
  %i.aq = icmp ugt i8 %i.ai, -49
  %i.ar = load ptr, ptr %i.aj, align 8, !alias.scope !4961, !noalias !4958
  %.sroa.01.0.i.i = select i1 %i.aq, ptr %i.ar, ptr %i.aj
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0.i = phi i64 [ %.sroa.0.0.i.i, %bb.j ], [ undef, %bb.i ]
  %.sroa.0.0.i = phi ptr [ %.sroa.01.0.i.i, %bb.j ], [ null, %bb.i ]
  %i.as = load i64, ptr %0, align 8, !range !124, !noalias !4958, !noundef !12
  %i.at = trunc nuw i64 %i.as to i1
  br i1 %i.at, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !noalias !4958, !nonnull !12, !align !171, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !noalias !4958, !noundef !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.52.0.i = phi i64 [ %i.ax, %bb.l ], [ undef, %bb.k ]
  %.sroa.01.0.i = phi ptr [ %i.av, %bb.l ], [ null, %bb.k ]
  call void @_RNvNtCskLngH8kgpZI_15ruff_python_ast7helpers28resolve_imported_module_path(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.e, i32 noundef %i.ag, ptr noalias noundef readonly captures(address, read_provenance) %.sroa.0.0.i, i64 %.sroa.5.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) %.sroa.01.0.i, i64 %.sroa.52.0.i)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %1, ptr %i.ay, align 8, !alias.scope !4958
  %.pre = load i64, ptr %i.e, align 8, !range !1169, !alias.scope !4964, !noalias !4967
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit

_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit: ; preds = %bb.g, %bb.h, %bb.m
  %i.az = phi i64 [ -9223372036854775806, %bb.g ], [ -9223372036854775808, %bb.h ], [ %.pre, %bb.m ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4967)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4964)
  %i.ba = icmp ne i64 %i.az, -9223372036854775807
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = xor i64 %i.az, -9223372036854775808     ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 3
  %i.bd = select i1 %i.bc, i64 %i.bb, i64 1       ; 2 uses
  switch i64 %i.bd, label %bb.n [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  ]

bb.n:                                             ; preds = %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit
  unreachable

bb.o:                                             ; preds = %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !4964, !noalias !4967, !nonnull !12, !align !171, !noundef !12 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !4969, !nonnull !12, !noundef !12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !4969, !noundef !12
  %i.bk = getelementptr inbounds nuw [80 x i8], ptr %i.bh, i64 %i.bj
  br label %.sink.split.i

bb.p:                                             ; preds = %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit
  %cond.i = icmp eq i64 %i.az, -2                 ; 2 uses
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.01.0.i7 = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !4964, !noalias !4967, !nonnull !12
  %.sroa.52.0.in.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.52.0.i8 = load i64, ptr %.sroa.52.0.in.i, align 8, !alias.scope !4964, !noalias !4967
  %.sroa.5.0.i9 = select i1 %cond.i, i64 undef, i64 %.sroa.52.0.i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !4964, !noalias !4967, !nonnull !12, !align !171, !noundef !12 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !4969, !nonnull !12, !noundef !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !4969, !noundef !12
  %i.br = getelementptr inbounds nuw [80 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = ptrtoint ptr %.sroa.01.0.i7 to i64
  %i.bt = select i1 %cond.i, i64 0, i64 %i.bs
  store i64 %i.bt, ptr %.sroa.5, align 8, !alias.scope !4967, !noalias !4964
  store i64 %.sroa.5.0.i9, ptr %.sroa.7, align 8, !alias.scope !4967, !noalias !4964
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.p, %bb.o
  %.sroa.10.0 = phi ptr [ undef, %bb.o ], [ %i.bo, %bb.p ]
  %.sink9.i.sroa.phi = phi ptr [ %.sroa.5, %bb.o ], [ %.sroa.11, %bb.p ]
  %.sink7.i = phi ptr [ %i.bh, %bb.o ], [ %i.br, %bb.p ]
  %.sink6.i.sroa.phi = phi ptr [ %.sroa.7, %bb.o ], [ %.sroa.9, %bb.p ]
  %.sink4.i = phi ptr [ %i.bk, %bb.o ], [ %i.bm, %bb.p ]
  store ptr %.sink7.i, ptr %.sink9.i.sroa.phi, align 8, !alias.scope !4967, !noalias !4964
  store ptr %.sink4.i, ptr %.sink6.i.sroa.phi, align 8, !alias.scope !4967, !noalias !4964
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload.pre = load i64, ptr %.sroa.5, align 8
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.pre = load i64, ptr %.sroa.7, align 8
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload.pre = load i64, ptr %.sroa.9, align 8
  %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload.pre = load i64, ptr %.sroa.11, align 8
  %i.bu = inttoptr i64 %.sroa.11.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload.pre to ptr
  br label %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit

bb.q:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bw = load i8, ptr %i.bv, align 4, !range !733, !noundef !12 ; 2 uses
  %i.bx = icmp samesign ugt i8 %i.bw, 1
  %i.by = zext nneg i8 %i.bw to i64
  %i.bz = add nsw i64 %i.by, -1
  %i.ca = select i1 %i.bx, i64 %i.bz, i64 0
  switch i64 %i.ca, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 2, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 3, label %bb.t
    i64 4, label %bb.u
    i64 5, label %bb.v
    i64 6, label %bb.w
    i64 7, label %bb.x
    i64 8, label %bb.y
    i64 9, label %bb.z
    i64 10, label %bb.aa
    i64 11, label %bb.ab
    i64 12, label %bb.ac
    i64 13, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 14, label %bb.ad
    i64 15, label %bb.ae
    i64 16, label %bb.af
    i64 17, label %bb.ag
    i64 18, label %bb.ah
    i64 19, label %bb.ai
    i64 20, label %bb.aj
    i64 21, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 22, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 23, label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
    i64 24, label %bb.ak
  ]

bb.r:                                             ; preds = %bb.q
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.t:                                             ; preds = %bb.q
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.u:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.v:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.w:                                             ; preds = %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.x:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.y:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.z:                                             ; preds = %bb.q
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.aa:                                            ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ab:                                            ; preds = %bb.q
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ac:                                            ; preds = %bb.q
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ad:                                            ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ae:                                            ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.af:                                            ; preds = %bb.q
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ag:                                            ; preds = %bb.q
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ah:                                            ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ai:                                            ; preds = %bb.q
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.aj:                                            ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

bb.ak:                                            ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit: ; preds = %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.q, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak
  %.sink.i11 = phi i64 [ 20, %bb.ak ], [ 4, %bb.q ], [ 4, %bb.q ], [ 4, %bb.q ], [ 12, %bb.aj ], [ 28, %bb.ai ], [ 28, %bb.ah ], [ 60, %bb.ag ], [ 28, %bb.af ], [ 12, %bb.ae ], [ 52, %bb.ad ], [ 4, %bb.q ], [ 36, %bb.ac ], [ 36, %bb.ab ], [ 44, %bb.aa ], [ 28, %bb.z ], [ 36, %bb.y ], [ 20, %bb.x ], [ 20, %bb.w ], [ 36, %bb.v ], [ 20, %bb.u ], [ 28, %bb.t ], [ 4, %bb.q ], [ 60, %bb.s ], [ 4, %bb.q ]
  %.sroa.0.0.in.i = phi ptr [ %i.ct, %bb.ak ], [ %1, %bb.q ], [ %1, %bb.q ], [ %1, %bb.q ], [ %i.cs, %bb.aj ], [ %i.cr, %bb.ai ], [ %i.cq, %bb.ah ], [ %i.cp, %bb.ag ], [ %i.co, %bb.af ], [ %i.cn, %bb.ae ], [ %i.cm, %bb.ad ], [ %1, %bb.q ], [ %i.cl, %bb.ac ], [ %i.ck, %bb.ab ], [ %i.cj, %bb.aa ], [ %i.ci, %bb.z ], [ %i.ch, %bb.y ], [ %i.cg, %bb.x ], [ %i.cf, %bb.w ], [ %i.ce, %bb.v ], [ %i.cd, %bb.u ], [ %i.cc, %bb.t ], [ %1, %bb.q ], [ %i.cb, %bb.s ], [ %1, %bb.q ]
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i11
  %.sroa.0.0.i12 = load i32, ptr %.sroa.0.0.in.i, align 8, !noundef !12
  %.sroa.26.0.i = load i32, ptr %i.cu, align 4, !noundef !12
  %i.cv = load ptr, ptr %i.s, align 8, !nonnull !12, !align !171, !noundef !12
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules24import_outside_top_level21ImportOutsideTopLevelEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.cv, i32 noundef %.sroa.0.0.i12, i32 noundef %.sroa.26.0.i)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

.loopexit69:                                      ; preds = %bb.au, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.ay
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i19
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit69, %.loopexit.split-lp, %bb.ba, %bb.aw
  %eh.lpad-body = phi { ptr, i32 } [ %i.er, %bb.aw ], [ %i.fc, %bb.ba ], [ %lpad.loopexit, %.loopexit69 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_(ptr noalias noundef align 8 dereferenceable(32) %i.e) #49
          to label %common.resume unwind label %bb.bj

_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit: ; preds = %.sink.split.i, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit
  %.sroa.11.0..sroa.11.0..sroa.11.0.copyload = phi ptr [ %i.bu, %.sink.split.i ], [ undef, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit ]
  %.sroa.9.0..sroa.9.0..sroa.9.0.copyload = phi i64 [ %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload.pre, %.sink.split.i ], [ undef, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit ]
  %.sroa.7.0..sroa.7.0..sroa.7.0.copyload = phi i64 [ %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload.pre, %.sink.split.i ], [ undef, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit ] ; 3 uses
  %.sroa.5.0..sroa.5.0..sroa.5.0.copyload = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.0.copyload.pre, %.sink.split.i ], [ undef, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0, %.sink.split.i ], [ undef, %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.1136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.bd, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit
  %.sroa.16.0 = phi ptr [ %.sroa.10.1, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.16.260, %bb.bd ] ; 3 uses
  %.sroa.13.0 = phi i64 [ %.sroa.9.0..sroa.9.0..sroa.9.0.copyload, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.13.162, %bb.bd ] ; 2 uses
  %.sroa.14.0 = phi i64 [ undef, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.14.164, %bb.bd ] ; 3 uses
  %.sroa.531.0 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0.copyload, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.531.166, %bb.bd ] ; 7 uses
  %.sroa.03.0 = phi i1 [ false, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.03.1, %bb.bd ] ; 4 uses
  %.sroa.0.0 = phi i1 [ true, %_RNvXs0_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsRNtB5_26BannedModuleImportPoliciesNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter.exit ], [ %.sroa.0.1, %bb.bd ] ; 5 uses
  switch i64 %i.bd, label %default.unreachable47.i [
    i64 0, label %bb.am
    i64 1, label %bb.an
    i64 2, label %.loopexit
  ]

default.unreachable47.i:                          ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.cw = icmp eq i64 %.sroa.531.0, %.sroa.7.0..sroa.7.0..sroa.7.0.copyload
  br i1 %i.cw, label %.loopexit, label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.cx = inttoptr i64 %.sroa.531.0 to ptr
  %.not.i13 = icmp eq i64 %.sroa.531.0, 0
  br i1 %.not.i13, label %.loopexit, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.cy = inttoptr i64 %.sroa.531.0 to ptr        ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = ptrtoint ptr %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 48 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 63
  %i.dd = load i8, ptr %i.dc, align 1, !range !216, !alias.scope !4970, !noalias !4973, !noundef !12 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !4970, !noalias !4973, !noundef !12
  %i.dg = and i64 %i.df, 72057594037927935
  %i.dh = icmp ult i8 %i.dd, -48
  %i.di = zext i8 %i.dd to i64
  %i.dj = add nsw i64 %i.di, -192
  %spec.store.select.i.i14 = call i64 @llvm.umin.i64(i64 %i.dj, i64 16)
  %.sroa.0.0.i.i15 = select i1 %i.dh, i64 %spec.store.select.i.i14, i64 %i.dg
  %i.dk = icmp ugt i8 %i.dd, -49
  %i.dl = load ptr, ptr %i.db, align 8, !alias.scope !4970, !noalias !4973
  %.sroa.01.0.i.i16 = select i1 %i.dk, ptr %i.dl, ptr %i.db
  %i.dm = ptrtoint ptr %.sroa.01.0.i.i16 to i64
  br label %bb.au

bb.ap:                                            ; preds = %bb.an
  %.not31.i = icmp eq i64 %.sroa.13.0, 0
  br i1 %.not31.i, label %.preheader.i, label %bb.ay

.preheader.i:                                     ; preds = %bb.ap, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i
  %i.dn = phi ptr [ %i.dp, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i ], [ %.sroa.16.0, %bb.ap ] ; 5 uses
  %i.do = icmp eq ptr %i.dn, %.sroa.11.0..sroa.11.0..sroa.11.0.copyload
  br i1 %i.do, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %.preheader.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 80 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 48 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 63
  %i.ds = load i8, ptr %i.dr, align 1, !range !216, !alias.scope !4977, !noalias !4973, !noundef !12 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !4977, !noalias !4973, !noundef !12
  %i.dv = and i64 %i.du, 72057594037927935
  %i.dw = icmp ult i8 %i.ds, -48
  %i.dx = zext i8 %i.ds to i64
  %i.dy = add nsw i64 %i.dx, -192
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.dy, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.dw, i64 %spec.store.select.i.i.i, i64 %i.dv ; 2 uses
  %i.dz = icmp eq i64 %.sroa.0.0.i.i.i, 1
  %.pre.i = load ptr, ptr %i.dq, align 8, !noalias !4973 ; 2 uses
  br i1 %i.dz, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i: ; preds = %bb.aq
  %i.ea = icmp ugt i8 %i.ds, -49
  %.sroa.01.0.i.i.i = select i1 %i.ea, ptr %.pre.i, ptr %i.dq
  %lhsc.i = load i8, ptr %.sroa.01.0.i.i.i, align 1, !noalias !4973
  %i.eb = icmp eq i8 %lhsc.i, 42
  br i1 %i.eb, label %.preheader.i, label %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i

_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i: ; preds = %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.i, %bb.aq
  %i.ec = icmp ugt i8 %i.ds, -49
  %.sroa.01.0.i36.i = select i1 %i.ec, ptr %.pre.i, ptr %i.dq
  %i.ed = ptrtoint ptr %.sroa.01.0.i36.i to i64
  br label %bb.au

.loopexit:                                        ; preds = %bb.al, %bb.am, %bb.an, %.preheader.i
  %.sroa.03.098 = phi i1 [ %.sroa.03.0, %.preheader.i ], [ %.sroa.03.0, %bb.am ], [ %.sroa.03.0, %bb.an ], [ false, %bb.al ]
  %.sroa.0.092 = phi i1 [ %.sroa.0.0, %.preheader.i ], [ %.sroa.0.0, %bb.am ], [ %.sroa.0.0, %bb.an ], [ true, %bb.al ]
  %i.ee = load i64, ptr %i.e, align 8, !range !1169, !alias.scope !4982, !noundef !12 ; 2 uses
  %i.ef = icmp ne i64 %i.ee, -9223372036854775807
  call void @llvm.assume(i1 %i.ef)
  switch i64 %i.ee, label %bb.ar [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775806, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775807, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
    i64 -9223372036854775808, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit
  ]

bb.ar:                                            ; preds = %.loopexit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.bh, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.fh, %bb.bh ], [ %i.eg, %bb.as ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.ar
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit: ; preds = %.loopexit, %.loopexit, %.loopexit, %.loopexit, %.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %or.cond = select i1 %.sroa.03.098, i1 %.sroa.0.092, i1 false
  br i1 %or.cond, label %bb.e, label %bb.q

bb.au:                                            ; preds = %bb.ao, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i
  %.sroa.8.1.ph = phi i64 [ %.sroa.7.0..sroa.7.0..sroa.7.0.copyload, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %i.dm, %bb.ao ]
  %.sroa.035.1.ph = phi ptr [ %i.cx, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ null, %bb.ao ]
  %.sroa.1136.1.ph = phi i64 [ %i.ed, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %.sroa.0.0.i.i15, %bb.ao ]
  %.sroa.16.2.ph = phi ptr [ %i.dp, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %.sroa.16.0, %bb.ao ]
  %.sroa.13.1.ph = phi i64 [ 0, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %.sroa.13.0, %bb.ao ]
  %.sroa.14.1.ph = phi i64 [ %.sroa.0.0.i.i.i, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %.sroa.14.0, %bb.ao ] ; 2 uses
  %.sroa.531.1.ph = phi i64 [ %.sroa.531.0, %_RNvXsl_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameINtNtCs4NRVxsYgnAr_4core3cmp9PartialEqReE2eq.exit.thread.i ], [ %i.da, %bb.ao ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.035.1.ph, ptr %i.d, align 8
  store i64 %.sroa.8.1.ph, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.1136.1.ph, ptr %.sroa.1136.0..sroa_idx, align 8
  store i64 %.sroa.14.1.ph, ptr %.sroa.14.0..sroa_idx, align 8
  %.val6 = load ptr, ptr %i.s, align 8, !nonnull !12, !align !171, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4985
  %i.ei = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !noalias !4985, !nonnull !12, !align !171, !noundef !12 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 648
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !4985, !nonnull !12, !noundef !12 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 656
  %i.en = load i64, ptr %i.em, align 8, !noalias !4985, !noundef !12
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.en
  invoke void @_RINvMs0_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8matchersNtB6_15NameMatchPolicy4findINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvYB2S_INtNtB1M_7convert5AsRefeE6as_refEEBc_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull %i.el, ptr noundef nonnull %i.eo)
          to label %.noexc unwind label %.loopexit69

.noexc:                                           ; preds = %bb.au
  %i.ep = load i64, ptr %i.b, align 8, !range !20, !noalias !4985, !noundef !12 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, -1
  br i1 %i.eq, label %bb.bc, label %bb.av

bb.av:                                            ; preds = %.noexc
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.bc unwind label %.loopexit69

bb.ay:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.d, align 8
  store i64 %.sroa.531.0, ptr %.sroa.8.0..sroa_idx, align 8
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.0.copyload, ptr %.sroa.1136.0..sroa_idx, align 8
  store i64 %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8
  %.val = load ptr, ptr %i.s, align 8, !nonnull !12, !align !171, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4988
  %i.et = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !4988, !nonnull !12, !align !171, !noundef !12 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 648
  %i.ew = load ptr, ptr %i.ev, align 8, !noalias !4988, !nonnull !12, !noundef !12 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 656
  %i.ey = load i64, ptr %i.ex, align 8, !noalias !4988, !noundef !12
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ey
  invoke void @_RINvMs0_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports8matchersNtB6_15NameMatchPolicy4findINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterNtNtCscdodAO9FK5_5alloc6string6StringENvYB2S_INtNtB1M_7convert5AsRefeE6as_refEEBc_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noundef nonnull %i.ew, ptr noundef nonnull %i.ez)
          to label %.noexc20 unwind label %.loopexit69

.noexc20:                                         ; preds = %bb.ay
  %i.fa = load i64, ptr %i.a, align 8, !range !20, !noalias !4988, !noundef !12
  %i.fb = icmp eq i64 %i.fa, -1
  br i1 %i.fb, label %bb.be, label %bb.az

bb.az:                                            ; preds = %.noexc20
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i19 unwind label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i19: ; preds = %bb.az
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.bf unwind label %.loopexit.split-lp

bb.bc:                                            ; preds = %.noexc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %.not = icmp ne i64 %i.ep, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4985
  %i.fe = select i1 %.not, i1 %.sroa.0.0, i1 false
  br label %bb.bd

bb.bd:                                            ; preds = %bb.be, %bb.bc
  %.sroa.531.166 = phi i64 [ %.sroa.531.1.ph, %bb.bc ], [ %.sroa.531.0, %bb.be ]
  %.sroa.14.164 = phi i64 [ %.sroa.14.1.ph, %bb.bc ], [ %.sroa.14.0, %bb.be ]
  %.sroa.13.162 = phi i64 [ %.sroa.13.1.ph, %bb.bc ], [ 0, %bb.be ]
  %.sroa.16.260 = phi ptr [ %.sroa.16.2.ph, %bb.bc ], [ %.sroa.16.0, %bb.be ]
  %.sroa.03.1 = phi i1 [ true, %bb.bc ], [ %.sroa.03.0, %bb.be ]
  %.sroa.0.1 = phi i1 [ %i.fe, %bb.bc ], [ %.sroa.0.0, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.al

bb.be:                                            ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4988
  br label %bb.bd

bb.bf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ff = load i64, ptr %i.e, align 8, !range !1169, !alias.scope !4991, !noundef !12 ; 2 uses
  %i.fg = icmp ne i64 %i.ff, -9223372036854775807
  call void @llvm.assume(i1 %i.fg)
  switch i64 %i.ff, label %bb.bg [
    i64 -1, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27
    i64 -9223372036854775806, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27
    i64 -9223372036854775807, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27
    i64 -9223372036854775808, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27
  ]

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i26 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i26: ; preds = %bb.bg
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27: ; preds = %bb.bf, %bb.bf, %bb.bf, %bb.bf, %bb.bf, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.e

bb.bj:                                            ; preds = %.body
end_hunk_0
