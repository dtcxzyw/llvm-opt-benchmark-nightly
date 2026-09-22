Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/qdrant.qdrant.3f8cc1c7dccbb09-cgu.202?download=true
inline.NumInlined: 372
inline.NumDeleted: 289
begin_hunk_0_@_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing23collect_query_interface:bb.a

.lr.ph.i:                                         ; preds = %bb.k, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.av, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 416 ; 2 uses
  tail call fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing20collect_vector_input(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(416) %.sroa.0.011.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !184
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 208
  tail call fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing20collect_vector_input(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.bb, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1), !noalias !184
  %i.bc = icmp eq ptr %i.ba, %i.ay
  br i1 %i.bc, label %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing13collect_query.exit, label %.lr.ph.i

_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing13collect_query.exit.sink.split: ; preds = %bb.a, %bb.b
  %.sink10 = phi i64 [ 32, %bb.b ], [ 8, %bb.a ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.sink10
  tail call fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing20collect_vector_input(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(208) %i.bd, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing13collect_query.exit

_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing13collect_query.exit: ; preds = %.lr.ph.i6.i, %.lr.ph.i, %.lr.ph.i4.i, %.lr.ph9.i.i, %_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing13collect_query.exit.sink.split, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %.loopexit6.i.i, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing28collect_query_groups_request(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(896) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.b = tail call { i64, i64 } @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1H_11RandomState3new0B20_ECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0), !noalias !195 ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @2, i64 32, i1 false)
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.c, ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !195
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %.sroa.56.0..sroa_idx.i, align 8, !alias.scope !195
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !12, !noundef !6
  %.not = icmp eq i64 %i.f, -3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing23collect_query_interface(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.e, ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 712
  %i.h = load i64, ptr %i.g, align 8, !range !5, !noundef !6
  %.not3 = icmp eq i64 %i.h, -1
  br i1 %.not3, label %.loopexit, label %bb.e

.loopexit4:                                       ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit4
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit4 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference7service13InferenceDatauEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing10BatchAccumEBJ_.exit unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 720
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 728
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %.idx = mul nuw nsw i64 %i.l, 696
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.f, %bb.e, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.0.05 = phi ptr [ %i.o, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  invoke fastcc void @_RNvNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing16collect_prefetch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(696) %.sroa.0.05, ptr noalias nofree noundef align 8 dereferenceable(48) %i.a)
          to label %bb.f unwind label %.loopexit4

bb.f:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 696 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.m
  br i1 %i.p, label %.loopexit, label %.lr.ph

bb.g:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsl8OoimOLbh_6qdrant6common9inference16batch_processing10BatchAccumEBJ_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_10CoalesceByINtCsgNzSnKyKfuE_6either6EitherINtNtB9_11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3N_10Collection38merge_intermediate_results_from_shards00EIB1D_B26_NCB3G_s_0EEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 8 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef align 8 dereferenceable(240) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [408 x i8], align 8       ; 7 uses
  %i.a = alloca [208 x i8], align 8               ; 6 uses
  %i.b = alloca [416 x i8], align 8               ; 12 uses
  %.sroa.54.i = alloca [208 x i8], align 8        ; 7 uses
  %.sroa.5.i = alloca [208 x i8], align 8         ; 7 uses
  %i.c = alloca [208 x i8], align 8               ; 8 uses
  %i.d = alloca [208 x i8], align 8               ; 9 uses
  %i.e = alloca [208 x i8], align 8               ; 2 uses
  %.sroa.5 = alloca [208 x i8], align 8           ; 5 uses
  %i.f = alloca [208 x i8], align 8               ; 6 uses
  %.sroa.7 = alloca [200 x i8], align 8           ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.h = load i64, ptr %i.g, align 8, !range !13, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %i.h, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7.0..sroa_idx, i64 200, i1 false)
  store i64 -1, ptr %i.g, align 8
  %.not17 = icmp eq i64 %i.h, -1
  br i1 %.not17, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtCs9XvERIT2X68_9itertools11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3k_10Collection38merge_intermediate_results_from_shards00EIBP_B1D_NCB3d_s_0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.i = load i64, ptr %i.f, align 8, !range !7, !noundef !6 ; 2 uses
  %.not16 = icmp eq i64 %i.i, -1
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.426.0..sroa_idx, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.g:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i64 [ %i.h, %bb.b ], [ %i.i, %bb.d ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.7, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 %.sroa.0.0, ptr %i.d, align 8, !noalias !221
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 169
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 376
  %.sroa.2.0..sroa_idx3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 377
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  %.sroa.4.208..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 200
  br label %bb.h

bb.h:                                             ; preds = %bb.q, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !220
  invoke void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtCs9XvERIT2X68_9itertools11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3k_10Collection38merge_intermediate_results_from_shards00EIBP_B1D_NCB3d_s_0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([208 x i8]) align 8 captures(address) dereferenceable(208) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.i unwind label %bb.r, !noalias !222

bb.i:                                             ; preds = %bb.h
  %i.o = load i64, ptr %i.c, align 8, !range !7, !noalias !220, !noundef !6
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.v, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i64 208, i1 false), !noalias !220
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.54.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %i.d, i64 208, i1 false), !noalias !220
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !225)
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  call void @llvm.experimental.noalias.scope.decl(metadata !230)
  %.sroa.01.0.copyload.i.i.i.i.i = load i8, ptr %i.k, align 8, !alias.scope !231, !noalias !232 ; 2 uses
  %.sroa.2.0.copyload.i.i.i.i.i = load i128, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 1, !alias.scope !231, !noalias !232 ; 2 uses
  %.sroa.2.sroa.2.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.2.0.copyload.i.i.i.i.i, 56
  %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.2.sroa.2.0.extract.shift.i.i.i.i.i to i64
  %.sroa.02.0.copyload.i.i.i.i.i = load i8, ptr %i.m, align 8, !alias.scope !233, !noalias !234 ; 2 uses
  %.sroa.2.0.copyload4.i.i.i.i.i = load i128, ptr %.sroa.2.0..sroa_idx3.i.i.i.i.i, align 1, !alias.scope !233, !noalias !234 ; 2 uses
  %.sroa.2.sroa.210.0.extract.shift.i.i.i.i.i = lshr i128 %.sroa.2.0.copyload4.i.i.i.i.i, 56
  %.sroa.2.sroa.210.0.extract.trunc.i.i.i.i.i = trunc i128 %.sroa.2.sroa.210.0.extract.shift.i.i.i.i.i to i64
  %.mask.i.i.i.i.i = and i8 %.sroa.01.0.copyload.i.i.i.i.i, 1 ; 2 uses
  %i.p = trunc nuw i8 %.sroa.02.0.copyload.i.i.i.i.i to i1
  %.mask14.i.i.i.i.i = and i8 %.sroa.02.0.copyload.i.i.i.i.i, 1
  %i.q = icmp eq i8 %.mask.i.i.i.i.i, %.mask14.i.i.i.i.i
  br i1 %i.q, label %bb.k, label %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i

