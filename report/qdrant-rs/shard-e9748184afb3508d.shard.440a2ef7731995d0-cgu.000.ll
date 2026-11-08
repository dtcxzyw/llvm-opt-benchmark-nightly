Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/shard-e9748184afb3508d.shard.440a2ef7731995d0-cgu.000?download=true
inline.NumInlined: 3835
inline.NumDeleted: 1834
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterAB11_j1_EBR_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB41_16GroupsAggregator9add_point00EE9from_iterB45_:bb.a
  %i.bm = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5507, !nonnull !16, !noundef !16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.au
  store ptr %i.at, ptr %i.bn, align 8, !captures !58
  %i.bo = add nuw nsw i64 %i.au, 1
  store i64 %i.bo, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5507
  br label %bb.k

bb.q:                                             ; preds = %bb.r, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterARNtNtCs8O45qwFIwQX_10serde_json5value5Valuej1_EINtNtCsexYYUdYSQU6_5alloc3vec3VecB1R_ENCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3l_16GroupsAggregator9add_point00EEB3p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b) #25
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %.sink78.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.p ], [ %.sroa.5.i.i, %bb.o ]
  %.sink.i.i.i.i = phi i64 [ %i.bi, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i.i, ptr %.sink78.i.i.sroa.phi.i.i, align 8, !alias.scope !5513, !noalias !5514
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.bq = add nuw nsw i64 %i.bi, 1
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.au, i64 noundef %i.bq, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueE7reserveCs5QaNqjAn6vc_5shard.exit.i.i unwind label %bb.q

bb.s:                                             ; preds = %bb.q
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterABG_j1_EBw_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3t_16GroupsAggregator9add_point00EEB3x_.exit.i: ; preds = %bb.l
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterARNtNtCs8O45qwFIwQX_10serde_json5value5Valuej1_EINtNtCsexYYUdYSQU6_5alloc3vec3VecB1R_ENCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3l_16GroupsAggregator9add_point00EEB3p_(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.b)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterABR_j1_EBH_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3H_16GroupsAggregator9add_point00EE11spec_extendB3L_.exit unwind label %bb.t

bb.t:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterABG_j1_EBw_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3t_16GroupsAggregator9add_point00EEB3x_.exit.i
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.t ], [ %i.bp, %bb.q ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.v unwind label %bb.u

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterABR_j1_EBH_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3H_16GroupsAggregator9add_point00EE11spec_extendB3L_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecRNtNtCs8O45qwFIwQX_10serde_json5value5ValueE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterABG_j1_EBw_NCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3t_16GroupsAggregator9add_point00EEB3x_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.u:                                             ; preds = %.body, %bb.w
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.v:                                             ; preds = %.body, %bb.w
  %.pn13 = phi { ptr, i32 } [ %i.bu, %bb.w ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn13

bb.w:                                             ; preds = %bb.i, %bb.h, %bb.a
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtCsct6HaUIs3yu_8smallvec8IntoIterARNtNtCs8O45qwFIwQX_10serde_json5value5Valuej1_EINtNtCsexYYUdYSQU6_5alloc3vec3VecB1R_ENCNCNvMNtNtCs5QaNqjAn6vc_5shard8grouping10aggregatorNtB3l_16GroupsAggregator9add_point00EEB3p_(ptr noalias nofree noundef align 8 dereferenceable(112) %1) #25
          to label %bb.v unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtB19_5types11ScoredPointEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterB13_B1X_EE9from_iterCs5QaNqjAn6vc_5shard(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdNtNtBQ_5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0        ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.f, align 8, !noundef !16
  %i.g = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.g, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.h = load i64, ptr %i.a, align 8, !range !41, !noundef !16
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !52, !noundef !16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #31
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  %i.n = extractvalue { ptr, ptr } %i.d, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
  %i.o = load ptr, ptr %i.l, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.p = icmp ule i64 %..i, %i.k
  tail call void @llvm.assume(i1 %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.n, ptr %i.q, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5521)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5522)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5524)
  %i.r = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdNtNtBQ_5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit
  %i.s = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %.not4.i.i = icmp eq ptr %i.s, null
  br i1 %.not4.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBZ_5types11ScoredPointEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBT_B1N_EE11spec_extendCs5QaNqjAn6vc_5shard.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.d

bb.d:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %.pn.i.i = phi { ptr, ptr } [ %i.r, %.lr.ph.i.i ], [ %i.af, %.noexc10 ]
  %i.u = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.ag, %.noexc10 ]
  %i.v = extractvalue { ptr, ptr } %.pn.i.i, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !5525, !noundef !16 ; 5 uses
  %i.x = icmp ult i64 %i.w, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.c, align 8, !range !19, !alias.scope !5525, !noundef !16
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBM_5types11ScoredPointEE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, label %.noexc9

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBM_5types11ScoredPointEE7reserveCs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.t, align 8, !alias.scope !5526, !noundef !16
  %i.aa = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.w, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 8, i64 noundef 16)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBM_5types11ScoredPointEE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, %bb.d
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5525, !nonnull !16, !noundef !16
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.w ; 2 uses
  store ptr %i.u, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.v, ptr %i.ad, align 8
  %i.ae = add nuw nsw i64 %i.w, 1
  store i64 %i.ae, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !5525
  %i.af = invoke { ptr, ptr } @_RNvXsG_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_4IterNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdNtNtBQ_5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.noexc10 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %.noexc9
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBZ_5types11ScoredPointEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBT_B1N_EE11spec_extendCs5QaNqjAn6vc_5shard.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBZ_5types11ScoredPointEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBT_B1N_EE11spec_extendCs5QaNqjAn6vc_5shard.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc9, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBM_5types11ScoredPointEE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit
  %lpad.loopexit.split-lp16 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBU_5types11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtB1g_5types11ScoredPointEEECs5QaNqjAn6vc_5shard.exit unwind label %bb.g

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtBZ_5types11ScoredPointEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterBT_B1N_EE11spec_extendCs5QaNqjAn6vc_5shard.exit: ; preds = %.noexc10, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.g:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTRNtNtNtCs607s0NAIaWN_7segment10data_types6groups7GroupIdRNtNtB1g_5types11ScoredPointEEECs5QaNqjAn6vc_5shard.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1z_6filter6FilterINtNtB1z_4take4TakeINtNtB1z_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB4c_NtB4c_10TrackerLog8truncate0ENCB4T_s_0EE9from_iterB4e_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5602)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5603)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !5604, !noundef !16
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB36_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !5605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5606
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.h, ptr %i.d, align 8, !noalias !5606
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %i.m, align 8, !noalias !5606
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.l, ptr %i.n, align 8, !noalias !5606
  call void @_RINvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB33_9EnumeratepEB1O_8try_fold9enumerateRB19_uINtNtNtB1W_3ops12control_flow11ControlFlowIB4h_TjB4a_EEENCINvNvXs_NtB35_4takeINtB5k_4TakepEB1O_8try_fold5checkB51_uB4W_NCINvNvB1O_4find5checkB51_QNCNvMB1b_NtB1b_10TrackerLog8truncate0E0E0E0B4g_EB1d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5606
  %i.o = load i64, ptr %i.e, align 8, !range !41, !noalias !5605, !noundef !16
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noalias !5605
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5605, !align !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5605
  %.not.i.i.i.not = icmp ne ptr %i.t, null
  %or.cond.not = select i1 %i.p, i1 %.not.i.i.i.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB36_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.h, align 8, !alias.scope !5607, !noundef !16
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call noundef i64 @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1), !noalias !5608 ; 0 uses
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.x = load i64, ptr %i.c, align 8, !range !41, !noundef !16
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !52, !noundef !16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.y, label %bb.e, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit, !prof !23

