Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.04?download=true
inline.NumInlined: 2047
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_RNvNtCs8frGy5WneL6_4fish12localization23initialize_localization:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @342, i64 noundef 6)
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.q = load i64, ptr %i.i, align 8, !range !20, !noundef !8
  %.not28 = icmp eq i64 %i.q, -1
  br i1 %.not28, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.r = invoke noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7set_one(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @54, i64 noundef 6, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %bb.k unwind label %bb.b       ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @343, i64 noundef 11)
          to label %bb.m unwind label %bb.b

bb.m:                                             ; preds = %bb.l
  %i.s = load i64, ptr %i.f, align 8, !range !20, !noundef !8
  %.not29 = icmp eq i64 %i.s, -1
  br i1 %.not29, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.o unwind label %bb.b

bb.o:                                             ; preds = %bb.n
  %i.t = invoke noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7set_one(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @55, i64 noundef 11, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.b       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.q:                                             ; preds = %bb.m, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @344, i64 noundef 4)
          to label %bb.r unwind label %bb.b

bb.r:                                             ; preds = %bb.q
  %i.u = load i64, ptr %i.c, align 8, !range !20, !noundef !8
  %.not30 = icmp eq i64 %i.u, -1
  br i1 %.not30, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvCskr4qsHYS30i_15fish_widestring14osstr2wcstringNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.t unwind label %bb.b

bb.t:                                             ; preds = %bb.s
  %i.v = invoke noundef i8 @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env11environmentNtB5_8EnvStack7set_one(ptr noundef nonnull align 8 %i.m, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @52, i64 noundef 4, i32 noundef 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.u unwind label %bb.b       ; 0 uses

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.v

bb.v:                                             ; preds = %bb.r, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvNtNtCs8frGy5WneL6_4fish12localization8settings15update_from_env(ptr noundef nonnull align 8 %i.m)
          to label %bb.w unwind label %bb.b

bb.w:                                             ; preds = %bb.v
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env11environment8EnvStackEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.x:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

bb.y:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i16 @_RNvNtCs8frGy5WneL6_4fish8termsize10var_to_int(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = load ptr, ptr %0, align 8, !noundef !8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4500
  invoke void @_RNvMs4_NtNtCs8frGy5WneL6_4fish3env3varNtB5_6EnvVar9as_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d

.body.i:                                          ; preds = %bb.h, %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.g, %bb.d ], [ %i.n, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4501)
  call void @llvm.experimental.noalias.scope.decl(metadata !4502)
  call void @llvm.experimental.noalias.scope.decl(metadata !4503)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !4504, !nonnull !8, !noundef !8
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !4505
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i

bb.c:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #38
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i unwind label %bb.k

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !4500, !nonnull !8, !noundef !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !4500, !noundef !8
  %i.l = invoke i64 @_RNvNtNtCs8frGy5WneL6_4fish5wutil6wcstoi11fish_wcstoi(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #34
          to label %.body.i unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4500
  call void @llvm.experimental.noalias.scope.decl(metadata !4506)
  call void @llvm.experimental.noalias.scope.decl(metadata !4507)
  call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  %i.p = load ptr, ptr %i.b, align 8, !alias.scope !4509, !nonnull !8, !noundef !8
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !4510
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RNCNvNtCs8frGy5WneL6_4fish8termsize10var_to_int0B5_.exit

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcSNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE9drop_slowCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #38
  br label %_RNCNvNtCs8frGy5WneL6_4fish8termsize10var_to_int0B5_.exit

bb.k:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var6EnvVarEBH_.exit.i: ; preds = %bb.c, %.body.i
  resume { ptr, i32 } %.pn.i

_RNCNvNtCs8frGy5WneL6_4fish8termsize10var_to_int0B5_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %bb.j
  %1 = trunc i64 %i.l to i1                       ; 2 uses
  %.sroa.5.0.extract.shift.i = lshr i64 %i.l, 32
  %.sroa.5.0.extract.trunc.i = trunc nuw i64 %.sroa.5.0.extract.shift.i to i32
  %.sroa.3.0.i = select i1 %1, i32 undef, i32 %.sroa.5.0.extract.trunc.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %or.cond = icmp ugt i32 %.sroa.3.0.i, 65535
  %or.cond5 = select i1 %1, i1 true, i1 %or.cond
  %i.t = trunc nuw i32 %.sroa.3.0.i to i16
  %spec.select = select i1 %or.cond5, i16 0, i16 %i.t
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvNtCs8frGy5WneL6_4fish8termsize10var_to_int0B5_.exit, %bb.a
  %.sroa.0.0 = phi i16 [ 0, %bb.a ], [ %spec.select, %_RNCNvNtCs8frGy5WneL6_4fish8termsize10var_to_int0B5_.exit ]
  ret i16 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvNtCs8frGy5WneL6_4fish8termsize13termsize_last() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i16, i16 } @_RNvMs0_NtCs8frGy5WneL6_4fish8termsizeNtB5_17TermsizeContainer4last(ptr noundef nonnull align 8 @_RNvNtCs8frGy5WneL6_4fish8termsize16SHARED_CONTAINER)
  ret { i16, i16 } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i16, i16 } @_RNvNtCs8frGy5WneL6_4fish8termsize15termsize_update(ptr noalias nofree noundef align 8 dereferenceable(432) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4522
  call void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataE4lockB11_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8termsize16SHARED_CONTAINER, i64 8)), !noalias !4522
  call void @llvm.experimental.noalias.scope.decl(metadata !4523)
  %i.i = load i64, ptr %i.h, align 8, !range !16, !alias.scope !4523, !noalias !4524, !noundef !8
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4525
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !4523, !noalias !4524, !nonnull !8, !align !12, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !18, !alias.scope !4523, !noalias !4524, !noundef !8
  store ptr %i.l, ptr %i.g, align 8, !noalias !4525
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %i.n, ptr %i.o, align 8, !noalias !4525
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @142, i64 noundef 43, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @143, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #37
          to label %bb.d unwind label %bb.c, !noalias !4526

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #34
          to label %common.resume.i unwind label %bb.e, !noalias !4526

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #35, !noalias !4526
  unreachable

