Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.10?download=true
inline.NumInlined: 384
inline.NumDeleted: 142
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalEB1X_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 230
  %i.g = load i16, ptr %i.f, align 2, !noundef !4
  %i.h = zext i16 %i.g to i64
  %i.i = icmp ult i64 %i.e, %i.h
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.sroa.0.039 = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.a ] ; 4 uses
  %.sroa.5.038 = phi i64 [ %i.ac, %bb.d ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 176
  %i.k = load ptr, ptr %i.j, align 8, !noalias !214, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.d
  %i.l = zext i16 %i.ae to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.sroa.8.0.lcssa = phi i64 [ %i.e, %bb.a ], [ %i.l, %._crit_edge.loopexit ] ; 4 uses
  %.sroa.5.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.ac, %._crit_edge.loopexit ] ; 6 uses
  %.sroa.0.0.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ] ; 3 uses
  %i.m = icmp eq i64 %.sroa.5.0.lcssa, 0
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %._crit_edge
  %i.n = add nuw nsw i64 %.sroa.8.0.lcssa, 1
  br label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_.exit

bb.c:                                             ; preds = %._crit_edge
  %i.o = icmp samesign ult i64 %.sroa.8.0.lcssa, 11
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr i8, ptr %.sroa.0.0.lcssa, i64 240
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.sroa.8.0.lcssa ; 2 uses
  %xtraiter = and i64 %.sroa.5.0.lcssa, 7         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.c, %.prol.preheader
  %.sroa.017.0.in.i.prol = phi ptr [ %i.r, %.prol.preheader ], [ %i.q, %bb.c ]
  %.sroa.019.0.in.i.prol = phi i64 [ %.sroa.019.0.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa, %bb.c ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.c ]
  %.sroa.019.0.i.prol = add i64 %.sroa.019.0.in.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.prol = load ptr, ptr %.sroa.017.0.in.i.prol, align 8, !noalias !215, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.prol, i64 232 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !213

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.c
  %.sroa.017.0.i.lcssa.unr = phi ptr [ poison, %bb.c ], [ %.sroa.017.0.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.unr = phi ptr [ %i.q, %bb.c ], [ %i.r, %.prol.preheader ]
  %.sroa.019.0.in.i.unr = phi i64 [ %.sroa.5.0.lcssa, %bb.c ], [ %.sroa.019.0.i.prol, %.prol.preheader ]
  %i.s = icmp ult i64 %.sroa.5.0.lcssa, 8
  br i1 %i.s, label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i = phi ptr [ %i.ab, %.new ], [ %.sroa.017.0.in.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i = phi i64 [ %.sroa.019.0.i.7, %.new ], [ %.sroa.019.0.in.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 232
  %.sroa.017.0.i.1 = load ptr, ptr %i.t, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.1, i64 232
  %.sroa.017.0.i.2 = load ptr, ptr %i.u, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.2, i64 232
  %.sroa.017.0.i.3 = load ptr, ptr %i.v, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.3, i64 232
  %.sroa.017.0.i.4 = load ptr, ptr %i.w, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.4, i64 232
  %.sroa.017.0.i.5 = load ptr, ptr %i.x, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.5, i64 232
  %.sroa.017.0.i.6 = load ptr, ptr %i.y, align 8, !noalias !215, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.6, i64 232
  %.sroa.019.0.i.7 = add i64 %.sroa.019.0.in.i, -8 ; 2 uses
  %.sroa.017.0.i.7 = load ptr, ptr %i.z, align 8, !noalias !215, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %.sroa.019.0.i.7, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.7, i64 232
  br i1 %i.aa, label %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_.exit, label %.new

_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_.exit: ; preds = %.prol.loopexit, %.new, %bb.b
  %.sroa.7.0 = phi i64 [ %i.n, %bb.b ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.029 = phi ptr [ %.sroa.0.0.lcssa, %bb.b ], [ %.sroa.017.0.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.7, %.new ]
  store ptr %.sroa.0.029, ptr %0, align 8
  %.sroa.018.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.018.sroa.4.0..sroa_idx, align 8
  %.sroa.018.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7.0, ptr %.sroa.018.sroa.5.0..sroa_idx, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.0.0.lcssa, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.5.0.lcssa, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.8.0.lcssa, ptr %.sroa.621.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.ac = add i64 %.sroa.5.038, 1                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.039, i64 228
  %i.ae = load i16, ptr %i.ad, align 4, !noalias !214 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.5.038, 0
  %..i = select i1 %.not.i, i64 232, i64 328
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i, i64 noundef 8) #28, !noalias !216
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 230
  %i.ag = load i16, ptr %i.af, align 2, !noundef !4
  %i.ah = icmp ult i16 %i.ae, %i.ag
  br i1 %i.ah, label %._crit_edge.loopexit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %.not.i33 = icmp eq i64 %.sroa.5.038, 0
  %..i34 = select i1 %.not.i33, i64 232, i64 328
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.039, i64 noundef %..i34, i64 noundef 8) #28, !noalias !216
  store ptr null, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeB1W_.exit, %bb.e
  ret void
}

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
define void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedRNtNtCs1xwejQucwHj_5alloc6string6StringBM_ECskuiImRAV2ip_9elfshaker(i8 noundef range(i8 0, 3) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef %3, ptr %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  store ptr %2, ptr %i.a, align 8
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking19assert_failed_inner(i8 noundef %0, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noundef %3, ptr %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) #26
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1O_6marker4SendEL_EuECskuiImRAV2ip_9elfshaker(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvXst_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_EIBJ_uE9call_onceCskuiImRAV2ip_9elfshaker(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  tail call void asm sideeffect "", "~{memory}"() #28, !srcloc !8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB2C_6marker4SendEL_EuEs_000uECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB4_15ChildSpawnHooks15inherit_and_run(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  call void asm sideeffect "", "~{memory}"() #28, !srcloc !8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYBT_NtNtB8_3cmp10PartialOrd2ltEB1E_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE7reverseB1f_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  %i.c = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.c, 2
  br i1 %.not.i.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) ; 2 uses
  %.not.i.i = icmp eq i8 %i.f, 2
  br i1 %.not.i.i, label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i, %bb.b
  %.sroa.0.0.i5.i.i = phi i8 [ %i.f, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i ], [ %i.c, %bb.b ]
  %i.g = trunc nuw i8 %.sroa.0.0.i5.i.i to i1
  br i1 %i.g, label %.preheader, label %.preheader23

.preheader:                                       ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i
  %.not33 = icmp eq i64 %1, 2
  br i1 %.not33, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %.lr.ph29

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !252)
  %i.j = load i64, ptr %i.h, align 8, !alias.scope !253, !noalias !254, !noundef !4
  %i.k = load i64, ptr %i.i, align 8, !alias.scope !254, !noalias !253, !noundef !4
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %.preheader, label %.preheader23

.preheader23:                                     ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader23, %bb.c
  %.sroa.01.0.i25 = phi i64 [ %i.x, %bb.c ], [ 2, %.preheader23 ] ; 5 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i25 ; 3 uses
  %3 = add nsw i64 %.sroa.01.0.i25, -1            ; 2 uses
  %4 = icmp samesign ult i64 %3, %1
  tail call void @llvm.assume(i1 %4)
  %5 = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !255)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.n = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) ; 2 uses
  %.not.i.i.i2 = icmp eq i8 %i.n, 2
  br i1 %.not.i.i.i2, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i6, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i6: ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %.not.i.i7 = icmp eq i8 %i.q, 2
  br i1 %.not.i.i7, label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i6, %.lr.ph
  %.sroa.0.0.i5.i.i4 = phi i8 [ %i.q, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i6 ], [ %i.n, %.lr.ph ]
  %i.r = trunc nuw i8 %.sroa.0.0.i5.i.i4 to i1
  br i1 %i.r, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %bb.c

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i6
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.u = load i64, ptr %i.s, align 8, !alias.scope !261, !noalias !262, !noundef !4
  %i.v = load i64, ptr %i.t, align 8, !alias.scope !262, !noalias !261, !noundef !4
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8
  %i.x = add nuw nsw i64 %.sroa.01.0.i25, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %.lr.ph