bb.e:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit
  %i.ac = load i64, ptr %i.ab, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #31
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit
  %i.ad = load ptr, ptr %i.ab, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ae = icmp ugt i64 %i.aa, 3
  call void @llvm.assume(i1 %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.r, ptr %i.ad, align 8
  store i64 %i.aa, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !5609)
  call void @llvm.experimental.noalias.scope.decl(metadata !5610)
  call void @llvm.experimental.noalias.scope.decl(metadata !5611)
  call void @llvm.experimental.noalias.scope.decl(metadata !5612)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !5613, !noundef !16
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_4take4TakeINtNtB1h_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB3U_NtB3U_10TrackerLog8truncate0ENCB4B_s_0EE11spec_extendB3W_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %2 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5614
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5615
  store ptr %i.af, ptr %i.a, align 8, !noalias !5615
  store ptr %i.ai, ptr %2, align 8, !noalias !5615
  store ptr %i.aj, ptr %i.ak, align 8, !noalias !5615
  invoke void @_RINvXs2_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB33_9EnumeratepEB1O_8try_fold9enumerateRB19_uINtNtNtB1W_3ops12control_flow11ControlFlowIB4h_TjB4a_EEENCINvNvXs_NtB35_4takeINtB5k_4TakepEB1O_8try_fold5checkB51_uB4W_NCINvNvB1O_4find5checkB51_QNCNvMB1b_NtB1b_10TrackerLog8truncate0E0E0E0B4g_EB1d_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5615
  %i.an = load i64, ptr %i.b, align 8, !range !41, !noalias !5614, !noundef !16
  %i.ao = trunc nuw i64 %i.an to i1
  %i.ap = load i64, ptr %i.al, align 8, !noalias !5614
  %i.aq = load ptr, ptr %i.am, align 8, !noalias !5614, !align !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5614
  %.not.i.i.i.not.i.i = icmp ne ptr %i.aq, null
  %or.cond.not.i.i = select i1 %i.ao, i1 %.not.i.i.i.not.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.g, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_4take4TakeINtNtB1h_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB3U_NtB3U_10TrackerLog8truncate0ENCB4B_s_0EE11spec_extendB3W_.exit