common.resume.i:                                  ; preds = %bb.z, %bb.g, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn.i.i, %bb.z ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op.i

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i: ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !4523, !noalias !4524, !nonnull !8, !align !12, !noundef !8 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !18, !alias.scope !4523, !noalias !4524, !noundef !8 ; 2 uses
  %i.v = trunc nuw i8 %i.u to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4522
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.x = load i16, ptr %i.w, align 4, !alias.scope !4527, !noalias !4522, !noundef !8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 12 ; 2 uses
  %i.z = load i16, ptr %i.y, align 4, !alias.scope !4527, !noalias !4522, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i16 %i.x, 0                 ; 2 uses
  %spec.select5.i.i = select i1 %.not.i.i, i16 %i.z, i16 %i.x ; 2 uses
  %.not4.i.i = icmp eq i16 %spec.select5.i.i, 0
  br i1 %.not4.i.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i
  %spec.select.v.i.i = select i1 %.not.i.i, i64 6, i64 2
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.v.i.i
  %.sroa.4.0.i.i = load i16, ptr %spec.select.i.i, align 2, !alias.scope !4527, !noalias !4522
  br label %bb.h

bb.g:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEB1A_(ptr nonnull %i.s, i8 %i.u) #34
          to label %common.resume.i unwind label %bb.aa, !noalias !4522

bb.h:                                             ; preds = %bb.f, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i
  %.sroa.3.0.i.i = phi i16 [ %.sroa.4.0.i.i, %bb.f ], [ 24, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i ]
  %.sroa.0.0.i.i = phi i16 [ %spec.select5.i.i, %bb.f ], [ 80, %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEINtBM_11PoisonErrorBH_EE6unwrapB1G_.exit.i ]
  %i.ab = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish8termsize22TTY_TERMSIZE_GEN_COUNT monotonic, align 4, !noalias !4522 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !noalias !4522, !noundef !8
  %.not.i = icmp eq i32 %i.ad, %i.ab
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.ab, ptr %i.ac, align 4, !noalias !4522
  %i.ae = load ptr, ptr @_RNvNtCs8frGy5WneL6_4fish8termsize16SHARED_CONTAINER, align 8, !noalias !4522, !nonnull !8, !noundef !8
  %i.af = invoke { i16, i16 } %i.ae()
          to label %bb.l unwind label %bb.g, !noalias !4522 ; 2 uses

