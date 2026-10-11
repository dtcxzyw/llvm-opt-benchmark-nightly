Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_python_semantic-ec859307257497d7.ty_python_semantic.4ad91d80fb3de5b-cgu.12?download=true
inline.NumInlined: 9136
inline.NumDeleted: 3144
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder7typevarNtB4_20TypeInferenceBuilder38check_default_for_outer_scope_typevars:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.536.0..sroa_idx, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 73
  store i8 0, ptr %i.bi, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.l, ptr %i.a, align 8
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.440.0..sroa_idx, align 8
  invoke void @_RINvMs4_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_10Annotation7messageNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.d, ptr noundef nonnull @73, ptr noundef nonnull %i.a)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic8annotate(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.e)
          to label %bb.u unwind label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !10376)
  call void @llvm.experimental.noalias.scope.decl(metadata !10377)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10378)
  call void @llvm.experimental.noalias.scope.decl(metadata !10379)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !10380, !nonnull !16, !noundef !16
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !10380
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.v, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcINtCsfaQTJLFXFb5_8arc_swap10ArcSwapAnyINtNtCs4NRVxsYgnAr_4core6option6OptionIBw_NtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleEEEE9drop_slowB23_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10381)
  call void @llvm.experimental.noalias.scope.decl(metadata !10382)
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !10383, !nonnull !16, !noundef !16
  %i.bq = atomicrmw sub ptr %i.bp, i64 1 release, align 8, !noalias !10384
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bo)
          to label %.body unwind label %bb.z

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i: ; preds = %bb.v, %bb.u
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10385)
  call void @llvm.experimental.noalias.scope.decl(metadata !10386)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !10387, !nonnull !16, !noundef !16
  %i.bu = atomicrmw sub ptr %i.bt, i64 1 release, align 8, !noalias !10388
  %i.bv = icmp eq i64 %i.bu, 1
  br i1 %i.bv, label %bb.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit

bb.y:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6parsed7indexed13IndexedModuleE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit unwind label %bb.h

bb.z:                                             ; preds = %bb.x
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed12ParsedModuleECsoTR8nlGN3X_18ty_python_semantic.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db6parsed15ParsedModuleRefECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.bx = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i)
          to label %bb.ac unwind label %bb.h

bb.ab:                                            ; preds = %bb.r, %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.bz = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @559, i64 noundef 72)
          to label %bb.ad unwind label %bb.h

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noalias noundef nonnull align 8 %i.bz)
          to label %bb.ae unwind label %bb.h

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.ae, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.d
  %.sroa.0.0.ph = phi i1 [ false, %bb.d ], [ %.not44, %.sink.split.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %.sroa.0.0.ph, %.sink.split ]
  ret i1 %.sroa.0.0

bb.ag:                                            ; preds = %.body
  resume { ptr, i32 } %.pn46
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder20infer_new_class_call(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %2, i32 noundef %3, i32 %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [432 x i8], align 8               ; 4 uses
  %i.e = alloca [432 x i8], align 8               ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [16 x i8], align 4                ; 5 uses
  %i.h = alloca [16 x i8], align 4                ; 4 uses
  %i.i = alloca [16 x i8], align 4                ; 4 uses
  %i.j = alloca [8 x i8], align 4                 ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 4 uses
  %i.n = alloca [80 x i8], align 8                ; 5 uses
  %i.o = alloca [56 x i8], align 4                ; 6 uses
  %i.p = alloca [12 x i8], align 4                ; 4 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [56 x i8], align 8                ; 8 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [16 x i8], align 4                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [80 x i8], align 8                ; 6 uses
  %i.x = alloca [48 x i8], align 8                ; 6 uses
  %i.y = alloca [80 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 4               ; 4 uses
  %i.ab = alloca [16 x i8], align 4               ; 4 uses
  %i.ac = alloca [16 x i8], align 4               ; 9 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [80 x i8], align 8               ; 4 uses
  %i.af = alloca [80 x i8], align 8               ; 5 uses
  %i.ag = alloca [16 x i8], align 4               ; 4 uses
  %i.ah = alloca [16 x i8], align 4               ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %.val70 = load ptr, ptr %i.ai, align 8, !nonnull !16, !align !18, !noundef !16 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 9 uses
  %.val = load ptr, ptr %i.aj, align 8, !nonnull !16, !noundef !16 ; 13 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 2 uses
  %.val69 = load ptr, ptr %i.ak, align 8, !nonnull !16, !align !17, !noundef !16 ; 13 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !noundef !16
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.b, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit.thread112

bb.b:                                             ; preds = %bb.a
  %i.aq = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am) ; 3 uses
  %i.ar = load ptr, ptr %i.am, align 8, !nonnull !16, !noundef !16
  %i.as = load i64, ptr %i.ar, align 8, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  %.idx = mul nuw nsw i64 %i.as, 120
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i
  %i.av = phi ptr [ %i.aw, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i ], [ %i.aq, %bb.b ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 120 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 95
  %i.ay = load i8, ptr %i.ax, align 1, !range !49, !noalias !10442, !noundef !16 ; 4 uses
  %.not.i.i = icmp eq i8 %i.ay, -1
  br i1 %.not.i.i, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 88
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !10443, !noalias !10442, !noundef !16
  %i.bb = and i64 %i.ba, 72057594037927935
  %i.bc = icmp ult i8 %i.ay, -48
  %i.bd = zext i8 %i.ay to i64
  %i.be = add nsw i64 %i.bd, -192
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.be, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.bc, i64 %spec.store.select.i.i.i, i64 %i.bb
  %i.bf = icmp eq i64 %.sroa.0.0.i.i.i, 4
  br i1 %i.bf, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.i, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.i: ; preds = %bb.c
  %i.bg = icmp ugt i8 %i.ay, -49
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 80 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !10443, !noalias !10442
  %.sroa.01.0.i.i.i = select i1 %i.bg, ptr %i.bi, ptr %i.bh ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i) ]
  %i.bj = load i32, ptr %.sroa.01.0.i.i.i, align 1
  %i.bk = icmp ne i32 %i.bj, 1701667182
  %i.bl = zext i1 %i.bk to i32
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i: ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.i, %bb.c, %.lr.ph.i
  %i.bn = icmp eq ptr %i.aw, %i.at
  br i1 %i.bn, label %.loopexit, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit: ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.i
  %.pr = load i64, ptr %i.an, align 8
  %.not49 = icmp eq i64 %.pr, 0
  br i1 %.not49, label %bb.g, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit.thread112

.loopexit:                                        ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB6_20TypeInferenceBuilder20infer_new_class_call0Bc_.exit.thread.i, %bb.b
  %i.bo = tail call { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am) ; 2 uses
  %i.bp = extractvalue { ptr, ptr } %i.bo, 0      ; 3 uses
  %i.bq = extractvalue { ptr, ptr } %i.bo, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bp) ]
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.sroa.05.0144 = phi ptr [ %i.bs, %.lr.ph ], [ %i.bp, %.loopexit ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.05.0144, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i32 -1, ptr %i.ag, align 4, !alias.scope !10444
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ah, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %.sroa.05.0144, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ag), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.bt = icmp eq ptr %i.bs, %i.bq
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.af, ptr noundef nonnull align 8 %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20NO_MATCHING_OVERLOAD, ptr noundef nonnull align 8 %2)
  %i.bu = load i64, ptr %i.af, align 8, !range !28, !noundef !16
  %.not68 = icmp eq i64 %i.bu, -2
  br i1 %.not68, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ae, ptr noundef nonnull align 8 dereferenceable(80) %i.af, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) @560, i64 noundef 50)
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  store i32 1, ptr %0, align 4, !alias.scope !10445
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i, align 4, !alias.scope !10445
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit100, %bb.e
  ret void

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit.thread112: ; preds = %bb.a, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit
  %i.bv = load ptr, ptr %i.al, align 8, !nonnull !16, !noundef !16
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit

bb.g:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit
  %i.bw = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am) ; 3 uses
  %i.bx = load ptr, ptr %i.am, align 8, !alias.scope !10446, !nonnull !16, !noundef !16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bw) ]
  %.idx.i.i = mul nuw nsw i64 %i.by, 120
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.i
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i
  %i.cb = phi ptr [ %i.cc, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i ], [ %i.bw, %bb.g ] ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 120 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 95
  %i.ce = load i8, ptr %i.cd, align 1, !range !49, !noalias !10447, !noundef !16 ; 4 uses
  %.not.i.i.i.i = icmp eq i8 %i.ce, -1
  br i1 %.not.i.i.i.i, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !10448, !noalias !10447, !noundef !16
  %i.ch = and i64 %i.cg, 72057594037927935
  %i.ci = icmp ult i8 %i.ce, -48
  %i.cj = zext i8 %i.ce to i64
  %i.ck = add nsw i64 %i.cj, -192
  %spec.store.select.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ck, i64 16)
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ci, i64 %spec.store.select.i.i.i.i.i, i64 %i.ch
  %i.cl = icmp eq i64 %.sroa.0.0.i.i.i.i.i, 4
  br i1 %i.cl, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.i.i.i, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i

_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.i.i.i: ; preds = %bb.h
  %i.cm = icmp ugt i8 %i.ce, -49
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !10448, !noalias !10447
  %.sroa.01.0.i.i.i.i.i = select i1 %i.cm, ptr %i.co, ptr %i.cn ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i) ]
  %i.cp = load i32, ptr %.sroa.01.0.i.i.i.i.i, align 1
  %i.cq = icmp ne i32 %i.cp, 1701667182
  %i.cr = zext i1 %i.cq to i32
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i

_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i: ; preds = %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.i.i.i, %bb.h, %.lr.ph.i.i.i
  %i.ct = icmp eq ptr %i.cc, %i.bz
  br i1 %i.ct, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit, label %.lr.ph.i.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit: ; preds = %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.i.i.i, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit.thread112, %bb.g
  %.sroa.0.0.i83 = phi ptr [ %i.bv, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB2v_20TypeInferenceBuilder20infer_new_class_call0EB2B_.exit.thread112 ], [ null, %bb.g ], [ null, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.thread.i.i.i ], [ %i.cb, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls_00Be_.exit.i.i.i ] ; 4 uses
  %i.cu = tail call noundef align 8 ptr @_RNvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal28dynamic_class_bases_argument(ptr noundef nonnull align 8 %i.al) ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10449)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.0.0.i83, ptr %i.l, align 8, !noalias !10449
  store ptr %i.cu, ptr %i.k, align 8, !noalias !10449
  store i32 %3, ptr %i.j, align 4, !noalias !10449
  %i.cv = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %4, ptr %i.cv, align 4, !noalias !10449
  %.val.i = load ptr, ptr %i.aj, align 8, !alias.scope !10449, !nonnull !16, !noundef !16 ; 4 uses
  %.val2.i = load ptr, ptr %i.ak, align 8, !alias.scope !10449, !nonnull !16, !align !17, !noundef !16 ; 4 uses
  %.val3.i = load ptr, ptr %i.ai, align 8, !alias.scope !10449, !nonnull !16, !align !18, !noundef !16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10449
  %i.cw = load ptr, ptr %2, align 8, !noalias !10449, !nonnull !16, !noundef !16
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cw), !inline_history !10407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10449
  store i32 18, ptr %i.g, align 4, !noalias !10449
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 5, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !10449
  call void @_RINvMNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class5knownNtB3_10KnownClass23to_specialized_instanceRANtB7_4Typej1_EB9_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.h, i8 noundef 72, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val2.i, ptr noundef nonnull align 4 %.val3.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @565), !inline_history !10407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10449
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder22prepare_call_arguments(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.al), !inline_history !10407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10449
  invoke void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type8bindings(ptr noalias noundef nonnull sret([432 x i8]) align 8 captures(address) dereferenceable(432) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val2.i, ptr noundef nonnull align 4 %.val3.i)
          to label %bb.j unwind label %bb.i, !inline_history !10407

.body.i:                                          ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.p, %bb.l, %bb.i
  %.pn.i = phi { ptr, i32 } [ %i.cy, %bb.l ], [ %i.cx, %bb.i ], [ %i.dh, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ], [ %i.dh, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.f) #54
          to label %common.resume unwind label %bb.v, !inline_history !10407

bb.i:                                             ; preds = %bb.j, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.j:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls_0EB1T_.exit
  invoke void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings16match_parameters(ptr noalias noundef nonnull sret([432 x i8]) align 8 captures(none) dereferenceable(432) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(432) %i.d, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val2.i, ptr noundef nonnull align 4 %.val3.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.i, !inline_history !10407

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10449
  invoke void @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments17iter_source_order(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull align 8 %i.al)
          to label %bb.m unwind label %bb.l, !inline_history !10407

bb.l:                                             ; preds = %bb.q, %bb.m, %bb.k
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %i.e) #54
          to label %.body.i unwind label %bb.v, !inline_history !10407

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10449
  store ptr %i.l, ptr %i.b, align 8, !noalias !10449
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val.i, ptr %i.cz, align 8, !noalias !10449
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.val2.i, ptr %i.da, align 8, !noalias !10449
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.val3.i, ptr %i.db, align 8, !noalias !10449
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.k, ptr %i.dc, align 8, !noalias !10449
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.j, ptr %i.dd, align 8, !noalias !10449
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.h, ptr %i.de, align 8, !noalias !10449
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10449
  store i32 -1, ptr %i.a, align 4, !alias.scope !10450, !noalias !10449
  %i.df = invoke fastcc noundef i8 @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder30infer_and_check_argument_types(ptr noalias noundef nonnull align 8 dereferenceable(608) %1, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.c, ptr noalias noundef align 8 dereferenceable(24) %i.f, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @566, ptr noalias noundef align 8 dereferenceable(432) %i.e, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.a)
          to label %bb.n unwind label %bb.l, !inline_history !10407

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10449
  %.not.i84 = icmp eq i8 %i.df, -1
  br i1 %.not.i84, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  invoke void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.dg)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i unwind label %bb.p, !inline_history !10407

bb.p:                                             ; preds = %bb.o
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %.val2.i.i = load ptr, ptr %i.di, align 8, !alias.scope !10451, !noalias !10449, !align !18, !noundef !16 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %.val3.i.i = load i64, ptr %i.dj, align 8, !alias.scope !10451, !noalias !10449 ; 2 uses
  %i.dk = icmp eq ptr %.val2.i.i, null
  %i.dl = icmp eq i64 %.val3.i.i, 0
  %or.cond.i.i.i = select i1 %i.dk, i1 true, i1 %i.dl
  br i1 %or.cond.i.i.i, label %.body.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.p
  %i.dm = mul nuw nsw i64 %.val3.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.dm, i64 noundef 4) #52, !inline_history !10407
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i: ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  %.val.i.i = load ptr, ptr %i.dn, align 8, !alias.scope !10451, !noalias !10449, !align !18, !noundef !16 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.e, i64 416
  %.val1.i.i = load i64, ptr %i.do, align 8, !alias.scope !10451, !noalias !10449 ; 2 uses
  %i.dp = icmp eq ptr %.val.i.i, null
  %i.dq = icmp eq i64 %.val1.i.i, 0
  %or.cond.i4.i.i = select i1 %i.dp, i1 true, i1 %i.dq
  br i1 %or.cond.i4.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i
  %i.dr = mul nuw nsw i64 %.val1.i.i, 12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dr, i64 noundef 4) #52, !inline_history !10407
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i

bb.q:                                             ; preds = %bb.n
  invoke void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings18report_diagnostics(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %i.e, ptr noundef nonnull align 8 %i.aj, i64 noundef 43, ptr noundef nonnull align 8 %2)
          to label %bb.o unwind label %bb.l, !inline_history !10407

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i: ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8SmallVecANtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind15BindingsElementj1_EEB1j_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10449
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments12CallArgumentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.t unwind label %bb.r, !inline_history !10407

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !10452, !noalias !10449 ; 2 uses
  %i.dt = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.dt, label %common.resume, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val3.i.i.i = load ptr, ptr %i.du, align 8, !alias.scope !10453, !noalias !10449, !nonnull !16, !noundef !16
  %i.dv = mul nuw i64 %.val2.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.dv, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10454, !inline_history !10407
  br label %common.resume

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_.exit.i
  %.val.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !10452, !noalias !10449 ; 2 uses
  %i.dw = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.dw, label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder33validate_new_class_call_arguments.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !10453, !noalias !10449, !nonnull !16, !noundef !16
  %i.dy = mul nuw i64 %.val.i.i.i, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !10455, !inline_history !10407
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder33validate_new_class_call_arguments.exit

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit, %.thread129, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i, %.body.i, %bb.r, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ds, %bb.r ], [ %i.ds, %bb.s ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit ], [ %.pn64.pn, %.thread129 ], [ %.pn64.pn, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.l, %.body.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53, !inline_history !10407
  unreachable

_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder33validate_new_class_call_arguments.exit: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not50 = icmp eq ptr %.sroa.0.0.i83, null
  br i1 %.not50, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread.thread, label %bb.w

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type17as_string_literal.exit.thread.thread: ; preds = %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder33validate_new_class_call_arguments.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 1, ptr %i.ea, align 4, !alias.scope !10456
  store i32 4, ptr %i.ac, align 4, !alias.scope !10456
  br label %bb.y

bb.w:                                             ; preds = %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder33validate_new_class_call_arguments.exit
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ac, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %.sroa.0.0.i83)
  %.sroa.0105.0.copyload.pr = load i32, ptr %i.ac, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %.sroa.4.0.copyload.pre = load i8, ptr %.sroa.4.0..sroa_idx.phi.trans.insert, align 4
end_hunk_0
begin_hunk_1_@_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder20infer_new_class_call:bb.a
bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.t, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.cu)
  %i.eo = call fastcc { ptr, i64 } @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_classNtB6_20TypeInferenceBuilder22extract_explicit_bases(ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cu, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.t, i1 noundef zeroext true) ; 2 uses
  %i.ep = extractvalue { ptr, i64 } %i.eo, 0
  %i.eq = extractvalue { ptr, i64 } %i.eo, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.am

.thread129:                                       ; preds = %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i103, %bb.cc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit, %.thread133, %bb.aj
  %i.er = phi i64 [ %i.fq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit ], [ %i.fq, %.thread133 ], [ %i.ex, %bb.aj ], [ %i.fq, %bb.cc ], [ %i.fq, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i103 ] ; 2 uses
  %i.es = phi ptr [ %i.fp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit ], [ %i.fp, %.thread133 ], [ %i.ew, %bb.aj ], [ %i.fp, %bb.cc ], [ %i.fp, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i103 ] ; 3 uses
  %.pn64.pn = phi { ptr, i32 } [ %.pn62, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit ], [ %lpad.thr_comm, %.thread133 ], [ %i.ey, %bb.aj ], [ %lpad.thr_comm.split-lp, %bb.cc ], [ %lpad.thr_comm.split-lp, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i103 ] ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  %i.eu = icmp eq i64 %i.er, 0
  %or.cond.i = select i1 %i.et, i1 true, i1 %i.eu
  br i1 %or.cond.i, label %common.resume, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %.thread129
  %i.ev = shl nuw nsw i64 %i.er, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef %i.ev, i64 noundef 4) #52
  br label %common.resume