bb.g:                                             ; preds = %.noexc
  %i.ar = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5616, !noundef !16 ; 5 uses
  %i.as = icmp ult i64 %i.ar, 1152921504606846976
  call void @llvm.assume(i1 %i.as)
  %i.at = load i64, ptr %i.g, align 8, !range !19, !alias.scope !5616, !noundef !16
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load i64, ptr %i.af, align 8, !alias.scope !5617, !noundef !16
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.thread.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.i.i, !prof !22

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.i.i: ; preds = %bb.h
  %i.ax = invoke noundef i64 @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerENtNtNtNtCskKLDkoKarTP_4core4iter6traits10exact_size17ExactSizeIterator3lenB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %.noexc7 unwind label %bb.j    ; 0 uses

.noexc7:                                          ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.i.i
  %.pre.i.i = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5618 ; 2 uses
  %.pre6.i.i = load i64, ptr %i.g, align 8, !range !19, !alias.scope !5618
  %i.ay = icmp eq i64 %.pre6.i.i, %.pre.i.i
  br i1 %i.ay, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.thread.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, !prof !25

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.thread.i.i: ; preds = %.noexc7, %bb.h
  %i.az = phi i64 [ %.pre.i.i, %.noexc7 ], [ %i.ar, %bb.h ]
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.az, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i unwind label %bb.j

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.thread.i.i, %.noexc7, %bb.g
  %i.ba = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5616, !nonnull !16, !noundef !16
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ar
  store i64 %i.ap, ptr %i.bb, align 8
  %i.bc = add nuw nsw i64 %i.ar, 1
  store i64 %i.bc, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5616
  %i.bd = load i64, ptr %i.af, align 8, !alias.scope !5619, !noundef !16
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_4take4TakeINtNtB1h_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB3U_NtB3U_10TrackerLog8truncate0ENCB4B_s_0EE11spec_extendB3W_.exit, label %bb.f

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB36_.exit.thread: ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bg, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_4take4TakeINtNtB1h_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB3U_NtB3U_10TrackerLog8truncate0ENCB4B_s_0EE11spec_extendB3W_.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB36_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.j:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.thread.i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_4take4TakeINtNtB7_9enumerate9EnumerateINtNtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB34_NtB34_10TrackerLog8truncate0ENCB3L_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB36_.exit.i.i, %bb.f
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit unwind label %bb.k

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1h_6filter6FilterINtNtB1h_4take4TakeINtNtB1h_9enumerate9EnumerateINtNtNtNtB6_11collections9vec_deque4iter4IterNtNtCs5QaNqjAn6vc_5shard7tracker7TrackerEEENCNvMB3U_NtB3U_10TrackerLog8truncate0ENCB4B_s_0EE11spec_extendB3W_.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, %.noexc, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit: ; preds = %bb.j
  resume { ptr, i32 } %i.bh
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecjEINtB2_18SpecFromIterNestedjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1D_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2Y_14MergeOptimizerNtNtB30_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE9from_iterB32_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5636)
  %i.c = load ptr, ptr %1, align 8, !alias.scope !5637, !nonnull !16, !noundef !16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !5637, !nonnull !16, !noundef !16 ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.thread, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !5636, !nonnull !16, !align !17, !noundef !16 ; 2 uses
  %.val4.i = load i64, ptr %i.c, align 8, !noalias !5636, !noundef !16
  %i.j = getelementptr i8, ptr %i.c, i64 8
  %.val5.i = load i64, ptr %i.j, align 8, !noalias !5636, !noundef !16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5638)
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !5639, !noundef !16
  %i.l = add i64 %i.k, %.val5.i                   ; 2 uses
  %i.m = load i64, ptr %.val.i, align 8, !noalias !5639, !noundef !16
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.thread

