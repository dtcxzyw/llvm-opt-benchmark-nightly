Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/pep508_rs-be1a18b8111991cb.pep508_rs.768454d4f2aa2dfe-cgu.00?download=true
inline.NumInlined: 351
inline.NumDeleted: 178
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RNvXs4_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperatorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:switch.lookup
; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_13StringVersionINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !366
  store i64 0, ptr %i.c, align 8, !noalias !366
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !366
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !366
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 1610612768, ptr %i.e, align 8, !noalias !366
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !366
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !366
  store ptr %i.c, ptr %i.b, align 8, !noalias !366
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @74, ptr %i.f, align 8, !noalias !366
  %i.g = invoke noundef zeroext i1 @_RNvXs6_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !noalias !370

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.body unwind label %bb.e, !noalias !370

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g, !prof !9

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #21
          to label %.noexc.i unwind label %bb.b, !noalias !370

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20, !noalias !370
  unreachable

.body:                                            ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !371)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.j = load ptr, ptr %i.d, align 8, !alias.scope !380, !nonnull !4, !noundef !4
  %i.k = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !380
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionECsaaRuwTSDeTG_9pep508_rs.exit

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionECsaaRuwTSDeTG_9pep508_rs.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !366
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.m, align 8
  ret void

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_13StringVersionNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.c = load i64, ptr %i.a, align 8, !range !6, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !8, !noundef !4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.j = icmp ule i64 %2, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.f, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  %i.k = invoke { i64, ptr } @_RNvXsd_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.m = extractvalue { i64, ptr } %i.k, 0
  %i.n = extractvalue { i64, ptr } %i.k, 1        ; 3 uses
  %i.o = trunc nuw i64 %i.m to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.l, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %bb.h
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit
  ret void

bb.m:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_13StringVersionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsB_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18ContainsMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !297, !alias.scope !381, !noalias !384, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !297, !alias.scope !384, !noalias !381, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !alias.scope !381, !noalias !384, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !381, !noalias !384, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !384, !noalias !381, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !384, !noalias !381, !noundef !4 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.l, i64 %spec.store.select.i), !noalias !386 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.k, %i.n
  %spec.select.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i8 [ %i.s, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.t, label %bb.d, label %_RNvXsC_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18ContainsMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !381, !noalias !384, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10.i = load i64, ptr %i.v, align 8, !alias.scope !381, !noalias !384, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.w, align 8, !alias.scope !384, !noalias !381, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i = load i64, ptr %i.x, align 8, !alias.scope !384, !noalias !381, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !386
  store i64 0, ptr %i.b, align 8, !noalias !386
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.725.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val.i, ptr %.sroa.725.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.1028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val10.i, ptr %.sroa.1028.0..sroa_idx.i.i, align 8, !noalias !386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !386
  store i64 0, ptr %i.a, align 8, !noalias !386
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val11.i, ptr %.sroa.761.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !386
  %.sroa.1064.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val12.i, ptr %.sroa.1064.0..sroa_idx.i.i, align 8, !noalias !386
  %i.y = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !386
  br label %_RNvXsC_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18ContainsMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXsC_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18ContainsMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i8 [ %i.y, %bb.d ], [ %.sroa.0.0.i, %bb.c ]
  ret i8 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsC_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18ContainsMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !297, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !297, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.l, i64 %spec.store.select) ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.k, %i.n
  %spec.select = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.s, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.v, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.w, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.x, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i, align 8
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i, align 8
  %.sroa.725.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val, ptr %.sroa.725.0..sroa_idx.i, align 8
  %.sroa.826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i, align 8
  %.sroa.1028.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val10, ptr %.sroa.1028.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i, align 8
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i, align 8
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val11, ptr %.sroa.761.0..sroa_idx.i, align 8
  %.sroa.862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i, align 8
  %.sroa.1064.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val12, ptr %.sroa.1064.0..sroa_idx.i, align 8
  %i.y = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.1 = phi i8 [ %i.y, %bb.d ], [ %.sroa.0.0, %bb.c ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsE_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_15ExtraMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !387, !noalias !390, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !390, !noalias !387, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.e = load i64, ptr %i.c, align 8, !range !6, !alias.scope !392, !noalias !397, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !395, !noalias !398, !noundef !4 ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = trunc nsw i64 %i.g to i8
  %i.i = icmp eq i64 %i.e, %i.f
  br i1 %i.i, label %bb.b, label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !392, !noalias !397, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !392, !noalias !397, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !395, !noalias !398, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !395, !noalias !398, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.q)
  %i.r = tail call i32 @memcmp(ptr nonnull %i.k, ptr nonnull %i.o, i64 %spec.store.select.i.i), !noalias !399 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.m, %i.q
  %spec.select.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i