bb.aj:                                            ; preds = %.invoke, %bb.aw, %bb.al, %bb.au, %bb.aq, %bb.ap, %bb.am
  %i.ew = phi ptr [ null, %bb.aw ], [ null, %bb.al ], [ %.sink148, %bb.au ], [ %.sink148, %.invoke ], [ %.sink148, %bb.am ], [ %.sink148, %bb.aq ], [ %.sink148, %bb.ap ]
  %i.ex = phi i64 [ %.sink, %bb.aw ], [ undef, %bb.al ], [ %.sink, %bb.au ], [ %.sink, %.invoke ], [ %.sink, %bb.am ], [ %.sink, %bb.aq ], [ %.sink, %bb.ap ]
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

bb.ak:                                            ; preds = %bb.y
  store ptr null, ptr %i.u, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 524
  %.val72 = load i32, ptr %i.ez, align 4, !noundef !16
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10457)
  call void @llvm.experimental.noalias.scope.decl(metadata !10458)
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !10459, !noundef !16 ; 3 uses
  %i.fd = load i64, ptr %i.fa, align 8, !range !44, !alias.scope !10459, !noundef !16
  %i.fe = icmp eq i64 %i.fc, %i.fd
  br i1 %i.fe, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8grow_oneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fa)
          to label %bb.an unwind label %bb.aj

bb.am:                                            ; preds = %bb.ah, %bb.ai
  %.sink148 = phi ptr [ %i.ep, %bb.ai ], [ inttoptr (i64 4 to ptr), %bb.ah ] ; 8 uses
  %.sink = phi i64 [ %i.eq, %bb.ai ], [ 0, %bb.ah ] ; 8 uses
  store ptr %.sink148, ptr %i.u, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink, ptr %i.ff, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.val71121 = load i32, ptr %i.fg, align 8, !range !19, !noundef !16 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 524
  %.val72122 = load i32, ptr %i.fh, align 4, !noundef !16 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fj = invoke noundef i32 @_RNvMs2_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndex4load(ptr noundef nonnull align 4 %i.fi)
          to label %bb.ap unwind label %bb.aj     ; 2 uses

bb.an:                                            ; preds = %bb.ak, %bb.al
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fl = load ptr, ptr %i.fk, align 8, !alias.scope !10459, !nonnull !16, !noundef !16
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %i.fc ; 2 uses
  store i32 %3, ptr %i.fm, align 4, !noalias !10459
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  store i32 %4, ptr %i.fn, align 4, !noalias !10459
  %i.fo = add i64 %i.fc, 1
  store i64 %i.fo, ptr %i.fb, align 8, !alias.scope !10459
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ay, %bb.an
  %.val72125 = phi i32 [ %.val72122, %bb.ay ], [ %.val72, %bb.an ]
  %i.fp = phi ptr [ %.sink148, %bb.ay ], [ null, %bb.an ] ; 8 uses
  %i.fq = phi i64 [ %.sink, %bb.ay ], [ undef, %bb.an ] ; 7 uses
  %.sroa.12.0 = phi i64 [ %.sroa.329.0, %bb.ay ], [ undef, %bb.an ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %.sroa.028.0, %bb.ay ], [ undef, %bb.an ] ; 3 uses
  %.sroa.7.0 = phi i32 [ %.val71121, %bb.ay ], [ %4, %bb.an ]
  %.sroa.5109.0 = phi i32 [ %i.gf, %bb.ay ], [ %3, %bb.an ]
  %storemerge = phi i32 [ 1, %bb.ay ], [ 0, %bb.an ]
  %i.fr = load i64, ptr %i.an, align 8, !noundef !16
  %i.fs = icmp ugt i64 %i.fr, 3
  br i1 %i.fs, label %bb.ba, label %bb.bb

bb.ap:                                            ; preds = %bb.am
  %i.ft = invoke noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %.val71121, i32 noundef %.val72122, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val69)
          to label %bb.aq unwind label %bb.aj     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %.val77 = load i32, ptr %i.ft, align 4, !range !76, !noundef !16
  %i.fu = getelementptr i8, ptr %i.ft, i64 4
  %.val78 = load i32, ptr %i.fu, align 4
  %i.fv = invoke noundef i32 @_RNvXs0_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_9NodeIndexINtNtCs4NRVxsYgnAr_4core7convert4FrommE4from(i32 noundef 0)
          to label %bb.ar unwind label %bb.aj

bb.ar:                                            ; preds = %bb.aq
  %i.fw = icmp eq i32 %.val77, 0
  %spec.select.i = select i1 %i.fw, i32 0, i32 %.val78 ; 2 uses
  %.not56 = icmp eq i32 %spec.select.i, 0
  %. = select i1 %.not56, i32 %i.fv, i32 %spec.select.i ; 2 uses
  %i.fx = icmp eq i32 %., -2
  br i1 %i.fx, label %.invoke, label %bb.as, !prof !33

bb.as:                                            ; preds = %bb.ar
  %i.fy = icmp eq i32 %i.fj, -2
  br i1 %i.fy, label %.invoke, label %bb.at, !prof !33

.invoke:                                          ; preds = %bb.as, %bb.ar
  %i.fz = phi ptr [ @234, %bb.ar ], [ @236, %bb.as ]
  %i.ga = phi i64 [ 42, %bb.ar ], [ 39, %bb.as ]
  %i.gb = phi ptr [ @563, %bb.ar ], [ @564, %bb.as ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fz, i64 noundef %i.ga, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gb) #51
          to label %.cont unwind label %bb.aj

.cont:                                            ; preds = %.invoke
  unreachable

bb.at:                                            ; preds = %bb.as
  %.not57 = icmp eq ptr %.sink148, null
  br i1 %.not57, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.gc = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.u)
          to label %bb.az unwind label %bb.aj     ; 2 uses

bb.av:                                            ; preds = %bb.at
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !10460
  %i.gd = call noundef align 4 dereferenceable_or_null(16) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 4) #52, !noalias !10460 ; 4 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %bb.aw, label %bb.ax, !prof !24

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 16) #51
          to label %.noexc87 unwind label %bb.aj

.noexc87:                                         ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.av
  store i32 4, ptr %i.gd, align 4
  %.sroa.4.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  store i32 1, ptr %.sroa.4.0..sroa_idx3.i, align 4
  br label %bb.ay

bb.ay:                                            ; preds = %bb.az, %bb.ax
  %.sroa.329.0 = phi i64 [ %i.gh, %bb.az ], [ 1, %bb.ax ]
  %.sroa.028.0 = phi ptr [ %i.gg, %bb.az ], [ %i.gd, %bb.ax ]
  %i.gf = sub i32 %i.fj, %.
  br label %bb.ao

bb.az:                                            ; preds = %bb.au
  %i.gg = extractvalue { ptr, i64 } %i.gc, 0      ; 2 uses
  %i.gh = extractvalue { ptr, i64 } %i.gc, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gg) ]
  br label %bb.ay

bb.ba:                                            ; preds = %bb.ao
  %i.gi = load ptr, ptr %i.al, align 8, !nonnull !16, !noundef !16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 216
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls2_0EB1T_.exit

bb.bb:                                            ; preds = %bb.ao
  %i.gk = invoke noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am)
          to label %.noexc97 unwind label %bb.cc  ; 3 uses

.noexc97:                                         ; preds = %bb.bb
  %i.gl = load ptr, ptr %i.am, align 8, !alias.scope !10461, !nonnull !16, !noundef !16
  %i.gm = load i64, ptr %i.gl, align 8, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gk) ]
  %.idx.i.i90 = mul nuw nsw i64 %i.gm, 120
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.idx.i.i90
  %i.go = icmp eq i64 %i.gm, 0
  br i1 %i.go, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit, label %.lr.ph.i.i.i91

.lr.ph.i.i.i91:                                   ; preds = %.noexc97, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i
  %i.gp = phi ptr [ %i.gq, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i ], [ %i.gk, %.noexc97 ] ; 5 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 120 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 95
  %i.gs = load i8, ptr %i.gr, align 1, !range !49, !noalias !10462, !noundef !16 ; 4 uses
  %.not.i.i.i.i92 = icmp eq i8 %i.gs, -1
  br i1 %.not.i.i.i.i92, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i91
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 88
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !10463, !noalias !10462, !noundef !16
  %i.gv = and i64 %i.gu, 72057594037927935
  %i.gw = icmp ult i8 %i.gs, -48
  %i.gx = zext i8 %i.gs to i64
  %i.gy = add nsw i64 %i.gx, -192
  %spec.store.select.i.i.i.i.i93 = call i64 @llvm.umin.i64(i64 %i.gy, i64 16)
  %.sroa.0.0.i.i.i.i.i94 = select i1 %i.gw, i64 %spec.store.select.i.i.i.i.i93, i64 %i.gv
  %i.gz = icmp eq i64 %.sroa.0.0.i.i.i.i.i94, 9
  br i1 %i.gz, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.i.i.i, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i

_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.i.i.i: ; preds = %bb.bc
  %i.ha = icmp ugt i8 %i.gs, -49
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 80 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !alias.scope !10463, !noalias !10462
  %.sroa.01.0.i.i.i.i.i95 = select i1 %i.ha, ptr %i.hc, ptr %i.hb ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i.i.i95) ]
  %i.hd = load i64, ptr %.sroa.01.0.i.i.i.i.i95, align 1
  %i.he = xor i64 %i.hd, 7237111288036685925
  %i.hf = getelementptr i8, ptr %.sroa.01.0.i.i.i.i.i95, i64 8
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = zext i8 %i.hg to i64
  %i.hi = xor i64 %i.hh, 121
  %i.hj = or i64 %i.he, %i.hi
  %i.hk = icmp ne i64 %i.hj, 0
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls2_0EB1T_.exit, label %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i

_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i: ; preds = %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.i.i.i, %bb.bc, %.lr.ph.i.i.i91
  %i.hn = icmp eq ptr %i.gq, %i.gn
  br i1 %i.hn, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit, label %.lr.ph.i.i.i91

.thread133:                                       ; preds = %bb.bz, %bb.bg, %bb.bf, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread129

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls2_0EB1T_.exit: ; preds = %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.i.i.i, %bb.ba
  %.sroa.0.0.i89 = phi ptr [ %i.gj, %bb.ba ], [ %i.gp, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.i.i.i ]
  %.val80 = load i32, ptr %.sroa.0.0.i89, align 8, !range !45, !noundef !16
  %i.ho = icmp ne i32 %.val80, 23
  br label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit: ; preds = %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i, %.noexc97, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls2_0EB1T_.exit
  %.sroa.035.0 = phi i1 [ %i.ho, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE7or_elseNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB1N_20TypeInferenceBuilder20infer_new_class_calls2_0EB1T_.exit ], [ false, %.noexc97 ], [ false, %_RNCNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB8_20TypeInferenceBuilder20infer_new_class_calls2_00Be_.exit.thread.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 %storemerge, ptr %i.s, align 8
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %.sroa.5109.0, ptr %.sroa.5109.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %.val72125, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %.sroa.10.0, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.017.0) ]
  %i.hp = invoke { i32, i32 } @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral3newDNtNtBe_2db2DbEL_ReNtB8_18DynamicClassAnchorINtNtCscdodAO9FK5_5alloc5boxed3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtBc_4TypeEEbINtNtCs4NRVxsYgnAr_4core6option6OptionNtBc_15DataclassParamsEEBe_(ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.017.0, i64 noundef %.sroa.318.0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 inttoptr (i64 8 to ptr), i64 noundef 0, i1 noundef zeroext %.sroa.035.0, i32 noundef 0, i32 undef)
          to label %bb.bd unwind label %.thread133 ; 2 uses

bb.bd:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxATNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEj0_E3newB1s_.exit
  %i.hq = extractvalue { i32, i32 } %i.hp, 0      ; 7 uses
  %i.hr = extractvalue { i32, i32 } %i.hp, 1      ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %.not59 = icmp eq ptr %i.fp, null               ; 2 uses
  %.not60 = icmp eq ptr %i.cu, null
  %or.cond = or i1 %.not60, %.not59
  br i1 %or.cond, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.cb, %bb.bd
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %i.hs, align 4
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.hq, ptr %.sroa.439.0..sroa_idx, align 4
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.hr, ptr %.sroa.540.0..sroa_idx, align 4
  store i32 15, ptr %0, align 4
  %i.ht = icmp eq i64 %i.fq, 0
  %or.cond.i98 = select i1 %.not59, i1 true, i1 %i.ht
  br i1 %or.cond.i98, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit100, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i99

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i99: ; preds = %bb.be
  %i.hu = shl nuw nsw i64 %i.fq, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fp, i64 noundef %i.hu, i64 noundef 4) #52
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit100

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEEB1A_.exit100: ; preds = %bb.be, %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.f

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.hv = invoke noundef nonnull align 8 ptr @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral4nameDNtNtBe_2db2DbEL_EBe_(i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69)
          to label %bb.bg unwind label %.thread133

bb.bg:                                            ; preds = %bb.bf
  invoke fastcc void @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_classNtB6_20TypeInferenceBuilder27validate_dynamic_type_bases(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.r, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cu, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %i.fp, i64 noundef %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.hv, i1 noundef zeroext true)
          to label %bb.bh unwind label %.thread133

bb.bh:                                            ; preds = %bb.bg
  %i.hw = invoke noundef zeroext i1 @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_class25report_dynamic_mro_errors(ptr noundef nonnull align 8 %i.aj, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull align 8 %2, ptr noundef nonnull align 8 %i.cu)
          to label %bb.bj unwind label %bb.bi

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit: ; preds = %bb.ca, %bb.bw, %bb.bi
  %.pn62 = phi { ptr, i32 } [ %i.hx, %bb.bi ], [ %i.iw, %bb.bw ], [ %i.ix, %bb.ca ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic17IncompatibleBasesEBH_(ptr noalias noundef align 8 dereferenceable(56) %i.r) #54
          to label %.thread129 unwind label %bb.ag

bb.bi:                                            ; preds = %bb.bu, %bb.bt, %bb.br, %bb.bo, %bb.bm, %bb.bl, %bb.bk, %bb.bh
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit

bb.bj:                                            ; preds = %bb.bh
  br i1 %i.hw, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder13dynamic_class41report_inconsistent_dynamic_generic_bases(ptr noundef nonnull align 8 %i.aj, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull align 8 %i.cu)
          to label %bb.bm unwind label %bb.bi

bb.bl:                                            ; preds = %bb.br, %bb.bn, %bb.bj
  invoke void @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral13try_metaclass(ptr noalias noundef nonnull sret([56 x i8]) align 4 captures(none) dereferenceable(56) %i.o, i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69)
          to label %bb.bs unwind label %bb.bi

bb.bm:                                            ; preds = %bb.bk
  invoke void @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnosticNtB5_17IncompatibleBases24remove_redundant_entries(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69)
          to label %bb.bn unwind label %bb.bi

bb.bn:                                            ; preds = %bb.bm
  %i.hy = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.val79 = load i64, ptr %i.hy, align 8, !noundef !16
  %i.hz = icmp ugt i64 %.val79, 1
  br i1 %i.hz, label %bb.bo, label %bb.bl

bb.bo:                                            ; preds = %bb.bn
  %i.ia = invoke { i32, i32 } @_RNvMsg_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literalNtB5_19DynamicClassLiteral12header_range(i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69)
          to label %bb.bp unwind label %bb.bi     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ib = extractvalue { i32, i32 } %i.ia, 0
  %i.ic = extractvalue { i32, i32 } %i.ia, 1
  %i.id = load i32, ptr %i.cu, align 8, !range !45, !noundef !16
  %i.ie = icmp eq i32 %i.id, 30
  br i1 %i.ie, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.if = getelementptr i8, ptr %i.cu, i64 16
  %.val81 = load ptr, ptr %i.if, align 8, !nonnull !16, !noundef !16
  %i.ig = getelementptr i8, ptr %i.cu, i64 24
  %.val82 = load i64, ptr %i.ig, align 8, !noundef !16
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %bb.bq
  %.sroa.5.0 = phi i64 [ %.val82, %bb.bq ], [ undef, %bb.bp ]
  %.sroa.036.0 = phi ptr [ %.val81, %bb.bq ], [ null, %bb.bp ]
  invoke void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic31report_instance_layout_conflict(ptr noundef nonnull align 8 %i.aj, i32 noundef %i.ib, i32 noundef %i.ic, ptr noundef align 8 %.sroa.036.0, i64 %.sroa.5.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.r)
          to label %bb.bl unwind label %bb.bi

bb.bs:                                            ; preds = %bb.bl
  %i.ih = load i32, ptr %i.o, align 4, !range !66, !noundef !16
  %.not61 = icmp eq i32 %i.ih, -2
  br i1 %.not61, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ii = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.ii, i64 12, i1 false)
  %i.ij = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ik = invoke noundef nonnull align 8 ptr @_RINvMs9_NvNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5class15dynamic_literal1__NtB8_19DynamicClassLiteral4nameDNtNtBe_2db2DbEL_EBe_(i32 noundef %i.hq, i32 noundef %i.hr, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69)
          to label %bb.bu unwind label %bb.bi     ; 4 uses

bb.bu:                                            ; preds = %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 15
  %i.in = load i8, ptr %i.im, align 1, !range !53, !alias.scope !10464, !noundef !16 ; 3 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 8
  %i.ip = load i64, ptr %i.io, align 8, !alias.scope !10464, !noundef !16
  %i.iq = and i64 %i.ip, 72057594037927935
  %i.ir = icmp ult i8 %i.in, -48
  %i.is = zext i8 %i.in to i64
  %i.it = add nsw i64 %i.is, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.it, i64 16)
  %.sroa.0.0.i101 = select i1 %i.ir, i64 %spec.store.select.i, i64 %i.iq
  %i.iu = icmp ugt i8 %i.in, -49
  %i.iv = load ptr, ptr %i.ik, align 8, !alias.scope !10464
  %.sroa.01.0.i = select i1 %i.iu, ptr %i.iv, ptr %i.ik
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.il, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69, ptr noundef nonnull align 4 %.val70)
          to label %bb.bv unwind label %bb.bi

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtB2_9ClassBase7display(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.m, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.ij, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val69, ptr noundef nonnull align 4 %.val70)
          to label %bb.bx unwind label %bb.ca