bb.b:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.o = load i64, ptr %i.a, align 8, !range !41, !noundef !16
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !52, !noundef !16 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.p, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.s, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.r, i64 %i.t) #31
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit: ; preds = %bb.b
  %i.u = load ptr, ptr %i.s, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = icmp ugt i64 %i.r, 3
  tail call void @llvm.assume(i1 %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %.val4.i, ptr %i.u, align 8
  store i64 %i.r, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.w = icmp eq ptr %i.g, %i.e
  br i1 %i.w, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2G_14MergeOptimizerNtNtB2I_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE11spec_extendB2K_.exit, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.i.i: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit, %.noexc
  %i.x = phi i64 [ %i.ak, %.noexc ], [ 1, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit ] ; 5 uses
  %i.y = phi i64 [ %i.ac, %.noexc ], [ %i.l, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit ]
  %i.z = phi ptr [ %i.aa, %.noexc ], [ %i.g, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %.val4.i.i.i = load i64, ptr %i.z, align 8, !noalias !5640, !noundef !16
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val5.i.i.i = load i64, ptr %i.ab, align 8, !noalias !5640, !noundef !16
  %i.ac = add i64 %.val5.i.i.i, %i.y              ; 2 uses
  %i.ad = load i64, ptr %.val.i, align 8, !noalias !5641, !noundef !16
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2G_14MergeOptimizerNtNtB2I_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE11spec_extendB2K_.exit

bb.d:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.i.i
  %i.af = icmp samesign ult i64 %i.x, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  %i.ag = load i64, ptr %i.b, align 8, !range !19, !alias.scope !5642, !noundef !16
  %i.ah = icmp eq i64 %i.x, %i.ag
  br i1 %i.ah, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, label %.noexc

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i: ; preds = %bb.d
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.x, i64 noundef 1, i64 noundef 8, i64 noundef 8)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i, %bb.d
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5642, !nonnull !16, !noundef !16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.x
  store i64 %.val4.i.i.i, ptr %i.aj, align 8, !noalias !5643
  %i.ak = add nuw nsw i64 %i.x, 1                 ; 2 uses
  store i64 %i.ak, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5642
  %i.al = icmp eq ptr %i.aa, %i.e
  br i1 %i.al, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2G_14MergeOptimizerNtNtB2I_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE11spec_extendB2K_.exit, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit
  store i64 0, ptr %0, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.an, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2G_14MergeOptimizerNtNtB2I_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE11spec_extendB2K_.exit, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecjE7reserveCs5QaNqjAn6vc_5shard.exit.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs5QaNqjAn6vc_5shard(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecjEECs5QaNqjAn6vc_5shard.exit unwind label %bb.g

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecjEINtB2_10SpecExtendjINtNtNtNtCskKLDkoKarTP_4core4iter8adapters4scan4ScanINtNtNtB1l_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB2G_14MergeOptimizerNtNtB2I_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0EE11spec_extendB2K_.exit: ; preds = %.noexc, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters4scanINtB5_4ScanINtNtNtBb_5slice4iter4IterTjjEEjNCNvXs_NtNtCs5QaNqjAn6vc_5shard10optimizers15merge_optimizerNtB1B_14MergeOptimizerNtNtB1D_17segment_optimizer16SegmentOptimizer18plan_optimizationss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1F_.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5QaNqjAn6vc_5shard.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