_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i = phi i8 [ %i.v, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.w = icmp eq i8 %.sroa.0.0.i.i, 0
  br i1 %i.w, label %bb.c, label %_RNvXsF_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_15ExtraMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.c:                                             ; preds = %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.x, align 8, !alias.scope !387, !noalias !390, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.y, align 8, !alias.scope !387, !noalias !390, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3.i = load i64, ptr %i.z, align 8, !alias.scope !390, !noalias !387, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4.i = load i64, ptr %i.aa, align 8, !alias.scope !390, !noalias !387, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !400
  store i64 0, ptr %i.b, align 8, !noalias !400
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.725.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val.i, ptr %.sroa.725.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.1028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val2.i, ptr %.sroa.1028.0..sroa_idx.i.i, align 8, !noalias !400
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !400
  store i64 0, ptr %i.a, align 8, !noalias !400
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val3.i, ptr %.sroa.761.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !400
  %.sroa.1064.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val4.i, ptr %.sroa.1064.0..sroa_idx.i.i, align 8, !noalias !400
  %i.ab = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !400
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !400
  br label %_RNvXsF_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_15ExtraMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXsF_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_15ExtraMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i, %bb.c
  %.sroa.0.0.i = phi i8 [ %i.ab, %bb.c ], [ %.sroa.0.0.i.i, %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsF_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_15ExtraMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.e = load i64, ptr %i.c, align 8, !range !6, !alias.scope !401, !noalias !404, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !404, !noalias !401, !noundef !4 ; 2 uses
  %i.g = sub nsw i64 %i.e, %i.f
  %i.h = trunc nsw i64 %i.g to i8
  %i.i = icmp eq i64 %i.e, %i.f
  br i1 %i.i, label %bb.b, label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !401, !noalias !404, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !401, !noalias !404, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !404, !noalias !401, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !404, !noalias !401, !noundef !4 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.q)
  %i.r = tail call i32 @memcmp(ptr nonnull %i.k, ptr nonnull %i.o, i64 %spec.store.select.i), !noalias !406 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.m, %i.q
  %spec.select.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %i.v, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.w = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.x, align 8, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load i64, ptr %i.y, align 8, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load i64, ptr %i.z, align 8, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load i64, ptr %i.aa, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_0
begin_hunk_1_@_RNvXsg_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16MarkerExpressionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %i.bo, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsaaRuwTSDeTG_9pep508_rs.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.i

bb.n:                                             ; preds = %bb.j
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.i, ptr %i.d, align 8
  %.sroa.4104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerValueStringNtB6_7Display3fmtBC_, ptr %.sroa.4104.0..sroa_idx, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.h, ptr %i.bs, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtB6_7Display3fmtBC_, ptr %.sroa.4108.0..sroa_idx, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.g, ptr %i.bt, align 8
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs, ptr %.sroa.4112.0..sroa_idx, align 8
  %i.bu = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !align !5, !noundef !4
  %i.bx = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bw, ptr noundef nonnull @94, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.by = icmp eq i8 %i.aw, 10
  %. = select i1 %i.by, i8 8, i8 7
  store i8 %., ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.480.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs, ptr %.sroa.480.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.bz, align 8
  %.sroa.484.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXs4_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperatorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.484.0..sroa_idx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %i.i, ptr %i.ca, align 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerValueStringNtB6_7Display3fmtBC_, ptr %.sroa.488.0..sroa_idx, align 8
  %i.cb = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !align !5, !noundef !4
  %i.ce = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cd, ptr noundef nonnull @97, ptr noundef nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsj_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTreeNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker5parse13parse_markersNtNtB6_12verbatim_url11VerbatimUrlNtB6_15TracingReporterEB6_(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsl_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTreeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !noundef !4   ; 2 uses
  switch i64 %i.c, label %bb.d [
    i64 0, label %bb.b
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 4)
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b, %bb.d
  %.sroa.0.0.in = phi i1 [ %i.m, %bb.d ], [ %i.i, %bb.b ], [ %i.s, %bb.e ]
  ret i1 %.sroa.0.0.in

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsK_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18MarkerTreeContentsNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.427.0..sroa_idx, align 8
  %i.j = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !5, !noundef !4
  %i.m = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.l, ptr noundef nonnull @99, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !align !5, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !4, !nonnull !4
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 5)
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsl_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_4NodeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(456) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100, ptr noalias noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @101)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsn_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXso_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i8 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXso_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 9 uses
  %i.e = alloca [48 x i8], align 8                ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 23 uses
  %i.l = alloca [48 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTree4kind(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTree4kind(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  %i.m = load i64, ptr %i.l, align 8, !range !3, !alias.scope !423, !noalias !426, !noundef !4 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !3, !alias.scope !426, !noalias !423, !noundef !4 ; 2 uses
  %i.o = tail call i8 @llvm.scmp.i8.i64(i64 %i.m, i64 %i.n)
  %i.p = icmp eq i64 %i.m, %i.n
  br i1 %i.p, label %bb.b, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.m, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit [
    i64 2, label %bb.c
    i64 3, label %bb.e
    i64 4, label %bb.g
    i64 5, label %bb.k
    i64 6, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.r = load i8, ptr %i.q, align 8, !range !291, !alias.scope !433, !noalias !434, !noundef !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.t = load i8, ptr %i.s, align 8, !range !291, !alias.scope !434, !noalias !433, !noundef !4 ; 2 uses
  %i.u = tail call i8 @llvm.ucmp.i8.i8(i8 %i.r, i8 %i.t)
  %i.v = icmp eq i8 %i.r, %i.t
  br i1 %i.v, label %bb.d, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !440
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !441, !noalias !442, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !441, !noalias !442, !noundef !4
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.y, i64 %i.aa
  store ptr %i.y, ptr %i.j, align 8, !noalias !440
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ab, ptr %i.ac, align 8, !noalias !440
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.x, ptr %i.ad, align 8, !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !440
  %i.ae = load ptr, ptr %i.w, align 8, !alias.scope !442, !noalias !441, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !442, !noalias !441, !noundef !4
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr %i.ae, i64 %i.ag
  store ptr %i.ae, ptr %i.i, align 8, !noalias !440
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !440
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.w, ptr %i.aj, align 8, !noalias !440
  %i.ak = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsr_NtB2J_4treeNtB3F_17VersionMarkerTree5edges0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4n_3cmpB3_E0EB2L_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !440
  br label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !446)
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.am = load i8, ptr %i.al, align 8, !range !297, !alias.scope !448, !noalias !449, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.ao = load i8, ptr %i.an, align 8, !range !297, !alias.scope !449, !noalias !448, !noundef !4 ; 2 uses
  %i.ap = tail call i8 @llvm.ucmp.i8.i8(i8 %i.am, i8 %i.ao)
  %i.aq = icmp eq i8 %i.am, %i.ao
  br i1 %i.aq, label %bb.f, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !455
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !456, !noalias !457, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !456, !noalias !457, !noundef !4
  %i.aw = getelementptr inbounds nuw [80 x i8], ptr %i.at, i64 %i.av
  store ptr %i.at, ptr %i.h, align 8, !noalias !455
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !noalias !455
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.as, ptr %i.ay, align 8, !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !455
  %i.az = load ptr, ptr %i.ar, align 8, !alias.scope !457, !noalias !456, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !457, !noalias !456, !noundef !4
  %i.bc = getelementptr inbounds nuw [80 x i8], ptr %i.az, i64 %i.bb
  store ptr %i.az, ptr %i.g, align 8, !noalias !455
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bc, ptr %i.bd, align 8, !noalias !455
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.ar, ptr %i.be, align 8, !noalias !455
  %i.bf = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsu_NtB2C_4treeNtB3y_16StringMarkerTree8children0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4i_3cmpB3_E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !455
  br label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bh = load i8, ptr %i.bg, align 8, !range !297, !alias.scope !463, !noalias !464, !noundef !4 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.bj = load i8, ptr %i.bi, align 8, !range !297, !alias.scope !464, !noalias !463, !noundef !4 ; 2 uses
  %i.bk = tail call i8 @llvm.ucmp.i8.i8(i8 %i.bh, i8 %i.bj)
  %i.bl = icmp eq i8 %i.bh, %i.bj
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !alias.scope !463, !noalias !464, !nonnull !4, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !463, !noalias !464, !noundef !4 ; 2 uses
  %i.br = load ptr, ptr %i.bm, align 8, !alias.scope !464, !noalias !463, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !alias.scope !464, !noalias !463, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 %i.bt)
  %i.bu = tail call i32 @memcmp(ptr nonnull %i.bo, ptr nonnull %i.br, i64 %spec.store.select.i.i), !noalias !465 ; 2 uses
  %i.bv = sext i32 %i.bu to i64
  %i.bw = icmp eq i32 %i.bu, 0
  %i.bx = sub i64 %i.bq, %i.bt
  %spec.select.i.i = select i1 %i.bw, i64 %i.bx, i64 %i.bv
  %i.by = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i, i64 0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.0.i4.i = phi i8 [ %i.by, %bb.h ], [ %i.bk, %bb.g ] ; 2 uses
  %i.bz = icmp eq i8 %.sroa.0.0.i4.i, 0
  br i1 %i.bz, label %bb.j, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i.i = load i64, ptr %i.ca, align 8, !alias.scope !463, !noalias !464, !noundef !4
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val10.i.i = load i64, ptr %i.cb, align 8, !alias.scope !463, !noalias !464, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val11.i.i = load i64, ptr %i.cc, align 8, !alias.scope !464, !noalias !463, !noundef !4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val12.i.i = load i64, ptr %i.cd, align 8, !alias.scope !464, !noalias !463, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !465
  store i64 0, ptr %i.f, align 8, !noalias !465
  %.sroa.422.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.523.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.725.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %.val.i.i, ptr %.sroa.725.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.826.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.1028.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 %.val10.i.i, ptr %.sroa.1028.0..sroa_idx.i.i.i, align 8, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !465
  store i64 0, ptr %i.e, align 8, !noalias !465
  %.sroa.458.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.559.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.761.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.val11.i.i, ptr %.sroa.761.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.862.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i.i, align 8, !noalias !465
  %.sroa.1064.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.val12.i.i, ptr %.sroa.1064.0..sroa_idx.i.i.i, align 8, !noalias !465
  %i.ce = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.e), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !465
  br label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.cg = load i8, ptr %i.cf, align 8, !range !297, !alias.scope !471, !noalias !472, !noundef !4 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ci = load i8, ptr %i.ch, align 8, !range !297, !alias.scope !472, !noalias !471, !noundef !4 ; 2 uses
  %i.cj = tail call i8 @llvm.ucmp.i8.i8(i8 %i.cg, i8 %i.ci)
  %i.ck = icmp eq i8 %i.cg, %i.ci
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !alias.scope !471, !noalias !472, !nonnull !4, !noundef !4
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !471, !noalias !472, !noundef !4 ; 2 uses
  %i.cq = load ptr, ptr %i.cl, align 8, !alias.scope !472, !noalias !471, !nonnull !4, !noundef !4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !472, !noalias !471, !noundef !4 ; 2 uses
  %spec.store.select.i21.i = tail call i64 @llvm.umin.i64(i64 %i.cp, i64 %i.cs)
  %i.ct = tail call i32 @memcmp(ptr nonnull %i.cn, ptr nonnull %i.cq, i64 %spec.store.select.i21.i), !noalias !473 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 0
  %i.cw = sub i64 %i.cp, %i.cs
  %spec.select.i22.i = select i1 %i.cv, i64 %i.cw, i64 %i.cu
  %i.cx = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i22.i, i64 0)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.0.0.i5.i = phi i8 [ %i.cx, %bb.l ], [ %i.cj, %bb.k ] ; 2 uses
  %i.cy = icmp eq i8 %.sroa.0.0.i5.i, 0
  br i1 %i.cy, label %bb.n, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val.i7.i = load i64, ptr %i.cz, align 8, !alias.scope !471, !noalias !472, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.val10.i8.i = load i64, ptr %i.da, align 8, !alias.scope !471, !noalias !472, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val11.i9.i = load i64, ptr %i.db, align 8, !alias.scope !472, !noalias !471, !noundef !4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.val12.i10.i = load i64, ptr %i.dc, align 8, !alias.scope !472, !noalias !471, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !473
  store i64 0, ptr %i.d, align 8, !noalias !473
  %.sroa.422.0..sroa_idx.i.i11.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i11.i, align 8, !noalias !473
  %.sroa.523.0..sroa_idx.i.i12.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i12.i, align 8, !noalias !473
  %.sroa.725.0..sroa_idx.i.i13.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.val.i7.i, ptr %.sroa.725.0..sroa_idx.i.i13.i, align 8, !noalias !473
  %.sroa.826.0..sroa_idx.i.i14.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i14.i, align 8, !noalias !473
  %.sroa.1028.0..sroa_idx.i.i15.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 %.val10.i8.i, ptr %.sroa.1028.0..sroa_idx.i.i15.i, align 8, !noalias !473
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !473
  store i64 0, ptr %i.c, align 8, !noalias !473
  %.sroa.458.0..sroa_idx.i.i16.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i16.i, align 8, !noalias !473
  %.sroa.559.0..sroa_idx.i.i17.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i17.i, align 8, !noalias !473
  %.sroa.761.0..sroa_idx.i.i18.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.val11.i9.i, ptr %.sroa.761.0..sroa_idx.i.i18.i, align 8, !noalias !473
  %.sroa.862.0..sroa_idx.i.i19.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i19.i, align 8, !noalias !473
  %.sroa.1064.0..sroa_idx.i.i20.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %.val12.i10.i, ptr %.sroa.1064.0..sroa_idx.i.i20.i, align 8, !noalias !473
  %i.dd = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.c), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !473
  br label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.o:                                             ; preds = %bb.b
  %i.de = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !477)
  %i.dg = load ptr, ptr %i.de, align 8, !alias.scope !479, !noalias !480, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.dh = load ptr, ptr %i.df, align 8, !alias.scope !480, !noalias !479, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !481)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.di = load i64, ptr %i.dg, align 8, !range !6, !alias.scope !481, !noalias !486, !noundef !4 ; 2 uses
  %i.dj = load i64, ptr %i.dh, align 8, !range !6, !alias.scope !484, !noalias !487, !noundef !4 ; 2 uses
  %i.dk = sub nsw i64 %i.di, %i.dj
  %i.dl = trunc nsw i64 %i.dk to i8
  %i.dm = icmp eq i64 %i.di, %i.dj
  br i1 %i.dm, label %bb.p, label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !481, !noalias !486, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !481, !noalias !486, !noundef !4 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !484, !noalias !487, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.du = load i64, ptr %i.dt, align 8, !alias.scope !484, !noalias !487, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.dq, i64 %i.du)
  %i.dv = tail call i32 @memcmp(ptr nonnull %i.do, ptr nonnull %i.ds, i64 %spec.store.select.i.i.i), !noalias !488 ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp eq i32 %i.dv, 0
  %i.dy = sub i64 %i.dq, %i.du
  %spec.select.i.i.i = select i1 %i.dx, i64 %i.dy, i64 %i.dw
  %i.dz = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i.i.i, i64 0)
  br label %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i

