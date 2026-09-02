Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.14?download=true
inline.NumInlined: 895
inline.NumDeleted: 521
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18alloc_data_segment:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1301, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.i, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit

bb.d:                                             ; preds = %bb.b
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.j, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #33
          to label %bb.h unwind label %bb.e, !noalias !1301

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq ptr %1, null
  br i1 %i.q, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1302
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.g, label %.body.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #29
          to label %.body.i unwind label %bb.k, !noalias !1301

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.c
  %i.t = invoke { ptr, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6memory4data17DataSegmentEntityE16new_uninit_sliceBO_(i64 noundef %i.k)
          to label %bb.j unwind label %bb.e, !noalias !1301

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  store ptr %i.u, ptr %i.n, align 8, !alias.scope !1301
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit

bb.k:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1301
  unreachable

bb.l:                                             ; preds = %bb.a
  %i.w = icmp eq ptr %1, null
  br i1 %i.w, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = atomicrmw sub ptr %1, i64 1 release, align 8, !noalias !1303
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.n, label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread

bb.n:                                             ; preds = %bb.m
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #29, !noalias !1299
  br label %_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread

.body.i:                                          ; preds = %bb.g, %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit.thread: ; preds = %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 18) #33
  unreachable

_RNvMs4_NtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arenaINtB5_11StableArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtNtB1o_6memory4data11DataSegmentENtB21_17DataSegmentEntityE5allocB1o_.exit: ; preds = %bb.c, %bb.j
  %.sroa.0.0.i14.i = phi ptr [ %i.u, %bb.j ], [ %i.o, %bb.c ] ; 2 uses
  %i.z = sub nsw i64 %i.h, %i.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i14.i) ]
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i14.i, i64 %i.z ; 2 uses
  store ptr %1, ptr %i.aa, align 8, !noalias !1301
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 %2, ptr %i.ab, align 8, !noalias !1301
  %i.ac = add nuw nsw i64 %i.e, 1
  store i64 %i.ac, ptr %i.c, align 8, !alias.scope !1301
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.6.0.extract.trunc = trunc nuw i64 %i.e to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.ae = load i32, ptr %i.ad, align 8, !noundef !4
  %i.af = insertvalue { i32, i32 } poison, i32 %i.ae, 0
  %i.ag = insertvalue { i32, i32 } %i.af, i32 %.sroa.6.0.extract.trunc, 1
  ret { i32, i32 } %i.ag
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18try_resolve_global(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1316)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1320, !noalias !1321, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1322
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 912
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1320, !noalias !1321, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1315, !noalias !1316
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6global6GlobalINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6global6GlobalEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1315, !noalias !1316
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner18try_resolve_memory(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %1, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1576
  %.val = load i32, ptr %i.a, align 8, !noundef !4
  %.val1 = load i32, ptr %2, align 4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.val2 = load i32, ptr %i.b, align 4            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  %.not.i = icmp eq i32 %.val1, %.val
  br i1 %.not.i, label %bb.b, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 456
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  %i.d = zext i32 %.val2 to i64                   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.e = load i64, ptr %i.c, align 8, !alias.scope !1339, !noalias !1340, !noundef !4
  %.not.i.i.i.i = icmp ugt i64 %i.e, %i.d
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult i32 %.val2, -32
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #28, !noalias !1341
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i64 %i.d, 32                 ; 2 uses
  %i.h = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true) ; 2 uses
  %i.i = sub nuw nsw i64 58, %i.h
  %i.j = lshr exact i64 -9223372036854775808, %i.h
  %i.k = sub nsw i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.i
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !1339, !noalias !1340, !nonnull !4, !noundef !4
  %i.o = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !alias.scope !1334, !noalias !1335
  br label %_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit

_RINvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB6_10StoreInner7resolveNtNtBa_6memory6MemoryINtNtNtCsg06799QCvd1_17wasmi_collections5arena12stable_arena11StableArenaINtNtBa_6handle9RawHandleB15_ENtNtCs5zeGauAcNNa_10wasmi_core6memory6MemoryEEBa_.exit: ; preds = %bb.a, %bb.b, %bb.e
  %storemerge4.i = phi i64 [ 1, %bb.a ], [ -1, %bb.e ], [ 2, %bb.b ]
  store i64 %storemerge4.i, ptr %0, align 8, !alias.scope !1334, !noalias !1335
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i32, i32 } @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner19alloc_extern_object(ptr noalias nofree noundef align 8 dereferenceable(1584) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1349)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1348, !noalias !1349, !noundef !4 ; 4 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ugt i64 %i.c, 4294967295
  %i.f = trunc nuw i64 %i.c to i32
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %.not.i10 = icmp eq i32 %i.g, 0
  %.not.i = select i1 %i.e, i1 true, i1 %.not.i10
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = invoke { i64, i64 } @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef 1, i64 noundef 8, i64 noundef 16)
          to label %bb.i unwind label %bb.n, !noalias !1349