.lr.ph29:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i28 = phi i64 [ %i.aj, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.1.i28 ; 3 uses
  %6 = add nsw i64 %.sroa.01.1.i28, -1            ; 2 uses
  %7 = icmp samesign ult i64 %6, %1
  tail call void @llvm.assume(i1 %7)
  %8 = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %6 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.z = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %8) ; 2 uses
  %.not.i.i.i9 = icmp eq i8 %i.z, 2
  br i1 %.not.i.i.i9, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i13, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i13: ; preds = %.lr.ph29
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ac = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) ; 2 uses
  %.not.i.i14 = icmp eq i8 %i.ac, 2
  br i1 %.not.i.i14, label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i13, %.lr.ph29
  %.sroa.0.0.i5.i.i11 = phi i8 [ %i.ac, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i13 ], [ %i.z, %.lr.ph29 ]
  %i.ad = trunc nuw i8 %.sroa.0.0.i5.i.i11 to i1
  br i1 %i.ad, label %bb.d, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i13
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ag = load i64, ptr %i.ae, align 8, !alias.scope !269, !noalias !270, !noundef !4
  %i.ah = load i64, ptr %i.af, align 8, !alias.scope !270, !noalias !269, !noundef !4
  %i.ai = icmp ult i64 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit

bb.d:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15
  %i.aj = add nuw nsw i64 %.sroa.01.1.i28, 1      ; 2 uses
  %exitcond37.not = icmp eq i64 %i.aj, %1
  br i1 %exitcond37.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit, label %.lr.ph29

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit: ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8, %bb.c, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15, %bb.d, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10, %.preheader23, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader23 ], [ true, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15 ], [ true, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10 ], [ true, %bb.d ], [ false, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3 ], [ false, %bb.c ], [ false, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader23 ], [ %.sroa.01.1.i28, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit15 ], [ %1, %bb.d ], [ %.sroa.01.1.i28, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i10 ], [ %.sroa.01.0.i25, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit8 ], [ %1, %bb.c ], [ %.sroa.01.0.i25, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i3 ] ; 2 uses
  %i.ak = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE7reverseB1f_.exit

