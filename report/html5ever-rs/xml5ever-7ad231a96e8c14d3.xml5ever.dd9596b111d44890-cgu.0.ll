Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/xml5ever-7ad231a96e8c14d3.xml5ever.dd9596b111d44890-cgu.0?download=true
inline.NumInlined: 119
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6stable5merge5mergeNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeNvYBX_NtNtBa_3cmp10PartialOrd2ltECsj1ugBVjDER0_8xml5ever:bb.a

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.af = ptrtoint ptr %.sroa.7.0 to i64
  %i.ag = ptrtoint ptr %.sroa.0.0 to i64
  %i.ah = sub nuw i64 %i.af, %i.ag
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.ah, i1 false), !noalias !58
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsj1ugBVjDER0_8xml5ever9serializeNtB4_17NamespaceMapStack3pop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.c, -1                     ; 3 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = load i64, ptr %0, align 8, !range !63, !noundef !4
  %i.g = icmp samesign ult i64 %i.e, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = icmp ult i64 %i.c, 384307168202282327
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  store i64 1, ptr %i.a, align 8
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.l)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEEB11_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCsj1ugBVjDER0_8xml5ever9serializeNtB4_17NamespaceMapStack4push(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !64, !noalias !67, !noundef !4 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !63, !alias.scope !64, !noalias !67, !noundef !4
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit unwind label %bb.c, !noalias !67

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB15_IB1H_NtB2p_18NamespaceStaticSetEEENtNtNtB19_3ops4drop4Drop4dropCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEBF_.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !67
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapEBF_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RNvMsG_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsj1ugBVjDER0_8xml5ever12tree_builder12NamespaceMapE8push_mutBJ_.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !64, !noalias !67, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !64, !noalias !67
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE6insertCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [40 x i8], align 8                ; 10 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %2, ptr %i.k, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %1, ptr %i.g, align 8, !noalias !72
  %i.l = load ptr, ptr %0, align 8, !alias.scope !69, !noalias !74, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !72
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !69, !noalias !74, !noundef !4
  invoke void @_RINvMs_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1z_IB2b_NtB2T_18NamespaceStaticSetEENtB1i_14LeafOrInternalE11search_treeB1y_ECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noundef nonnull %i.l, i64 noundef %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
          to label %bb.d unwind label %bb.i, !noalias !72

bb.c:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !72
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.f, align 8, !range !5, !noalias !72, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.1320.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  br i1 %i.q, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.7.8.copyload15 = load i64, ptr %i.r, align 8, !noalias !69
  %.sroa.11.8.copyload17 = load ptr, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !69
  %.sroa.13.8.copyload19 = load i64, ptr %.sroa.1320.16..sroa_idx, align 8, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !72
  %i.s = icmp ne i64 %1, 0
  %i.t = and i64 %1, 3
  %i.u = icmp eq i64 %i.t, 0
  %or.cond.i.i = and i1 %i.s, %i.u
  br i1 %or.cond.i.i, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.v = inttoptr i64 %1 to ptr
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = atomicrmw sub ptr %i.w, i64 1 seq_cst, align 8, !noalias !75
  %i.y = icmp eq i64 %i.x, 1
  br i1 %i.y, label %bb.g, label %bb.k, !prof !11

bb.g:                                             ; preds = %bb.f
  invoke void @_RINvNvXs4_NtCsgv7xG79AfeB_12string_cache4atomINtB8_4AtompENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop9drop_slowNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.k unwind label %bb.j

bb.h:                                             ; preds = %bb.d
  %.sroa.11.16.copyload = load ptr, ptr %i.r, align 8, !noalias !69
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8, !noalias !69
  %.sroa.1320.16.copyload = load ptr, ptr %.sroa.1320.16..sroa_idx, align 8, !noalias !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !72
  br label %bb.n

bb.i:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.g) #19
          to label %.thread25 unwind label %bb.c, !noalias !72

bb.j:                                             ; preds = %bb.g
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread25