bb.c:                                             ; preds = %bb.i, %bb.a
  %.sroa.4.0.i = phi i8 [ 2, %bb.a ], [ 0, %bb.i ]
  %i.i = load ptr, ptr %2, align 8, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void %i.i(ptr noundef nonnull %1)
          to label %bb.e unwind label %bb.g, !noalias !1349

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !7, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !16, !invariant.load !4, !alias.scope !1349, !noalias !1348
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #30, !noalias !1349
  br label %bb.p

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !7, !invariant.load !4, !alias.scope !1349, !noalias !1348 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !16, !invariant.load !4, !alias.scope !1349, !noalias !1348
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, 0) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #30, !noalias !1349
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.n, %bb.l, %bb.h, %bb.g
  %common.resume.op.i = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.aa, %bb.n ], [ %i.y, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i

bb.i:                                             ; preds = %bb.b
  %i.u = extractvalue { i64, i64 } %i.h, 0
  %.not16.i = icmp eq i64 %i.u, -1
  br i1 %.not16.i, label %bb.j, label %bb.c

bb.j:                                             ; preds = %bb.i
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !1350, !noalias !1351, !noundef !4 ; 3 uses
  %i.w = load i64, ptr %i.a, align 8, !range !7, !alias.scope !1350, !noalias !1351, !noundef !4
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.k, label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_7reftype9ExternRefENtB1E_15ExternRefEntityE5allocB11_.exit

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_7reftype9ExternRefENtB1E_15ExternRefEntityE5allocB11_.exit unwind label %bb.l, !noalias !1351

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityEBF_(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(32) %2) #31
          to label %common.resume.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1351
  unreachable

bb.n:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi7reftype15ExternRefEntityEBF_(ptr nonnull %1, ptr nonnull readonly align 8 dereferenceable(32) %2) #31
          to label %common.resume.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #32, !noalias !1349
  unreachable

_RNvMs4_NtCsg06799QCvd1_17wasmi_collections5arenaINtB5_5ArenaINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtB11_7reftype9ExternRefENtB1E_15ExternRefEntityE5allocB11_.exit: ; preds = %bb.j, %bb.k
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 176
  %4 = load ptr, ptr %3, align 8, !alias.scope !1350, !noalias !1351, !nonnull !4, !noundef !4
  %5 = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %i.v ; 2 uses
  store ptr %1, ptr %5, align 8, !noalias !1351
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %6, align 8, !noalias !1351
  %7 = add i64 %i.v, 1
  store i64 %7, ptr %i.b, align 8, !alias.scope !1350, !noalias !1351
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %9 = load i32, ptr %8, align 8, !noundef !4
  %10 = insertvalue { i32, i32 } poison, i32 %i.g, 0
  %11 = insertvalue { i32, i32 } %10, i32 %9, 1
  ret { i32, i32 } %11

bb.p:                                             ; preds = %bb.f, %bb.e
  tail call void @_RNvNtCsefoF4u9kbII_5wasmi5store16handle_arena_err(i8 noundef %.sroa.4.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 19) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs4_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner19initialize_instance(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1584) %0, i32 noundef %1, i32 noundef %2, ptr noalias noundef nonnull align 8 %3, i64 noundef %4, i64 noundef %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [1 x i8], align 1                 ; 3 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 3 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 4 uses
  %i.r = alloca [8 x i8], align 4                 ; 3 uses
  store i32 %1, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store i32 %2, ptr %i.s, align 4
  store ptr %3, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 %4, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = load i8, ptr %i.u, align 4, !range !23, !noundef !4
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.c, label %bb.b, !prof !1383

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtNtCsefoF4u9kbII_5wasmi8instance6entityNtB4_14InstanceEntity6warmup(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 8 dereferenceable(1584) %0)
          to label %bb.d unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsn_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtBN_, ptr %.sroa.48.0..sroa_idx, align 8
  br label %.invoke

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1576
  %i.y = load i32, ptr %i.x, align 8, !noundef !4
  %.not = icmp eq i32 %1, %i.y
  br i1 %.not, label %bb.e, label %bb.o, !prof !5

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.z = zext i32 %2 to i64                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = icmp ugt i64 %i.ab, %i.z
  br i1 %i.ac, label %bb.g, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 1, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.r, ptr %i.j, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @_RNvXs0_NtCsefoF4u9kbII_5wasmi8instanceNtB5_8InstanceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.416.0..sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.k, ptr %i.ad, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr @_RNvXs_NtNtCsg06799QCvd1_17wasmi_collections5arena5errorNtB4_10ArenaErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  br label %.invoke

bb.g:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !4, !noundef !4
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.z ; 6 uses
  store ptr %i.ag, ptr %i.m, align 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i8, ptr %i.ai, align 4, !range !23, !noundef !4
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.h, !prof !1384

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %i.m, ptr %i.l, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXs1h_NtCskKLDkoKarTP_4core3fmtQINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityENtB6_5Debug3fmtB1b_, ptr %.sroa.424.0..sroa_idx, align 8
  br label %.invoke

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ag, i64 8      ; 4 uses
  %.val30 = load i64, ptr %i.al, align 8, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsefoF4u9kbII_5wasmi8instance6entity14InstanceEntityEEB1g_(ptr nonnull %i.ah, i64 %.val30)
          to label %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit.i unwind label %.thread

.thread:                                          ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  store ptr %3, ptr %i.ag, align 8
  store i64 %4, ptr %i.al, align 8
  br label %bb.p

_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit.i: ; preds = %bb.i
  store ptr %3, ptr %i.ag, align 8
  store i64 %4, ptr %i.al, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1385)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %5, ptr %i.i, align 8, !noalias !1385
  %i.an = ptrtoint ptr %3 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !1385, !noundef !4 ; 2 uses
  %i.aq = icmp ugt i64 %5, 4294967295
  br i1 %i.aq, label %.noexc31, label %bb.j, !prof !10