_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i: ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i = phi i8 [ %i.dz, %bb.p ], [ %i.dl, %bb.o ] ; 2 uses
  %i.ea = icmp eq i8 %.sroa.0.0.i.i.i, 0
  br i1 %i.ea, label %bb.q, label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.q:                                             ; preds = %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.val.i24.i = load i64, ptr %i.eb, align 8, !alias.scope !479, !noalias !480, !noundef !4
  %i.ec = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.val2.i.i = load i64, ptr %i.ec, align 8, !alias.scope !479, !noalias !480, !noundef !4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.val3.i.i = load i64, ptr %i.ed, align 8, !alias.scope !480, !noalias !479, !noundef !4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.val4.i.i = load i64, ptr %i.ee, align 8, !alias.scope !480, !noalias !479, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !489
  store i64 0, ptr %i.b, align 8, !noalias !489
  %.sroa.422.0..sroa_idx.i.i25.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i25.i, align 8, !noalias !489
  %.sroa.523.0..sroa_idx.i.i26.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i26.i, align 8, !noalias !489
  %.sroa.725.0..sroa_idx.i.i27.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val.i24.i, ptr %.sroa.725.0..sroa_idx.i.i27.i, align 8, !noalias !489
  %.sroa.826.0..sroa_idx.i.i28.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i28.i, align 8, !noalias !489
  %.sroa.1028.0..sroa_idx.i.i29.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val2.i.i, ptr %.sroa.1028.0..sroa_idx.i.i29.i, align 8, !noalias !489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !489
  store i64 0, ptr %i.a, align 8, !noalias !489
  %.sroa.458.0..sroa_idx.i.i30.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i30.i, align 8, !noalias !489
  %.sroa.559.0..sroa_idx.i.i31.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i31.i, align 8, !noalias !489
  %.sroa.761.0..sroa_idx.i.i32.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val3.i.i, ptr %.sroa.761.0..sroa_idx.i.i32.i, align 8, !noalias !489
  %.sroa.862.0..sroa_idx.i.i33.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i33.i, align 8, !noalias !489
  %.sroa.1064.0..sroa_idx.i.i34.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val4.i.i, ptr %.sroa.1064.0..sroa_idx.i.i34.i, align 8, !noalias !489
  %i.ef = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !489
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !489
  br label %_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXs2a_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_14MarkerTreeKindNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %bb.j, %bb.m, %bb.n, %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i, %bb.q
  %.sroa.0.0.i = phi i8 [ %i.o, %bb.a ], [ 0, %bb.b ], [ %i.u, %bb.c ], [ %i.ap, %bb.e ], [ %.sroa.0.0.i4.i, %bb.i ], [ %.sroa.0.0.i5.i, %bb.m ], [ %i.ak, %bb.d ], [ %i.bf, %bb.f ], [ %i.ce, %bb.j ], [ %i.dd, %bb.n ], [ %i.ef, %bb.q ], [ %.sroa.0.0.i.i.i, %_RNvXs1G_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerValueExtraNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsp_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_20MarkerTreeDebugGraphNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call fastcc noundef zeroext i1 @_RNvMsm_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_10MarkerTree9fmt_graph(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef 0)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsq_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_18MarkerTreeDebugRawNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsfQIMl4TvGjG_9once_cell4syncINtB6_8OnceCellNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra8InternerE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_B6_INtB6_4LazyBQ_E5force0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra8INTERNER, ptr noundef nonnull align 8 @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra8INTERNER)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB2_14InternerShared4node(ptr noundef nonnull align 8 %i.b, i64 noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 18)
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @106)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXss_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_17VersionMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !291, !alias.scope !490, !noalias !493, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !291, !alias.scope !493, !noalias !490, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %_RNvXst_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_17VersionMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !500
  %i.i = load ptr, ptr %0, align 8, !alias.scope !501, !noalias !502, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !501, !noalias !502, !noundef !4
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.k
  store ptr %i.i, ptr %i.b, align 8, !noalias !500
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !500
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.n, align 8, !noalias !500
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !500
  %i.o = load ptr, ptr %1, align 8, !alias.scope !502, !noalias !501, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !502, !noalias !501, !noundef !4
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.q
  store ptr %i.o, ptr %i.a, align 8, !noalias !500
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !500
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.t, align 8, !noalias !500
  %i.u = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsr_NtB2J_4treeNtB3F_17VersionMarkerTree5edges0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4n_3cmpB3_E0EB2L_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !500
  br label %_RNvXst_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_17VersionMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXst_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_17VersionMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %i.u, %bb.b ], [ %i.g, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.d

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread: ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsaaRuwTSDeTG_9pep508_rs.exit.backedge.us.i.i, %.split.us.i.i, %bb.h, %.lr.ph.i, %bb.g, %.lr.ph.split.us.i.i, %bb.bk, %bb.d, %bb.a, %bb.bm, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.d ], [ %i.n, %bb.g ], [ 1, %bb.a ], [ %.sroa.0.031, %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %i.kl, %bb.bm ], [ %.sroa.014.5.i, %bb.bk ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %bb.h ], [ 1, %.lr.ph.i ], [ 0, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsaaRuwTSDeTG_9pep508_rs.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ]
  %i.e = trunc nuw i8 %.sroa.0.0 to i1
  ret i1 %i.e