bb.bw:                                            ; preds = %bb.bx
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit

bb.bx:                                            ; preds = %bb.bv
  invoke void @_RINvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic39report_conflicting_metaclass_from_basesNtNvMNtB4_10class_baseNtB1F_9ClassBase12display_with16ClassBaseDisplayB1A_EB6_(ptr noundef nonnull align 8 %i.aj, i64 noundef 43, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i, i64 noundef %.sroa.0.0.i101, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.n, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.m)
          to label %bb.by unwind label %bb.bw

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bs, %bb.by
end_hunk_1
begin_hunk_2_@_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB4_20TypeInferenceBuilder24infer_builtins_type_call:bb.a
bb.e:                                             ; preds = %.lr.ph216
  %i.ca = getelementptr inbounds nuw i8, ptr %i.cb, i64 120 ; 2 uses
  %.not3.not.not.i.not = icmp eq ptr %i.ca, %i.bz
  br i1 %.not3.not.not.i.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit, label %.lr.ph216

.lr.ph216:                                        ; preds = %bb.d, %bb.e
  %i.cb = phi ptr [ %i.ca, %bb.e ], [ %i.bw, %bb.d ] ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 95
  %.val.i = load i8, ptr %i.cc, align 1, !range !49, !noalias !11947, !noundef !16
  %.not.i = icmp eq i8 %.val.i, -1
  br i1 %.not.i, label %bb.e, label %bb.g

bb.f:                                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.di

bb.g:                                             ; preds = %.lr.ph216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ba, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20NO_MATCHING_OVERLOAD, ptr noundef nonnull align 8 %2)
  %i.cd = load i64, ptr %i.ba, align 8, !range !28, !noundef !16
  %.not104 = icmp eq i64 %i.cd, -2
  br i1 %.not104, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit.sink.split, label %bb.h

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit.sink.split: ; preds = %bb.g, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit: ; preds = %bb.e, %bb.d, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit.sink.split
  store i32 1, ptr %0, align 4, !alias.scope !11948
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i, align 4, !alias.scope !11948
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.az, ptr noundef nonnull align 8 dereferenceable(80) %i.ba, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ay, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @624, i64 noundef 45)
  %i.ce = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ay)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.h
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ay) #54
          to label %bb.n unwind label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.cg = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 0, ptr noundef nonnull @625, ptr noundef nonnull inttoptr (i64 93 to ptr))
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ce, ptr noalias noundef nonnull align 8 %i.cg)
          to label %bb.l unwind label %bb.i

bb.l:                                             ; preds = %bb.k
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_call0EB2A_.exit.sink.split

bb.m:                                             ; preds = %bb.dh, %bb.bq, %bb.bc, %.thread, %bb.dk, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types10class_baseNtBG_9ClassBase12display_with16ClassBaseDisplayEBK_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit134, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7display11DisplayTypeEBH_.exit, %bb.ad, %bb.u, %bb.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.n:                                             ; preds = %.thread, %bb.dk, %bb.ar, %bb.ad, %bb.u, %bb.i
  %.pn106 = phi { ptr, i32 } [ %i.jz, %bb.dk ], [ %i.cf, %bb.i ], [ %i.ct, %bb.u ], [ %.pn100161, %.thread ], [ %.pn98, %bb.ar ], [ %i.ei, %bb.ad ]
  resume { ptr, i32 } %.pn106

bb.o:                                             ; preds = %._crit_edge
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8, !range !45, !noundef !16
  %i.ck = icmp eq i32 %i.cj, 27
  br i1 %i.ck, label %bb.p, label %.lr.ph180.preheader

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store i32 -1, ptr %i.aw, align 4, !alias.scope !11949
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ax, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.aw), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  store i32 -1, ptr %i.au, align 4, !alias.scope !11950
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.av, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.ci, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.au), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.cl = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj)
  %i.cm = load ptr, ptr %i.bj, align 8, !nonnull !16, !noundef !16
  %i.cn = load i64, ptr %i.cm, align 8, !noundef !16
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 95
  %i.cq = load i8, ptr %i.cp, align 1, !range !49, !noundef !16
  %.not102 = icmp eq i8 %i.cq, -1
  br i1 %.not102, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.at, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20NO_MATCHING_OVERLOAD, ptr noundef nonnull align 8 %2)
  %i.cr = load i64, ptr %i.at, align 8, !range !28, !noundef !16
  %.not103 = icmp eq i64 %i.cr, -2
  br i1 %.not103, label %bb.y, label %bb.t

bb.s:                                             ; preds = %bb.q
  store i32 1, ptr %0, align 4, !alias.scope !11951
  %.sroa.42.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i123, align 4, !alias.scope !11951
  br label %bb.di

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %i.at, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ar, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.as, ptr noalias noundef nonnull readonly captures(address, read_provenance) @624, i64 noundef 45)
  %i.cs = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ar)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.v, %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ar) #54
          to label %bb.n unwind label %bb.m

bb.v:                                             ; preds = %bb.t
  %i.cu = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 0, ptr noundef nonnull @625, ptr noundef nonnull inttoptr (i64 93 to ptr))
          to label %bb.w unwind label %bb.u

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cs, ptr noalias noundef nonnull align 8 %i.cu)
          to label %bb.x unwind label %bb.u

bb.x:                                             ; preds = %bb.w
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  store i32 1, ptr %0, align 4, !alias.scope !11952
  %.sroa.42.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i124, align 4, !alias.scope !11952
  br label %bb.di

.lr.ph180.preheader:                              ; preds = %._crit_edge, %bb.o
  %.idx186203.pn = mul nuw nsw i64 %i.bs, 72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx186203.pn
  br label %.lr.ph180

bb.z:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bq, i64 72 ; 6 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bq, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store i32 -1, ptr %i.ai, align 4, !alias.scope !11953
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.aj, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.bq, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ai), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  store i32 -1, ptr %i.ah, align 4, !alias.scope !11954
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ac, ptr noalias noundef align 8 dereferenceable(608) %1, ptr noundef nonnull align 8 %i.cx, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ah), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.cy = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bj) ; 3 uses
  %i.cz = load ptr, ptr %i.bj, align 8, !nonnull !16, !noundef !16
  %i.da = load i64, ptr %i.cz, align 8, !noundef !16 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %.idx = mul nuw nsw i64 %i.da, 120
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.idx
  %.not.i126 = icmp eq i64 %i.da, 0
  br i1 %.not.i126, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %.backedge.i
  %i.dc = phi ptr [ %i.dd, %.backedge.i ], [ %i.cy, %bb.z ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 120 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 95
  %i.df = load i8, ptr %i.de, align 1, !range !49, !noalias !11955, !noundef !16 ; 4 uses
  %.not.i.i = icmp eq i8 %i.df, -1
  br i1 %.not.i.i, label %.backedge.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 88
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !11956, !noalias !11955, !noundef !16
  %i.di = and i64 %i.dh, 72057594037927935
  %i.dj = icmp ult i8 %i.df, -48
  %i.dk = zext i8 %i.df to i64
  %i.dl = add nsw i64 %i.dk, -192
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dl, i64 16)
  %.sroa.0.0.i.i.i = select i1 %i.dj, i64 %spec.store.select.i.i.i, i64 %i.di
  %i.dm = icmp eq i64 %.sroa.0.0.i.i.i, 9
  br i1 %i.dm, label %.split.i, label %.backedge.i

.split.i:                                         ; preds = %bb.aa
  %i.dn = icmp ugt i8 %i.df, -49
  %i.do = getelementptr inbounds nuw i8, ptr %i.dc, i64 80 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !11956, !noalias !11955
  %.sroa.01.0.i.i.i = select i1 %i.dn, ptr %i.dp, ptr %i.do ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i.i) ]
  %i.dq = load i64, ptr %.sroa.01.0.i.i.i, align 1
  %i.dr = xor i64 %i.dq, 8314045561195226477
  %i.ds = getelementptr i8, ptr %.sroa.01.0.i.i.i, i64 8
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = zext i8 %i.dt to i64
  %i.dv = xor i64 %i.du, 115
  %i.dw = or i64 %i.dr, %i.dv
  %i.dx = icmp ne i64 %i.dw, 0
  %i.dy = zext i1 %i.dx to i32
  %i.dz = icmp eq i32 %i.dy, 0
  br i1 %i.dz, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_calls_0EB2A_.exit, label %.backedge.i

.backedge.i:                                      ; preds = %.split.i, %bb.aa, %.lr.ph.i
  %.not6.i = icmp eq ptr %i.dd, %i.db
  br i1 %.not6.i, label %.loopexit, label %.lr.ph.i

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_calls_0EB2A_.exit: ; preds = %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ag, ptr noundef nonnull align 8 %i.bg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic20NO_MATCHING_OVERLOAD, ptr noundef nonnull align 8 %2)
  %i.ea = load i64, ptr %i.ag, align 8, !range !28, !noundef !16
  %.not = icmp eq i64 %i.ea, -2
  br i1 %.not, label %.loopexit.sink.split, label %bb.ac

.loopexit.sink.split:                             ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_calls_0EB2A_.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.i, %.loopexit.sink.split, %bb.z
  %i.eb = load ptr, ptr %i.bi, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ec = load i64, ptr %i.br, align 8, !noundef !16 ; 2 uses
  %.idx217 = mul nuw nsw i64 %i.ec, 72
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx217
  %.not.not.not.i.not205 = icmp eq i64 %i.ec, 0
  br i1 %.not.not.not.i.not205, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph206

bb.ab:                                            ; preds = %.lr.ph206
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ef, i64 72 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.ee, %i.ed
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsoTR8nlGN3X_18ty_python_semantic.exit, label %.lr.ph206

.lr.ph206:                                        ; preds = %.loopexit, %bb.ab
  %i.ef = phi ptr [ %i.ee, %bb.ab ], [ %i.eb, %.loopexit ] ; 2 uses
  %.val.i128 = load i32, ptr %i.ef, align 8, !range !45, !noalias !11957, !noundef !16
  %i.eg = icmp eq i32 %.val.i128, 27
  br i1 %i.eg, label %bb.ah, label %bb.ab

bb.ac:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2u_20TypeInferenceBuilder24infer_builtins_type_calls_0EB2A_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) @624, i64 noundef 45)
  %i.eh = invoke noundef nonnull align 8 ptr @_RNvXs3_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_19LintDiagnosticGuardNtNtNtCs4NRVxsYgnAr_4core3ops5deref8DerefMut9deref_mut(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ae)
          to label %bb.ae unwind label %bb.ad

bb.ad:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ae) #54
          to label %bb.n unwind label %bb.m

bb.ae:                                            ; preds = %bb.ac
  %i.ej = invoke noundef nonnull align 8 ptr @_RINvMs3_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB6_13SubDiagnostic3newReECsoTR8nlGN3X_18ty_python_semantic(i8 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) @626, i64 noundef 67)
          to label %bb.af unwind label %bb.ad

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic3sub(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.eh, ptr noalias noundef nonnull align 8 %i.ej)
          to label %bb.ag unwind label %bb.ad

bb.ag:                                            ; preds = %bb.af
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %.loopexit.sink.split

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsoTR8nlGN3X_18ty_python_semantic.exit: ; preds = %bb.ab, %.loopexit
  %i.ek = load i32, ptr %i.cx, align 8, !range !45, !noundef !16
  %i.el = icmp eq i32 %i.ek, 6
  br i1 %i.el, label %bb.ai, label %bb.ak

bb.ah:                                            ; preds = %.lr.ph206
  store i32 1, ptr %0, align 4, !alias.scope !11958
  %.sroa.42.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1, ptr %.sroa.42.0..sroa_idx.i129, align 4, !alias.scope !11958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.di

bb.ai:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.em = getelementptr inbounds nuw i8, ptr %i.bq, i64 160 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bq, i64 168 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !16 ; 2 uses
  %.idx218 = mul nuw nsw i64 %i.ep, 144
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 %.idx218
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.not182.not.not207.not = icmp eq i64 %i.ep, 0
  br i1 %.not182.not.not207.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit, label %.lr.ph210

bb.aj:                                            ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB6_20TypeInferenceBuilder24infer_builtins_type_calls0_0Bc_.exit.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.et, i64 144 ; 2 uses
  %.not182.not.not.not = icmp eq ptr %i.es, %i.eq
  br i1 %.not182.not.not.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit, label %.lr.ph210

.lr.ph210:                                        ; preds = %bb.ai, %bb.aj
  %i.et = phi ptr [ %i.es, %bb.aj ], [ %i.en, %bb.ai ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 72 ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 8, !range !80, !noalias !11959, !noundef !16
  %.not.i.i131 = icmp eq i32 %i.ev, -1
  br i1 %.not.i.i131, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit, label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB6_20TypeInferenceBuilder24infer_builtins_type_calls0_0Bc_.exit.i

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB6_20TypeInferenceBuilder24infer_builtins_type_calls0_0Bc_.exit.i: ; preds = %.lr.ph210
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11959
  call void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.a, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.eu), !noalias !11959
  %.val.i.i = load i32, ptr %i.a, align 4, !noalias !11959 ; 2 uses
  %.val2.i.i = load i8, ptr %i.er, align 4, !noalias !11959
  %i.ew = icmp ne i32 %.val.i.i, 17
  call void @llvm.assume(i1 %i.ew)
  %i.ex = icmp eq i32 %.val.i.i, 28
  %i.ey = icmp eq i8 %.val2.i.i, 2
  %.sroa.0.0.i.i.i132 = select i1 %i.ex, i1 %i.ey, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11959
  br i1 %.sroa.0.0.i.i.i132, label %bb.aj, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit: ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB6_20TypeInferenceBuilder24infer_builtins_type_calls0_0Bc_.exit.i, %.lr.ph210, %bb.aj, %bb.ai
  %.not182.not.not.lcssa = phi i1 [ false, %bb.ai ], [ true, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB6_20TypeInferenceBuilder24infer_builtins_type_calls0_0Bc_.exit.i ], [ true, %.lr.ph210 ], [ false, %bb.aj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ez = load ptr, ptr %i.em, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.fa = load i64, ptr %i.eo, align 8, !noundef !16
  %i.fb = getelementptr inbounds nuw [144 x i8], ptr %i.ez, i64 %i.fa
  store ptr %i.ez, ptr %i.ad, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.fb, ptr %i.fc, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %1, ptr %i.fd, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store ptr %.val, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store ptr %.val108, ptr %.sroa.5.0..sroa_idx, align 8
  %i.fe = call { ptr, i64 } @_RINvXsb_NtNtCscdodAO9FK5_5alloc5boxed4iterINtB8_3BoxSTNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBP_E9from_iterINtNtNtB2u_8adapters10filter_map9FilterMapINtNtNtB2w_5slice4iter4IterNtNtBU_5nodes8DictItemENCNvMNtNtNtB1B_5infer7builder9type_callNtB5c_20TypeInferenceBuilder24infer_builtins_type_calls1_0EEB1D_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %.pr.pre = load i32, ptr %i.ac, align 4
  br label %thread-pre-split

bb.ak:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNvMs14_BS_BQ_15is_starred_exprECsoTR8nlGN3X_18ty_python_semantic.exit
  %i.ff = load i32, ptr %i.ac, align 4, !range !38, !noundef !16 ; 3 uses
  %i.fg = icmp ne i32 %i.ff, 17
  call void @llvm.assume(i1 %i.fg)
  %i.fh = icmp eq i32 %i.ff, 34
  br i1 %i.fh, label %bb.am, label %bb.al

thread-pre-split:                                 ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit, %bb.ao
  %.pr = phi i32 [ 34, %bb.ao ], [ %.pr.pre, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit ]
  %.pn174 = phi { ptr, i64 } [ %i.fs, %bb.ao ], [ %i.fe, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit ] ; 2 uses
  %.sroa.010.0.ph = phi i1 [ true, %bb.ao ], [ %.not182.not.not.lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB2v_20TypeInferenceBuilder24infer_builtins_type_calls0_0EB2B_.exit ]
  %.sroa.011.0.ph = extractvalue { ptr, i64 } %.pn174, 0
  %.sroa.412.0.ph = extractvalue { ptr, i64 } %.pn174, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %thread-pre-split
  %i.fi = phi i32 [ %.pr, %thread-pre-split ], [ %i.ff, %bb.ak ] ; 2 uses
  %.sroa.412.0 = phi i64 [ %.sroa.412.0.ph, %thread-pre-split ], [ 0, %bb.ak ] ; 2 uses
  %.sroa.011.0 = phi ptr [ %.sroa.011.0.ph, %thread-pre-split ], [ inttoptr (i64 8 to ptr), %bb.ak ] ; 3 uses
  %.sroa.010.0 = phi i1 [ %.sroa.010.0.ph, %thread-pre-split ], [ true, %bb.ak ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.0) ]
  %i.fj = icmp ne i32 %i.fi, 17
  call void @llvm.assume(i1 %i.fj)
  %i.fk = icmp eq i32 %i.fi, 34
  br i1 %i.fk, label %bb.ap, label %bb.aq