bb.j:                                             ; preds = %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !noalias !1385, !noundef !4
  %i.at = trunc nuw i64 %5 to i32                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1385
  store i32 %i.at, ptr %i.g, align 4, !noalias !1385
  %i.au = sub i32 %i.as, %i.ap                    ; 3 uses
  %.not.i = icmp ult i32 %i.au, %i.at
  br i1 %.not.i, label %.noexc32, label %.preheader.i, !prof !10

.preheader.i:                                     ; preds = %bb.j
  %.not2640.i = icmp ugt i32 %i.au, %i.at
  br i1 %.not2640.i, label %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.lr.ph.i, label %.loopexit

_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.lr.ph.i: ; preds = %.preheader.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !1385
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ay = zext i32 %i.au to i64
  br label %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.i

.noexc31:                                         ; preds = %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1385
  store ptr %i.i, ptr %i.h, align 8, !noalias !1385
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1385
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @63) #28
  unreachable

.noexc32:                                         ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1385
  store ptr %i.g, ptr %i.f, align 8, !noalias !1385
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !1385
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @56, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #28
  unreachable

_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.i: ; preds = %bb.n, %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.lr.ph.i
  %indvars.iv.i = phi i64 [ %5, %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 2 uses
  %i.az = trunc nuw i64 %indvars.iv.i to i32
  %i.ba = add i32 %i.ap, %i.az                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1385
  store i32 %i.ba, ptr %i.e, align 4, !noalias !1385
  %i.bb = load i64, ptr %i.al, align 8, !noalias !1386, !noundef !4
  %i.bc = zext i32 %i.ba to i64                   ; 2 uses
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.k, label %.noexc33, !prof !5

.noexc33:                                         ; preds = %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1385
  store ptr %i.e, ptr %i.d, align 8, !noalias !1385
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXss_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_8FuncAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !1385
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #28
  unreachable

bb.k:                                             ; preds = %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_instance.exit35.i
  %i.be = load ptr, ptr %i.ag, align 8, !noalias !1386, !nonnull !4, !noundef !4
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %i.bc ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load i32, ptr %i.bg, align 8, !noalias !1385, !noundef !4 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !1385, !noundef !4
  %i.bk = icmp ne i32 %i.bh, 0
  tail call void @llvm.assume(i1 %i.bk)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %.not.i.i.i = icmp eq i32 %i.bj, %1
  br i1 %.not.i.i.i, label %bb.l, label %.noexc35, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.bl = add i32 %i.bh, -1
  %i.bm = zext i32 %i.bl to i64                   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.aw, %i.bm
  br i1 %.not.i.i.i.i.i.i.i, label %bb.m, label %.noexc35

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp ult i32 %i.bh, -31
  br i1 %i.bn, label %_RNvMs5_NtNtCsefoF4u9kbII_5wasmi5store5innerNtB5_10StoreInner16resolve_func_mut.exit.i, label %.noexc34

.noexc34:                                         ; preds = %bb.m
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 27, i64 noundef 27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #28
  unreachable

.noexc35:                                         ; preds = %bb.l, %bb.k
  %storemerge.i.ph.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.l ]
end_hunk_0