bb.k:                                             ; preds = %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %.sroa.7.8.copyload15, ptr %i.j, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.11.8.copyload17, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.13.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.13.8.copyload19, ptr %.sroa.13.8..sroa_idx, align 8
  %.sroa.1320.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %0, ptr %.sroa.1320.8..sroa_idx, align 8
  %i.aa = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.aa, ptr %i.e, align 8, !noalias !82
  %i.ab = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1D_IB2f_NtB2X_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.j)
          to label %bb.t unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.e) #19
          to label %.thread29 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable

bb.n:                                             ; preds = %bb.a, %bb.h
  %.sroa.13.sroa.0.0 = phi i64 [ undef, %bb.a ], [ %.sroa.13.16.copyload, %bb.h ]
  %.sroa.1319.0 = phi ptr [ undef, %bb.a ], [ %.sroa.1320.16.copyload, %bb.h ]
  %.sroa.11.0 = phi ptr [ null, %bb.a ], [ %.sroa.11.16.copyload, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %0, ptr %i.i, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %.sroa.13.sroa.0.0, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.1320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %.sroa.1319.0, ptr %.sroa.1320.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %2, ptr %i.d, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !90
  %.not.i6 = icmp eq ptr %.sroa.11.0, null
  br i1 %.not.i6, label %bb.o, label %.noexc10

bb.o:                                             ; preds = %bb.n
  %i.ae = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1t_IB25_NtB2N_18NamespaceStaticSetEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever()
          to label %.noexc9 unwind label %bb.q, !noalias !90 ; 2 uses

.noexc9:                                          ; preds = %bb.o
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 3 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  store ptr %i.af, ptr %0, align 8, !noalias !90
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !noalias !90
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !90
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !90
  store ptr %i.af, ptr %i.b, align 8, !noalias !90
  call void @_RNvMsu_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1q_IB22_NtB2K_18NamespaceStaticSetEENtB19_4LeafE16push_with_handleCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %1, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !90
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit

.noexc10:                                         ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !85
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  call void @_RINvMsN_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1E_IB2g_NtB2Y_18NamespaceStaticSetEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB5p_11VacantEntryB1D_B3F_E12insert_entry0ECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  br label %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !85
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.d) #19
          to label %bb.r unwind label %bb.p, !noalias !90

bb.r:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %.sroa.7.0..sroa_idx) #19
          to label %.thread29 unwind label %bb.p, !noalias !85

_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit: ; preds = %.noexc10, %.noexc9
  %i.am = load ptr, ptr %i.i, align 8, !alias.scope !88, !noalias !85, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !noalias !85, !noundef !4
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !noalias !85
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ar = load ptr, ptr %i.c, align 8, !noalias !90, !nonnull !4, !noundef !4
  store ptr %i.ar, ptr %i.h, align 8, !alias.scope !85, !noalias !88
  %.sroa.4.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.as = load <2 x i64>, ptr %i.aq, align 8, !noalias !90
  store <2 x i64> %i.as, ptr %.sroa.4.0..sroa_idx.i7, align 8, !alias.scope !85, !noalias !88
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.am, ptr %i.at, align 8, !alias.scope !85, !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1D_IB2f_NtB2X_18NamespaceStaticSetEENtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.s

bb.s:                                             ; preds = %bb.t, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit
  %.sroa.3.0 = phi i64 [ %i.ay, %bb.t ], [ undef, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.t ], [ 0, %_RNvMs5_NtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1m_IB1Y_NtB2G_18NamespaceStaticSetEEE8into_mutCsj1ugBVjDER0_8xml5ever.exit ]
  %i.av = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.aw = insertvalue { i64, i64 } %i.av, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.aw

bb.t:                                             ; preds = %bb.k
  %i.ax = extractvalue { ptr, ptr } %i.ab, 1      ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !4
  store i64 %i.aa, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.s

.thread29:                                        ; preds = %bb.l, %bb.r, %.thread25
  %.pn24 = phi { ptr, i32 } [ %i.al, %bb.r ], [ %eh.lpad-body28, %.thread25 ], [ %i.ac, %bb.l ]
  resume { ptr, i32 } %.pn24

.thread25:                                        ; preds = %bb.i, %bb.j
  %eh.lpad-body28 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.j ], [ %i.z, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(8) %i.k) #19
          to label %.thread29 unwind label %bb.u