bb.c:                                             ; preds = %bb.b
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %1, %3
  br i1 %i.g, label %bb.bm, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = icmp ult i64 %1, 33
  br i1 %i.h, label %bb.aw, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit

bb.f:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !noundef !4    ; 2 uses
  %i.j = icmp samesign ult i64 %3, 16
  br i1 %i.j, label %.lr.ph.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3)
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = icmp eq i64 %i.l, 1
  %i.n = zext i1 %i.m to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.sroa.01.05.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.f ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.01.05.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !503, !noundef !4
  %i.q = icmp eq i8 %i.p, %i.i
  br i1 %i.q, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.r = add nuw nsw i64 %.sroa.01.05.i, 1        ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.r, %3
  br i1 %exitcond.not.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.lr.ph.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit: ; preds = %bb.ay, %bb.ax, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !506)
  %i.s = load i64, ptr %i.b, align 8, !range !6, !alias.scope !506, !noalias !509, !noundef !4
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.t, label %bb.r, label %.preheader.i4

.preheader.i4:                                    ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.w = load i8, ptr %i.v, align 2, !range !166, !alias.scope !511, !noalias !514, !noundef !4
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i5

.lr.ph.i5:                                        ; preds = %.preheader.i4
  %.promoted.i = load i64, ptr %i.u, align 8, !alias.scope !506, !noalias !509 ; 12 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !511, !noalias !514, !nonnull !4, !noundef !4 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !511, !noalias !514, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.y, align 8, !alias.scope !511, !noalias !514 ; 2 uses
  %i.ad = trunc nuw i8 %.promoted26.i to i1
  %i.ae = icmp eq i64 %.promoted.i, 0
  br i1 %i.ae, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not.i.i.i.peel, label %bb.j, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.i
  %i.af = icmp eq i64 %.promoted.i, %i.ac
  br i1 %i.af, label %bb.k, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !516, !noalias !519, !noundef !4
  %i.ai = icmp sgt i8 %i.ah, -65
  br i1 %i.ai, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j, %.split.i.i.i.peel, %.lr.ph.i5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.promoted.i ; 4 uses
  %i.ak = icmp samesign eq i64 %.promoted.i, %i.ac
  br i1 %i.ak, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = load i8, ptr %i.aj, align 1, !noalias !521, !noundef !4 ; 5 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.m, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit12.i.i.i.peel: ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ao = and i8 %i.al, 31
  %i.ap = zext nneg i8 %i.ao to i32               ; 3 uses
  %i.aq = add nuw nsw i64 %.promoted.i, 1
  %i.ar = icmp samesign ne i64 %i.aq, %i.ac
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = load i8, ptr %i.an, align 1, !noalias !521, !noundef !4
  %i.at = shl nuw nsw i32 %i.ap, 6
  %i.au = and i8 %i.as, 63
  %i.av = zext nneg i8 %i.au to i32               ; 2 uses
  %i.aw = or disjoint i32 %i.at, %i.av
  %i.ax = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ax, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit14.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit12.i.i.i.peel
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.az = add nuw nsw i64 %.promoted.i, 2
  %i.ba = icmp samesign ne i64 %i.az, %i.ac
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !521, !noundef !4
  %i.bc = shl nuw nsw i32 %i.av, 6
  %i.bd = and i8 %i.bb, 63
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.bc, %i.be            ; 2 uses
  %i.bg = shl nuw nsw i32 %i.ap, 12
  %i.bh = or disjoint i32 %i.bf, %i.bg
  %i.bi = icmp samesign ugt i8 %i.al, -17
  br i1 %i.bi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit16.i.i.i.peel, label %bb.n

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit14.i.i.i.peel
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aj, i64 3
  %i.bk = add nuw nsw i64 %.promoted.i, 3
  %i.bl = icmp samesign ne i64 %i.bk, %i.ac
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = load i8, ptr %i.bj, align 1, !noalias !521, !noundef !4
  %i.bn = shl nuw nsw i32 %i.ap, 18
  %i.bo = and i32 %i.bn, 1835008
  %i.bp = shl nuw nsw i32 %i.bf, 6
  %i.bq = and i8 %i.bm, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = or disjoint i32 %i.bp, %i.br
  %i.bt = or disjoint i32 %i.bs, %i.bo
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bu = zext nneg i8 %i.al to i32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.bh, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit14.i.i.i.peel ], [ %i.bt, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit16.i.i.i.peel ], [ %i.aw, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsaaRuwTSDeTG_9pep508_rs.exit12.i.i.i.peel ], [ %i.bu, %bb.m ] ; 4 uses
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bv)
  br i1 %i.ad, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bw, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
