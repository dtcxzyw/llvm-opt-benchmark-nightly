Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/mdtest-6d13eae5d4aac296.mdtest.f417265bba566f7e-cgu.05?download=true
inline.NumInlined: 247
inline.NumDeleted: 138
begin_hunk_0_@_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionj1_E21reserve_one_uncheckedBM_:bb.a
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = mul nuw i64 %i.m, 24                     ; 3 uses
  %or.cond.not.i = icmp ugt i64 %i.k, 384307168202282324
  br i1 %or.cond.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i, !prof !266

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i
  %or.cond62.not.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond62.not.i, label %bb.p, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i, !prof !266

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !265
  %i.q = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #26, !noalias !265 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i: ; preds = %bb.i
  %i.s = mul nuw i64 %.sink.i.i, 24
  %i.t = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.s, i64 noundef 8, i64 noundef %i.p) #26, !noalias !265 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.q, %bb.l ], [ %i.t, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %i.d, align 8, !alias.scope !265
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !265
  store i64 %i.m, ptr %0, align 8, !alias.scope !265
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.l:                                             ; preds = %bb.j
  %i.v = mul nuw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.d, i64 %i.v, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.w = mul nuw i64 %i.o, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr nonnull align 8 %i.e, i64 %i.w, i1 false)
  store i64 %i.o, ptr %0, align 8, !alias.scope !265
  %i.x = mul i64 %.sink.i.i, 24                   ; 2 uses
  %or.cond.not.i.i = icmp ugt i64 %i.b, 384307168202282325
  br i1 %or.cond.not.i.i, label %bb.n, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i, !prof !266

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !267
  store i64 0, ptr %i.a, align 8, !noalias !267
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.x, ptr %i.y, align 8, !noalias !267
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @19, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24, !noalias !267
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i: ; preds = %bb.m
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.x, i64 noundef 8) #26, !noalias !265
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBH_.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #24
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEBF_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.promoted = load i64, ptr %i.b, align 8        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %.promoted, %i.d
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !279, !noalias !280, !noundef !4
  %i.h = icmp ugt i64 %i.g, 2
  %i.i = load ptr, ptr %0, align 8, !alias.scope !279, !noalias !280, !nonnull !4
  %.sink10.i = select i1 %i.h, ptr %i.i, ptr %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit ] ; 2 uses
  %i.k = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.k, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sink10.i, i64 %i.j
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !281
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = icmp eq i64 %i.k, %i.d
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit1: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsM_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterCskXhPDodhyTq_6mdtest(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 40)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !285, !noalias !286, !noundef !4 ; 2 uses
  %i.c = icmp ugt i64 %i.b, 2                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !285, !noalias !286
  %.sink9.i = select i1 %i.c, i64 %i.e, i64 %i.b
  %.sink8.i = select i1 %i.c, ptr %i.d, ptr %i.a
  store i64 0, ptr %.sink8.i, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink9.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvXsN_Csheqz6YZvxwl_8smallvecRINtB5_8SmallVecANtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionj1_ENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBN_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #7 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !290, !noalias !291, !noundef !4 ; 2 uses
  %i.b = icmp ugt i64 %i.a, 1                     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !290, !noalias !291, !nonnull !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !290, !noalias !291
  %.sink10.i = select i1 %i.b, ptr %i.d, ptr %i.c ; 2 uses
  %.sink9.i = select i1 %i.b, i64 %i.f, i64 %i.a
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.sink10.i, i64 %.sink9.i
  %i.h = insertvalue { ptr, ptr } poison, ptr %.sink10.i, 0
  %i.i = insertvalue { ptr, ptr } %i.h, ptr %i.g, 1
  ret { ptr, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsX_Csheqz6YZvxwl_8smallvecNtB5_18CollectionAllocErrNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !292, !noundef !4
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot5memosCskXhPDodhyTq_6mdtest(ptr nofree noundef readnone captures(ret: address, provenance) %0, i64 range(i64 1, 0) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXsd_NtCs45bxiIjzMqg_5salsa8internedINtB5_5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileENtNtB7_5table4Slot9memos_mutCskXhPDodhyTq_6mdtest(ptr noalias nofree noundef readnone align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10Diagnosticj2_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
  %i.d = icmp ugt i64 %i.c, 2
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !309)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !310, !nonnull !4, !noundef !4
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !311
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i

bb.c:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i: ; preds = %bb.c, %.lr.ph.i
  %i.k = icmp eq i64 %i.g, %i.c
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = icmp eq i64 %i.g, %i.c
  br i1 %i.m, label %common.resume, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i
  %.sroa.0.110.i = phi i64 [ %1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.110.i ; 2 uses
  %1 = add i64 %.sroa.0.110.i, 1                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !315, !nonnull !4, !noundef !4
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !316
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i: ; preds = %bb.e, %.lr.ph12.i
  %2 = icmp eq i64 %1, %i.c
  br i1 %2, label %common.resume, label %.lr.ph12.i

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i, %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.x, %bb.h ], [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit8.i ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load i64, ptr %i.t, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.u, ptr %i.w, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit: ; preds = %bb.g
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticECskXhPDodhyTq_6mdtest.exit.i, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10DiagnosticEECskXhPDodhyTq_6mdtest.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionj1_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  %i.c = icmp ugt i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.b, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEEB1b_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEEB1i_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEEB1i_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEEB1b_.exit: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskXhPDodhyTq_6mdtest9assertion17UnparsedAssertionEEB1b_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtBa_10SlotVTable2ofINtNtBc_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTOujRNtNtBa_4memo14MemoTableTypesEE9call_onceCskXhPDodhyTq_6mdtest(ptr noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !322)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !322, !nonnull !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !322
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %exitcond.not.i11 = icmp eq i64 %1, 0
  br i1 %exitcond.not.i11, label %_RNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtB7_10SlotVTable2ofINtNtB9_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00CskXhPDodhyTq_6mdtest.exit, label %.lr.ph

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECskXhPDodhyTq_6mdtest.exit.i: ; preds = %.loopexit2.i
  %exitcond.not.i = icmp eq i64 %i.g, %1
  br i1 %exitcond.not.i, label %_RNCNKINvMNtCs45bxiIjzMqg_5salsa5tableNtB7_10SlotVTable2ofINtNtB9_8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEE00CskXhPDodhyTq_6mdtest.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECskXhPDodhyTq_6mdtest.exit.i
  %.sroa.01.0.i12 = phi i64 [ %i.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa8interned5ValueNtCs56aZGHL6Dc6_7ruff_db10PythonFileEECskXhPDodhyTq_6mdtest.exit.i ], [ 0, %bb.a ] ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.01.0.i12, 1       ; 2 uses
  %exitcond16.not.i = icmp eq i64 %.sroa.01.0.i12, 128
  br i1 %exitcond16.not.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef 128, i64 noundef 128, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !322

.loopexit.i:                                      ; preds = %bb.e
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %.loopexit2.i, %bb.d
  %lpad.loopexit3.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.b
  %lpad.loopexit.split-lp4.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !322
  %.val.i.i = load ptr, ptr %i.i, align 8, !noalias !322, !noundef !4 ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 40
  %.val3.i.i = load i64, ptr %i.j, align 8, !noalias !322
  %i.k = icmp eq ptr %.val.i.i, null              ; 2 uses
  %.sroa.4.0.i.i.i = select i1 %i.k, i64 0, i64 %.val3.i.i
  %.sroa.0.0.i.i.i = select i1 %i.k, ptr inttoptr (i64 8 to ptr), ptr %.val.i.i ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.i.i.i, i64 %.sroa.4.0.i.i.i
  invoke void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBQ_7IterMutNtB1f_9MemoEntryEECskXhPDodhyTq_6mdtest(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noundef nonnull %i.l)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !322

.noexc.i:                                         ; preds = %bb.d
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.a, align 8, !noalias !322 ; 2 uses
  %.sroa.41.0.copyload.i.i = load ptr, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !noalias !322 ; 2 uses
  %.sroa.52.0.copyload.i.i = load i64, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !322 ; 2 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !322 ; 2 uses
  %i.m = icmp ult i64 %.sroa.52.0.copyload.i.i, %.sroa.7.0.copyload.i.i
  br i1 %i.m, label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.lr.ph.i.i, label %.loopexit2.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.lr.ph.i.i: ; preds = %.noexc.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.i.i

_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEECskXhPDodhyTq_6mdtest.exit.i.i, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.lr.ph.i.i
  %.sroa.52.012.i.i = phi i64 [ %.sroa.52.0.copyload.i.i, %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.lr.ph.i.i ], [ %i.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEECskXhPDodhyTq_6mdtest.exit.i.i ] ; 3 uses
  %i.n = add i64 %.sroa.52.012.i.i, 1             ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.52.012.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %.sroa.41.0.copyload.i.i, i64 %.sroa.52.012.i.i ; 2 uses
  %.val4.i.i = load ptr, ptr %i.o, align 8, !noalias !322 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !323, !noalias !322, !noundef !4 ; 2 uses
  store ptr null, ptr %i.p, align 8, !alias.scope !323, !noalias !322
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEECskXhPDodhyTq_6mdtest.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs45bxiIjzMqg_5salsa5table4memo13MemoEntryTypeEINtBZ_7IterMutNtB1o_9MemoEntryEEINtB5_7ZipImplBW_B2d_E4nextCskXhPDodhyTq_6mdtest.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i.i) ]
  %i.s = invoke { ptr, ptr } %.val4.i.i(ptr noundef nonnull %i.q)
          to label %.noexc8.i unwind label %.loopexit.i, !noalias !322, !inline_history !321 ; 2 uses

.noexc8.i:                                        ; preds = %bb.e
  %i.t = extractvalue { ptr, ptr } %i.s, 0        ; 4 uses
  %i.u = extractvalue { ptr, ptr } %i.s, 1        ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !4, !noalias !322 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc8.i
  invoke void %i.v(ptr noundef nonnull %i.t)
          to label %bb.g unwind label %bb.i, !noalias !322

bb.g:                                             ; preds = %bb.f, %.noexc8.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !324, !invariant.load !4, !noalias !322 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtNtCs45bxiIjzMqg_5salsa5table4memo4MemoEL_EEECskXhPDodhyTq_6mdtest.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_0