bb.u:                                             ; preds = %.thread25
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E14try_subtendrilCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 8 captures(address, read_provenance) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %.sroa.4.i.i = alloca i64, align 8              ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.d = ptrtoint ptr %i.c to i64                 ; 6 uses
  %i.e = icmp eq ptr %i.c, inttoptr (i64 15 to ptr)
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ult ptr %i.c, inttoptr (i64 9 to ptr) ; 2 uses
  br i1 %i.f, label %bb.c, label %.thread23

bb.c:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.d to i32            ; 2 uses
  %i.h = icmp ugt i32 %2, %i.g
  %i.i = sub nuw i32 %i.g, %2
  %i.j = icmp ugt i32 %3, %i.i
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.r, label %bb.e

.thread23:                                        ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.m = icmp ugt i32 %2, %i.l
  %i.n = sub nuw i32 %i.l, %2
  %i.o = icmp ugt i32 %3, %i.n
  %or.cond25 = select i1 %i.m, i1 true, i1 %i.o
  br i1 %or.cond25, label %bb.r, label %.thread26

.thread:                                          ; preds = %bb.a
  %i.p = or i32 %3, %2
  %or.cond9.not = icmp eq i32 %i.p, 0
  br i1 %or.cond9.not, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i, label %bb.r

.thread26:                                        ; preds = %.thread23
  %i.q = and i64 %i.d, 1
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.c, i64 %i.r
  %i.t = trunc i64 %i.d to i1
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.v = load i32, ptr %i.u, align 4, !noalias !91, !noundef !4
  %i.w = zext i32 %i.v to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

bb.f:                                             ; preds = %bb.d, %.thread26
  %.sroa.01.0.i.i = phi i64 [ %i.w, %bb.d ], [ 0, %.thread26 ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.01.0.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.e, %bb.f
  %.sroa.0.0.i = phi ptr [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = zext i32 %2 to i64                      ; 3 uses
  %i.ab = zext i32 %3 to i64                      ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %i.aa ; 2 uses
  %i.ad = icmp eq i32 %3, 0
  br i1 %i.ad, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread, label %bb.g

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !94
  %i.ae = add nsw i64 %i.ab, -1
  call fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, 4294967296) %i.ab, i64 noundef %i.ae) #20
  %i.af = load i16, ptr %i.b, align 8, !range !97, !noalias !94, !noundef !4 ; 2 uses
  %.not.i = icmp eq i16 %i.af, -1
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp eq i16 %i.af, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  br i1 %i.ag, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !94
  br label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !94
  call fastcc void @_RNvNtCsldpiDtalS19_7tendril4futf8classify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, 4294967296) %i.ab, i64 noundef 0) #20
  %i.ah = load i16, ptr %i.a, align 8, !range !97, !noalias !94, !noundef !4
  %i.ai = icmp eq i16 %i.ah, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !94
  br i1 %i.ai, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16: ; preds = %bb.i, %bb.h, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aj, align 1
  br label %bb.q

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread: ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit
  %i.ak = icmp ult i32 %3, 9
  br i1 %i.ak, label %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread, label %bb.j

bb.j:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread
  %i.al = and i64 %i.d, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.k, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !noalias !98, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %i.ao, ptr %i.ap, align 8, !noalias !98
  %i.aq = getelementptr i8, ptr %i.c, i64 1       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aq) ]
  store ptr %i.aq, ptr %1, align 8, !noalias !98
  store i32 0, ptr %i.an, align 4, !noalias !98
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.c, %bb.j ], [ %i.aq, %bb.k ]
  %i.as = getelementptr i8, ptr %i.ar, i64 -1     ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !noalias !98, !noundef !4 ; 2 uses
  %i.au = icmp eq i64 %i.at, -1
  br i1 %i.au, label %bb.l, label %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, !prof !11

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i
  %i.av = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !98, !nonnull !4, !noundef !4
  %i.aw = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !98, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.av, i64 noundef %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #21, !noalias !98
  unreachable