end_hunk_1
begin_hunk_2_@_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsaaRuwTSDeTG_9pep508_rs.exit.backedge.us.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gy, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 2, 33) %1), !alias.scope !565, !noalias !566
  %i.gz = icmp eq i32 %bcmp.i.i.us.i.i, 0
  br i1 %i.gz, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsaaRuwTSDeTG_9pep508_rs.exit.backedge.us.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsaaRuwTSDeTG_9pep508_rs.exit.backedge.us.i.i: ; preds = %.lr.ph.split.us.i.i, %.split.us.i.i
  %.pn.i = phi ptr [ %i.gy, %.split.us.i.i ], [ %2, %.lr.ph.split.us.i.i ]
  %.in.i = phi i64 [ %i.ha, %.split.us.i.i ], [ %3, %.lr.ph.split.us.i.i ]
  %i.ha = add i64 %.in.i, -1                      ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.ha
  br i1 %.not28.i.i, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i

bb.bc:                                            ; preds = %bb.bb, %.thread93.i
  %i.hb = phi i8 [ %.pre.i, %.thread93.i ], [ %i.gp, %bb.bb ]
  %i.hc = phi <16 x i8> [ %i.gu, %.thread93.i ], [ %i.gw, %bb.bb ] ; 6 uses
  %storemerge9295.i = phi i64 [ 1, %.thread93.i ], [ %i.gm, %bb.bb ] ; 6 uses
  %i.hd = insertelement <16 x i8> poison, i8 %i.hb, i64 0
  %i.he = shufflevector <16 x i8> %i.hd, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !565
  store ptr %2, ptr %i.a, align 8, !noalias !565
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.hg, align 8, !noalias !565
  %i.hh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.hf, ptr %i.hh, align 8, !noalias !565
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.gg, ptr %i.hi, align 8, !noalias !565
  %i.hj = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i7 = icmp ult i64 %i.hj, %3
  br i1 %.not.i7, label %.lr.ph.i10, label %.preheader.i8

.preheader.i8:                                    ; preds = %bb.bg, %bb.bc
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.bc ], [ %.sroa.014.2.3.i, %bb.bg ] ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.bc ], [ %i.jf, %bb.bg ] ; 2 uses
  %i.hk = add nuw nsw i64 %1, 15                  ; 2 uses
  %i.hl = add i64 %.sroa.06.0.lcssa.i, %i.hk
  %i.hm = icmp uge i64 %i.hl, %3
  %i.hn = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3105.i = select i1 %i.hm, i1 true, i1 %i.hn
  br i1 %or.cond3105.i, label %._crit_edge.i9, label %.lr.ph107.i

.lr.ph.i10:                                       ; preds = %bb.bc, %bb.bg
  %.sroa.06.0103.i = phi i64 [ %i.jf, %bb.bg ], [ 0, %bb.bc ] ; 6 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.0103.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.ho, align 1, !alias.scope !554, !noalias !570
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.hp, align 1, !alias.scope !554, !noalias !570
  %i.hq = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.hc
  %i.hr = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.he
  %i.hs = and <16 x i1> %i.hq, %i.hr
  %i.ht = bitcast <16 x i1> %i.hs to i16          ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.hu, align 1, !alias.scope !554, !noalias !570
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hv, align 1, !alias.scope !554, !noalias !570
  %i.hw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.hc
  %i.hx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.he
  %i.hy = and <16 x i1> %i.hw, %i.hx
  %i.hz = bitcast <16 x i1> %i.hy to i16          ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.ia, align 1, !alias.scope !554, !noalias !570
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.ib, align 1, !alias.scope !554, !noalias !570
  %i.ic = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.hc
  %i.id = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.he
  %i.ie = and <16 x i1> %i.ic, %i.id
  %i.if = bitcast <16 x i1> %i.ie to i16          ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ho, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.ig, align 1, !alias.scope !554, !noalias !570
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.ih, align 1, !alias.scope !554, !noalias !570
  %i.ii = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.hc
  %i.ij = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.he
  %i.ik = and <16 x i1> %i.ii, %i.ij
  %i.il = bitcast <16 x i1> %i.ik to i16          ; 2 uses
  %i.im = icmp eq i16 %i.ht, 0
  br i1 %i.im, label %.preheader96.1.i, label %bb.bh

.preheader96.1.i:                                 ; preds = %bb.bh, %.lr.ph.i10
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i10 ], [ %i.jk, %bb.bh ] ; 3 uses
  %i.in = icmp eq i16 %i.hz, 0
  br i1 %i.in, label %.preheader96.2.i, label %bb.bd

bb.bd:                                            ; preds = %.preheader96.1.i
  %i.io = or disjoint i64 %.sroa.06.0103.i, 16
  %i.ip = trunc nuw i8 %.sroa.014.2.i to i1
  %i.iq = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.io, i16 noundef %i.hz, i1 noundef zeroext %i.ip)
  %i.ir = zext i1 %i.iq to i8
  %i.is = or i8 %.sroa.014.2.i, %i.ir
  br label %.preheader96.2.i

.preheader96.2.i:                                 ; preds = %bb.bd, %.preheader96.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader96.1.i ], [ %i.is, %bb.bd ] ; 3 uses
  %i.it = icmp eq i16 %i.if, 0
  br i1 %i.it, label %.preheader96.3.i, label %bb.be

bb.be:                                            ; preds = %.preheader96.2.i
  %i.iu = or disjoint i64 %.sroa.06.0103.i, 32
  %i.iv = trunc nuw i8 %.sroa.014.2.1.i to i1
  %i.iw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.iu, i16 noundef %i.if, i1 noundef zeroext %i.iv)
  %i.ix = zext i1 %i.iw to i8
  %i.iy = or i8 %.sroa.014.2.1.i, %i.ix
  br label %.preheader96.3.i

.preheader96.3.i:                                 ; preds = %bb.be, %.preheader96.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader96.2.i ], [ %i.iy, %bb.be ] ; 3 uses
  %i.iz = icmp eq i16 %i.il, 0
  br i1 %i.iz, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %.preheader96.3.i
  %i.ja = or disjoint i64 %.sroa.06.0103.i, 48
  %i.jb = trunc nuw i8 %.sroa.014.2.2.i to i1
  %i.jc = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ja, i16 noundef %i.il, i1 noundef zeroext %i.jb)
  %i.jd = zext i1 %i.jc to i8
  %i.je = or i8 %.sroa.014.2.2.i, %i.jd
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %.preheader96.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader96.3.i ], [ %i.je, %bb.bf ] ; 2 uses
  %i.jf = add i64 %.sroa.06.0103.i, 64            ; 3 uses
  %i.jg = add i64 %i.jf, %i.hj
  %i.jh = icmp uge i64 %i.jg, %3
  %i.ji = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.jh, i1 true, i1 %i.ji
  br i1 %or.cond.i, label %.preheader.i8, label %.lr.ph.i10

bb.bh:                                            ; preds = %.lr.ph.i10
  %i.jj = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i, i16 noundef %i.ht, i1 noundef zeroext false)
  %i.jk = zext i1 %i.jj to i8
  br label %.preheader96.1.i

._crit_edge.i9:                                   ; preds = %bb.bi, %.preheader.i8
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i8 ], [ %.sroa.014.4.i, %bb.bi ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.hn, %.preheader.i8 ], [ %i.ke, %bb.bi ]
  %i.jl = sub i64 %3, %i.gg
  %i.jm = add i64 %i.jl, -16                      ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %2, i64 %i.jm ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.jn, align 1, !alias.scope !554, !noalias !573
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.jo, align 1, !alias.scope !554, !noalias !573
  %i.jp = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.hc
  %i.jq = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.he
  %i.jr = and <16 x i1> %i.jp, %i.jq
  %i.js = bitcast <16 x i1> %i.jr to i16          ; 2 uses
  %i.jt = icmp eq i16 %i.js, 0
  br i1 %i.jt, label %bb.bk, label %bb.bl