bb.am:                                            ; preds = %bb.ak
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.fm = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCsoTR8nlGN3X_18ty_python_semantic5types10typed_dictNtB5_13TypedDictType5items(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.fl, ptr noundef nonnull %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val108) ; 2 uses
  %i.fn = load ptr, ptr %i.fm, align 8, !noundef !16 ; 3 uses
  %.not84 = icmp eq ptr %i.fn, null
  br i1 %.not84, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fp = load <2 x i64>, ptr %i.fo, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.sroa.013.sroa.6.0 = phi i64 [ 1, %bb.an ], [ 0, %bb.am ] ; 2 uses
  %i.fq = phi <2 x i64> [ %i.fp, %bb.an ], [ <i64 undef, i64 0>, %bb.am ] ; 2 uses
  store i64 %.sroa.013.sroa.6.0, ptr %i.ab, align 8
  %.sroa.013.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr null, ptr %.sroa.013.sroa.5.0..sroa_idx, align 8
  %.sroa.013.sroa.5.sroa.5.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.fn, ptr %.sroa.013.sroa.5.sroa.5.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.5.sroa.6.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.fr = extractelement <2 x i64> %i.fq, i64 0
  store i64 %i.fr, ptr %.sroa.013.sroa.5.sroa.6.0..sroa.013.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  store i64 %.sroa.013.sroa.6.0, ptr %.sroa.013.sroa.6.0..sroa_idx, align 8
  %.sroa.013.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store ptr null, ptr %.sroa.013.sroa.7.0..sroa_idx, align 8
  %.sroa.013.sroa.7.sroa.5.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store ptr %i.fn, ptr %.sroa.013.sroa.7.sroa.5.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.013.sroa.7.sroa.6.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store <2 x i64> %i.fq, ptr %.sroa.013.sroa.7.sroa.6.0..sroa.013.sroa.7.0..sroa_idx.sroa_idx, align 8
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder18infer_region_scope:bb.a
  %i.az = alloca [16 x i8], align 8               ; 5 uses
  %i.ba = alloca [80 x i8], align 8               ; 6 uses
  %i.bb = alloca [80 x i8], align 8               ; 5 uses
  %i.bc = alloca [48 x i8], align 8               ; 5 uses
  %i.bd = alloca [80 x i8], align 8               ; 6 uses
  %i.be = alloca [16 x i8], align 4               ; 4 uses
  %i.bf = alloca [16 x i8], align 4               ; 4 uses
  %i.bg = alloca [16 x i8], align 4               ; 4 uses
  %i.bh = alloca [16 x i8], align 4               ; 4 uses
  %i.bi = alloca [16 x i8], align 4               ; 4 uses
  %i.bj = alloca [16 x i8], align 4               ; 5 uses
  %i.bk = alloca [16 x i8], align 4               ; 5 uses
  %i.bl = alloca [16 x i8], align 4               ; 4 uses
  %i.bm = alloca [64 x i8], align 8               ; 12 uses
  %i.bn = alloca [12 x i8], align 4               ; 4 uses
  %i.bo = alloca [16 x i8], align 4               ; 4 uses
  %i.bp = alloca [48 x i8], align 8               ; 10 uses
  %i.bq = alloca [16 x i8], align 4               ; 7 uses
  %i.br = alloca [16 x i8], align 4               ; 5 uses
  %i.bs = alloca [16 x i8], align 4               ; 4 uses
  %i.bt = alloca [16 x i8], align 4               ; 5 uses
  %i.bu = alloca [32 x i8], align 4               ; 5 uses
  %i.bv = alloca [72 x i8], align 8               ; 8 uses
  %i.bw = alloca [16 x i8], align 4               ; 7 uses
  %i.bx = alloca [12 x i8], align 4               ; 4 uses
  %i.by = alloca [12 x i8], align 4               ; 7 uses
  %i.bz = alloca [12 x i8], align 4               ; 6 uses
  %i.ca = alloca [64 x i8], align 8               ; 11 uses
  %i.cb = alloca [16 x i8], align 4               ; 5 uses
  %i.cc = alloca [16 x i8], align 4               ; 8 uses
  %i.cd = alloca [16 x i8], align 4               ; 8 uses
  %i.ce = alloca [16 x i8], align 4               ; 6 uses
  %i.cf = alloca [32 x i8], align 4               ; 3 uses
  %i.cg = alloca [16 x i8], align 4               ; 4 uses
  %i.ch = alloca [16 x i8], align 4               ; 4 uses
  %i.ci = alloca [16 x i8], align 4               ; 6 uses
  %i.cj = alloca [16 x i8], align 4               ; 6 uses
  %i.ck = alloca [56 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [48 x i8], align 8            ; 5 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [12 x i8], align 4               ; 6 uses
  %.sroa.5 = alloca [12 x i8], align 4            ; 3 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [32 x i8], align 8               ; 7 uses
  %i.cp = alloca [32 x i8], align 8               ; 7 uses
  %i.cq = alloca [32 x i8], align 8               ; 7 uses
  %i.cr = alloca [24 x i8], align 8               ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 36 uses
  %.val37 = load ptr, ptr %i.cs, align 8, !nonnull !16, !noundef !16
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 16 uses
  %.val38 = load ptr, ptr %i.ct, align 8, !nonnull !16, !align !17, !noundef !16
  %i.cu = tail call noundef nonnull align 4 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId4node(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val38) ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !range !76, !noundef !16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4 ; 11 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val53 = load ptr, ptr %i.cx, align 8, !nonnull !16, !align !17, !noundef !16 ; 12 uses
  switch i32 %i.cv, label %default.unreachable230 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.z
    i32 4, label %bb.dv
    i32 5, label %bb.dw
    i32 6, label %bb.dy
    i32 7, label %bb.eh
    i32 8, label %bb.ei
    i32 9, label %bb.el
    i32 10, label %bb.eo
    i32 11, label %bb.eu
  ]

default.unreachable230:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %.val53, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !16, !noundef !16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88 ; 2 uses
  %i.db = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.da), !noalias !14525
  %i.dc = load ptr, ptr %i.da, align 8, !noalias !14525, !nonnull !16, !noundef !16
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !14525, !noundef !16
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder10infer_body(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.db, i64 noundef %i.dd)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder41infer_dict_comprehension_expression_scope.exit

bb.c:                                             ; preds = %bb.a
  %i.de = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @841)
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dg = tail call noundef ptr @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtE8data_rawCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.df), !noalias !14526
  %i.dh = load ptr, ptr %i.df, align 8, !noalias !14526, !nonnull !16, !noundef !16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !14526, !noundef !16
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder10infer_body(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.dg, i64 noundef %i.di)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder41infer_dict_comprehension_expression_scope.exit

bb.d:                                             ; preds = %bb.a
  %i.dj = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @842) ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cc)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !14527, !align !17, !noundef !16 ; 3 uses
  %.not.i = icmp eq ptr %i.dl, null
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !33

bb.e:                                             ; preds = %bb.d
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.dn = load ptr, ptr %i.dm, align 8, !alias.scope !14527, !nonnull !16, !align !17, !noundef !16
  %i.do = tail call { i32, i32 } @_RINvMs0_Cs2O29vuvTAEJ_14ty_python_coreNtB6_13SemanticIndex24expect_single_definitionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated12StmtClassDefECsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.dn, ptr noundef nonnull align 8 %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @437), !noalias !14527 ; 2 uses
  %i.dp = extractvalue { i32, i32 } %i.do, 0      ; 2 uses
  %i.dq = extractvalue { i32, i32 } %i.do, 1
  %i.dr = icmp ne i32 %i.dp, 0
  tail call void @llvm.assume(i1 %i.dr)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.du = load <2 x i32>, ptr %i.ds, align 8, !alias.scope !14527
  store i32 %i.dp, ptr %i.ds, align 8, !alias.scope !14527
  store i32 %i.dq, ptr %i.dt, align 4, !alias.scope !14527
  %i.dv = getelementptr i8, ptr %i.dl, i64 8
  %.val23.i = load ptr, ptr %i.dv, align 8, !noalias !14527, !nonnull !16, !noundef !16
  %i.dw = getelementptr i8, ptr %i.dl, i64 16
  %.val24.i = load i64, ptr %i.dw, align 8, !noalias !14527, !noundef !16
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_type_parameters(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr nonnull %.val23.i, i64 %.val24.i)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !noalias !14527, !align !17, !noundef !16
  %.not14.i = icmp eq ptr %i.dy, null
  br i1 %.not14.i, label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB4_20TypeInferenceBuilder23infer_class_type_params.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @435, i64 noundef 43, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @436) #51, !noalias !14527
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.dz = tail call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.cs)
  %..i.i = zext i1 %i.dz to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.eb = load <2 x i32>, ptr %i.ea, align 8, !alias.scope !14527
  store i32 %..i.i, ptr %i.ea, align 8, !alias.scope !14527
  %i.ec = load ptr, ptr %i.dx, align 8, !noalias !14527, !align !17, !noundef !16 ; 3 uses
  %.not15.i = icmp eq ptr %i.ec, null
  br i1 %.not15.i, label %._crit_edge.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ed = load ptr, ptr %i.ec, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !noundef !16 ; 2 uses
  %i.eg = mul nuw nsw i64 %i.ef, 72
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.eg
  %i.ei = icmp eq i64 %i.ef, 0
  br i1 %i.ei, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 4 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i, %.lr.ph.i
  %.sroa.01.035.i = phi i1 [ false, %.lr.ph.i ], [ %i.gv, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i ]
  %.sroa.03.034.i = phi ptr [ %i.ed, %.lr.ph.i ], [ %i.ek, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.03.034.i, i64 72 ; 2 uses
  %i.el = load i32, ptr %.sroa.03.034.i, align 8, !range !45, !noundef !16
  %i.em = icmp eq i32 %i.el, 27
  br i1 %i.em, label %bb.o, label %bb.q

._crit_edge.i:                                    ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i, %bb.h, %bb.g
  %.sroa.01.0.lcssa.i = phi i1 [ false, %bb.h ], [ false, %bb.g ], [ %i.gv, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i ]
  %i.en = tail call { ptr, i64 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5nodesNtNtB4_9generated12StmtClassDef8keywords(ptr noundef nonnull align 8 %i.dj) ; 2 uses
  %i.eo = extractvalue { ptr, i64 } %i.en, 0      ; 4 uses
  %i.ep = extractvalue { ptr, i64 } %i.en, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eo) ]
  %.idx.i = mul nuw nsw i64 %i.ep, 120
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %.idx.i ; 2 uses
  %i.er = icmp eq i64 %i.ep, 0
  br i1 %i.er, label %._crit_edge39.i, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %._crit_edge.i
  br i1 %.sroa.01.0.lcssa.i, label %.lr.ph38.split.us.i, label %.lr.ph38.split.i

.lr.ph38.split.us.i:                              ; preds = %.lr.ph38.i, %bb.n
  %.sroa.09.036.us.i = phi ptr [ %i.es, %bb.n ], [ %i.eo, %.lr.ph38.i ] ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.09.036.us.i, i64 120 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.09.036.us.i, i64 95
  %i.eu = load i8, ptr %i.et, align 1, !range !49, !noundef !16 ; 4 uses
  %.not17.us.i = icmp eq i8 %i.eu, -1
  br i1 %.not17.us.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph38.split.us.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.09.036.us.i, i64 88
  %i.ew = load i64, ptr %i.ev, align 8, !alias.scope !14528, !noundef !16
  %i.ex = and i64 %i.ew, 72057594037927935
  %i.ey = icmp ult i8 %i.eu, -48
  %i.ez = zext i8 %i.eu to i64
  %i.fa = add nsw i64 %i.ez, -192
  %spec.store.select.i.us.i = tail call i64 @llvm.umin.i64(i64 %i.fa, i64 16)
  %.sroa.0.0.i25.us.i = select i1 %i.ey, i64 %spec.store.select.i.us.i, i64 %i.ex
  %i.fb = icmp eq i64 %.sroa.0.0.i25.us.i, 11
  br i1 %i.fb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.fc = icmp ugt i8 %i.eu, -49
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.09.036.us.i, i64 80 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !14528
  %.sroa.01.0.i.us.i = select i1 %i.fc, ptr %i.fe, ptr %i.fd ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.us.i) ]
  %i.ff = load i64, ptr %.sroa.01.0.i.us.i, align 1
  %i.fg = xor i64 %i.ff, 8388340653090961509
  %i.fh = getelementptr i8, ptr %.sroa.01.0.i.us.i, i64 3
  %i.fi = load i64, ptr %i.fh, align 1
  %i.fj = xor i64 %i.fi, 8317415637481644402
  %i.fk = or i64 %i.fg, %i.fj
  %i.fl = icmp ne i64 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !14527
  call fastcc void @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder10typed_dictNtB6_20TypeInferenceBuilder23infer_extra_items_kwarg(ptr noalias noundef align 4 captures(address) dereferenceable(32) %i.cf, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.09.036.us.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf), !noalias !14527
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.j, %.lr.ph38.split.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !14527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !14527
  store i32 -1, ptr %i.cd, align 4, !alias.scope !14529, !noalias !14527
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.09.036.us.i, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.cd), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !14527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !14527
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.fo = icmp eq ptr %i.es, %i.eq
  br i1 %i.fo, label %._crit_edge39.i, label %.lr.ph38.split.us.i

bb.o:                                             ; preds = %bb.i
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.03.034.i, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !14527
  store i32 -1, ptr %i.ch, align 4, !alias.scope !14530, !noalias !14527
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.fq, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.ch), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !14527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cb), !noalias !14531
  %i.fr = tail call noundef i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %.sroa.03.034.i), !noalias !14532
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertB21_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.cb, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ej, i32 noundef %i.fr, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.cc)
  %i.fs = load i32, ptr %i.cb, align 4, !range !26, !noalias !14531, !noundef !16
  %.not.i.i = icmp eq i32 %i.fs, -1
  br i1 %.not.i.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21store_expression_type.exit.i, label %bb.p, !prof !34

bb.p:                                             ; preds = %bb.o
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBM_EB1c_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cb, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @880, ptr noundef null, ptr undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #51, !noalias !14533
  unreachable

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21store_expression_type.exit.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb), !noalias !14531
  br label %bb.r

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !14527
  store i32 -1, ptr %i.cg, align 4, !alias.scope !14534, !noalias !14527
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.cc, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.03.034.i, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.cg), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg), !noalias !14527
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21store_expression_type.exit.i
  %.sroa.0.0.copyload.i = load i32, ptr %i.cc, align 4, !noalias !14527 ; 3 uses
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !14527 ; 4 uses
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 4, !noalias !14527 ; 2 uses
  %i.ft = icmp ne i32 %.sroa.0.0.copyload.i, 17
  tail call void @llvm.assume(i1 %i.ft)
  %i.fu = add nsw i32 %.sroa.0.0.copyload.i, -4
  %i.fv = icmp samesign ugt i32 %.sroa.0.0.copyload.i, 3
  %narrow.i.i = select i1 %i.fv, i32 %i.fu, i32 13
  switch i32 %narrow.i.i, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i [
    i32 16, label %bb.s
    i32 19, label %bb.t
    i32 11, label %bb.x
    i32 12, label %bb.y
  ]

bb.s:                                             ; preds = %bb.r
  %i.fw = and i32 %.sroa.4.0.copyload.i, 255
  %i.fx = icmp eq i32 %i.fw, 32
  br i1 %i.fx, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.i, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

bb.t:                                             ; preds = %bb.r
  %.val22.i = load ptr, ptr %i.ct, align 8, !alias.scope !14527, !nonnull !16, !align !17, !noundef !16
  %.val21.i = load ptr, ptr %i.cs, align 8, !alias.scope !14527, !nonnull !16, !noundef !16
  %i.fy = tail call { ptr, i64 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types13set_theoretic1__NtB8_9UnionType8elementsDNtNtBc_2db2DbEL_EBc_(i32 noundef %.sroa.4.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i, ptr noundef nonnull %.val21.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val22.i), !noalias !14535 ; 2 uses
  %i.fz = extractvalue { ptr, i64 } %i.fy, 0      ; 6 uses
  %i.ga = extractvalue { ptr, i64 } %i.fy, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fz) ]
  %.idx.i.i = shl nuw nsw i64 %i.ga, 4
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 %.idx.i.i
  %i.gc = icmp eq i64 %i.ga, 0
  br i1 %i.gc, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gd = load i32, ptr %i.fz, align 4, !range !38, !noalias !14535, !noundef !16 ; 2 uses
  %i.ge = icmp ne i32 %i.gd, 17
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp eq i32 %i.gd, 20
  br i1 %i.gf, label %bb.v, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

bb.v:                                             ; preds = %bb.u
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fz, i64 4
  %i.gh = load i8, ptr %i.gg, align 4, !range !73, !noalias !14535, !noundef !16
  %i.gi = icmp eq i8 %i.gh, 32
  br i1 %i.gi, label %.preheader.preheader, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

.preheader.preheader:                             ; preds = %bb.v
  %i.gj = icmp eq i64 %i.ga, 1
  br i1 %i.gj, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader.preheader
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph252
  %i.gl = phi ptr [ %i.gk, %.lr.ph252 ], [ %i.gs, %bb.w ] ; 3 uses
  %.pn.i.i251 = phi ptr [ %i.fz, %.lr.ph252 ], [ %i.gl, %bb.w ]
  %i.gm = load i32, ptr %i.gl, align 4, !range !38, !alias.scope !14536, !noalias !14537, !noundef !16 ; 2 uses
  %i.gn = icmp ne i32 %i.gm, 17
  tail call void @llvm.assume(i1 %i.gn)
  %i.go = icmp eq i32 %i.gm, 20
  %i.gp = getelementptr inbounds nuw i8, ptr %.pn.i.i251, i64 20
  %i.gq = load i8, ptr %i.gp, align 4, !range !73, !alias.scope !14536, !noalias !14537
  %i.gr = icmp eq i8 %i.gq, 32
  %or.cond.i.not.i.i.i.not = select i1 %i.go, i1 %i.gr, i1 false ; 2 uses
  %or.cond.i.not.i.i.i.not.not = xor i1 %or.cond.i.not.i.i.i.not, true
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 16 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, %i.gb
  %or.cond = select i1 %or.cond.i.not.i.i.i.not.not, i1 true, i1 %i.gt
  br i1 %or.cond, label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i, label %bb.w

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.i: ; preds = %bb.s
  %i.gu = and i32 %.sroa.4.0.copyload.i, 65280
  %.not16.i = icmp ne i32 %i.gu, 512
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i: ; preds = %bb.w, %.preheader.preheader, %bb.y, %bb.x, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %.sroa.08.0.shrunk.i = phi i1 [ %i.gy, %bb.y ], [ false, %bb.r ], [ %i.gx, %bb.x ], [ false, %bb.t ], [ %.not16.i, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.i ], [ false, %bb.u ], [ false, %bb.v ], [ false, %bb.s ], [ true, %.preheader.preheader ], [ %or.cond.i.not.i.i.i.not, %bb.w ]
  %i.gv = or i1 %.sroa.01.035.i, %.sroa.08.0.shrunk.i ; 2 uses
  %i.gw = icmp eq ptr %i.ek, %i.eh
  br i1 %i.gw, label %._crit_edge.i, label %bb.i

bb.x:                                             ; preds = %bb.r
  %.val19.i = load ptr, ptr %i.cs, align 8, !alias.scope !14527, !nonnull !16, !noundef !16
  %.val20.i = load ptr, ptr %i.ct, align 8, !alias.scope !14527, !nonnull !16, !align !17, !noundef !16
  %i.gx = call noundef zeroext i1 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral13is_typed_dict(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull %.val19.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val20.i)
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

bb.y:                                             ; preds = %bb.r
  %.val.i = load ptr, ptr %i.cs, align 8, !alias.scope !14527, !nonnull !16, !noundef !16
  %.val18.i = load ptr, ptr %i.ct, align 8, !alias.scope !14527, !nonnull !16, !align !17, !noundef !16
  %i.gy = tail call noundef zeroext i1 @_RNvMs1_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB5_12GenericAlias13is_typed_dict(i32 noundef %.sroa.4.0.copyload.i, i32 noundef %.sroa.7.0.copyload.i, ptr noundef nonnull %.val.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val18.i)
  br label %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread29.i