_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E15make_buf_sharedCsj1ugBVjDER0_8xml5ever.exit.i
  %i.ax = add nuw i64 %i.at, 1
  store i64 %i.ax, ptr %i.as, align 8, !noalias !98
  %i.ay = load ptr, ptr %1, align 8, !noalias !101, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, 1
  %i.bb = sub nsw i64 0, %i.ba
  %i.bc = getelementptr i8, ptr %i.ay, i64 %i.bb  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !noalias !98, !noundef !4
  %i.bf = add i32 %i.be, %2
  %i.bg = ptrtoint ptr %i.bc to i64
  %.not.i.i = and i64 %i.bg, 1
  %i.bh = xor i64 %.not.i.i, 1
  %i.bi = getelementptr i8, ptr %i.bc, i64 %i.bh  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bi) ]
  %.sroa.4.0.insert.ext.i = zext i32 %i.bf to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.02.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %i.ab
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread
  %i.bj = phi i64 [ %i.ab, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit ] ; 2 uses
  br i1 %i.f, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.bk = and i64 %i.d, 1
  %i.bl = sub nsw i64 0, %i.bk
  %i.bm = getelementptr i8, ptr %i.c, i64 %i.bl
  %i.bn = trunc i64 %i.d to i1
  br i1 %i.bn, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !104, !noundef !4
  %i.bq = zext i32 %i.bp to i64
  br label %bb.p

bb.o:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread.thread
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

