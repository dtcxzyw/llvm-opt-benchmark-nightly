Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.01?download=true
inline.NumInlined: 295
inline.NumDeleted: 129
begin_hunk_0_@_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard6detach:bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not2.i = icmp eq i64 %i.e, 0
  br i1 %.not2.i, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
          to label %.noexc2 unwind label %.body

.noexc2:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr [184 x i8], ptr %i.g, i64 %i.e
  %i.k = getelementptr i8, ptr %i.j, i64 -184
  invoke void @_RNvMNtCsC8CapfvpQ1_5salsa12active_queryNtB2_11ActiveQuery20detach_input_outputs(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(184) %i.k)
          to label %bb.f unwind label %.body

.body:                                            ; preds = %bb.b, %bb.d, %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load i64, ptr %i.c, align 8, !noundef !4
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.c, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load i64, ptr %i.c, align 8, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.c, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.h:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard8complete(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i16 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 5 uses
  store i64 -1, ptr %i.c, align 8, !noalias !424
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvMs4_NtCsC8CapfvpQ1_5salsa12active_queryNtB5_10QueryStack18pop_into_revisions(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.b, i16 noundef %2)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.c, align 8, !noundef !4
  %i.g = add i64 %i.f, 1
  store i64 %i.g, ptr %i.c, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !noundef !4
  %i.i = add i64 %i.h, 1
  store i64 %i.i, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.d:                                             ; preds = %.body
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsu_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_13DetachedQuery14pop_completion(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1, i16 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !436
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.d, ptr noundef nonnull align 8 dereferenceable(12) %i.e, i64 12, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 68
  store i16 %2, ptr %i.f, align 4, !noalias !436
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !437
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  %i.h = zext i1 %3 to i8
  store i8 %i.h, ptr %i.g, align 2, !noalias !436
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8 ; 5 uses
  store i64 -1, ptr %i.i, align 8, !noalias !438
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %1, i64 56, i1 false), !noalias !437
  invoke void @_RNvMs4_NtCsC8CapfvpQ1_5salsa12active_queryNtB5_10QueryStack23pop_detached_completion(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.j, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, i16 noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a, i1 noundef zeroext %3)
          to label %_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard23pop_detached_completion.exit unwind label %.body.i, !noalias !440

.body.i:                                          ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load i64, ptr %i.i, align 8, !noalias !436, !noundef !4
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.i, align 8, !noalias !436
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa11zalsa_local16ActiveQueryGuardEBF_(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.c) #29
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !436
  unreachable

bb.c:                                             ; preds = %.body.i
  resume { ptr, i32 } %i.k

_RNvMst_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_16ActiveQueryGuard23pop_detached_completion.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !439
  %i.o = load i64, ptr %i.i, align 8, !noalias !436, !noundef !4
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.i, align 8, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !436
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #7 {
_RNvXs12_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB6_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %i.a = load i64, ptr %0, align 4
  %i.b = load i64, ptr %1, align 4
  %i.c = xor i64 %i.a, %i.b
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i32, ptr %i.d, align 4
  %i.g = load i32, ptr %i.e, align 4
  %i.h = zext i32 %i.f to i64
  %i.i = zext i32 %i.g to i64
  %i.j = xor i64 %i.h, %i.i
  %i.k = or i64 %i.c, %i.j
  %i.l = icmp ne i64 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs4_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB8_24QueryRevisionsExtraInnerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_19FmtTrackedStructIdsB1b_3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4
  %i.e = icmp ugt i64 %i.d, 5
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB19_2id2IdERINtCsa3bo7ChGFM8_8thin_vec7ThinVecB14_EEB19_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) ; 0 uses
  %i.g = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.i = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.j = icmp ugt i64 %i.i, 4
  br i1 %i.j, label %bb.f, label %bb.e, !prof !7