.lr.ph38.split.i:                                 ; preds = %.lr.ph38.i, %.lr.ph38.split.i
  %.sroa.09.036.i = phi ptr [ %i.gz, %.lr.ph38.split.i ], [ %i.eo, %.lr.ph38.i ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.09.036.i, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !14527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !14527
  store i32 -1, ptr %i.cd, align 4, !alias.scope !14529, !noalias !14527
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ce, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.09.036.i, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.cd), !inline_history !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !14527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !14527
  %i.ha = icmp eq ptr %i.gz, %i.eq
  br i1 %i.ha, label %._crit_edge39.i, label %.lr.ph38.split.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.split.i, %bb.n, %._crit_edge.i
  store <2 x i32> %i.eb, ptr %i.ea, align 8, !alias.scope !14527
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB4_20TypeInferenceBuilder23infer_class_type_params.exit

_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB4_20TypeInferenceBuilder23infer_class_type_params.exit: ; preds = %bb.e, %._crit_edge39.i
  store <2 x i32> %i.du, ptr %i.ds, align 8, !alias.scope !14527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder41infer_dict_comprehension_expression_scope.exit

bb.z:                                             ; preds = %bb.a
  %i.hb = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core12ast_node_refINtB4_10AstNodeRefNtNtCskLngH8kgpZI_15ruff_python_ast9generated15StmtFunctionDefE4nodeCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @843) ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14538)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bz)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %.val51.i = load ptr, ptr %i.hc, align 8, !alias.scope !14538, !nonnull !16, !align !18, !noundef !16 ; 10 uses
  %.val.i59 = load ptr, ptr %i.cs, align 8, !alias.scope !14538, !nonnull !16, !noundef !16 ; 17 uses
  %.val50.i = load ptr, ptr %i.ct, align 8, !alias.scope !14538, !nonnull !16, !align !17, !noundef !16 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ca), !noalias !14538
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 40 ; 3 uses
  call void @_RNvXs1U_NtCskLngH8kgpZI_15ruff_python_ast5nodesRINtNtCscdodAO9FK5_5alloc5boxed3BoxNtB6_10ParametersENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.ca, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.hd), !noalias !14538
  %.sroa.0.0.copyload.i60 = load ptr, ptr %i.ca, align 8, !noalias !14538
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !14538, !nonnull !16, !noundef !16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !14538
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !14538 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !14538
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.sroa.11.0.copyload.i = load ptr, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !14538 ; 2 uses
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %.sroa.12.0.copyload.i = load ptr, ptr %.sroa.12.0..sroa_idx.i, align 8, !noalias !14538
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  %.sroa.14.0.copyload.i = load ptr, ptr %.sroa.14.0..sroa_idx.i, align 8, !noalias !14538
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_region_definition:bb.a

bb.pr:                                            ; preds = %.thread342.i, %bb.rw, %bb.rc, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit195.i, %bb.pq, %.thread346.i
  %i.bbz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #53
  unreachable

bb.ps:                                            ; preds = %bb.of
  %i.bca = extractvalue { i32, i32 } %i.baf, 0
  %i.bcb = extractvalue { i32, i32 } %i.baf, 1
  br label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitions8_0Bc_.exit.thread.i

bb.pt:                                            ; preds = %.outer._crit_edge.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hp), !noalias !16431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ho)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ho, ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !16431
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7291.i)
  %i.bcc = load ptr, ptr %i.axu, align 8, !noalias !16431, !nonnull !16, !noundef !16 ; 4 uses
  %i.bcd = load i64, ptr %i.ib, align 8, !range !44, !noalias !16431, !noundef !16
  %i.bce = icmp ult i64 %i.azg, 144115188075855872
  call void @llvm.assume(i1 %i.bce)
  %.idx686.i = shl nuw nsw i64 %i.azg, 6
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bcc, i64 %.idx686.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hn), !noalias !16431
  store ptr %i.bcc, ptr %i.hn, align 8, !noalias !16431
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 8 ; 3 uses
  store ptr %i.bcc, ptr %.sroa.460.0..sroa_idx.i, align 8, !noalias !16431
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store i64 %i.bcd, ptr %.sroa.561.0..sroa_idx.i, align 8, !noalias !16431
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hn, i64 24 ; 2 uses
  store ptr %i.bcf, ptr %.sroa.662.0..sroa_idx.i, align 8, !noalias !16431
  %i.bcg = icmp eq i64 %i.azg, 0
  br i1 %i.bcg, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.thread.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph.i: ; preds = %bb.pt
  %.sroa.7296.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 16 ; 2 uses
  %.sroa.9297.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %i.bch = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.bci = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %.sroa.4314.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.bck = getelementptr inbounds nuw i8, ptr %i.hl, i64 24 ; 2 uses
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit195.i: ; preds = %bb.rw, %bb.qu, %bb.pu
  %.pn115.i = phi { ptr, i32 } [ %i.bcl, %bb.pu ], [ %.pn.i89, %bb.qu ], [ %.pn.i89, %bb.rw ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtB2D_3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hn)
          to label %.thread346.i unwind label %bb.pr

bb.pu:                                            ; preds = %bb.rv
  %i.bcl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit195.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit193.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph.i
  %i.bcm = phi ptr [ %i.bcc, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph.i ], [ %i.bgp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit193.i ] ; 7 uses
  %.sroa.0288.0533.i = phi i32 [ -1, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.lr.ph.i ], [ %.sroa.0288.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit193.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16449)
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bcm, i64 64
  store ptr %i.bcn, ptr %.sroa.460.0..sroa_idx.i, align 8, !alias.scope !16449, !noalias !16450
  %.sroa.5294.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bcm, i64 16
  %.sroa.5294.0.copyload.i = load ptr, ptr %.sroa.5294.0..sroa_idx.i, align 8, !noalias !16449 ; 4 uses
  %.sroa.7296.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bcm, i64 40
  %.sroa.7296.0.copyload.i = load i32, ptr %.sroa.7296.0..sroa_idx.i, align 8, !noalias !16449 ; 5 uses
  %.not104.i = icmp eq i32 %.sroa.7296.0.copyload.i, -1
  br i1 %.not104.i, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.thread.i, label %bb.pv

bb.pv:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.i
  %.sroa.9297.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bcm, i64 44
  %.sroa.6295.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bcm, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hm), !noalias !16431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hm, ptr noundef nonnull align 8 dereferenceable(16) %i.bcm, i64 16, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5294.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hl), !noalias !16431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6295.0..sroa_idx.i, i64 16, i1 false)
  store i32 %.sroa.7296.0.copyload.i, ptr %.sroa.7296.24..sroa_idx.i, align 8, !noalias !16431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9297.24..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.9297.0..sroa_idx.i, i64 20, i1 false)
  %.not112.i = icmp eq i32 %.sroa.7296.0.copyload.i, 2
  br i1 %.not112.i, label %bb.qt, label %bb.qs

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.thread.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit193.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.i, %bb.pt
  %.sroa.0288.0.lcssa.i = phi i32 [ -1, %bb.pt ], [ %.sroa.0288.0533.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.i ], [ %.sroa.0288.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit193.i ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtB2D_3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.hn)
          to label %bb.pw unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.pw:                                            ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorINtNtCs4NRVxsYgnAr_4core6option6OptionTBW_INtNtB2D_6result6ResultBW_NtNtBY_4call9CallErrorEEEEENtNtNtNtB2D_4iter6traits8iterator8Iterator4nextB10_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hn), !noalias !16431
  %.sroa.4300.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 164
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.4300.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7291.i, i64 12, i1 false)
  %i.bco = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sroa.0288.0.lcssa.i, ptr %i.bco, align 8, !alias.scope !16431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hc), !noalias !16431
  %.sroa.0.sroa.5.0..sroa_idx.i.i91 = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.sroa.5.0..sroa_idx.i.i91, ptr noundef nonnull align 4 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !16431
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store i32 0, ptr %i.bcp, align 4, !alias.scope !16451, !noalias !16452
  %.sroa.5.0..sroa_idx.i.i92 = getelementptr inbounds nuw i8, ptr %i.hc, i64 32
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i92, align 4, !alias.scope !16451, !noalias !16452
  %.sroa.6.0..sroa_idx.i.i93 = getelementptr inbounds nuw i8, ptr %i.hc, i64 33
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i93, align 1, !alias.scope !16451, !noalias !16452
  store i32 -1, ptr %i.hc, align 4, !alias.scope !16451, !noalias !16452
  invoke fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder28add_declaration_with_binding(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, i64 noundef 3, ptr noundef nonnull align 8 %i.ava, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(48) %i.hc)
          to label %bb.px unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.px:                                            ; preds = %bb.pw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hc), !noalias !16431
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.ava, i64 8
  %i.bcr = load ptr, ptr %i.bcq, align 8, !noalias !16431, !align !17, !noundef !16
  %.not105.i = icmp eq ptr %i.bcr, null
  br i1 %.not105.i, label %bb.qd, label %bb.py

bb.py:                                            ; preds = %_RNvMsj_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderINtB5_6VecSetNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6insertBb_.exit.i98, %._crit_edge543.i, %bb.px
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7291.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ho)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hy), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hz), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ia), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ib), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ic), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.id), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ie), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.if), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ig), !noalias !16431
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeRNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9DecoratorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ii)
          to label %bb.qb unwind label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.bcs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i175.i = load i64, ptr %i.ii, align 8, !alias.scope !16453, !noalias !16431 ; 2 uses
  %i.bct = icmp eq i64 %.val2.i175.i, 0
  br i1 %i.bct, label %common.resume, label %bb.qa

bb.qa:                                            ; preds = %bb.pz
  %.val3.i.i94 = load ptr, ptr %i.avn, align 8, !alias.scope !16453, !noalias !16431, !nonnull !16, !noundef !16
  %i.bcu = mul nuw i64 %.val2.i175.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i94, i64 noundef %i.bcu, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %common.resume

bb.qb:                                            ; preds = %bb.py
  %.val.i176.i = load i64, ptr %i.ii, align 8, !alias.scope !16453, !noalias !16431 ; 2 uses
  %i.bcv = icmp eq i64 %.val.i176.i, 0
  br i1 %i.bcv, label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB4_20TypeInferenceBuilder22infer_class_definition.exit, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %.val1.i.i95 = load ptr, ptr %i.avn, align 8, !alias.scope !16453, !noalias !16431, !nonnull !16, !noundef !16
  %i.bcw = mul nuw i64 %.val.i176.i, 24
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i95, i64 noundef %i.bcw, i64 noundef range(i64 1, -9223372036854775807) 8) #52
  br label %_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB4_20TypeInferenceBuilder22infer_class_definition.exit

bb.qd:                                            ; preds = %bb.px
  %i.bcx = invoke noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.mb)
          to label %bb.qe unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.qe:                                            ; preds = %bb.qd
  %..i.i = zext i1 %i.bcx to i32
  %i.bcy = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bcz = load <2 x i32>, ptr %i.bcy, align 8, !alias.scope !16431
  store i32 %..i.i, ptr %i.bcy, align 8, !alias.scope !16431
  %i.bda = invoke { ptr, i64 } @_RNvMNtCskLngH8kgpZI_15ruff_python_ast5nodesNtNtB4_9generated12StmtClassDef8keywords(ptr noundef nonnull align 8 %i.ava)
          to label %bb.qf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ; 2 uses

bb.qf:                                            ; preds = %bb.qe
  %i.bdb = extractvalue { ptr, i64 } %i.bda, 0    ; 3 uses
  %i.bdc = extractvalue { ptr, i64 } %i.bda, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bdb) ]
  %.idx546.i = mul nuw nsw i64 %i.bdc, 120
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdb, i64 %.idx546.i
  %i.bde = icmp eq i64 %i.bdc, 0
  br i1 %i.bde, label %._crit_edge539.i, label %.lr.ph538.i

.lr.ph538.i:                                      ; preds = %bb.qf, %bb.qi
  %.sroa.064.0536.i = phi ptr [ %i.bdf, %bb.qi ], [ %i.bdb, %bb.qf ] ; 5 uses
  %i.bdf = getelementptr inbounds nuw i8, ptr %.sroa.064.0536.i, i64 120 ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %.sroa.064.0536.i, i64 95
  %i.bdh = load i8, ptr %i.bdg, align 1, !range !49, !noundef !16 ; 4 uses
  %.not106.i = icmp eq i8 %i.bdh, -1
  br i1 %.not106.i, label %bb.qj, label %bb.qg

._crit_edge539.i:                                 ; preds = %bb.qi, %bb.qf
  store <2 x i32> %i.bcz, ptr %i.bcy, align 8, !alias.scope !16431
  %i.bdi = invoke noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.mb)
          to label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder7in_stub.exit179.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.qg:                                            ; preds = %.lr.ph538.i
  %i.bdj = getelementptr inbounds nuw i8, ptr %.sroa.064.0536.i, i64 88
  %i.bdk = load i64, ptr %i.bdj, align 8, !alias.scope !16454, !noundef !16
  %i.bdl = and i64 %i.bdk, 72057594037927935
  %i.bdm = icmp ult i8 %i.bdh, -48
  %i.bdn = zext i8 %i.bdh to i64
  %i.bdo = add nsw i64 %i.bdn, -192
  %spec.store.select.i180.i = call i64 @llvm.umin.i64(i64 %i.bdo, i64 16)
  %.sroa.0.0.i181.i = select i1 %i.bdm, i64 %spec.store.select.i180.i, i64 %i.bdl
  %i.bdp = icmp eq i64 %.sroa.0.0.i181.i, 11
  br i1 %i.bdp, label %bb.qh, label %bb.qj

bb.qh:                                            ; preds = %bb.qg
  %i.bdq = icmp ugt i8 %i.bdh, -49
  %i.bdr = getelementptr inbounds nuw i8, ptr %.sroa.064.0536.i, i64 80 ; 2 uses
  %i.bds = load ptr, ptr %i.bdr, align 8, !alias.scope !16454
  %.sroa.01.0.i182.i = select i1 %i.bdq, ptr %i.bds, ptr %i.bdr ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i182.i) ]
  %i.bdt = load i64, ptr %.sroa.01.0.i182.i, align 1
  %i.bdu = xor i64 %i.bdt, 8388340653090961509
  %i.bdv = getelementptr i8, ptr %.sroa.01.0.i182.i, i64 3
  %i.bdw = load i64, ptr %i.bdv, align 1
  %i.bdx = xor i64 %i.bdw, 8317415637481644402
  %i.bdy = or i64 %i.bdu, %i.bdx
  %i.bdz = icmp ne i64 %i.bdy, 0
  %i.bea = zext i1 %i.bdz to i32
  %.not107.i = icmp eq i32 %i.bea, 0
  br i1 %.not107.i, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit.i, %bb.qh
  %i.beb = icmp eq ptr %i.bdf, %i.bdd
  br i1 %i.beb, label %._crit_edge539.i, label %.lr.ph538.i

bb.qj:                                            ; preds = %bb.qh, %bb.qg, %.lr.ph538.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.hb), !noalias !16431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ha), !noalias !16431
  store i32 -1, ptr %i.ha, align 4, !alias.scope !16455, !noalias !16431
  invoke fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.hb, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.064.0536.i, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.ha)
          to label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i96, !inline_history !67

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit.i: ; preds = %bb.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ha), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.hb), !noalias !16431
  br label %bb.qi

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder7in_stub.exit179.i: ; preds = %._crit_edge539.i
  br i1 %i.bdi, label %.loopexit377.i, label %bb.qk

bb.qk:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder7in_stub.exit179.i
  %i.bec = load ptr, ptr %i.axw, align 8, !noalias !16431, !align !17, !noundef !16 ; 3 uses
  %.not108.i = icmp eq ptr %i.bec, null
  br i1 %.not108.i, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.bed = load ptr, ptr %i.bec, align 8, !nonnull !16, !noundef !16
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bec, i64 8
  %i.bef = load i64, ptr %i.bee, align 8, !noundef !16
  %i.beg = mul nuw nsw i64 %i.bef, 72
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk
  %.sroa.471.0.i = phi i64 [ %i.beg, %bb.ql ], [ 0, %bb.qk ] ; 2 uses
  %.sroa.069.0.i = phi ptr [ %i.bed, %bb.ql ], [ inttoptr (i64 8 to ptr), %bb.qk ] ; 2 uses
  %i.beh = getelementptr inbounds nuw i8, ptr %.sroa.069.0.i, i64 %.sroa.471.0.i
  %.not.not.not.i.not.i1192 = icmp samesign eq i64 %.sroa.471.0.i, 0
  br i1 %.not.not.not.i.not.i1192, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB2v_20TypeInferenceBuilder22infer_class_definitionsa_0EB2B_.exit.i, label %.lr.ph1193

bb.qn:                                            ; preds = %.noexc184.i
  %i.bei = getelementptr inbounds nuw i8, ptr %i.bej, i64 72 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.bei, %i.beh
  br i1 %.not.not.not.i.not.i, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB2v_20TypeInferenceBuilder22infer_class_definitionsa_0EB2B_.exit.i, label %.lr.ph1193

.lr.ph1193:                                       ; preds = %bb.qm, %bb.qn
  %i.bej = phi ptr [ %i.bei, %bb.qn ], [ %.sroa.069.0.i, %bb.qm ] ; 2 uses
  %i.bek = invoke noundef zeroext i1 @_RINvNtCskLngH8kgpZI_15ruff_python_ast7helpers13any_over_exprRNvMs14_NtB4_9generatedNtB14_4Expr22is_string_literal_exprECsoTR8nlGN3X_18ty_python_semantic(ptr noundef nonnull align 8 %i.bej, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr))
          to label %.noexc184.i unwind label %.loopexit.split-lp.loopexit.i97

.noexc184.i:                                      ; preds = %.lr.ph1193
  br i1 %i.bek, label %.loopexit377.i, label %bb.qn

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB2v_20TypeInferenceBuilder22infer_class_definitionsa_0EB2B_.exit.i: ; preds = %bb.qn, %bb.qm
  %i.bel = load ptr, ptr %i.axw, align 8, !noalias !16431, !align !17, !noundef !16 ; 2 uses
  %.not109.i = icmp eq ptr %i.bel, null
  br i1 %.not109.i, label %.thread368.i, label %bb.qo

.thread368.i:                                     ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB2v_20TypeInferenceBuilder22infer_class_definitionsa_0EB2B_.exit.i
  %i.bem = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ben = load i32, ptr %i.bem, align 8, !alias.scope !16431, !noundef !16
  %i.beo = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 3 uses
  %i.bep = load i32, ptr %i.beo, align 4, !alias.scope !16431
  store i32 %1, ptr %i.bem, align 8, !alias.scope !16431
  store i32 %2, ptr %i.beo, align 4, !alias.scope !16431
  br label %._crit_edge543.i