bb.p:                                             ; preds = %bb.n, %bb.m
  %.sroa.01.0.i.i.i = phi i64 [ %i.bq, %bb.n ], [ 0, %bb.m ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.01.0.i.i.i
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %.thread, %bb.p, %bb.o
  %i.bu = phi i64 [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ 0, %.thread ]
  %i.bv = phi i64 [ %i.bj, %bb.p ], [ %i.bj, %bb.o ], [ 0, %.thread ] ; 2 uses
  %.sroa.0.0.i3.i = phi ptr [ %i.bt, %bb.p ], [ %i.br, %bb.o ], [ inttoptr (i64 1 to ptr), %.thread ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  %i.bx = icmp eq i32 %3, 0
  %i.by = inttoptr i64 %i.bv to ptr
  %i.bz = select i1 %i.bx, ptr inttoptr (i64 15 to ptr), ptr %i.by
  store i64 0, ptr %.sroa.4.i.i, align 8, !noalias !107
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i.i, ptr nonnull readonly align 1 %i.bw, i64 range(i64 0, 9) %i.bv, i1 false), !noalias !111
  %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i = load i64, ptr %.sroa.4.i.i, align 8, !noalias !107
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i)
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i
  %.sroa.5.0 = phi i64 [ %.sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %.sroa.02.0.insert.insert.i, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %.sroa.0.07 = phi ptr [ %i.bz, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i ], [ %i.bi, %_RNvXNtCsldpiDtalS19_7tendril7tendrilNtB2_9NonAtomicNtB2_9Atomicity9increment.exit.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.07, ptr %i.ca, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.q

bb.q:                                             ; preds = %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16, %bb.r, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit
  %.sink = phi i8 [ 1, %_RNvXs5_NtCsldpiDtalS19_7tendril3fmtNtB5_4UTF8NtB5_6Format15validate_subseq.exit.thread16 ], [ 1, %bb.r ], [ 0, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E17unsafe_subtendrilCsj1ugBVjDER0_8xml5ever.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.r:                                             ; preds = %.thread23, %.thread, %bb.c
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.cb, align 1
  br label %bb.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E29push_bytes_without_validatingCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 1, 5) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 8 uses
  %i.g = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 7 uses
  %i.i = icmp eq ptr %i.g, inttoptr (i64 15 to ptr)
  br i1 %i.i, label %.thread40, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult ptr %i.g, inttoptr (i64 9 to ptr) ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = trunc nuw i64 %i.h to i32                ; 2 uses
  %.sroa.01.0 = select i1 %i.j, i32 %i.m, i32 %i.l ; 2 uses
  %i.n = trunc nuw nsw i64 %2 to i32
  %i.o = add i32 %.sroa.01.0, %i.n                ; 7 uses
  %i.p = icmp ult i32 %i.o, %.sroa.01.0
  br i1 %i.p, label %bb.d, label %bb.c, !prof !112

.thread40:                                        ; preds = %bb.a
  %i.q = trunc nuw nsw i64 %2 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i32 %i.o, 9
  br i1 %i.r, label %bb.v, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !nonnull !4, !noundef !4
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #21
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.u = icmp ult ptr %i.g, inttoptr (i64 16 to ptr)
  %i.v = trunc i64 %i.h to i1                     ; 2 uses
  %or.cond.i.i = or i1 %i.u, %i.v
  br i1 %or.cond.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i: ; preds = %bb.e
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.e
  %i.w = and i64 %i.h, 1
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr i8, ptr %i.g, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  %.sroa.01.0.i.i.i.i = select i1 %i.v, i64 %i.ab, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ad = zext i32 %i.l to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.0.i.i.i.i
  %.pre-phi = select i1 %i.j, i32 %i.m, i32 %i.l  ; 4 uses
  %.sroa.4.0.i.i.i = select i1 %i.j, i64 %i.h, i64 %i.ad
  %.sroa.0.0.i.i.i = select i1 %i.j, ptr %i.k, ptr %i.ae
  %spec.store.select.i.i.i.i = tail call i32 @llvm.umax.i32(i32 %.pre-phi, i32 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !119
  %i.af = zext i32 %spec.store.select.i.i.i.i to i64
  %i.ag = add nuw nsw i64 %i.af, 15
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !119
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.ai, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !119
  %i.aj = load i64, ptr %i.d, align 8, !range !5, !noalias !119, !noundef !4
  %i.ak = trunc nuw i64 %i.aj to i1
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8, !range !126, !noalias !119, !noundef !4 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g, !prof !11

bb.f:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ao = load i64, ptr %i.an, align 8, !noalias !119
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.am, i64 %i.ao) #22, !noalias !119
  unreachable

bb.g:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.ap = load ptr, ptr %i.an, align 8, !noalias !119, !nonnull !4, !noundef !4 ; 7 uses
  %i.aq = icmp samesign ult i64 %i.ah, %i.am
  tail call void @llvm.assume(i1 %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !119
  store i64 %i.am, ptr %i.e, align 8, !noalias !119
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ap, ptr %i.ar, align 8, !noalias !119
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.as, align 8, !noalias !119
  %i.at = shl i64 %i.am, 4
  %i.au = add i64 %i.at, -16                      ; 2 uses
  %i.av = icmp ugt i64 %i.au, 4294967295
  br i1 %i.av, label %bb.h, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i, !prof !11

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.c, align 8, !noalias !119
  %.sroa.47.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.47.0..sroa_idx.i.i.i.i, align 8, !noalias !119
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.j unwind label %bb.i, !noalias !119

bb.i:                                             ; preds = %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.k, !noalias !119

bb.j:                                             ; preds = %bb.h
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !119
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.l, %bb.o, %bb.y
  %common.resume.op = phi { ptr, i32 } [ %i.da, %bb.y ], [ %i.aw, %bb.i ], [ %i.az, %bb.l ], [ %i.bh, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i: ; preds = %bb.g
  %4 = trunc nuw i64 %i.au to i32                 ; 2 uses
  store i64 1, ptr %i.ap, align 8, !noalias !127
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i32 0, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !119
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 1 %.sroa.0.0.i.i.i, i64 range(i64 0, 4294967296) %.sroa.4.0.i.i.i, i1 false), !noalias !128
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i unwind label %bb.l

bb.l:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ap, ptr %0, align 8, !alias.scope !129
  store i32 %.pre-phi, ptr %i.k, align 8, !alias.scope !129
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %.sroa.6.0..sroa_idx.i.i, align 4, !alias.scope !129
  br label %common.resume

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10owned_copyCsj1ugBVjDER0_8xml5ever.exit.i.i
  store ptr %i.ap, ptr %0, align 8, !alias.scope !129
  store i32 %.pre-phi, ptr %i.k, align 8, !alias.scope !129
  %.sroa.6.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 %4, ptr %.sroa.6.0..sroa_idx7.i.i, align 4, !alias.scope !129
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i
  %i.ba = phi i32 [ %i.l, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i ], [ %.pre-phi, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i ]
  %i.bb = phi ptr [ %i.g, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i ], [ %i.ap, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i ] ; 2 uses
  %5 = phi ptr [ %3, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i ], [ %.sroa.6.0..sroa_idx7.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.i ] ; 2 uses
  %.sroa.0.0.i.i = load i32, ptr %5, align 4, !noalias !130, !noundef !4 ; 3 uses
  %.not.i.i = icmp ugt i32 %i.o, %.sroa.0.0.i.i
  br i1 %.not.i.i, label %bb.m, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit

bb.m:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a
  %i.bc = add i32 %i.o, -1
  %i.bd = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bc, i1 true) ; 2 uses
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.n, label %bb.p, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.bg = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, i64 8), align 8, !noalias !133, !noundef !4
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bf, i64 noundef %i.bg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !133
  unreachable

bb.o:                                             ; preds = %bb.s, %bb.p
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtCsldpiDtalS19_7tendril7tendril6HeaderNtB1b_9NonAtomicEEECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #19
          to label %common.resume unwind label %bb.u, !noalias !133

bb.p:                                             ; preds = %bb.m
  %i.bi = lshr i32 -1, %i.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !133
  %i.bj = zext i32 %.sroa.0.0.i.i to i64
  %i.bk = add nuw nsw i64 %i.bj, 15
  %i.bl = lshr i64 %i.bk, 4
  %i.bm = add nuw nsw i64 %i.bl, 1
  store i64 %i.bm, ptr %i.b, align 8, !noalias !133
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bn, align 8, !noalias !133
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.bo, align 8, !noalias !133
  %narrow.i.i = add nuw i32 %i.bi, 16
  %i.bp = lshr i32 %narrow.i.i, 4
  %narrow14.i.i = add nuw nsw i32 %i.bp, 1
  %i.bq = zext nneg i32 %narrow14.i.i to i64
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0, i64 noundef %i.bq, i64 noundef 8, i64 noundef 16)
          to label %bb.q unwind label %bb.o, !noalias !133