bb.j:                                             ; preds = %bb.l, %bb.h
  %i.ag = phi i16 [ %i.z, %bb.h ], [ %.pre.i, %bb.l ]
  %i.ah = phi i16 [ %i.x, %bb.h ], [ %i.ai, %bb.l ] ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ah, 0               ; 2 uses
  %spec.select5.i10.i = select i1 %.not.i9.i, i16 %i.ag, i16 %i.ah ; 2 uses
  %.not4.i11.i = icmp eq i16 %spec.select5.i10.i, 0
  br i1 %.not4.i11.i, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %spec.select.v.i12.i = select i1 %.not.i9.i, i64 6, i64 2
  %spec.select.i13.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %spec.select.v.i12.i
  %.sroa.4.0.i14.i = load i16, ptr %spec.select.i13.i, align 2, !alias.scope !4528, !noalias !4522
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ai = extractvalue { i16, i16 } %i.af, 0      ; 2 uses
  %i.aj = extractvalue { i16, i16 } %i.af, 1
  store i16 %i.ai, ptr %i.w, align 4, !noalias !4522
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 10
  store i16 %i.aj, ptr %i.ak, align 2, !noalias !4522
  %.pre.i = load i16, ptr %i.y, align 4, !alias.scope !4528, !noalias !4522
  br label %bb.j

bb.m:                                             ; preds = %bb.k, %bb.j
  %.sroa.3.0.i15.i = phi i16 [ %.sroa.4.0.i14.i, %bb.k ], [ 24, %bb.j ] ; 3 uses
  %.sroa.0.0.i16.i = phi i16 [ %spec.select5.i10.i, %bb.k ], [ 80, %bb.j ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  br i1 %i.v, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !4522
  %i.an = and i64 %i.am, 9223372036854775807
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.o, !prof !14

bb.o:                                             ; preds = %bb.n
  %i.ap = call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #38, !noalias !4522
  br i1 %i.ap, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i8 1, ptr %i.al monotonic, align 4, !noalias !4522
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.aq = atomicrmw xchg ptr %i.s, i32 0 release, align 4, !noalias !4522
  %i.ar = icmp eq i32 %i.aq, 2
  br i1 %i.ar, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEB1A_.exit.i, !prof !13

bb.q:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.s), !noalias !4522
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEB1A_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEB1A_.exit.i: ; preds = %bb.q, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  %i.as = icmp eq i16 %.sroa.0.0.i16.i, %.sroa.0.0.i.i
  %i.at = icmp eq i16 %.sroa.3.0.i15.i, %.sroa.3.0.i.i
  %.sroa.0.0.i18.i = select i1 %i.as, i1 %i.at, i1 false
  br i1 %.sroa.0.0.i18.i, label %_RNvMs0_NtCs8frGy5WneL6_4fish8termsizeNtB5_17TermsizeContainer8updating.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtCs8frGy5WneL6_4fish8termsize12TermsizeDataEEB1A_.exit.i
  %i.au = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish8termsize16SHARED_CONTAINER, i64 28), i8 1 monotonic, align 1, !noalias !4529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4529
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !4529
  %i.av = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, 121) 24, i64 noundef range(i64 1, 9) 8) #36, !noalias !4529 ; 4 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.s, label %bb.u, !prof !13

bb.s:                                             ; preds = %bb.r
  call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #37, !noalias !4529
  unreachable

bb.t:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4529
  %i.ay = zext i16 %.sroa.0.0.i16.i to i64
  store i64 %i.ay, ptr %i.d, align 8, !noalias !4529
  invoke void @_RNvXst_Cskr4qsHYS30i_15fish_widestringjNtB5_9ToWString10to_wstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
          to label %bb.v unwind label %bb.t, !noalias !4529

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4529
  store i64 1, ptr %i.f, align 8, !noalias !4529
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.av, ptr %i.az, align 8, !noalias !4529
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 1, ptr %i.ba, align 8, !noalias !4529
  %i.bb = call noundef i8 @_RNvMs5_NtCs8frGy5WneL6_4fish6parserNtB5_6Parser16set_var_and_fire(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) @70, i64 noundef 7, i32 4, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4529
end_hunk_0