.lr.ph107.i:                                      ; preds = %.preheader.i8, %bb.bi
  %.sroa.06.1106.i = phi i64 [ %i.kb, %bb.bi ], [ %.sroa.06.0.lcssa.i, %.preheader.i8 ] ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1106.i ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.ju, align 1, !alias.scope !554, !noalias !576
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %storemerge9295.i
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.jv, align 1, !alias.scope !554, !noalias !576
  %i.jw = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.hc
  %i.jx = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.he
  %i.jy = and <16 x i1> %i.jw, %i.jx
  %i.jz = bitcast <16 x i1> %i.jy to i16          ; 2 uses
  %i.ka = icmp eq i16 %i.jz, 0
  br i1 %i.ka, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bj, %.lr.ph107.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph107.i ], [ %i.kg, %bb.bj ] ; 2 uses
  %i.kb = add i64 %.sroa.06.1106.i, 16            ; 2 uses
  %i.kc = add i64 %i.kb, %i.hk
  %i.kd = icmp uge i64 %i.kc, %3
  %i.ke = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.kd, %i.ke
  br i1 %or.cond3.i, label %._crit_edge.i9, label %.lr.ph107.i

bb.bj:                                            ; preds = %.lr.ph107.i
  %i.kf = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1106.i, i16 noundef %i.jz, i1 noundef zeroext false)
  %i.kg = zext i1 %i.kf to i8
  br label %bb.bi

bb.bk:                                            ; preds = %bb.bl, %._crit_edge.i9
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i9 ], [ %i.kj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !565
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread

bb.bl:                                            ; preds = %._crit_edge.i9
  %i.kh = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.jm, i16 noundef %i.js, i1 noundef zeroext %.lcssa.i)
  %i.ki = zext i1 %i.kh to i8
  %i.kj = or i8 %.sroa.014.3.lcssa.i, %i.ki
  br label %bb.bk