bb.f:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB12_NtNtB8_3cmp10PartialOrd2ltEB1N_.exit
  %i.am = or i64 %1, 1
  %i.an = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 1
  %i.aq = xor i32 %i.ap, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1S_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) null, i32 noundef %i.aq, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE7reverseB1f_.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE7reverseB1f_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjEEB1L_.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.ar = lshr i64 %1, 1
  %i.as = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjEEB1L_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ax, %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjEEB1L_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.at = xor i64 %.sroa.0.017.i.i, -1
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.av = getelementptr [48 x i8], ptr %i.as, i64 %i.at
  invoke void @_RINvNvNtCs3oUPovFnLWP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECskuiImRAV2ip_9elfshaker(ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, i64 noundef 6)
          to label %_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjEEB1L_.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() #29
  unreachable

_RINvNtCs3oUPovFnLWP_4core10intrinsics25typed_swap_nonoverlappingTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjEEB1L_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ax = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ax, %i.ar
  br i1 %exitcond.not.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjE7reverseB1f_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortTymENvYBT_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val10 = load i32, ptr %i.c, align 8           ; 3 uses
  %.val11 = load i64, ptr %0, align 8, !noundef !4 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load i32, ptr %i.d, align 8
  %i.e = icmp eq i64 %.val9, %.val11
  %i.f = icmp ult i64 %.val9, %.val11
  %i.g = icmp ult i32 %.val10, %.val12
  %.sroa.0.0.i.i = select i1 %i.e, i1 %i.g, i1 %i.f ; 2 uses
  %.not29 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %.sroa.0.0.i.i, label %.preheader, label %.preheader19

.preheader19:                                     ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not29, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, label %.lr.ph25

.lr.ph:                                           ; preds = %.preheader19, %bb.c
  %.val8 = phi i32 [ %.val6, %bb.c ], [ %.val10, %.preheader19 ]
  %.val7 = phi i64 [ %.val5, %bb.c ], [ %.val9, %.preheader19 ] ; 2 uses
  %.sroa.01.0.i21 = phi i64 [ %i.m, %bb.c ], [ 2, %.preheader19 ] ; 3 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.0.i21 ; 2 uses
  %.val5 = load i64, ptr %i.h, align 8, !noundef !4 ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val6 = load i32, ptr %i.i, align 8            ; 2 uses
  %i.j = icmp eq i64 %.val5, %.val7
  %i.k = icmp ult i64 %.val5, %.val7
  %i.l = icmp ult i32 %.val6, %.val8
  %.sroa.0.0.i.i13 = select i1 %i.j, i1 %i.l, i1 %i.k
  br i1 %.sroa.0.0.i.i13, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = add nuw nsw i64 %.sroa.01.0.i21, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread, label %.lr.ph

.lr.ph25:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i32 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i64 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i24 = phi i64 [ %i.s, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.01.1.i24 ; 2 uses
  %.val = load i64, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val2 = load i32, ptr %i.o, align 8            ; 2 uses
  %i.p = icmp eq i64 %.val, %.val3
  %i.q = icmp ult i64 %.val, %.val3
  %i.r = icmp ult i32 %.val2, %.val4
  %.sroa.0.0.i.i14 = select i1 %i.p, i1 %i.r, i1 %i.q
  br i1 %.sroa.0.0.i.i14, label %bb.d, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

bb.d:                                             ; preds = %.lr.ph25
  %i.s = add nuw nsw i64 %.sroa.01.1.i24, 1       ; 2 uses
  %exitcond32.not = icmp eq i64 %i.s, %1
  br i1 %exitcond32.not, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread, label %.lr.ph25

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %.lr.ph, %.lr.ph25, %.preheader19, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader19 ], [ 2, %.preheader ], [ %.sroa.01.1.i24, %.lr.ph25 ], [ %.sroa.01.0.i21, %.lr.ph ] ; 2 uses
  %i.t = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.t)
  %i.u = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.u, label %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread, label %bb.e