bb.q:                                             ; preds = %bb.p
  %i.br = load i64, ptr %i.b, align 8, !range !63, !noalias !133, !noundef !4
  %i.bs = shl i64 %i.br, 4
  %i.bt = add i64 %i.bs, -16                      ; 2 uses
  %i.bu = icmp ugt i64 %i.bt, 4294967295
  br i1 %i.bu, label %bb.s, label %bb.r, !prof !11

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.bn, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.bw = trunc nuw i64 %i.bt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !133
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !133
  store ptr @_RNvCsldpiDtalS19_7tendril5OFLOW, ptr %i.a, align 8, !noalias !133
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsj1ugBVjDER0_8xml5ever, ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !133
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #22
          to label %bb.t unwind label %bb.o, !noalias !133

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #18, !noalias !133
  unreachable

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit: ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a, %bb.r
  %.sroa.63.0.i = phi i32 [ %i.bw, %bb.r ], [ %.sroa.0.0.i.i, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a ] ; 2 uses
  %.sroa.0.0.i19 = phi ptr [ %i.bv, %bb.r ], [ %i.bb, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E10make_ownedCsj1ugBVjDER0_8xml5ever.exit.thread.i.a ] ; 5 uses
  store ptr %.sroa.0.0.i19, ptr %0, align 8, !alias.scope !113
  store i32 %.sroa.63.0.i, ptr %5, align 4, !alias.scope !113
  %i.by = ptrtoint ptr %.sroa.0.0.i19 to i64      ; 3 uses
  %i.bz = and i64 %i.by, 1
  %i.ca = sub nsw i64 0, %i.bz
  %i.cb = getelementptr i8, ptr %.sroa.0.0.i19, i64 %i.ca
  %i.cc = trunc i64 %i.by to i1
  %.sroa.01.0.i = select i1 %i.cc, i32 %.sroa.63.0.i, i32 0
  %i.cd = icmp eq ptr %.sroa.0.0.i19, inttoptr (i64 15 to ptr)
  %i.ce = icmp ult ptr %.sroa.0.0.i19, inttoptr (i64 9 to ptr)
  %i.cf = trunc nuw nsw i64 %i.by to i32
  %spec.select = select i1 %i.ce, i32 %i.cf, i32 %i.ba
  %.sroa.04.0.i = select i1 %i.cd, i32 0, i32 %spec.select
  %i.cg = add i32 %.sroa.04.0.i, %.sroa.01.0.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ci = zext i32 %i.cg to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cj, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  store i32 %i.o, ptr %i.k, align 8
  br label %bb.x