bb.k:                                             ; preds = %bb.j
  %i.r = trunc nuw i8 %.sroa.01.0.copyload.i.i.i.i.i to i1
  br i1 %i.r, label %.split.i.i.i.i.i, label %bb.l

.split.i.i.i.i.i:                                 ; preds = %bb.k
  call void @llvm.assume(i1 %i.p)
  %i.s = icmp eq i128 %.sroa.2.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload4.i.i.i.i.i
  br i1 %i.s, label %_RNvXs7_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointE10dedup_pairCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i

bb.l:                                             ; preds = %bb.k
  %2 = icmp eq i8 %.mask.i.i.i.i.i, 0
  call void @llvm.assume(i1 %2)
  %i.t = icmp eq i64 %.sroa.2.sroa.2.0.extract.trunc.i.i.i.i.i, %.sroa.2.sroa.210.0.extract.trunc.i.i.i.i.i
  br i1 %i.t, label %_RNvXs7_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointE10dedup_pairCsl8OoimOLbh_6qdrant.exit.i.i.i, label %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXs7_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointE10dedup_pairCsl8OoimOLbh_6qdrant.exit.i.i.i: ; preds = %bb.l, %.split.i.i.i.i.i
  %i.u = load float, ptr %i.l, align 8, !alias.scope !231, !noalias !232, !noundef !6
  %i.v = load float, ptr %i.n, align 8, !alias.scope !233, !noalias !234, !noundef !6
  %i.w = fcmp oeq float %i.u, %i.v
  br i1 %i.w, label %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.thread.i.i, label %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i