bb.d:                                             ; preds = %bb.f, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.f ], [ %i.g, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef 5, i64 noundef %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #27
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.k = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtB19_2id2IdERSB14_EB19_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.h, i64 noundef 5) ; 0 uses
  %i.l = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %bb.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_14QueryOriginRef6inputs0INtB7_5FnMutTNtBW_9QueryEdgeEE8call_mutBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) initializes((0, 4)) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %2) unnamed_addr #8 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4
  %i.a = icmp sgt i32 %.sroa.3.0.copyload, -1
  br i1 %i.a, label %bb.b, label %_RNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB7_14QueryOriginRef6inputs0B9_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.0.0.copyload = load i32, ptr %2, align 4
  %i.b = add i32 %.sroa.0.0.copyload, 1           ; 2 uses
  %i.c = icmp ne i32 %i.b, 0
  tail call void @llvm.assume(i1 %i.c)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %3 = load <2 x i32>, ptr %.sroa.2.0..sroa_idx, align 4
  store <2 x i32> %3, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !448
  br label %_RNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB7_14QueryOriginRef6inputs0B9_.exit

_RNCNvMs6_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB7_14QueryOriginRef6inputs0B9_.exit: ; preds = %bb.a, %bb.b
  %.sink.i = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  store i32 %.sink.i, ptr %0, align 4, !alias.scope !448
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCNvMsm_NtCsC8CapfvpQ1_5salsa11zalsa_localNtBW_10QueryEdges12iter_outputs0INtB7_5FnMutTRNtBW_9QueryEdgeEE8call_mutBY_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(12) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i32, ptr %i.a, align 4, !noundef !4
  %i.b = icmp slt i32 %.val, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa11zalsa_local10QueryEdgesNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !456
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !455
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !456
  call void @llvm.experimental.noalias.scope.decl(metadata !457)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.d = load i64, ptr %i.c, align 8, !range !5, !alias.scope !459, !noundef !4 ; 2 uses
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !459, !nonnull !4, !align !15, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !459, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.i
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.i
  %.sroa.5.0.i.i = select i1 %i.e, ptr %i.j, ptr %i.k
  store i64 %i.d, ptr %i.a, align 8, !alias.scope !457, !noalias !456
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !alias.scope !457, !noalias !456
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.5.0.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !457, !noalias !456
  %i.l = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeNtB15_13QueryEdgeIterEB17_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !456
  %i.m = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !456
  ret i1 %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa11zalsa_local9QueryEdgeNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !15, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !463, !noundef !4 ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 5), !noalias !463
  br label %_RNvXsk_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 6), !noalias !463
  br label %_RNvXsk_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit

_RNvXsk_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_9QueryEdgeNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !464
  %i.g = and i32 %i.e, 2147483647
  %i.h = load <2 x i32>, ptr %i.c, align 4, !alias.scope !463
  %i.i = add <2 x i32> %i.h, <i32 1, i32 0>       ; 2 uses
  %i.j = extractelement <2 x i32> %i.i, i64 0
  %i.k = icmp ne i32 %i.j, 0
  call void @llvm.assume(i1 %i.k)
  store <2 x i32> %i.i, ptr %i.a, align 8, !noalias !464
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.g, ptr %i.l, align 8, !noalias !464
  %i.m = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67), !noalias !463
  %i.n = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m), !noalias !463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  ret i1 %i.n
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs4_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_24QueryRevisionsExtraInnerNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 24)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 11, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @43)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 9, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 50
  %i.h = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 15, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47) ; 0 uses
  %i.i = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @49) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 18, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @51) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @53)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsC_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginRefNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i32, ptr %0, align 8, !range !465, !noundef !4
  switch i32 %i.d, label %default.unreachable1 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.e, ptr %i.c, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 8, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @55)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.b, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.a, align 8
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14OriginAndExtraNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly captures(none) dereferenceable(13) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 1, !noundef !4    ; 3 uses
  %i.b = and i8 %i.a, 3                           ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #27
  unreachable

_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit: ; preds = %bb.a
  %i.d = and i8 %i.a, 8
  %i.e = icmp eq i8 %i.d, 0                       ; 3 uses
  %i.f = and i8 %i.a, 4
  %i.g = icmp eq i8 %i.f, 0
  %i.h = icmp eq i8 %i.b, 1                       ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit
  br i1 %i.h, label %bb.e, label %bb.f

bb.d:                                             ; preds = %_RNvMs7_NtCsC8CapfvpQ1_5salsa11zalsa_localNtB5_14QueryOriginTag4kind.exit
end_hunk_0