bb.bm:                                            ; preds = %bb.d
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %2, i64 %1)
  %i.kk = icmp eq i32 %bcmp, 0
  %i.kl = zext i1 %i.kk to i8
  br label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXst_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_17VersionMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !291, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !291, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !582)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !584
  %i.i = load ptr, ptr %0, align 8, !alias.scope !579, !noalias !582, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !579, !noalias !582, !noundef !4
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.k
  store ptr %i.i, ptr %i.b, align 8, !noalias !584
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !584
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.n, align 8, !noalias !584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !584
  %i.o = load ptr, ptr %1, align 8, !alias.scope !582, !noalias !579, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !582, !noalias !579, !noundef !4
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.o, i64 %i.q
  store ptr %i.o, ptr %i.a, align 8, !noalias !584
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !584
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.t, align 8, !noalias !584
  %i.u = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsr_NtB2J_4treeNtB3F_17VersionMarkerTree5edges0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4n_3cmpB3_E0EB2L_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !584
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.u, %bb.b ], [ %i.g, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsv_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16StringMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !588)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !297, !alias.scope !585, !noalias !588, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !297, !alias.scope !588, !noalias !585, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %_RNvXsw_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16StringMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !590)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !593)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !595
  %i.i = load ptr, ptr %0, align 8, !alias.scope !596, !noalias !597, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !596, !noalias !597, !noundef !4
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.k
  store ptr %i.i, ptr %i.b, align 8, !noalias !595
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !595
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.n, align 8, !noalias !595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !595
  %i.o = load ptr, ptr %1, align 8, !alias.scope !597, !noalias !596, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !597, !noalias !596, !noundef !4
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.q
  store ptr %i.o, ptr %i.a, align 8, !noalias !595
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !595
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.t, align 8, !noalias !595
  %i.u = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsu_NtB2C_4treeNtB3y_16StringMarkerTree8children0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4i_3cmpB3_E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !595
  br label %_RNvXsw_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16StringMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXsw_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16StringMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i8 [ %i.u, %bb.b ], [ %i.g, %bb.a ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsw_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_16StringMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !297, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i8, ptr %i.e, align 8, !range !297, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !601)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !603
  %i.i = load ptr, ptr %0, align 8, !alias.scope !598, !noalias !601, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !598, !noalias !601, !noundef !4
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %i.i, i64 %i.k
  store ptr %i.i, ptr %i.b, align 8, !noalias !603
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !603
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.n, align 8, !noalias !603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !603
  %i.o = load ptr, ptr %1, align 8, !alias.scope !601, !noalias !598, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !601, !noalias !598, !noundef !4
  %i.r = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %i.q
  store ptr %i.o, ptr %i.a, align 8, !noalias !603
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.s, align 8, !noalias !603
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.t, align 8, !noalias !603
  %i.u = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsu_NtB2C_4treeNtB3y_16StringMarkerTree8children0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4i_3cmpB3_E0EB2E_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !603
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.u, %bb.b ], [ %i.g, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsy_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_12InMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd11partial_cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !607)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !297, !alias.scope !604, !noalias !607, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !297, !alias.scope !607, !noalias !604, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !alias.scope !604, !noalias !607, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !604, !noalias !607, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !alias.scope !607, !noalias !604, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !607, !noalias !604, !noundef !4 ; 2 uses
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.l, i64 %spec.store.select.i), !noalias !609 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.k, %i.n
  %spec.select.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select.i, i64 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.i = phi i8 [ %i.s, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0.i, 0
  br i1 %i.t, label %bb.d, label %_RNvXsz_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_12InMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !alias.scope !604, !noalias !607, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10.i = load i64, ptr %i.v, align 8, !alias.scope !604, !noalias !607, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11.i = load i64, ptr %i.w, align 8, !alias.scope !607, !noalias !604, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12.i = load i64, ptr %i.x, align 8, !alias.scope !607, !noalias !604, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !609
  store i64 0, ptr %i.b, align 8, !noalias !609
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.725.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val.i, ptr %.sroa.725.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.826.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.1028.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val10.i, ptr %.sroa.1028.0..sroa_idx.i.i, align 8, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !609
  store i64 0, ptr %i.a, align 8, !noalias !609
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.559.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.761.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val11.i, ptr %.sroa.761.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.862.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i.i, align 8, !noalias !609
  %.sroa.1064.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val12.i, ptr %.sroa.1064.0..sroa_idx.i.i, align 8, !noalias !609
  %i.y = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !609
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !609
  br label %_RNvXsz_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_12InMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit

_RNvXsz_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_12InMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.1.i = phi i8 [ %i.y, %bb.d ], [ %.sroa.0.0.i, %bb.c ]
  ret i8 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 2) i8 @_RNvXsz_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_12InMarkerTreeNtNtCs4NRVxsYgnAr_4core3cmp3Ord3cmp(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !range !297, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !297, !noundef !4 ; 2 uses
  %i.g = tail call i8 @llvm.ucmp.i8.i8(i8 %i.d, i8 %i.f)
  %i.h = icmp eq i8 %i.d, %i.f
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.k, i64 %i.n)
  %i.o = tail call i32 @memcmp(ptr nonnull %i.i, ptr nonnull %i.l, i64 %spec.store.select) ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %i.k, %i.n
  %spec.select = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.s, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %i.t = icmp eq i8 %.sroa.0.0, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.u, align 8, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10 = load i64, ptr %i.v, align 8, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val11 = load i64, ptr %i.w, align 8, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val12 = load i64, ptr %i.x, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.422.0..sroa_idx.i, align 8
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 1, ptr %.sroa.523.0..sroa_idx.i, align 8
  %.sroa.725.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val, ptr %.sroa.725.0..sroa_idx.i, align 8
  %.sroa.826.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 0, ptr %.sroa.826.0..sroa_idx.i, align 8
  %.sroa.1028.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.val10, ptr %.sroa.1028.0..sroa_idx.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.458.0..sroa_idx.i, align 8
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 1, ptr %.sroa.559.0..sroa_idx.i, align 8
  %.sroa.761.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.val11, ptr %.sroa.761.0..sroa_idx.i, align 8
  %.sroa.862.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 0, ptr %.sroa.862.0..sroa_idx.i, align 8
  %.sroa.1064.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.val12, ptr %.sroa.1064.0..sroa_idx.i, align 8
  %i.y = call noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.0.1 = phi i8 [ %i.y, %bb.d ], [ %.sroa.0.0, %bb.c ]
  ret i8 %.sroa.0.1
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker5parse25parse_marker_key_op_valueNtNtB6_12verbatim_url11VerbatimUrlNtB6_15TracingReporterEB6_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(40), ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsaaRuwTSDeTG_9pep508_rs6cursorNtB2_6Cursor14eat_whitespace(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCsaaRuwTSDeTG_9pep508_rs6cursorNtB2_6Cursor4next(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsk_NtCs4NRVxsYgnAr_4core3fmtcNtB5_7Display3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMNtCsaaRuwTSDeTG_9pep508_rs6cursorNtB2_6Cursor9remaining(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionE8containsCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCscdodAO9FK5_5alloc6string6StringE12as_singletonCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCscdodAO9FK5_5alloc6string6StringE14bounding_rangeCsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCscdodAO9FK5_5alloc6string6StringE8containsCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsf_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtNtCsaaRuwTSDeTG_9pep508_rs9normalize10extra_name9ExtraNameNtB5_13SliceContains14slice_containsBI_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs7_CsaaRuwTSDeTG_9pep508_rsNtB5_15TracingReporterNtB5_8Reporter6report(ptr noalias noundef nonnull, i8 noundef range(i8 0, 6), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs4_NtCsfQIMl4TvGjG_9once_cell4syncINtB6_8OnceCellNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra8InternerE15get_or_try_initNCINvB2_11get_or_initNCNvMs9_B6_INtB6_4LazyBQ_E5force0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8, ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB4_8Interner4lock(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB6_13InternerGuard8restrictNCINvMsk_NtB8_4treeNtB1p_10MarkerTree25simplify_extras_with_implNCNvB1l_15simplify_extras0E0EBa_(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEj5_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB25_(ptr noalias noundef align 8 dereferenceable(408)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEj5_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB2c_(ptr noalias noundef align 8 dereferenceable(248)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundNtNtCscdodAO9FK5_5alloc6string6StringEBJ_Ej1_ENtNtBO_4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecATINtNtNtCs4NRVxsYgnAr_4core3ops5range5BoundNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEBJ_Ej1_ENtNtBO_4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecIBv_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBL_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB17_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1b_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtB9_6string6StringEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterINtCs5e9M2GLoJMY_8indexmap6BucketNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1y_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @memcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RINvYINtNtNtCs4NRVxsYgnAr_4core5array4iter8IntoIterTbNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeEKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B1N_3cmpB3_E0EBV_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionENvYB37_NtB14_8ToString9to_stringEE9from_iterB3d_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsr_NtB2J_4treeNtB3F_17VersionMarkerTree5edges0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4n_3cmpB3_E0EB2L_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBc_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra6NodeIdEENCNvMsu_NtB2C_4treeNtB3y_16StringMarkerTree8children0ENtNtNtBa_6traits8iterator8Iterator6cmp_byB3_NCINvYB3_B4i_3cmpB3_E0EB2E_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCs2AWtUsOyxgP_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8grow_oneBS_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard10expression(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard11is_disjoint(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard24simplify_python_versions(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef range(i64 0, 3), ptr, i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard26complexify_python_versions(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef range(i64 0, 3), ptr, i64 noundef range(i64 0, 3), ptr) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard2or(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtNtCsaaRuwTSDeTG_9pep508_rs9normalize10extra_name9ExtraNameuNtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE12contains_keyBO_EBU_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB5_13InternerGuard3and(ptr noalias noundef align 8 dereferenceable(24), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebraNtB2_14InternerShared4node(ptr noundef nonnull align 8, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify6to_dnf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify13collect_edgesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1Q_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesBZ_ENtNtB4_7algebra6NodeIdEENCNvMsr_NtB4_4treeNtB4b_17VersionMarkerTree5edges0EEB6_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker8simplify13collect_edgesNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterTINtCs6fe3SNoHupJ_14version_ranges6RangesBZ_ENtNtB4_7algebra6NodeIdEENCNvMsu_NtB4_4treeNtB44_16StringMarkerTree8children0EEB6_(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCs5e9M2GLoJMY_8indexmap3map4iterINtB7_8IndexMapNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree10MarkerTreeINtCs6fe3SNoHupJ_14version_ranges6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterB10_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs9_Cs6fe3SNoHupJ_14version_rangesINtB5_6RangesNtNtCscdodAO9FK5_5alloc6string6StringENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsaaRuwTSDeTG_9pep508_rs9normalize10extra_name9ExtraNameNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCscdodAO9FK5_5alloc6string6StringNtB6_5Debug3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #14

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 -1, 2) i8 @_RNvMs3_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7Version8cmp_slow(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs2_NtNtCs4NRVxsYgnAr_4core5slice3cmpNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionINtB5_14SlicePartialEqBC_E17equal_same_lengthCsaaRuwTSDeTG_9pep508_rs(ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh9ends_withCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCs4NRVxsYgnAr_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsd_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvYNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs4NRVxsYgnAr_4core3fmt5Write9write_fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsaaRuwTSDeTG_9pep508_rs6cursorNtB4_6CursorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCsgHAIXRTqFF5_9pep440_rs7versionNtB5_7VersionNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB21_5slice4iter4IterIBT_NtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEENCNvXsK_B3d_NtB3d_18MarkerTreeContentsNtNtB21_3fmt7Display3fmts_0EE9from_iterB3h_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCsaaRuwTSDeTG_9pep508_rs9normalize10extra_nameNtB5_9ExtraNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsgHAIXRTqFF5_9pep440_rs7version8OperatorNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionNtB6_7Display3fmtCsaaRuwTSDeTG_9pep508_rs(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtBb_5slice4iter4IterNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionENvYB1g_NtNtCscdodAO9FK5_5alloc6string8ToString9to_stringENtCsjuSkmafxH5F_9itertools9Itertools4joinCsaaRuwTSDeTG_9pep508_rs(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsaaRuwTSDeTG_9pep508_rs6marker5parse13parse_markersNtNtB6_12verbatim_url11VerbatimUrlNtB6_15TracingReporterEB6_(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra5EdgesNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i8(i8, i8) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #19 = { cold }
attributes #20 = { cold noreturn nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 0, i64 7}
!4 = !{}
!5 = !{i64 8}
!6 = !{i64 0, i64 2}
!7 = !{i64 -1, i64 3}
!8 = !{i64 0, i64 -9223372036854775807}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = !{i64 0, i64 3}
!11 = !{!12, !14}
!12 = distinct !{!12, !13, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!13 = distinct !{!13, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!14 = distinct !{!14, !15, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!15 = distinct !{!15, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!18 = distinct !{!18, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!19 = !{!20, !12, !14}
!20 = distinct !{!20, !18, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!21 = !{i64 0, i64 -9223372036854775808}
!22 = !{!23, !25}
!23 = distinct !{!23, !24, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!24 = distinct !{!24, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!25 = distinct !{!25, !26, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!26 = distinct !{!26, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!27 = !{!28}
!28 = distinct !{!28, !29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!29 = distinct !{!29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!30 = !{!31, !23, !25}
!31 = distinct !{!31, !29, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!32 = !{!33, !35}
!33 = distinct !{!33, !34, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!34 = distinct !{!34, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!35 = distinct !{!35, !36, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!36 = distinct !{!36, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!39 = distinct !{!39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!40 = !{!41, !33, !35}
!41 = distinct !{!41, !39, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!42 = !{!43, !45}
!43 = distinct !{!43, !44, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!44 = distinct !{!44, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!45 = distinct !{!45, !46, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!46 = distinct !{!46, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!47 = !{!48}
!48 = distinct !{!48, !49, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!49 = distinct !{!49, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!50 = !{!51, !43, !45}
!51 = distinct !{!51, !49, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!52 = !{!53, !55}
!53 = distinct !{!53, !54, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!54 = distinct !{!54, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!55 = distinct !{!55, !56, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!56 = distinct !{!56, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!59 = distinct !{!59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!60 = !{!61, !53, !55}
!61 = distinct !{!61, !59, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!62 = !{!63, !65}
!63 = distinct !{!63, !64, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!64 = distinct !{!64, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!65 = distinct !{!65, !66, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!66 = distinct !{!66, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!69 = distinct !{!69, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!70 = !{!71, !63, !65}
!71 = distinct !{!71, !69, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!72 = !{!73, !75}
!73 = distinct !{!73, !74, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!74 = distinct !{!74, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!75 = distinct !{!75, !76, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!76 = distinct !{!76, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!79 = distinct !{!79, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!80 = !{!81, !73, !75}
!81 = distinct !{!81, !79, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!82 = !{!83, !85}
!83 = distinct !{!83, !84, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_: argument 0"}
!84 = distinct !{!84, !"_RNCNvMsk_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB7_10MarkerTree25evaluate_collect_warnings0Bb_"}
!85 = distinct !{!85, !86, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_: argument 0"}
!86 = distinct !{!86, !"_RNvXs6_CsaaRuwTSDeTG_9pep508_rsNCNvMsk_NtNtB5_6marker4treeNtBB_10MarkerTree25evaluate_collect_warnings0NtB5_8Reporter6reportB5_"}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 0"}
!89 = distinct !{!89, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_"}
!90 = !{!91, !83, !85}
!91 = distinct !{!91, !89, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree17MarkerWarningKindNtNtB7_6string6StringEE8push_mutBL_: argument 1"}
!92 = !{i64 -1, i64 -9223372036854775808}
!93 = !{i64 0, i64 -9223372036854775800}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaaRuwTSDeTG_9pep508_rs12verbatim_url16VerbatimUrlErrorEBF_: argument 0"}
!96 = distinct !{!96, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsaaRuwTSDeTG_9pep508_rs12verbatim_url16VerbatimUrlErrorEBF_"}
!97 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!98 = !{i64 1, i64 536870913}
!99 = !{i64 0, i64 5}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs17version_specifier16VersionSpecifierECsaaRuwTSDeTG_9pep508_rs: argument 0"}
!102 = distinct !{!102, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs17version_specifier16VersionSpecifierECsaaRuwTSDeTG_9pep508_rs"}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionECsaaRuwTSDeTG_9pep508_rs: argument 0"}
!105 = distinct !{!105, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsgHAIXRTqFF5_9pep440_rs7version7VersionECsaaRuwTSDeTG_9pep508_rs"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECsaaRuwTSDeTG_9pep508_rs: argument 0"}
!108 = distinct !{!108, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerEECsaaRuwTSDeTG_9pep508_rs"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs: argument 0"}
!111 = distinct !{!111, !"_RNvXsD_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsaaRuwTSDeTG_9pep508_rs"}
!112 = !{!110, !107, !104, !101}
!113 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra5EdgesEBH_: argument 0"}
!116 = distinct !{!116, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker7algebra5EdgesEBH_"}
!117 = !{i8 0, i8 5}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerValueExtraEBH_: argument 0"}
!120 = distinct !{!120, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerValueExtraEBH_"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq: argument 0"}
!123 = distinct !{!123, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq"}
!124 = !{!125}
!125 = distinct !{!125, !123, !"_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern14small_slice_eq: argument 1"}
!126 = !{!122, !125}
!127 = !{!128, !130}
!128 = distinct !{!128, !129, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_lower_bound: argument 0"}
!129 = distinct !{!129, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_lower_bound"}
!130 = distinct !{!130, !129, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_lower_bound: argument 1"}
!131 = !{!128}
!132 = !{!130}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_upper_bound: argument 1"}
!135 = distinct !{!135, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_upper_bound"}
!136 = !{!137}
!137 = distinct !{!137, !135, !"_RNvMs2_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB5_14MarkerOperator16from_upper_bound: argument 0"}
!138 = !{!137, !134}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtB6_6OptionBH_EEBO_: argument 1"}
!141 = distinct !{!141, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtB6_6OptionBH_EEBO_"}
!142 = !{!143}
!143 = distinct !{!143, !141, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtB6_6OptionBH_EEBO_: argument 2"}
!144 = !{!145, !140}
!145 = distinct !{!145, !141, !"_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterTNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree14MarkerOperatorNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtNtB8_4iter6traits8iterator8Iterator5chainINtB6_6OptionBH_EEBO_: argument 0"}
!146 = !{!145, !143}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_RINvMsf_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpression14parse_reporterNtBa_15TracingReporterEBa_: argument 0"}
!149 = distinct !{!149, !"_RINvMsf_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpression14parse_reporterNtBa_15TracingReporterEBa_"}
!150 = !{!148, !151, !152}
!151 = distinct !{!151, !149, !"_RINvMsf_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpression14parse_reporterNtBa_15TracingReporterEBa_: argument 1"}
!152 = distinct !{!152, !149, !"_RINvMsf_NtNtCsaaRuwTSDeTG_9pep508_rs6marker4treeNtB6_16MarkerExpression14parse_reporterNtBa_15TracingReporterEBa_: argument 2"}
!153 = !{!151, !152}
!154 = !{i64 -1, i64 5}
!155 = !{!156}
!156 = distinct !{!156, !157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_: argument 0"}
!157 = distinct !{!157, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_"}
!158 = !{!159, !161, !148, !151, !152}
!159 = distinct !{!159, !160, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsaaRuwTSDeTG_9pep508_rs6cursor6CursorNtB5_12SpecToString14spec_to_stringBB_: argument 0"}
!160 = distinct !{!160, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsaaRuwTSDeTG_9pep508_rs6cursor6CursorNtB5_12SpecToString14spec_to_stringBB_"}
!161 = distinct !{!161, !160, !"_RNvXsC_NtCscdodAO9FK5_5alloc6stringNtNtCsaaRuwTSDeTG_9pep508_rs6cursor6CursorNtB5_12SpecToString14spec_to_stringBB_: argument 1"}
!162 = !{!159, !148}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_: argument 0"}
!165 = distinct !{!165, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaaRuwTSDeTG_9pep508_rs6marker4tree16MarkerExpressionEEB13_"}
!166 = !{i8 0, i8 2}
end_hunk_2