_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.thread.i.i: ; preds = %_RNvXs7_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointE10dedup_pairCsl8OoimOLbh_6qdrant.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(208) %i.d, i64 208, i1 false), !noalias !220
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.j), !noalias !222
  br label %bb.q

_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i: ; preds = %_RNvXs7_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceNtB5_7DedupEqINtB5_14DedupPredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointE10dedup_pairCsl8OoimOLbh_6qdrant.exit.i.i.i, %bb.l, %.split.i.i.i.i.i, %bb.j
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !223, !noalias !235 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.2.0..sroa_idx, i64 200, i1 false), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.4.208..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i64 208, i1 false), !noalias !220
  %.not.i.i = icmp eq i64 %.sroa.03.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  store i64 %.sroa.03.0.copyload.i.i, ptr %i.a, align 8, !noalias !236
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %.sroa.6.0..sroa_idx2.i.i, ptr noundef nonnull align 8 dereferenceable(200) %.sroa.2.0..sroa_idx, i64 200, i1 false), !noalias !220
  %i.x = load i64, ptr %i.g, align 8, !range !13, !alias.scope !237, !noalias !238, !noundef !6
  %switch.i.i.i = icmp ugt i64 %i.x, -3
  br i1 %switch.i.i.i, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.g)
          to label %bb.u unwind label %bb.o, !noalias !238

bb.o:                                             ; preds = %bb.n
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i64 208, i1 false), !noalias !239
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(208) %i.a) #24
          to label %.body.thread.i unwind label %bb.p, !noalias !238

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !238
  unreachable

bb.q:                                             ; preds = %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.i.i, %_RNvXs6_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_22DedupPred2CoalescePredNtB5_7DedupEqEINtB5_17CoalescePredicateNtNtCs607s0NAIaWN_7segment5types11ScoredPointB1W_E13coalesce_pairCsl8OoimOLbh_6qdrant.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.54.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.4.i.i, i64 208, i1 false), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.54.i, i64 208, i1 false), !alias.scope !241, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.d, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5.i, i64 208, i1 false), !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220
  br label %bb.h

.body.thread.i:                                   ; preds = %bb.r, %bb.o
  %eh.lpad-body7.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %i.aa, %bb.r ]
  resume { ptr, i32 } %eh.lpad-body7.i

bb.r:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs607s0NAIaWN_7segment5types11ScoredPointECsl8OoimOLbh_6qdrant(ptr noalias nofree noundef align 8 dereferenceable(208) %i.d) #24
          to label %.body.thread.i unwind label %bb.s, !noalias !222

bb.s:                                             ; preds = %bb.r
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !222
  unreachable

bb.t:                                             ; preds = %bb.w, %bb.f
  ret void