bb.qo:                                            ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB2v_20TypeInferenceBuilder22infer_class_definitionsa_0EB2B_.exit.i
  %i.beq = invoke noundef align 8 ptr @_RNvMs23_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_9Arguments12find_keyword(ptr noundef nonnull align 8 %i.bel, ptr noalias noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 11)
          to label %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitionsb_0Bc_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.qp:                                            ; preds = %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitionsb_0Bc_.exit.i
  %.pr.i99 = load ptr, ptr %i.axw, align 8, !noalias !16431 ; 3 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 5 uses
  %i.bes = load i32, ptr %i.ber, align 8, !alias.scope !16431, !noundef !16 ; 3 uses
  %i.bet = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 5 uses
  %i.beu = load i32, ptr %i.bet, align 4, !alias.scope !16431 ; 3 uses
  store i32 %1, ptr %i.ber, align 8, !alias.scope !16431
  store i32 %2, ptr %i.bet, align 4, !alias.scope !16431
  %.not111.i = icmp eq ptr %.pr.i99, null
  br i1 %.not111.i, label %._crit_edge543.i, label %bb.qq

_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitionsb_0Bc_.exit.i: ; preds = %bb.qo
  %.not110.i = icmp eq ptr %i.beq, null
  br i1 %.not110.i, label %bb.qp, label %.loopexit377.i

bb.qq:                                            ; preds = %bb.qp
  %i.bev = load ptr, ptr %.pr.i99, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bew = getelementptr inbounds nuw i8, ptr %.pr.i99, i64 8
  %i.bex = load i64, ptr %i.bew, align 8, !noundef !16 ; 2 uses
  %i.bey = mul nuw nsw i64 %i.bex, 72
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bev, i64 %i.bey
  %i.bfa = icmp eq i64 %i.bex, 0
  br i1 %i.bfa, label %._crit_edge543.i, label %.lr.ph542.i

._crit_edge543.i:                                 ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i, %bb.qq, %bb.qp, %.thread368.i
  %i.bfb = phi ptr [ %i.ber, %bb.qp ], [ %i.ber, %bb.qq ], [ %i.bem, %.thread368.i ], [ %i.ber, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i ]
  %i.bfc = phi i32 [ %i.bes, %bb.qp ], [ %i.bes, %bb.qq ], [ %i.ben, %.thread368.i ], [ %i.bes, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i ]
  %i.bfd = phi ptr [ %i.bet, %bb.qp ], [ %i.bet, %bb.qq ], [ %i.beo, %.thread368.i ], [ %i.bet, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i ]
  %i.bfe = phi i32 [ %i.beu, %bb.qp ], [ %i.beu, %bb.qq ], [ %i.bep, %.thread368.i ], [ %i.beu, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i ]
  store i32 %i.bfc, ptr %i.bfb, align 8, !alias.scope !16431
  store i32 %i.bfe, ptr %i.bfd, align 4, !alias.scope !16431
  br label %bb.py

.lr.ph542.i:                                      ; preds = %bb.qq, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i
  %.sroa.074.0540.i = phi ptr [ %i.bff, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i ], [ %i.bev, %bb.qq ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gz), !noalias !16431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gy), !noalias !16431
  store i32 -1, ptr %i.gy, align 4, !alias.scope !16456, !noalias !16431
  invoke fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.gz, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.074.0540.i, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.gy)
          to label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i unwind label %.loopexit.i100, !inline_history !67

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit187.i: ; preds = %.lr.ph542.i
  %i.bff = getelementptr inbounds nuw i8, ptr %.sroa.074.0540.i, i64 72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gy), !noalias !16431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gz), !noalias !16431
  %i.bfg = icmp eq ptr %i.bff, %i.bez
  br i1 %i.bfg, label %._crit_edge543.i, label %.lr.ph542.i

.loopexit377.i:                                   ; preds = %.noexc184.i, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitionsb_0Bc_.exit.i, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder7in_stub.exit179.i
  %i.bfh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16457)
  call void @llvm.experimental.noalias.scope.decl(metadata !16458)
  %i.bfi = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bfj = load i64, ptr %i.bfi, align 8, !alias.scope !16459, !noundef !16 ; 3 uses
  %i.bfk = load i64, ptr %i.bfh, align 8, !range !44, !alias.scope !16459, !noundef !16
  %i.bfl = icmp eq i64 %i.bfj, %i.bfk
  br i1 %i.bfl, label %bb.qr, label %_RNvMsj_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderINtB5_6VecSetNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6insertBb_.exit.i98

bb.qr:                                            ; preds = %.loopexit377.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE8grow_oneCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bfh)
          to label %_RNvMsj_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderINtB5_6VecSetNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6insertBb_.exit.i98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

_RNvMsj_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderINtB5_6VecSetNtNtCs2O29vuvTAEJ_14ty_python_core10definition10DefinitionE6insertBb_.exit.i98: ; preds = %bb.qr, %.loopexit377.i
  %i.bfm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bfn = load ptr, ptr %i.bfm, align 8, !alias.scope !16459, !nonnull !16, !noundef !16
  %i.bfo = getelementptr inbounds nuw [8 x i8], ptr %i.bfn, i64 %i.bfj ; 2 uses
  store i32 %1, ptr %i.bfo, align 4, !noalias !16460
  %i.bfp = getelementptr inbounds nuw i8, ptr %i.bfo, i64 4
  store i32 %2, ptr %i.bfp, align 4, !noalias !16460
  %i.bfq = add i64 %i.bfj, 1
  store i64 %i.bfq, ptr %i.bfi, align 8, !alias.scope !16459
  br label %bb.py

bb.qs:                                            ; preds = %bb.pv
  %i.bfr = call fastcc noundef zeroext i1 @_RNvXs2Q_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4TypeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.hl, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.gx)
  br i1 %i.bfr, label %bb.qw, label %bb.qt

bb.qt:                                            ; preds = %bb.qs, %bb.pv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gr), !noalias !16431
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gr, ptr noundef nonnull align 8 dereferenceable(16) %i.bcm, i64 16, i1 false)
  invoke void @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5class21apply_class_decorator(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.hk, ptr noundef nonnull %.val.i63, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val120.i, ptr noundef nonnull align 4 %.val121.i, ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gr, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.gx)
          to label %bb.qy unwind label %bb.qv

bb.qu:                                            ; preds = %bb.rc, %bb.qv
  %.sroa.081.0.i = phi i8 [ %.sroa.081.1.i, %bb.qv ], [ %.sroa.081.2.i, %bb.rc ]
  %.pn.i89 = phi { ptr, i32 } [ %i.bfv, %bb.qv ], [ %i.bgc, %bb.rc ] ; 2 uses
  %i.bfs = trunc nuw i8 %.sroa.081.0.i to i1
  %i.bft = and i32 %.sroa.7296.0.copyload.i, -3
  %i.bfu = icmp ne i32 %i.bft, 0
  %or.cond373.not.i = select i1 %i.bfu, i1 %i.bfs, i1 false
  br i1 %or.cond373.not.i, label %bb.rw, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtNtBZ_4call9CallErrorEEB11_.exit195.i

bb.qv:                                            ; preds = %bb.rs, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitions3_0Bc_.exit190.i, %bb.rm, %bb.rk, %bb.rg, %bb.re, %bb.qt
  %.sroa.081.1.i = phi i8 [ %.sroa.081.2.i, %bb.rs ], [ 1, %bb.qt ], [ %.sroa.081.2.i, %bb.rm ], [ %.sroa.081.2.i, %_RNCNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder5classNtB6_20TypeInferenceBuilder22infer_class_definitions3_0Bc_.exit190.i ], [ %.sroa.081.2.i, %bb.rk ], [ %.sroa.081.2.i, %bb.rg ], [ %.sroa.081.2.i, %bb.re ]
  %i.bfv = landingpad { ptr, i32 }
          cleanup
  br label %bb.qu

bb.qw:                                            ; preds = %bb.qs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hk, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7296.24..sroa_idx.i, i64 24, i1 false), !noalias !16431
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qy, %bb.qw
  %.sroa.081.2.i = phi i8 [ 0, %bb.qw ], [ 1, %bb.qy ] ; 8 uses
  %i.bfw = load i32, ptr %i.hk, align 8, !range !20, !noalias !16431, !noundef !16
  %i.bfx = trunc nuw i32 %i.bfw to i1
  br i1 %i.bfx, label %bb.qz, label %bb.ra

bb.qy:                                            ; preds = %bb.qt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gr), !noalias !16431
  br label %bb.qx

bb.qz:                                            ; preds = %bb.qx
  %i.bfy = load ptr, ptr %i.bci, align 8, !noalias !16431, !nonnull !16, !align !17, !noundef !16 ; 4 uses
  invoke void @_RNvMs3_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bindNtB5_8Bindings18report_diagnostics(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(432) %i.bfy, ptr noundef nonnull align 8 %i.mb, i64 noundef 86, ptr noundef nonnull %.sroa.5294.0.copyload.i)
          to label %bb.rd unwind label %bb.rc

bb.ra:                                            ; preds = %bb.qx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hj, ptr noundef nonnull align 4 dereferenceable(16) %i.bch, i64 16, i1 false), !noalias !16431
  br label %bb.rb
end_hunk_4
begin_hunk_5_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder23infer_region_definition:bb.a
_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread.i.i: ; preds = %bb.sx, %bb.su, %bb.st, %bb.ss, %.thread102.i.i, %bb.sp, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder33infer_maybe_standalone_expression.exit.i.i
  %i.bkw = icmp ne i32 %.sroa.078.0.copyload.i.i, 7
  %.not36121.i.i = icmp eq i32 %.sroa.479.0.copyload.i.i, 0
  %.not36.i.i = select i1 %i.bkw, i1 true, i1 %.not36121.i.i
  br i1 %.not36.i.i, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread.i.i
  %.val47.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !noundef !16
  %.val48.i.i = load ptr, ptr %i.mc, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16
  %i.bkx = call noundef zeroext i1 @_RNvMs1m_NtNtCsoTR8nlGN3X_18ty_python_semantic5types8functionNtB6_12FunctionType8is_known(i32 noundef %.sroa.479.0.copyload.i.i, i32 noundef %.sroa.681.0.copyload.i.i, ptr noundef nonnull %.val47.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val48.i.i, i8 noundef 46), !noalias !16488
  br i1 %i.bkx, label %bb.tb, label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %_RNvMNtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB2_15TypedDictModule9from_type.exit.thread.i.i
  %.val45.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !noundef !16
  %.val46.i.i = load ptr, ptr %i.mc, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16
  %i.bky = call noundef i8 @_RNvNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9enum_call25enum_functional_call_base(ptr noundef nonnull %.val45.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val46.i.i, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.fy), !noalias !16488 ; 2 uses
  %.not37.i.i = icmp eq i8 %i.bky, -1
  br i1 %.not37.i.i, label %bb.td, label %bb.tc

bb.tb:                                            ; preds = %bb.sz
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9new_classNtB4_20TypeInferenceBuilder20infer_new_class_call(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 %2)
  br label %bb.sy

bb.tc:                                            ; preds = %bb.ta
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gd), !noalias !16489
  call fastcc void @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9enum_callNtB6_20TypeInferenceBuilder26infer_enum_call_expression(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.gd, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 %2, i8 noundef %i.bky), !noalias !16488
  %i.bkz = load i32, ptr %i.gd, align 4, !range !26, !noalias !16489, !noundef !16
  %.not38.i.i = icmp eq i32 %i.bkz, -1
  br i1 %.not38.i.i, label %bb.tf, label %bb.te

bb.td:                                            ; preds = %bb.tf, %bb.ta
  %i.bla = icmp ne i32 %.sroa.078.0.copyload.i.i, 15
  %.not39.i.i = icmp eq i32 %.sroa.479.0.copyload.i.i, -1
  %or.cond120.i.i = select i1 %i.bla, i1 true, i1 %.not39.i.i
  br i1 %or.cond120.i.i, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type16as_class_literal.exit.thread.i.i, label %bb.tg

bb.te:                                            ; preds = %bb.tc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gg, ptr noundef nonnull align 4 dereferenceable(16) %i.gd, i64 16, i1 false), !noalias !16482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !16489
  br label %bb.sy

bb.tf:                                            ; preds = %bb.tc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd), !noalias !16489
  br label %bb.td

bb.tg:                                            ; preds = %bb.td
  %.sroa.593.0.copyload.i.i = load i64, ptr %.sroa.681.0..sroa_idx.i.i, align 4, !noalias !16489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ga), !noalias !16489
  store i32 %.sroa.479.0.copyload.i.i, ptr %i.ga, align 4, !noalias !16489
  %.sroa.477.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i64 %.sroa.593.0.copyload.i.i, ptr %.sroa.477.0..sroa_idx.i.i, align 4, !noalias !16489
  %.val59.i.i = load ptr, ptr %i.mb, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !noundef !16
  %.val60.i.i = load ptr, ptr %i.mc, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16
  %i.blb = call noundef range(i8 -1, 108) i8 @_RNvMs15_NtNtCsoTR8nlGN3X_18ty_python_semantic5types5classNtB6_12ClassLiteral5known(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.ga, ptr noundef nonnull %.val59.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val60.i.i), !noalias !16488 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga), !noalias !16489
  switch i8 %i.blb, label %_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type16as_class_literal.exit.thread.i.i [
    i8 80, label %bb.tn
    i8 5, label %bb.th
    i8 59, label %bb.ti
    i8 60, label %bb.tj
    i8 61, label %bb.tj
    i8 65, label %bb.tk
    i8 66, label %bb.tk
    i8 67, label %bb.tl
    i8 69, label %bb.tm
    i8 78, label %bb.ti
  ]

_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type16as_class_literal.exit.thread.i.i: ; preds = %bb.tg, %bb.td
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fx), !noalias !16489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fx, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !noalias !16489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fw), !noalias !16489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fw, ptr noundef nonnull align 8 dereferenceable(16) %i.bik, i64 16, i1 false), !noalias !16482
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder26infer_call_expression_impl(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bjf, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.fx, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.fw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fx), !noalias !16489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fw), !noalias !16489
  br label %bb.sy

bb.th:                                            ; preds = %bb.tg
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder9type_callNtB4_20TypeInferenceBuilder24infer_builtins_type_call(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 %2)
  br label %bb.sy

bb.ti:                                            ; preds = %bb.tg, %bb.tg
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder7typevarNtB4_20TypeInferenceBuilder20infer_legacy_typevar(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i8 noundef %i.blb)
  br label %bb.sy

bb.tj:                                            ; preds = %bb.tg, %bb.tg
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder7typevarNtB4_20TypeInferenceBuilder22infer_legacy_paramspec(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i8 noundef %i.blb)
  br label %bb.sy

bb.tk:                                            ; preds = %bb.tg, %bb.tg
  call fastcc void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder7typevarNtB4_20TypeInferenceBuilder25infer_legacy_typevartuple(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2, i8 noundef %i.blb)
  br label %bb.sy

bb.tl:                                            ; preds = %bb.tg
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder24infer_typealiastype_call(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2)
  br label %bb.sy

bb.tm:                                            ; preds = %bb.tg
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder24infer_newtype_expression(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2)
  br label %bb.sy

bb.tn:                                            ; preds = %bb.tg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gc), !noalias !16489
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder25infer_sentinel_expression(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.gc, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bim, ptr noundef nonnull align 8 %i.bjf, i32 noundef range(i32 1, 0) %1, i32 noundef %2), !noalias !16488
  %i.blc = load i32, ptr %i.gc, align 4, !range !26, !noalias !16489, !noundef !16
  %.not41.i.i = icmp eq i32 %i.blc, -1
  br i1 %.not41.i.i, label %bb.tp, label %bb.to

bb.to:                                            ; preds = %bb.tn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gg, ptr noundef nonnull align 4 dereferenceable(16) %i.gc, i64 16, i1 false), !noalias !16482
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fu), !noalias !16509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fu, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !noalias !16489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ft), !noalias !16509
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ft, ptr noundef nonnull align 8 dereferenceable(16) %i.bik, i64 16, i1 false), !noalias !16482
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder26infer_call_expression_impl(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bjf, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.fu, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.ft)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ft), !noalias !16509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fu), !noalias !16509
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc), !noalias !16489
  br label %bb.sy

bb.tr:                                            ; preds = %bb.sy
  %i.bld = load ptr, ptr %i.biv, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %i.ble = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.val55.i.i = load i32, ptr %i.ble, align 8, !range !19, !alias.scope !16483, !noalias !16484, !noundef !16
  %i.blf = getelementptr inbounds nuw i8, ptr %0, i64 524
  %.val56.i.i = load i32, ptr %i.blf, align 4, !alias.scope !16483, !noalias !16484, !noundef !16
  %.val.i.i124 = load ptr, ptr %i.mb, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !noundef !16
  %.val44.i.i = load ptr, ptr %i.mc, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16
  %i.blg = call noundef i32 @_RINvMs8_NvNtCs2O29vuvTAEJ_14ty_python_core5scope1__NtB8_7ScopeId13file_scope_idDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1k_(i32 noundef %.val55.i.i, i32 noundef %.val56.i.i, ptr noundef nonnull %.val.i.i124, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val44.i.i), !noalias !16488
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bld, i64 48
  %i.bli = load i64, ptr %i.blh, align 8, !noalias !16488, !noundef !16 ; 2 uses
  %i.blj = add i32 %i.blg, -1
  %i.blk = zext i32 %i.blj to i64                 ; 3 uses
  %i.bll = icmp ugt i64 %i.bli, %i.blk
  br i1 %i.bll, label %bb.ts, label %bb.tt

bb.ts:                                            ; preds = %bb.tr
  %i.blm = getelementptr inbounds nuw i8, ptr %i.bld, i64 40
  %i.bln = load ptr, ptr %i.blm, align 8, !noalias !16488, !nonnull !16, !noundef !16
  %i.blo = getelementptr inbounds nuw [20 x i8], ptr %i.bln, i64 %i.blk
  %i.blp = load i32, ptr %i.blo, align 4, !range !76, !noalias !16488, !noundef !16
  %i.blq = icmp eq i32 %i.blp, 1
  br i1 %i.blq, label %bb.tu, label %bb.tv

bb.tt:                                            ; preds = %bb.tr
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.blk, i64 noundef %i.bli, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1011) #51, !noalias !16488
  unreachable

bb.tu:                                            ; preds = %bb.ts
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gb), !noalias !16489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gb, ptr noundef nonnull align 4 dereferenceable(16) %i.gg, i64 16, i1 false), !noalias !16482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fv), !noalias !16489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.fv, ptr noundef nonnull align 4 dereferenceable(16) %i.fy, i64 16, i1 false), !noalias !16489
  call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder25apply_desugared_decorator(ptr noalias noundef nonnull align 4 captures(none) dereferenceable(16) %i.gg, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.fv, ptr noundef nonnull align 8 %i.bjf, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.gb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fv), !noalias !16489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb), !noalias !16489
  br label %bb.tv