bb.v:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  br i1 %i.j, label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = and i64 %i.h, 1
  %i.cl = sub nsw i64 0, %i.ck
  %i.cm = getelementptr i8, ptr %i.g, i64 %i.cl
  %i.cn = trunc i64 %i.h to i1
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = zext i32 %i.cp to i64
  %.sroa.01.0.i.i21 = select i1 %i.cn, i64 %i.cq, i64 0
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cs = zext i32 %i.l to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.01.0.i.i21
  br label %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24

_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24: ; preds = %bb.v, %.thread40, %bb.w
  %i.cu = phi i32 [ %i.o, %bb.w ], [ %i.q, %.thread40 ], [ %i.o, %bb.v ] ; 2 uses
  %.sroa.4.0.i22 = phi i64 [ %i.cs, %bb.w ], [ 0, %.thread40 ], [ %i.h, %bb.v ] ; 2 uses
  %.sroa.0.0.i23 = phi ptr [ %i.ct, %bb.w ], [ inttoptr (i64 1 to ptr), %.thread40 ], [ %i.k, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr nonnull align 1 %.sroa.0.0.i23, i64 %.sroa.4.0.i22, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.4.0.i22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.cv, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 %2, i1 false)
  %i.cw = zext nneg i32 %i.cu to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  %i.cx = icmp eq i32 %i.cu, 0
  %i.cy = inttoptr i64 %i.cw to ptr
  %i.cz = select i1 %i.cx, ptr inttoptr (i64 15 to ptr), ptr %i.cy ; 2 uses
  store i64 0, ptr %.sroa.4.i, align 8, !noalias !136
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.4.i, ptr nonnull readonly align 8 %i.f, i64 range(i64 0, 9) %i.cw, i1 false), !noalias !140
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i = load i64, ptr %.sroa.4.i, align 8, !noalias !136 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef align 8 dereferenceable(16) %0)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.z, %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E24make_owned_with_capacityCsj1ugBVjDER0_8xml5ever.exit
  ret void

bb.y:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24
  %i.da = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cz, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %common.resume

bb.z:                                             ; preds = %_RNvMss_NtCsldpiDtalS19_7tendril7tendrilINtB5_7TendrilNtNtB7_3fmt4UTF8E13as_byte_sliceCsj1ugBVjDER0_8xml5ever.exit24
  store ptr %i.cz, ptr %0, align 8
  %.sroa.5.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx29, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8IntoIterINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB18_IB1K_NtB2s_18NamespaceStaticSetEEE10dying_nextCsj1ugBVjDER0_8xml5ever(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !147, !noalias !148
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !147, !noalias !148 ; 6 uses
  store i64 0, ptr %1, align 8, !alias.scope !147, !noalias !148
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 192
  %i.k = load ptr, ptr %i.j, align 8, !noalias !150, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1       ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !151

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load ptr, ptr %i.p, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.s = load ptr, ptr %i.r, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 192
  %i.w = load ptr, ptr %i.v, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 192
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !150, !nonnull !4, !noundef !4 ; 2 uses
  %i.ad = add i64 %.sroa.020.024.i.i, -8          ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !141
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !noalias !141
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !141
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !141
  call void @_RINvMsj_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1T_IB2v_NtB3d_18NamespaceStaticSetEENtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !noalias !141
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !141
  br label %_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit

_RINvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1L_IB2n_NtB35_18NamespaceStaticSetEEE16deallocating_endNtNtBc_5alloc6GlobalECsj1ugBVjDER0_8xml5ever.exit: ; preds = %bb.b, %.loopexit.i
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1
  store i64 %i.af, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.ag = load i64, ptr %1, align 8, !range !5, !alias.scope !159, !noalias !160, !noundef !4
  %i.ah = trunc nuw i64 %i.ag to i1
  br i1 %i.ah, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !159, !noalias !160, !noundef !4
  %.not.i.i1 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEEIB1K_IB2m_NtB34_18NamespaceStaticSetEEE10init_frontCsj1ugBVjDER0_8xml5ever.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !159, !noalias !160, !noundef !4 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !159, !noalias !160, !nonnull !4, !noundef !4 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
end_hunk_0