bb.u:                                             ; preds = %bb.m, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %i.j, i64 208, i1 false), !noalias !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.54.i, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false), !noalias !240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !236
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.54.i, i64 208, i1 false), !alias.scope !241, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.54.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5.i, i64 208, i1 false), !noalias !242
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220
  br label %bb.w

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(208) %i.d, i64 208, i1 false), !noalias !242
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.e, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.5, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %i.e, i64 208, i1 false)
  br label %bb.t
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_10CoalesceByINtCsgNzSnKyKfuE_6either6EitherINtNtB9_11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3N_10Collection38merge_intermediate_results_from_shards00EIB1D_B26_NCB3G_s_0EEINtB5_22DedupPred2CoalescePredNtB5_7DedupEqENtB5_7NoCountENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCsgNzSnKyKfuE_6either8iteratorINtB7_6EitherINtNtCs9XvERIT2X68_9itertools11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection5queryNtB3k_10Collection38merge_intermediate_results_from_shards00EIBP_B1D_NCB3d_s_0EENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !range !13, !noundef !6
  %narrow = icmp ult i64 %i.c, -2
  %.sroa.0.0 = zext i1 %narrow to i64             ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noundef !6
  %i.g = trunc nuw i64 %i.f to i1                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = add i64 %i.i, %.sroa.0.0                 ; 2 uses
  %i.k = icmp uge i64 %i.j, %i.i
  %.sroa.6.0 = select i1 %i.g, i64 %i.j, i64 undef
  %narrow8 = select i1 %i.g, i1 %i.k, i1 false
  %.sroa.03.0 = zext i1 %narrow8 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = or i64 %i.d, %.sroa.0.0
  %i.m = icmp ne i64 %i.l, 0
  %i.n = zext i1 %i.m to i64
  store i64 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.03.0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0, ptr %i.p, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCs9XvERIT2X68_9itertools8adaptors8coalesceINtB5_10CoalesceByINtNtB9_11kmerge_impl8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB3F_10Collection9scroll_by0s2_0EINtB5_22DedupPred2CoalescePredNCB3y_s3_0ENtB5_7NoCountENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 dereferenceable(224) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [376 x i8], align 8       ; 7 uses
  %i.a = alloca [192 x i8], align 8               ; 5 uses
  %i.b = alloca [192 x i8], align 8               ; 6 uses
  %i.c = alloca [384 x i8], align 8               ; 10 uses
  %.sroa.55.i = alloca [192 x i8], align 8        ; 7 uses
  %.sroa.5.i = alloca [192 x i8], align 8         ; 7 uses
  %i.d = alloca [192 x i8], align 8               ; 7 uses
  %i.e = alloca [192 x i8], align 8               ; 8 uses
  %i.f = alloca [192 x i8], align 8               ; 2 uses
  %.sroa.5 = alloca [192 x i8], align 8           ; 5 uses
  %i.g = alloca [192 x i8], align 8               ; 6 uses
  %.sroa.7 = alloca [184 x i8], align 8           ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.j = load i64, ptr %1, align 8, !range !13, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %i.j, -2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7.0..sroa_idx, i64 184, i1 false)
  store i64 -1, ptr %1, align 8
  %.not17 = icmp eq i64 %i.j, -1
  br i1 %.not17, label %bb.f, label %bb.g

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs4_NtCs9XvERIT2X68_9itertools11kmerge_implINtB5_8KMergeByINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtNtCs5QaNqjAn6vc_5shard8retrieve15record_internal14RecordInternalENCNCNvMNtNtCsPYQCUnoTxQ_10collection10collection9point_opsNtB31_10Collection9scroll_by0s2_0ENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsl8OoimOLbh_6qdrant(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
  %i.k = load i64, ptr %i.g, align 8, !range !7, !noundef !6 ; 2 uses
  %.not16 = icmp eq i64 %i.k, -1
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.426.0..sroa_idx, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  store i64 -1, ptr %0, align 8
  br label %bb.v

bb.g:                                             ; preds = %bb.d, %bb.b
  %.sroa.0.0 = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.d ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !262
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(184) %.sroa.7, i64 184, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  store i64 %.sroa.0.0, ptr %i.e, align 8, !noalias !263
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.4.192..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 184
  br label %bb.h
end_hunk_0