bb.tv:                                            ; preds = %bb.tu, %bb.ts, %bb.sy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fs), !noalias !16510
  %i.blr = call noundef i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.bil), !noalias !16511
  %i.bls = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertB21_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.fs, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bls, i32 noundef %i.blr, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.gg)
  %i.blt = load i32, ptr %i.fs, align 4, !range !26, !noalias !16510, !noundef !16
  %.not.i64.i.i = icmp eq i32 %i.blt, -1
  br i1 %.not.i64.i.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21store_expression_type.exit.i.i, label %bb.tw, !prof !34

bb.tw:                                            ; preds = %bb.tv
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBM_EB1c_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.fs, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @880, ptr noundef null, ptr undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1012) #51, !noalias !16512
  unreachable

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21store_expression_type.exit.i.i: ; preds = %bb.tv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fs), !noalias !16510
  br label %bb.sl

bb.tx:                                            ; preds = %bb.sl
  %i.blu = getelementptr inbounds nuw i8, ptr %i.bim, i64 23
  %i.blv = load i8, ptr %i.blu, align 1, !range !53, !alias.scope !16513, !noalias !16488, !noundef !16 ; 3 uses
  %i.blw = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.blx = load i64, ptr %i.blw, align 8, !alias.scope !16513, !noalias !16488, !noundef !16
  %i.bly = and i64 %i.blx, 72057594037927935
  %i.blz = icmp ult i8 %i.blv, -48
  %i.bma = zext i8 %i.blv to i64
  %i.bmb = add nsw i64 %i.bma, -192
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bmb, i64 16)
  %.sroa.0.0.i.i.i.i120 = select i1 %i.blz, i64 %spec.store.select.i.i.i.i, i64 %i.bly
  %i.bmc = icmp eq i64 %.sroa.0.0.i.i.i.i120, 13
  br i1 %i.bmc, label %bb.ty, label %bb.tz

bb.ty:                                            ; preds = %bb.tx
  %i.bmd = icmp ugt i8 %i.blv, -49
  %i.bme = getelementptr inbounds nuw i8, ptr %i.bim, i64 8 ; 2 uses
  %i.bmf = load ptr, ptr %i.bme, align 8, !alias.scope !16513, !noalias !16488
  %.sroa.01.0.i.i65.i.i = select i1 %i.bmd, ptr %i.bmf, ptr %i.bme ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i.i65.i.i) ]
  %i.bmg = load i64, ptr %.sroa.01.0.i.i65.i.i, align 1
  %i.bmh = xor i64 %i.bmg, 4992314263404042580
  %i.bmi = getelementptr i8, ptr %.sroa.01.0.i.i65.i.i, i64 5
  %i.bmj = load i64, ptr %i.bmi, align 1
  %i.bmk = xor i64 %i.bmj, 5138124812476303427
  %i.bml = or i64 %i.bmh, %i.bmk
  %i.bmm = icmp ne i64 %i.bml, 0
  %i.bmn = zext i1 %i.bmm to i32
  %i.bmo = icmp eq i32 %i.bmn, 0
  br i1 %i.bmo, label %bb.ub, label %bb.tz

bb.tz:                                            ; preds = %bb.ty, %bb.tx, %bb.sl
  %i.bmp = call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.mb), !noalias !16514
  br i1 %i.bmp, label %bb.ua, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i

bb.ua:                                            ; preds = %bb.tz
  %i.bmq = load i32, ptr %i.bil, align 8, !range !45, !noalias !16514, !noundef !16
  %i.bmr = icmp eq i32 %i.bmq, 24
  br i1 %i.bmr, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.i.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i

bb.ub:                                            ; preds = %bb.ty
  %i.bms = load i32, ptr %i.bil, align 8, !range !45, !noalias !16488, !noundef !16
  %i.bmt = icmp eq i32 %i.bms, 22
  br i1 %i.bmt, label %bb.uc, label %bb.ud

bb.uc:                                            ; preds = %bb.ub
  %i.bmu = getelementptr inbounds nuw i8, ptr %i.bil, i64 16
  %i.bmv = load i8, ptr %i.bmu, align 8, !range !30, !noalias !16488, !noundef !16
  %i.bmw = trunc nuw i8 %i.bmv to i1
  br i1 %i.bmw, label %bb.ud, label %bb.ue

bb.ud:                                            ; preds = %bb.uc, %bb.ub
  %i.bmx = call { i64, ptr } @_RNvXs6h_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_10AnyNodeRefINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB6_4ExprE4from(ptr noundef nonnull align 8 %i.bim), !noalias !16488 ; 2 uses
  %i.bmy = extractvalue { i64, ptr } %i.bmx, 0
  %i.bmz = extractvalue { i64, ptr } %i.bmx, 1
  call void @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic37report_invalid_type_checking_constant(ptr noundef nonnull align 8 %i.mb, i64 noundef %i.bmy, ptr noundef %i.bmz), !noalias !16488
  br label %bb.ue

bb.ue:                                            ; preds = %bb.ud, %bb.uc
  call void @_RNvMs39_NtCsoTR8nlGN3X_18ty_python_semantic5typesNtB6_4Type12bool_literal(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.gg, i1 noundef zeroext true)
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.i.i: ; preds = %bb.ua
  store i32 4, ptr %i.gg, align 4, !noalias !16482
  %.sroa.674.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i32 1, ptr %.sroa.674.0..sroa_idx.i.i, align 4, !noalias !16482
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i: ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.i.i, %bb.ue, %bb.ua, %bb.tz, %bb.sh
  %i.bna = load i32, ptr %i.bim, align 8, !range !45, !noalias !16488, !noundef !16
  %i.bnb = icmp eq i32 %i.bna, 28
  br i1 %i.bnb, label %bb.uf, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i

bb.uf:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bim, i64 8 ; 2 uses
  %i.bnd = load ptr, ptr %i.mb, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !noundef !16 ; 5 uses
  %i.bne = load ptr, ptr %i.mc, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !17, !noundef !16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fr), !noalias !16489
  %i.bnf = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bng = load <2 x i32>, ptr %i.bnf, align 8, !alias.scope !16483, !noalias !16484
  %i.bnh = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bni = load ptr, ptr %i.bnh, align 8, !alias.scope !16483, !noalias !16484, !nonnull !16, !align !18, !noundef !16 ; 4 uses
  %.sroa.03.0.copyload.i.i.i.i = load i32, ptr %i.bni, align 4, !noalias !16515
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bni, i64 4 ; 2 uses
  %.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !16515 ; 4 uses
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bni, i64 8 ; 2 uses
  %.sroa.9.0.copyload.i.i.i.i = load i32, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !noalias !16515 ; 4 uses
  switch i32 %.sroa.03.0.copyload.i.i.i.i, label %bb.ug [
    i32 0, label %_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder32infer_assignment_definition_impls1_0Bc_.exit.i.i
    i32 1, label %bb.uh
    i32 2, label %bb.ui
    i32 3, label %bb.uj
  ], !prof !74

bb.ug:                                            ; preds = %bb.uf
  unreachable

bb.uh:                                            ; preds = %bb.uf
  %i.bnj = call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core12program_file1__NtB8_11ProgramFile7programDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1q_(i32 noundef %.sroa.5.0.copyload.i.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i.i, ptr noundef nonnull %i.bnd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bne), !noalias !16488
  br label %bb.uk

bb.ui:                                            ; preds = %bb.uf
  %i.bnk = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition7program(i32 noundef %.sroa.5.0.copyload.i.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i.i, ptr noundef nonnull %i.bnd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bne), !noalias !16488
  br label %bb.uk

bb.uj:                                            ; preds = %bb.uf
  %i.bnl = call { i32, i32 } @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core5scopeNtB4_7ScopeId7program(i32 noundef %.sroa.5.0.copyload.i.i.i.i, i32 noundef %.sroa.9.0.copyload.i.i.i.i, ptr noundef nonnull %i.bnd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bne), !noalias !16488
  br label %bb.uk

bb.uk:                                            ; preds = %bb.uj, %bb.ui, %bb.uh
  %.pn.i.i.i.i = phi { i32, i32 } [ %i.bnj, %bb.uh ], [ %i.bnk, %bb.ui ], [ %i.bnl, %bb.uj ] ; 2 uses
  %.sroa.0.1.i.i.i.i117 = extractvalue { i32, i32 } %.pn.i.i.i.i, 0 ; 2 uses
  %.sroa.6.1.i.i.i.i = extractvalue { i32, i32 } %.pn.i.i.i.i, 1 ; 2 uses
  store i32 0, ptr %i.bni, align 4, !noalias !16515
  store i32 %.sroa.0.1.i.i.i.i117, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 4, !noalias !16515
  store i32 %.sroa.6.1.i.i.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 4, !noalias !16515
  br label %_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder32infer_assignment_definition_impls1_0Bc_.exit.i.i

_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder32infer_assignment_definition_impls1_0Bc_.exit.i.i: ; preds = %bb.uk, %bb.uf
  %.pre-phi2.i.i.i = phi i32 [ %.sroa.6.1.i.i.i.i, %bb.uk ], [ %.sroa.9.0.copyload.i.i.i.i, %bb.uf ]
  %.pre-phi.i.i.i = phi i32 [ %.sroa.0.1.i.i.i.i117, %bb.uk ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.uf ]
  %i.bnm = call { i32, i32 } @_RINvMs9_NvNtCs2O29vuvTAEJ_14ty_python_core7program1__NtB8_7Program20resolver_environmentDNtNtCsoTR8nlGN3X_18ty_python_semantic2db2DbEL_EB1t_(i32 noundef %.pre-phi.i.i.i, i32 noundef %.pre-phi2.i.i.i, ptr noundef nonnull %i.bnd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bne), !noalias !16488 ; 2 uses
  %i.bnn = extractvalue { i32, i32 } %i.bnm, 0
  %i.bno = extractvalue { i32, i32 } %i.bnm, 1
  store <2 x i32> %i.bng, ptr %i.fr, align 8, !noalias !16489
  %i.bnp = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i32 %i.bnn, ptr %i.bnp, align 8, !noalias !16489
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  store i32 %i.bno, ptr %i.bnq, align 4, !noalias !16489
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bim, i64 23
  %i.bns = load i8, ptr %i.bnr, align 1, !range !53, !alias.scope !16516, !noalias !16488, !noundef !16 ; 3 uses
  %i.bnt = getelementptr inbounds nuw i8, ptr %i.bim, i64 16
  %i.bnu = load i64, ptr %i.bnt, align 8, !alias.scope !16516, !noalias !16488, !noundef !16
  %i.bnv = and i64 %i.bnu, 72057594037927935
  %i.bnw = icmp ult i8 %i.bns, -48
  %i.bnx = zext i8 %i.bns to i64
  %i.bny = add nsw i64 %i.bnx, -192
  %spec.store.select.i.i66.i.i = call i64 @llvm.umin.i64(i64 %i.bny, i64 16)
  %.sroa.0.0.i.i67.i.i = select i1 %i.bnw, i64 %spec.store.select.i.i66.i.i, i64 %i.bnv
  %i.bnz = icmp ugt i8 %i.bns, -49
  %i.boa = load ptr, ptr %i.bnc, align 8, !alias.scope !16516, !noalias !16488
  %.sroa.01.0.i.i68.i.i = select i1 %i.bnz, ptr %i.boa, ptr %i.bnc
  %i.bob = call fastcc { i8, i8 } @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types12special_formNtB4_15SpecialFormType22try_from_file_and_name(ptr noundef nonnull %i.bnd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.bne, ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.fr, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0.i.i68.i.i, i64 noundef %.sroa.0.0.i.i67.i.i), !noalias !16488 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fr), !noalias !16489
  %i.boc = extractvalue { i8, i8 } %i.bob, 0      ; 2 uses
  %.not43.i.i = icmp eq i8 %i.boc, -1
  br i1 %.not43.i.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i, label %bb.ul

bb.ul:                                            ; preds = %_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder32infer_assignment_definition_impls1_0Bc_.exit.i.i
  %i.bod = extractvalue { i8, i8 } %i.bob, 1
  %i.boe = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  store i8 %i.boc, ptr %i.boe, align 4, !noalias !16482
  %i.bof = getelementptr inbounds nuw i8, ptr %i.gg, i64 5
  store i8 %i.bod, ptr %i.bof, align 1, !noalias !16482
  store i32 20, ptr %i.gg, align 4, !noalias !16482
  br label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i: ; preds = %bb.ul, %_RNCNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB6_20TypeInferenceBuilder32infer_assignment_definition_impls1_0Bc_.exit.i.i, %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder29stub_placeholder_binding_type.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy), !noalias !16482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fq), !noalias !16517
  %i.bog = call noundef i32 @_RNvXs_NtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_keyNtB4_17ExpressionNodeKeyINtNtCs4NRVxsYgnAr_4core7convert4FromRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE4from(ptr noundef nonnull align 8 %i.big), !noalias !16518
  %i.boh = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtNtCs2O29vuvTAEJ_14ty_python_core7ast_ids8node_key17ExpressionNodeKeyNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE6insertB21_(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.fq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.boh, i32 noundef %i.bog, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.gg)
  %i.boi = load i32, ptr %i.fq, align 4, !range !26, !noalias !16517, !noundef !16
  %.not.i1.i = icmp eq i32 %i.boi, -1
  br i1 %.not.i1.i, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_assignment_definition.exit, label %bb.um, !prof !34

bb.um:                                            ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedINtNtB4_6option6OptionNtNtCsoTR8nlGN3X_18ty_python_semantic5types4TypeEBM_EB1c_(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.fq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) @880, ptr noundef null, ptr undef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @976) #51, !noalias !16519
  unreachable

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder27infer_assignment_definition.exit: ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32infer_assignment_definition_impl.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fq), !noalias !16517
  call void @llvm.lifetime.start.p0(ptr nonnull %i.gh), !noalias !16482
  call fastcc void @_RNvMsm_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB5_10AddBinding6insert(ptr noalias noundef align 4 captures(none) dereferenceable(16) %i.gh, ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.gf, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %i.gg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh), !noalias !16482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  br label %bb.afy

bb.un:                                            ; preds = %bb.a
  %i.boj = getelementptr inbounds nuw i8, ptr %i.md, i64 4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fp)
  %.val179.i = load ptr, ptr %i.mb, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !noundef !16 ; 8 uses
  %.val180.i = load ptr, ptr %i.mc, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16 ; 8 uses
  %i.bok = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %.val182.i = load ptr, ptr %i.bok, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !18, !noundef !16 ; 6 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %.val200.i = load ptr, ptr %i.bol, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.bom = tail call noundef nonnull align 8 ptr @_RNvMsE_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_33AnnotatedAssignmentDefinitionKind6target(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.boj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val200.i) ; 26 uses
  %.val199.i = load ptr, ptr %i.bol, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.bon = tail call noundef align 8 ptr @_RNvMsE_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_33AnnotatedAssignmentDefinitionKind5value(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.boj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val199.i) ; 16 uses
  %i.boo = load i32, ptr %i.bom, align 8, !range !45, !noundef !16
  switch i32 %i.boo, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread.i [
    i32 28, label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread305.i
    i32 25, label %bb.uo
  ]

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.thread305.i: ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder35is_valid_receiver_annotation_target.exit.i, %bb.uo, %bb.un
  %.val198.i = load ptr, ptr %i.bol, align 8, !alias.scope !16520, !noalias !16521, !nonnull !16, !align !17, !noundef !16
  %i.bop = tail call noundef nonnull align 8 ptr @_RNvMsE_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB5_33AnnotatedAssignmentDefinitionKind10annotation(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.boj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val198.i) ; 18 uses
  tail call fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder32setup_dataclass_field_specifiers(ptr noalias noundef nonnull align 8 dereferenceable(608) %0)
  %i.boq = tail call fastcc noundef zeroext i1 @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder17defer_annotations(ptr noundef nonnull align 8 dereferenceable(608) %0)
  %i.bor = tail call noundef zeroext i1 @_RNvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB4_12InferContext7in_stub(ptr noundef nonnull align 8 %i.mb), !noalias !16522, !inline_history !16053
  %narrow314.i = or i1 %i.boq, %i.bor
  %spec.select3.i.i.i = zext i1 %narrow314.i to i32
  %i.bos = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 8 uses
  %i.bou = load i16, ptr %i.bot, align 8, !alias.scope !16523, !noalias !16524, !noundef !16 ; 2 uses
  %i.bov = or i16 %i.bou, 2
  store i16 %i.bov, ptr %i.bot, align 8, !alias.scope !16523, !noalias !16524
  %i.bow = and i16 %i.bou, 2
  %i.box = load <2 x i32>, ptr %i.bos, align 8, !alias.scope !16525, !noalias !16524
  store i32 %spec.select3.i.i.i, ptr %i.bos, align 8, !alias.scope !16525, !noalias !16524
  call void @_RNvMs_NtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder21annotation_expressionNtB6_20TypeInferenceBuilder32infer_annotation_expression_impl(ptr noalias noundef nonnull sret([32 x i8]) align 4 captures(address) dereferenceable(32) %i.cu, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bop, i1 noundef zeroext false), !inline_history !16053
  %i.boy = load i16, ptr %i.bot, align 8, !alias.scope !16526, !noalias !16524, !noundef !16
end_hunk_5
begin_hunk_6_@_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder38infer_and_check_argument_types_unified:bb.a
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.t) #54
          to label %.thread58 unwind label %bb.bc

.thread58:                                        ; preds = %.thread43, %bb.cc, %bb.cb, %.thread51
  %.sroa.013.1163 = phi i1 [ false, %bb.cc ], [ true, %.thread51 ], [ false, %bb.cb ], [ %.sroa.013.1049, %.thread43 ]
  %.pn2262 = phi { ptr, i32 } [ %i.ha, %bb.cc ], [ %i.fw, %.thread51 ], [ %i.ha, %bb.cb ], [ %.pn2048, %.thread43 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder20TypeInferenceBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(608) %i.u) #54
          to label %.thread65 unwind label %bb.bc

