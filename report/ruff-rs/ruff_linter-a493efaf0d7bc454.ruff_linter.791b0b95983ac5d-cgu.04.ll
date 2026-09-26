Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.04?download=true
inline.NumInlined: 5984
inline.NumDeleted: 2399
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_322airflow_3_removal_expr:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.hu unwind label %bb.hm

bb.hr:                                            ; preds = %bb.hp
  %i.ash = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #43
          to label %.thread117.thread.i unwind label %bb.ht

bb.hs:                                            ; preds = %bb.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.hq

bb.ht:                                            ; preds = %bb.ia, %bb.hz, %bb.hr, %.thread117.thread.i
  %i.asi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.hu:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.asj = load i64, ptr %i.n, align 8, !range !17, !alias.scope !6888, !noundef !14
  %i.ask = icmp eq i64 %i.asj, 0
  br i1 %i.ask, label %bb.hv, label %bb.hw

bb.hv:                                            ; preds = %bb.hu
  call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.xg)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit217.i

bb.hw:                                            ; preds = %bb.hu
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i216.i unwind label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %i.asl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xg)
          to label %common.resume unwind label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.asm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i216.i: ; preds = %bb.hw
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.xg)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit217.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit217.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter.exit.i.i216.i, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_312check_method.exit

bb.hz:                                            ; preds = %bb.hl
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics3fix3FixECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.k) #43
          to label %.thread117.i unwind label %bb.ht

bb.ia:                                            ; preds = %.thread113.i, %.thread117.i
  %.pn188116.i = phi { ptr, i32 } [ %i.arg, %.thread113.i ], [ %eh.lpad-body.i, %.thread117.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow7helpers11ReplacementEBJ_(ptr noalias noundef align 8 dereferenceable(64) %i.l) #43
          to label %.thread117.thread.i unwind label %bb.ht

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_312check_method.exit: ; preds = %bb.du, %bb.dx, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit.i40, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECsEhZmuQNqkz_11ruff_linter.exit217.i
  %i.asn = call noundef zeroext i1 @_RNvNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow7helpers24in_airflow_task_function(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.aj)
  br i1 %i.asn, label %bb.ib, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ib:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_312check_method.exit
  %i.aso = load ptr, ptr %i.ap, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.asp = load i32, ptr %i.aso, align 8, !range !22, !noundef !14
  %i.asq = icmp eq i32 %i.asp, 25
  br i1 %i.asq, label %bb.ic, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ic:                                            ; preds = %bb.ib
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aso, i64 31
  %i.ass = load i8, ptr %i.asr, align 1, !range !31, !alias.scope !6889, !noundef !14 ; 3 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aso, i64 24
  %i.asu = load i64, ptr %i.ast, align 8, !alias.scope !6889, !noundef !14
  %i.asv = and i64 %i.asu, 72057594037927935
  %i.asw = icmp ult i8 %i.ass, -48
  %i.asx = zext i8 %i.ass to i64
  %i.asy = add nsw i64 %i.asx, -192
  %spec.store.select.i.i80 = call i64 @llvm.umin.i64(i64 %i.asy, i64 16)
  %.sroa.0.0.i.i81 = select i1 %i.asw, i64 %spec.store.select.i.i80, i64 %i.asv
  %i.asz = icmp eq i64 %.sroa.0.0.i.i81, 3
  br i1 %i.asz, label %bb.id, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.id:                                            ; preds = %bb.ic
  %i.ata = icmp ugt i8 %i.ass, -49
  %i.atb = getelementptr inbounds nuw i8, ptr %i.aso, i64 16 ; 2 uses
  %i.atc = load ptr, ptr %i.atb, align 8, !alias.scope !6889
  %.sroa.01.0.i.i82 = select i1 %i.ata, ptr %i.atc, ptr %i.atb ; 2 uses
  %i.atd = load i16, ptr %.sroa.01.0.i.i82, align 1
  %i.ate = xor i16 %i.atd, 25959
  %i.atf = getelementptr i8, ptr %.sroa.01.0.i.i82, i64 2
  %i.atg = load i8, ptr %i.atf, align 1
  %i.ath = zext i8 %i.atg to i16
  %i.ati = xor i16 %i.ath, 116
  %i.atj = or i16 %i.ate, %i.ati
  %i.atk = icmp ne i16 %i.atj, 0
  %i.atl = zext i1 %i.atk to i32
  %.not.i84 = icmp eq i32 %i.atl, 0
  br i1 %.not.i84, label %bb.ie, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ie:                                            ; preds = %bb.id
  %i.atm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.atn = call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments15find_positional(ptr noundef nonnull align 8 %i.atm, i64 noundef 0) ; 5 uses
  %.not3.i = icmp eq ptr %i.atn, null
  br i1 %.not3.i, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit, label %bb.if

bb.if:                                            ; preds = %bb.ie
  %i.ato = load i32, ptr %i.atn, align 8, !range !22, !noundef !14
  %i.atp = icmp eq i32 %i.ato, 19
  br i1 %i.atp, label %bb.ig, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ig:                                            ; preds = %bb.if
  %i.atq = getelementptr inbounds nuw i8, ptr %i.atn, i64 8
  %i.atr = getelementptr inbounds nuw i8, ptr %i.aso, i64 40 ; 2 uses
  %i.ats = load ptr, ptr %i.atr, align 8, !nonnull !14, !noundef !14
  %i.att = getelementptr inbounds nuw i8, ptr %i.atn, i64 56 ; 2 uses
  %i.atu = load i32, ptr %i.att, align 8, !noundef !14
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atn, i64 60 ; 2 uses
  %i.atw = load i32, ptr %i.atv, align 4, !noundef !14
  %i.atx = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_341check_deprecated_context_key_value_access(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.ats, i32 noundef %i.atu, i32 noundef %i.atw)
  br i1 %i.atx, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.aty = load ptr, ptr %i.atr, align 8, !nonnull !14, !noundef !14
  %i.atz = call fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_319is_context_variable(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.aty)
  br i1 %i.atz, label %bb.ii, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ii:                                            ; preds = %bb.ih
  %i.aua = call { ptr, i64 } @_RNvMsP_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValue6to_str(ptr noundef nonnull align 8 %i.atq) ; 2 uses
  %i.aub = extractvalue { ptr, i64 } %i.aua, 0
  %i.auc = extractvalue { ptr, i64 } %i.aua, 1
  %i.aud = load i32, ptr %i.att, align 8, !noundef !14
  %i.aue = load i32, ptr %i.atv, align 4, !noundef !14
  call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_328check_deprecated_context_key(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aub, i64 noundef %i.auc, i32 noundef %i.aud, i32 noundef %i.aue)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.ij:                                            ; preds = %bb.dp
  %i.auf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.ik:                                            ; preds = %bb.bq
  %i.aug = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.auh = load i64, ptr %i.aug, align 8, !noundef !14 ; 2 uses
  %i.aui = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.auj = load i32, ptr %i.aui, align 8, !range !68, !noundef !14
  %i.auk = add i32 %i.auj, -1
  %i.aul = zext i32 %i.auk to i64                 ; 3 uses
  %i.aum = icmp ugt i64 %i.auh, %i.aul
  br i1 %i.aum, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.aun = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.auo = load ptr, ptr %i.aun, align 8, !nonnull !14, !noundef !14
  %i.aup = getelementptr inbounds nuw [120 x i8], ptr %i.auo, i64 %i.aul ; 2 uses
  %i.auq = getelementptr inbounds nuw i8, ptr %i.aup, i64 24
  %i.aur = load i8, ptr %i.auq, align 8, !range !30, !noundef !14
  %i.aus = icmp eq i8 %i.aur, 0
  br i1 %i.aus, label %bb.in, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit

bb.im:                                            ; preds = %bb.ik
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.aul, i64 noundef %i.auh, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @251) #45
  unreachable