_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit
  br i1 %.sroa.0.0.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit

bb.e:                                             ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit
  %i.v = or i64 %1, 1
  %i.w = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.v, i1 true)
  %i.x = trunc nuw nsw i64 %i.w to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %i.z = xor i32 %i.y, 126
  tail call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTymENvYB17_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, i32 noundef %i.z, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit.loopexit.unr-lcssa: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i
  %i.aa = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i.epil.preheader

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i.epil.preheader: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit.loopexit.unr-lcssa, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i
  %.sroa.0.016.i.i.epil.init = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i ], [ %i.ba, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod55 = trunc i64 %i.ai to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ab = xor i64 %.sroa.0.016.i.i.epil.init, -1
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i.epil.init ; 3 uses
  %i.ad = getelementptr [16 x i8], ptr %i.aj, i64 %i.ab ; 3 uses
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !276, !noalias !277, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !alias.scope !276, !noalias !277, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !alias.scope !278
  store i64 %i.ae, ptr %i.ad, align 8, !alias.scope !279, !noalias !280
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store i32 %i.ag, ptr %i.ah, align 8, !alias.scope !279, !noalias !280
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i.epil.preheader, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit.loopexit.unr-lcssa, %bb.a, %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread, %bb.e
  ret void

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared17find_existing_runTymENvYB12_NtNtB8_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit.thread
  %i.ai = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 3 uses
  %i.ak = icmp eq i64 %i.ai, 1
  br i1 %i.ak, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i.epil.preheader, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i.new

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i.new: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i
  %unroll_iter = and i64 %i.ai, 288230376151711742
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i.new
  %.sroa.0.016.i.i = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i.new ], [ %i.ba, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.preheader.i.i.new ], [ %niter.next.1, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i ]
  %i.al = xor i64 %.sroa.0.016.i.i, -1
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 3 uses
  %i.an = getelementptr [16 x i8], ptr %i.aj, i64 %i.al ; 3 uses
  %i.ao = load i64, ptr %i.am, align 8, !alias.scope !276, !noalias !277, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !alias.scope !276, !noalias !277, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !alias.scope !278
  store i64 %i.ao, ptr %i.an, align 8, !alias.scope !279, !noalias !280
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i32 %i.aq, ptr %i.ar, align 8, !alias.scope !279, !noalias !280
  %i.as = xor i64 %.sroa.0.016.i.i, -2
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.av = getelementptr [16 x i8], ptr %i.aj, i64 %i.as ; 3 uses
  %i.aw = load i64, ptr %i.au, align 8, !alias.scope !276, !noalias !277, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !alias.scope !276, !noalias !277, !noundef !4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !alias.scope !278
  store i64 %i.aw, ptr %i.av, align 8, !alias.scope !279, !noalias !280
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !alias.scope !279, !noalias !280
  %i.ba = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE7reverseCskuiImRAV2ip_9elfshaker.exit.loopexit.unr-lcssa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTymE12split_at_mutCskuiImRAV2ip_9elfshaker.exit11.i.i
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort11insert_tailNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB18_7sort_byNCNvMsd_B1a_NtB1a_9PackIndex25compute_snapshot_checksum0E0EB1c_(ptr nofree noundef nonnull readnone captures(address) %0, ptr nofree noundef nonnull captures(address) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7 = alloca [16 x i8], align 8            ; 4 uses
  %i.a = getelementptr inbounds i8, ptr %1, i64 -40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !300)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !301, !noalias !302, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %1, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !302, !noalias !301, !nonnull !4, !noundef !4
  %i.f = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.c, ptr noundef nonnull dereferenceable(20) %i.e, i64 20), !noalias !303 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !301, !noalias !302, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !301, !noalias !302, !noundef !4 ; 5 uses
  %i.j = load ptr, ptr %i.a, align 8, !alias.scope !302, !noalias !301, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds i8, ptr %1, i64 -32
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !302, !noalias !301, !noundef !4 ; 2 uses
  %spec.store.select1.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.l)
  %i.m = tail call i32 @memcmp(ptr nonnull %i.g, ptr nonnull %i.j, i64 %spec.store.select1.i.i), !noalias !303 ; 2 uses
  %i.n = sext i32 %i.m to i64
  %i.o = icmp eq i32 %i.m, 0
  %i.p = sub i64 %i.i, %i.l
  %.sroa.011.0.i.i = select i1 %i.o, i64 %i.p, i64 %i.n
end_hunk_0