.thread31:                                        ; preds = %.body58, %.body69, %.body46, %bb.bb, %bb.t, %bb.q, %.thread34
  %.sroa.012.230 = phi i1 [ true, %bb.t ], [ true, %.thread34 ], [ true, %bb.q ], [ true, %.body46 ], [ true, %bb.bb ], [ true, %.body58 ], [ false, %.body69 ]
  %.pn1729 = phi { ptr, i32 } [ %i.cu, %bb.t ], [ %i.cf, %.thread34 ], [ %i.cq, %bb.q ], [ %i.cy, %.body46 ], [ %i.fn, %bb.bb ], [ %i.ey, %.body58 ], [ %i.fi, %.body69 ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder20TypeInferenceBuilderEBJ_(ptr noalias noundef align 8 dereferenceable(608) %i.r) #54
          to label %bb.j unwind label %bb.bc

bb.cp:                                            ; preds = %.split.thread, %bb.j
  %.pn17.pn158 = phi { ptr, i32 } [ %i.cd, %.split.thread ], [ %.pn1729, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call9arguments13CallArgumentsEBJ_(ptr noalias noundef align 8 dereferenceable(24) %i.s) #54
          to label %.thread65 unwind label %bb.bc

bb.cq:                                            ; preds = %.body117.thread, %bb.i
  %.pn2623 = phi { ptr, i32 } [ %i.cc, %.body117.thread ], [ %.pn24, %bb.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types4call4bind8BindingsEBJ_(ptr noalias noundef align 8 dereferenceable(432) %i.w) #54
          to label %.body unwind label %bb.bc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder39infer_typealiastype_assignment_deferred(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2, ptr noundef nonnull align 8 captures(address, read_provenance) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [80 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 5 uses
  %i.g = alloca [28 x i8], align 4                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %i.m = alloca [80 x i8], align 8                ; 5 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [80 x i8], align 8                ; 5 uses
  %i.r = alloca [48 x i8], align 8                ; 4 uses
  %i.s = alloca [80 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 5 uses
  %i.x = alloca [48 x i8], align 8                ; 4 uses
  %i.y = alloca [80 x i8], align 8                ; 5 uses
  %i.z = alloca [16 x i8], align 4                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [80 x i8], align 8               ; 5 uses
  %i.ad = alloca [48 x i8], align 8               ; 4 uses
  %i.ae = alloca [80 x i8], align 8               ; 5 uses
  %i.af = alloca [28 x i8], align 4               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 9 uses
  %i.ah = alloca [8 x i8], align 8                ; 8 uses
  %i.ai = alloca [80 x i8], align 8               ; 9 uses
  %i.aj = alloca [48 x i8], align 8               ; 8 uses
  %i.ak = alloca [80 x i8], align 8               ; 12 uses
  %i.al = alloca [12 x i8], align 4               ; 11 uses
  %i.am = alloca [48 x i8], align 8               ; 8 uses
  %i.an = alloca [80 x i8], align 8               ; 8 uses
  %i.ao = alloca [80 x i8], align 8               ; 12 uses
  %i.ap = alloca [16 x i8], align 4               ; 13 uses
  %i.aq = alloca [48 x i8], align 8               ; 4 uses
  %i.ar = alloca [80 x i8], align 8               ; 4 uses
  %i.as = alloca [80 x i8], align 8               ; 5 uses
  %i.at = alloca [16 x i8], align 4               ; 4 uses
  %i.au = alloca [16 x i8], align 4               ; 3 uses
  %i.av = alloca [32 x i8], align 8               ; 7 uses
  %i.aw = alloca [16 x i8], align 4               ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 16 uses
  %.val83 = load ptr, ptr %i.ax, align 8, !nonnull !16, !noundef !16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %.val84 = load ptr, ptr %i.ay, align 8, !nonnull !16, !align !17, !noundef !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.bb = load <2 x i32>, ptr %i.az, align 8
  store i32 %1, ptr %i.az, align 8
  store i32 %2, ptr %i.ba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !16 ; 2 uses
  %i.be = icmp ugt i64 %i.bd, 1
  br i1 %i.be, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bf = load ptr, ptr %3, align 8, !nonnull !16, !noundef !16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  call void @_RNvMNtNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builder15type_expressionNtB4_20TypeInferenceBuilder21infer_type_expression(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.aw, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.av, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = invoke { ptr, ptr } @_RNvXsp_CsaSrGj5dYoxL_8thin_vecRINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCsoTR8nlGN3X_18ty_python_semantic(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh)
          to label %bb.d unwind label %.loopexit.split-lp142.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 1, i64 noundef %i.bd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1058) #51
  unreachable

.thread119:                                       ; preds = %.loopexit246, %.loopexit.split-lp247, %.loopexit141.loopexit.loopexit, %.loopexit141.loopexit.loopexit.split-lp, %.loopexit141.loopexit.split-lp, %.loopexit.split-lp142.loopexit.split-lp, %.loopexit.split-lp142.loopexit, %bb.db, %.thread126, %bb.bu, %bb.bj, %bb.av, %bb.dr, %bb.cn, %bb.bz, %bb.bo, %bb.az
  %.pn.pn.pn = phi { ptr, i32 } [ %lpad.thr_comm.split-lp125, %bb.dr ], [ %lpad.thr_comm124, %.thread126 ], [ %.pn, %bb.db ], [ %lpad.phi245, %bb.cn ], [ %lpad.loopexit.split-lp239, %.loopexit141.loopexit.loopexit.split-lp ], [ %lpad.thr_comm, %bb.bo ], [ %lpad.thr_comm.split-lp, %bb.bj ], [ %lpad.thr_comm111, %bb.bz ], [ %lpad.thr_comm.split-lp112, %bb.bu ], [ %i.fa, %bb.az ], [ %i.ez, %bb.av ], [ %lpad.loopexit.split-lp147, %.loopexit141.loopexit.split-lp ], [ %lpad.loopexit.split-lp150, %.loopexit.split-lp142.loopexit.split-lp ], [ %lpad.loopexit149, %.loopexit.split-lp142.loopexit ], [ %lpad.loopexit238, %.loopexit141.loopexit.loopexit ], [ %lpad.loopexit248, %.loopexit246 ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp247 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set7HashSetNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar20BoundTypeVarIdentityNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEEB1C_.exit unwind label %bb.ba

.loopexit141.loopexit.loopexit:                   ; preds = %.peel.next, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao, %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread, %bb.cl, %bb.cq, %bb.cs
  %lpad.loopexit238 = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.loopexit141.loopexit.loopexit.split-lp:          ; preds = %.lr.ph, %bb.n, %bb.o, %bb.q, %bb.r, %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.peel, %bb.w, %bb.z, %bb.ab, %bb.ac
  %lpad.loopexit.split-lp239 = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.loopexit141.loopexit.split-lp:                   ; preds = %bb.cf, %bb.ce, %bb.cc, %bb.bx, %bb.bq, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevar15TypeVarInstanceE18get_or_insert_withNCNvB2_13get_or_insert0EBO_.exit, %bb.bm, %bb.bf, %bb.bb, %bb.ax, %bb.as, %bb.aq, %.loopexit240
  %lpad.loopexit.split-lp147 = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.loopexit.split-lp142.loopexit:                   ; preds = %bb.e, %bb.cw, %bb.cv, %bb.i
  %lpad.loopexit149 = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

.loopexit.split-lp142.loopexit.split-lp:          ; preds = %bb.b
  %lpad.loopexit.split-lp150 = landingpad { ptr, i32 }
          cleanup
  br label %.thread119

bb.d:                                             ; preds = %bb.b
  %i.bj = extractvalue { ptr, ptr } %i.bi, 0      ; 3 uses
  %i.bk = extractvalue { ptr, ptr } %i.bi, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bk) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %.critedge, label %.lr.ph206

.lr.ph206:                                        ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ap, i64 4 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  br label %bb.e

._crit_edge:                                      ; preds = %.backedge
  br i1 %.sroa.0.0.be, label %.critedge, label %bb.cy

bb.e:                                             ; preds = %.lr.ph206, %.backedge
  %.sroa.0.0205 = phi i1 [ true, %.lr.ph206 ], [ %.sroa.0.0.be, %.backedge ] ; 5 uses
  %.sroa.01.0204 = phi ptr [ %i.bj, %.lr.ph206 ], [ %i.bv, %.backedge ] ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  store i32 -1, ptr %i.at, align 4, !alias.scope !19368
  invoke fastcc void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder21infer_expression_impl(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.au, ptr noalias noundef align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 %.sroa.01.0204, ptr noalias noundef readonly align 4 captures(address) dereferenceable(16) %i.at)
          to label %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit unwind label %.loopexit.split-lp142.loopexit, !inline_history !67

_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 95
  %i.bx = load i8, ptr %i.bw, align 1, !range !49, !noundef !16 ; 4 uses
  %.not = icmp eq i8 %i.bx, -1
  br i1 %.not, label %.backedge, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder16infer_expression.exit
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 88
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !19369, !noundef !16
  %i.ca = and i64 %i.bz, 72057594037927935
  %i.cb = icmp ult i8 %i.bx, -48
  %i.cc = zext i8 %i.bx to i64
  %i.cd = add nsw i64 %i.cc, -192
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.cd, i64 16)
  %.sroa.0.0.i = select i1 %i.cb, i64 %spec.store.select.i, i64 %i.ca
  %i.ce = icmp eq i64 %.sroa.0.0.i, 11
  br i1 %i.ce, label %bb.g, label %.backedge

bb.g:                                             ; preds = %bb.f
  %i.cf = icmp ugt i8 %i.bx, -49
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 80 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !alias.scope !19369
  %.sroa.01.0.i = select i1 %i.cf, ptr %i.ch, ptr %i.cg ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.i) ]
  %i.ci = load i64, ptr %.sroa.01.0.i, align 1
  %i.cj = xor i64 %i.ci, 8241992348090792308
  %i.ck = getelementptr i8, ptr %.sroa.01.0.i, i64 3
  %i.cl = load i64, ptr %i.ck, align 1
  %i.cm = xor i64 %i.cl, 8317411230712094565
  %i.cn = or i64 %i.cj, %i.cm
  %i.co = icmp ne i64 %i.cn, 0
  %i.cp = zext i1 %i.co to i32
  %.not58 = icmp eq i32 %i.cp, 0
  br i1 %.not58, label %bb.h, label %.backedge

bb.h:                                             ; preds = %bb.g
  %i.cq = load i32, ptr %.sroa.01.0204, align 8, !range !45, !noundef !16
  %i.cr = icmp eq i32 %i.cq, 30
  br i1 %i.cr, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.as, ptr noundef nonnull align 8 %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic23INVALID_TYPE_ALIAS_TYPE, ptr noundef nonnull align 8 %.sroa.01.0204)
          to label %bb.cu unwind label %.loopexit.split-lp142.loopexit

bb.j:                                             ; preds = %bb.h
  %.val81 = load ptr, ptr %i.ax, align 8, !nonnull !16, !noundef !16 ; 16 uses
  %.val82 = load ptr, ptr %i.ay, align 8, !nonnull !16, !align !17, !noundef !16 ; 16 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.01.0204, i64 24
  %i.cv = load i64, ptr %i.cu, align 8, !noundef !16 ; 2 uses
  %.idx = mul nuw nsw i64 %i.cv, 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %.idx ; 3 uses
  %i.cx = icmp eq i64 %i.cv, 0
  br i1 %i.cx, label %.backedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j, %.outer
  %.sroa.0.1.ph202 = phi i1 [ %.sroa.0.5, %.outer ], [ %.sroa.0.0205, %bb.j ]
  %.sroa.05.0.ph201 = phi i1 [ %.sroa.05.1, %.outer ], [ false, %bb.j ] ; 3 uses
  %.sroa.06.0.ph200 = phi ptr [ %.lcssa224, %.outer ], [ %i.ct, %bb.j ] ; 5 uses
  %.sroa.012.0.ph198 = phi i32 [ %.sroa.012.1, %.outer ], [ 0, %bb.j ] ; 5 uses
  %.sroa.515.0.ph196 = phi i32 [ %.sroa.515.1, %.outer ], [ undef, %bb.j ] ; 3 uses
  %.sroa.0.0100.ph195 = phi i32 [ %.sroa.0.1101, %.outer ], [ 0, %bb.j ] ; 7 uses
  %.sroa.6.0.ph194 = phi i32 [ %.sroa.6.1, %.outer ], [ undef, %bb.j ] ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph200, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ap, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %.sroa.06.0.ph200)
          to label %bb.k unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.k:                                             ; preds = %.lr.ph
  %i.cz = load i32, ptr %i.ap, align 4, !range !38, !noundef !16 ; 2 uses
  %i.da = icmp ne i32 %i.cz, 17
  call void @llvm.assume(i1 %i.da)
  %i.db = icmp eq i32 %i.cz, 21
  br i1 %i.db, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dc = load i32, ptr %i.bm, align 4, !range !22, !noundef !16 ; 2 uses
  %i.dd = icmp ne i32 %i.dc, 5
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp eq i32 %i.dc, 4
  br i1 %i.de, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.df = load i32, ptr %i.bn, align 4, !range !19, !noundef !16
  %i.dg = load i32, ptr %i.bo, align 4, !noundef !16
  %.val79.peel = load ptr, ptr %i.ax, align 8, !nonnull !16, !noundef !16
  %.val80.peel = load ptr, ptr %i.ay, align 8, !nonnull !16, !align !17, !noundef !16
  %i.dh = load ptr, ptr %i.bp, align 8, !nonnull !16, !align !17, !noundef !16
  %i.di = invoke noundef i32 @_RNvMs_NtCs2O29vuvTAEJ_14ty_python_core10definitionNtB4_10Definition10file_scope(i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.val81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(192) %.val82)
          to label %bb.o unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.dj = invoke { i32, i32 } @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types8generics12bind_typevar(ptr noundef nonnull %.val79.peel, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val80.peel, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(400) %i.dh, i32 noundef %i.di, i32 noundef %1, i32 %2, i32 noundef %i.df, i32 noundef %i.dg)
          to label %bb.p unwind label %.loopexit141.loopexit.loopexit.split-lp ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.dk = extractvalue { i32, i32 } %i.dj, 0      ; 4 uses
  %i.dl = extractvalue { i32, i32 } %i.dj, 1      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %.not60.peel = icmp eq i32 %i.dk, 0
  br i1 %.not60.peel, label %bb.z, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = invoke { i32, i32 } @_RINvMs9_NvNtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevars_1__NtB8_20BoundTypeVarInstance7typevarDNtNtBc_2db2DbEL_EBc_(i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull %.val81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val82)
          to label %bb.r unwind label %.loopexit141.loopexit.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %i.dn = extractvalue { i32, i32 } %i.dm, 0      ; 2 uses
  %i.do = extractvalue { i32, i32 } %i.dm, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  invoke void @_RNvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_20BoundTypeVarInstance15binding_context(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.al, i32 noundef %i.dk, i32 noundef %i.dl, ptr noundef nonnull %.val81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val82)
          to label %bb.s unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.s:                                             ; preds = %bb.r
  %i.dp = load i32, ptr %i.al, align 4, !range !20, !alias.scope !19370, !noalias !19371, !noundef !16
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = load i32, ptr %i.bq, align 4
  %i.ds = icmp eq i32 %i.dr, %2
  %or.cond.peel = select i1 %i.dq, i1 %i.ds, i1 false
  %i.dt = load i32, ptr %i.br, align 4, !range !19
  %i.du = icmp eq i32 %i.dt, %1
  %or.cond138.peel = select i1 %or.cond.peel, i1 %i.du, i1 false
  br i1 %or.cond138.peel, label %.loopexit240, label %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.peel

_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.peel: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ak, ptr noundef nonnull align 8 %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic23INVALID_TYPE_ALIAS_TYPE, ptr noundef nonnull align 8 %.sroa.06.0.ph200)
          to label %bb.t unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.t:                                             ; preds = %_RNvXs1g_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB6_14BindingContextNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.peel
  %i.dv = load i64, ptr %i.ak, align 8, !range !28, !noundef !16
  %.not70.peel = icmp eq i64 %i.dv, -2
  br i1 %.not70.peel, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(80) %i.ak, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %i.dw = invoke noundef nonnull align 8 ptr @_RNvMsx_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7typevarNtB5_15TypeVarInstance4name(i32 noundef %i.dn, i32 noundef %i.do, ptr noundef nonnull %.val81, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %.val82)
          to label %bb.v unwind label %.loopexit.split-lp242

bb.v:                                             ; preds = %bb.u
  store ptr %i.dw, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.ah, ptr %i.ag, align 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameNtB6_7Display3fmtCsoTR8nlGN3X_18ty_python_semantic, ptr %.sroa.428.0..sroa_idx, align 8
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.ai, ptr noundef nonnull @1063, ptr noundef nonnull %i.ag)
          to label %bb.w unwind label %.loopexit.split-lp247

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.aj)
          to label %bb.x unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.af

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.af

bb.z:                                             ; preds = %bb.p, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  invoke void @_RINvMs_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB5_12InferContext11report_lintRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB9_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.ao, ptr noundef nonnull align 8 %i.ax, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(112) @_RNvNtNtCsoTR8nlGN3X_18ty_python_semantic5types10diagnostic23INVALID_TYPE_ALIAS_TYPE, ptr noundef nonnull align 8 %.sroa.06.0.ph200)
          to label %bb.aa unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.dx = load i64, ptr %i.ao, align 8, !range !28, !noundef !16
  %.not61.peel = icmp eq i64 %i.dx, -2
  br i1 %.not61.peel, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RINvMs5_NtNtCsoTR8nlGN3X_18ty_python_semantic5types7contextNtB6_26LintDiagnosticGuardBuilder15into_diagnosticReEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.am, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.an, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1064, i64 noundef 68)
          to label %bb.ac unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.ac:                                            ; preds = %bb.ab
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsoTR8nlGN3X_18ty_python_semantic5types7context19LintDiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.am)
          to label %bb.ad unwind label %.loopexit141.loopexit.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.y, %bb.x
  %i.dy = icmp eq ptr %i.cy, %i.cw
  br i1 %i.dy, label %.backedge, label %.peel.next

.peel.next:                                       ; preds = %bb.af, %bb.co
  %.sroa.06.0190 = phi ptr [ %i.dz, %bb.co ], [ %i.cy, %bb.af ] ; 5 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.06.0190, i64 72 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_RNvMs_NtNtNtCsoTR8nlGN3X_18ty_python_semantic5types5infer7builderNtB4_20TypeInferenceBuilder15expression_type(ptr noalias noundef nonnull sret([16 x i8]) align 4 captures(none) dereferenceable(16) %i.ap, ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %.sroa.06.0190)
          to label %bb.ag unwind label %.loopexit141.loopexit.loopexit

bb.ag:                                            ; preds = %.peel.next
  %i.ea = load i32, ptr %i.ap, align 4, !range !38, !noundef !16 ; 2 uses
  %i.eb = icmp ne i32 %i.ea, 17
  call void @llvm.assume(i1 %i.eb)
  %i.ec = icmp eq i32 %i.ea, 21
  br i1 %i.ec, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ed = load i32, ptr %i.bm, align 4, !range !22, !noundef !16 ; 2 uses
end_hunk_6