bb.in:                                            ; preds = %bb.il
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aup, i64 32
  %i.auu = load ptr, ptr %i.aut, align 8, !nonnull !14, !align !15, !noundef !14
  %i.auv = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.auw = load i8, ptr %i.auv, align 1, !range !31, !alias.scope !6890, !noundef !14 ; 3 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.auy = load i64, ptr %i.aux, align 8, !alias.scope !6890, !noundef !14
  %i.auz = and i64 %i.auy, 72057594037927935
  %i.ava = icmp ult i8 %i.auw, -48
  %i.avb = zext i8 %i.auw to i64
  %i.avc = add nsw i64 %i.avb, -192
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.avc, i64 16)
  %.sroa.0.0.i85 = select i1 %i.ava, i64 %spec.store.select.i, i64 %i.auz
  %i.avd = icmp ugt i8 %i.auw, -49
  %i.ave = load ptr, ptr %i.kn, align 8, !alias.scope !6890
  %.sroa.01.0.i = select i1 %i.avd, ptr %i.ave, ptr %i.kn
  tail call fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_330check_airflow_plugin_extension(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i85, ptr noundef nonnull align 8 %i.auu)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_345check_removed_attribute_access_on_context_key.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_323diagnostic_for_argument(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 9, 23) %3, ptr noalias noundef readonly captures(address, read_provenance) %4, i64 %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = tail call noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 95
  %i.j = load i8, ptr %i.i, align 1, !range !28, !noundef !14
  %.not34 = icmp eq i8 %i.j, -1                   ; 2 uses
  %.val.pn.in.i.v = select i1 %.not34, i64 104, i64 72
  %i.k = getelementptr i8, ptr %i.h, i64 %.val.pn.in.i.v
  %.val7.pn.in.i.v = select i1 %.not34, i64 108, i64 76
  %i.l = getelementptr i8, ptr %i.h, i64 %.val7.pn.in.i.v
  %.val7.pn.i = load i32, ptr %i.l, align 4, !noundef !14 ; 3 uses
  %.val.pn.i = load i32, ptr %i.k, align 8, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.m = load i64, ptr %i.b, align 8, !range !17, !noundef !14
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !18, !noundef !14 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.n, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.r = load i64, ptr %i.q, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.p, i64 %i.r) #45
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.q, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.t = icmp samesign ule i64 %3, %i.p
  tail call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %2, i64 %3, i1 false)
  %.not35 = icmp eq ptr %4, null
  store i64 %i.p, ptr %i.f, align 8
  %.sroa.619.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.s, ptr %.sroa.619.0..sroa_idx20, align 8
  %.sroa.722.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %3, ptr %.sroa.722.0..sroa_idx23, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 -9223372036854775806, ptr %i.u, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %4, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %5, ptr %.sroa.8.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !14, !align !15, !noundef !14
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules7airflow5rules12removal_in_315Airflow3RemovalEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.f, i32 noundef %.val.pn.i, i32 noundef %.val7.pn.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %5, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %i.u, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !14, !align !15, !noundef !14
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules7airflow5rules12removal_in_315Airflow3RemovalEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.g, ptr noundef nonnull align 8 %i.y, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %i.f, i32 noundef %.val.pn.i, i32 noundef %.val7.pn.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.g:                                             ; preds = %bb.n, %bb.f
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.h:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.g) #43
          to label %bb.r unwind label %bb.q

bb.i:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.a, align 8, !range !17, !noundef !14
  %i.ab = trunc nuw i64 %i.aa to i1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !range !18, !noundef !14 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.af = load i64, ptr %i.ae, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ad, i64 %i.af) #45
          to label %bb.p unwind label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %i.ae, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ah = icmp ule i64 %5, %i.ad
  tail call void @llvm.assume(i1 %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %4, i64 %5, i1 false)
  store i64 %i.ad, ptr %i.c, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ag, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %5, ptr %.sroa.629.0..sroa_idx, align 8
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics4editNtB2_4Edit17range_replacement(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i32 noundef %.val.pn.i, i32 noundef %.val7.pn.i)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvMNtCs5MAO5oZTZb8_16ruff_diagnostics3fixNtB2_3Fix9safe_edit(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.g, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.n unwind label %bb.h

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.g

bb.o:                                             ; preds = %bb.a, %bb.g
  ret void

bb.p:                                             ; preds = %bb.j
  unreachable

bb.q:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.r:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.z
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules12removal_in_323is_airflow_auth_manager(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 576460752303423488) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ugt i64 %1, 2
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %1, 2
  br i1 %i.c, label %.thread, label %.thread.thread27

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !14
  %i.f = icmp eq i64 %i.e, 7
  br i1 %i.f, label %bb.d, label %.thread.thread27

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1
  %i.i = xor i32 %i.h, 1718774113
  %i.j = getelementptr i8, ptr %i.g, i64 3
  %i.k = load i32, ptr %i.j, align 1
  %i.l = xor i32 %i.k, 2003790950
  %i.m = or i32 %i.i, %i.l
  %i.n = icmp ne i32 %i.m, 0
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8, !noundef !14
  %i.s = icmp eq i64 %i.r, 4
  br i1 %i.s, label %bb.f, label %.thread.thread

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !14, !noundef !14
  %i.v = load i32, ptr %i.u, align 1
  %i.w = icmp ne i32 %i.v, 1752462689
  %i.x = zext i1 %i.w to i32
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %.thread.thread

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !noundef !14
  %i.ab = icmp eq i64 %i.aa, 7
  br i1 %i.ab, label %bb.h, label %.thread.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1634623853
  %i.ag = getelementptr i8, ptr %i.ad, i64 3
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1919248225
  %i.aj = or i32 %i.af, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.i, label %.thread.thread

bb.i:                                             ; preds = %bb.h
  %.not24 = icmp eq i64 %1, 3
  br i1 %.not24, label %.thread.thread27, label %bb.r

.thread:                                          ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.an = icmp eq i64 %.pre, 7
  br i1 %i.an, label %.thread.thread, label %.thread.thread27

.thread.thread:                                   ; preds = %bb.g, %bb.e, %bb.h, %bb.f, %bb.d, %.thread
end_hunk_0
