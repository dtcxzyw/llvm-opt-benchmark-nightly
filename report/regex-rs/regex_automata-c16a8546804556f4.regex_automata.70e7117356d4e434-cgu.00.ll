Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.00?download=true
inline.NumInlined: 948
inline.NumDeleted: 510
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3map16Utf8BoundedEntryE11extend_withBN_:bb.a
  %i.ad = icmp ule i64 %i.x, %i.aa, !dbg !11630
    #dbg_value(i1 true, !4384, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11460)
  tail call void @llvm.assume(i1 %i.ad), !dbg !11631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11632, !noalias !11604
    #dbg_value(i64 %i.aa, !4330, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11461)
    #dbg_value(ptr %i.ac, !4330, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11461)
    #dbg_value(i64 0, !4330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11461)
  %.not.i.i.i = icmp eq i64 %i.x, 0, !dbg !11633
  br i1 %.not.i.i.i, label %bb.j, label %bb.f, !dbg !11633

bb.f:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
    #dbg_value(ptr %i.w, !4347, !DIExpression(), !11445)
    #dbg_value(ptr %i.w, !4353, !DIExpression(), !11447)
    #dbg_value(ptr %i.ac, !4348, !DIExpression(), !11445)
    #dbg_value(ptr %i.ac, !4354, !DIExpression(), !11447)
  %i.ae = shl nuw nsw i64 %i.x, 3, !dbg !11634
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.w, i64 %i.ae, i1 false), !dbg !11634, !noalias !11605
    #dbg_value(i64 %i.x, !4330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11461)
  br label %bb.j, !dbg !11635

bb.g:                                             ; preds = %._crit_edge
    #dbg_value(ptr poison, !1593, !DIExpression(), !11463)
    #dbg_value(ptr poison, !1599, !DIExpression(), !11465)
  store i64 %i.h, ptr %i.b, align 8, !dbg !11636
    #dbg_value(ptr %2, !2736, !DIExpression(), !11467)
    #dbg_value(ptr %2, !2741, !DIExpression(), !11469)
    #dbg_value(ptr %2, !2748, !DIExpression(), !11471)
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2), !dbg !11637
  br label %bb.h, !dbg !11638

bb.h:                                             ; preds = %._crit_edge.thread, %bb.g
  ret void, !dbg !11639

._crit_edge.thread:                               ; preds = %bb.j, %._crit_edge
  %.sroa.0.0.lcssa57 = phi ptr [ %i.l, %._crit_edge ], [ %i.ai, %bb.j ]
  %storemerge.lcssa56 = phi i64 [ %i.h, %._crit_edge ], [ %i.u, %bb.j ]
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.lcssa57, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !11640
    #dbg_value(ptr undef, !11513, !DIExpression(), !11519)
  %i.af = add i64 %storemerge.lcssa56, 1, !dbg !11641
    #dbg_value(i64 %i.af, !11495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11593)
    #dbg_value(ptr poison, !1593, !DIExpression(), !11473)
    #dbg_value(ptr poison, !1599, !DIExpression(), !11475)
  store i64 %i.af, ptr %i.b, align 8, !dbg !11642
  br label %bb.h, !dbg !11638

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp:                               ; preds = %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
    #dbg_value(ptr poison, !1593, !DIExpression(), !11477)
    #dbg_value(ptr poison, !1599, !DIExpression(), !11479)
  store i64 %storemerge41, ptr %i.b, align 8, !dbg !11643
  br label %bb.m, !dbg !11644

bb.j:                                             ; preds = %bb.f, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9GYDdpCSJ4S_14regex_automata.exit.i.i.i
    #dbg_value(i64 %i.x, !4330, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11461)
    #dbg_value(ptr %2, !4391, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11481)
  %i.ag = load i32, ptr %i.s, align 8, !dbg !11645, !alias.scope !11599, !noalias !11600, !noundef !1180
    #dbg_value(i16 %i.v, !11533, !DIExpression(DW_OP_LLVM_fragment, 224, 16), !11598)
    #dbg_value(i64 %i.aa, !11533, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11598)
    #dbg_value(ptr %i.ac, !11533, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11598)
    #dbg_value(i64 %i.x, !11533, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11598)
    #dbg_value(i32 %i.ag, !11533, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !11598)
  %i.ah = add nuw i64 %.sroa.03.042, 1, !dbg !11646 ; 2 uses
    #dbg_value(i64 %i.ah, !11496, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11594)
  store i64 %i.aa, ptr %.sroa.0.043, align 8, !dbg !11647
  %.sroa.4.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 8, !dbg !11647
  store ptr %i.ac, ptr %.sroa.4.0..sroa.0.0.sroa_idx, align 8, !dbg !11647
  %.sroa.5.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 16, !dbg !11647
  store i64 %i.x, ptr %.sroa.5.0..sroa.0.0.sroa_idx, align 8, !dbg !11647
  %.sroa.6.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 24, !dbg !11647
  store i32 %i.ag, ptr %.sroa.6.0..sroa.0.0.sroa_idx, align 8, !dbg !11647
  %.sroa.734.0..sroa.0.0.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 28, !dbg !11647
  store i16 %i.v, ptr %.sroa.734.0..sroa.0.0.sroa_idx, align 4, !dbg !11647
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.043, i64 32, !dbg !11648 ; 2 uses
    #dbg_value(ptr %i.ai, !11494, !DIExpression(), !11591)
    #dbg_value(ptr %i.ai, !11551, !DIExpression(), !11555)
    #dbg_value(ptr %i.ai, !11536, !DIExpression(), !11592)
    #dbg_value(ptr undef, !11513, !DIExpression(), !11517)
  %i.aj = add i64 %storemerge41, 1, !dbg !11649
    #dbg_value(i64 %i.aj, !11495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11593)
    #dbg_value(ptr undef, !11506, !DIExpression(), !11512)
    #dbg_value(ptr undef, !11508, !DIExpression(), !11511)
    #dbg_value(ptr undef, !11498, !DIExpression(), !11505)
    #dbg_value(ptr undef, !11499, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11595)
  %exitcond.not = icmp eq i64 %i.ah, %1, !dbg !11617
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.d, !dbg !11504

bb.k:                                             ; preds = %bb.m
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !11650
  unreachable, !dbg !11650

bb.l:                                             ; preds = %bb.m
  resume { ptr, i32 } %.pn, !dbg !11650

bb.m:                                             ; preds = %bb.c, %bb.i
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.i ], [ %i.g, %bb.c ]
    #dbg_value(ptr %2, !2736, !DIExpression(), !11483)
    #dbg_value(ptr %2, !2741, !DIExpression(), !11485)
    #dbg_value(ptr %2, !2748, !DIExpression(), !11487)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.k, !dbg !11651
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecbE11extend_withCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11655 {
bb.a:
    #dbg_value(ptr poison, !11705, !DIExpression(), !11712)
    #dbg_value(ptr poison, !11715, !DIExpression(), !11718)
    #dbg_value(ptr poison, !11713, !DIExpression(), !11719)
    #dbg_value(ptr poison, !11720, !DIExpression(), !11724)
    #dbg_value(ptr poison, !11720, !DIExpression(), !11726)
  %i.a = zext i1 %2 to i8                         ; 2 uses
    #dbg_value(i8 %i.a, !11699, !DIExpression(), !11727)
    #dbg_value(ptr %0, !11697, !DIExpression(), !11727)
    #dbg_value(ptr %0, !11728, !DIExpression(), !11734)
    #dbg_value(ptr %0, !11735, !DIExpression(), !11738)
    #dbg_value(i64 %1, !11698, !DIExpression(), !11727)
    #dbg_value(i64 1, !11739, !DIExpression(), !11746)
    #dbg_value(i64 1, !11721, !DIExpression(), !11747)
    #dbg_value(i64 1, !11721, !DIExpression(), !11748)
    #dbg_value(ptr %0, !11749, !DIExpression(), !11666)
    #dbg_value(i64 %1, !11753, !DIExpression(), !11666)
    #dbg_value(i64 %1, !11755, !DIExpression(), !11669)
    #dbg_value(i64 %1, !11762, !DIExpression(), !11672)
    #dbg_value(i64 %1, !11767, !DIExpression(), !11675)
    #dbg_value(ptr %0, !11759, !DIExpression(), !11676)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11812 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !11812, !alias.scope !11772, !noundef !1180 ; 3 uses
    #dbg_value(i64 %i.c, !11760, !DIExpression(), !11669)
    #dbg_value(i64 %i.c, !11764, !DIExpression(), !11672)
    #dbg_value(i64 %i.c, !11769, !DIExpression(), !11675)
    #dbg_value(i64 %i.c, !11773, !DIExpression(), !11681)
    #dbg_value(ptr %0, !11763, !DIExpression(), !11672)
    #dbg_value(ptr %0, !11768, !DIExpression(), !11675)
    #dbg_value(ptr %0, !11776, !DIExpression(), !11684)
    #dbg_value(i64 1, !11765, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11672)
    #dbg_value(i64 1, !11770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11675)
    #dbg_value(i64 1, !11765, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11672)
    #dbg_value(i64 1, !11770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11675)
    #dbg_value(i64 1, !11777, !DIExpression(), !11684)
  %i.d = load i64, ptr %0, align 8, !dbg !11813, !range !1566, !alias.scope !11772, !noundef !1180
    #dbg_value(i64 %i.d, !11774, !DIExpression(), !11681)
  %i.e = sub i64 %i.d, %i.c, !dbg !11814
  %i.f = icmp ugt i64 %1, %i.e, !dbg !11815
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !11816, !prof !1567

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %1, i64 noundef 1, i64 noundef 1), !dbg !11817
  %.pre = load i64, ptr %i.b, align 8, !dbg !11818
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCs9GYDdpCSJ4S_14regex_automata.exit, !dbg !11817

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ], !dbg !11818 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11819
  %i.i = load ptr, ptr %i.h, align 8, !dbg !11819, !nonnull !1180, !noundef !1180 ; 2 uses
    #dbg_value(ptr %i.i, !11742, !DIExpression(), !11796)
    #dbg_value(i64 %i.g, !11743, !DIExpression(), !11796)
  %i.j = icmp sgt i64 %i.g, -1, !dbg !11820
  tail call void @llvm.assume(i1 %i.j), !dbg !11821
  %i.k = getelementptr i8, ptr %i.i, i64 %i.g, !dbg !11822 ; 2 uses
    #dbg_value(ptr %i.k, !11701, !DIExpression(), !11797)
    #dbg_value(ptr %i.k, !11742, !DIExpression(), !11746)
    #dbg_value(ptr %i.k, !11798, !DIExpression(), !11804)
    #dbg_value(ptr %i.b, !11702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11805)
    #dbg_value(i64 1, !11703, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11806)
    #dbg_value(i64 %1, !11703, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11806)
    #dbg_value(i64 %i.g, !11702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11805)
    #dbg_value(ptr undef, !11713, !DIExpression(), !11719)
    #dbg_value(ptr undef, !11715, !DIExpression(), !11718)
    #dbg_value(ptr undef, !11705, !DIExpression(), !11712)
    #dbg_value(ptr undef, !11706, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11807)
  %i.l = icmp ugt i64 %1, 1, !dbg !11823
  br i1 %i.l, label %._crit_edge.thread, label %._crit_edge, !dbg !11711

._crit_edge.thread:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCs9GYDdpCSJ4S_14regex_automata.exit
  %i.m = add i64 %1, -1, !dbg !11711
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.k, i8 %i.a, i64 %i.m, i1 false), !dbg !11824
    #dbg_value(ptr poison, !11798, !DIExpression(), !11804)
    #dbg_value(i64 poison, !11702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11805)
    #dbg_value(i64 poison, !11703, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11806)
    #dbg_value(ptr poison, !11798, !DIExpression(), !11809)
    #dbg_value(i1 %2, !11801, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11809)
    #dbg_value(ptr poison, !11701, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11797)
    #dbg_value(ptr poison, !11742, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !11746)
    #dbg_value(ptr undef, !11720, !DIExpression(), !11724)
    #dbg_value(ptr undef, !11713, !DIExpression(), !11719)
    #dbg_value(ptr undef, !11715, !DIExpression(), !11718)
    #dbg_value(ptr undef, !11705, !DIExpression(), !11712)
    #dbg_value(ptr undef, !11706, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11807)
  %i.n = add i64 %i.g, %1, !dbg !11711            ; 2 uses
  %i.o = add i64 %i.n, -1, !dbg !11711
  %3 = getelementptr i8, ptr %i.i, i64 %i.n, !dbg !11711
  %scevgep = getelementptr i8, ptr %3, i64 -1, !dbg !11711
  br label %bb.c, !dbg !11825

._crit_edge:                                      ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecbE7reserveCs9GYDdpCSJ4S_14regex_automata.exit
  %.not = icmp eq i64 %1, 0, !dbg !11825
  br i1 %.not, label %bb.d, label %bb.c, !dbg !11825

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %.sroa.0.0.lcssa42 = phi ptr [ %scevgep, %._crit_edge.thread ], [ %i.k, %._crit_edge ]
  %storemerge.lcssa41 = phi i64 [ %i.o, %._crit_edge.thread ], [ %i.g, %._crit_edge ]
    #dbg_value(i1 %2, !11801, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11804)
  store i8 %i.a, ptr %.sroa.0.0.lcssa42, align 1, !dbg !11826
    #dbg_value(ptr undef, !11720, !DIExpression(), !11726)
  %i.p = add i64 %storemerge.lcssa41, 1, !dbg !11827
    #dbg_value(i64 %i.p, !11702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11805)
    #dbg_value(ptr poison, !1593, !DIExpression(), !11691)
    #dbg_value(ptr poison, !1599, !DIExpression(), !11693)
  br label %bb.d, !dbg !11828

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %storemerge32 = phi i64 [ %i.p, %bb.c ], [ %i.g, %._crit_edge ], !dbg !11829
  store i64 %storemerge32, ptr %i.b, align 8, !dbg !11829
  ret void, !dbg !11830
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE16into_boxed_sliceBK_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11836 {
bb.a:
    #dbg_value(ptr poison, !11875, !DIExpression(), !11878)
    #dbg_declare(ptr %0, !11864, !DIExpression(), !11879)
    #dbg_value(i64 4, !11880, !DIExpression(), !11887)
    #dbg_value(i64 4, !11895, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11902)
    #dbg_value(i64 4, !11895, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11902)
    #dbg_value(i64 4, !11880, !DIExpression(), !11913)
    #dbg_value(ptr %0, !11889, !DIExpression(), !11944)
    #dbg_value(ptr %0, !11891, !DIExpression(), !11945)
  %i.a = load i64, ptr %0, align 8, !dbg !11951, !range !1566, !noundef !1180
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11952 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !11952, !noundef !1180 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !11953
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !11953

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !11906, !DIExpression(), !11946)
    #dbg_value(i64 %i.c, !11907, !DIExpression(), !11947)
    #dbg_value(i64 %i.c, !11897, !DIExpression(), !11902)
    #dbg_value(ptr %0, !11896, !DIExpression(), !11902)
    #dbg_value(ptr %0, !4426, !DIExpression(), !11856)
    #dbg_value(i64 %i.c, !4441, !DIExpression(), !11856)
    #dbg_value(i64 4, !4442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11856)
    #dbg_value(i64 4, !4442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11856)
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 4, i64 noundef 4)
          to label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit unwind label %bb.d, !dbg !11954 ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, %bb.a
  %.sroa.534.0.copyload = phi i64 [ %.sroa.534.0.copyload.pre, %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit._crit_edge ], [ %i.c, %bb.a ], !dbg !11955 ; 2 uses
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11955
  %.sroa.433.0.copyload = load ptr, ptr %.sroa.433.0..sroa_idx, align 8, !dbg !11955, !nonnull !1180, !noundef !1180
    #dbg_value(i64 poison, !11865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11948)
    #dbg_value(ptr %.sroa.433.0.copyload, !11865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11948)
    #dbg_value(i64 %.sroa.534.0.copyload, !11865, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11948)
    #dbg_value(i64 poison, !11866, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11949)
    #dbg_value(ptr %.sroa.433.0.copyload, !11866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11949)
    #dbg_value(ptr undef, !11875, !DIExpression(), !11878)
  %i.f = icmp ult i64 %.sroa.534.0.copyload, 2305843009213693952, !dbg !11956
  tail call void @llvm.assume(i1 %i.f), !dbg !11957
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.433.0.copyload, 0, !dbg !11958
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.534.0.copyload, 1, !dbg !11958
  ret { ptr, i64 } %i.h, !dbg !11958

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !2862, !DIExpression(), !11858)
    #dbg_value(ptr %0, !2856, !DIExpression(), !11860)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit unwind label %bb.g, !dbg !11959

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0, !dbg !11960 ; 2 uses
  %.not = icmp eq i64 %i.j, -1, !dbg !11961
  br i1 %.not, label %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit._crit_edge, label %bb.e, !dbg !11962, !prof !1548

_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit._crit_edge: ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit
  %.sroa.534.0.copyload.pre = load i64, ptr %i.b, align 8, !dbg !11955
  br label %bb.c, !dbg !11962

bb.e:                                             ; preds = %_RNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner6shrinkCs9GYDdpCSJ4S_14regex_automata.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1, !dbg !11960
    #dbg_value(i64 %i.j, !11898, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11950)
    #dbg_value(i64 %i.k, !11898, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11950)
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #19
          to label %bb.f unwind label %bb.d, !dbg !11963

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #20, !dbg !11964
  unreachable, !dbg !11964

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDEEB1e_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i, !dbg !11964
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCs9GYDdpCSJ4S_14regex_automata4util10primitives7StateIDE7reserveBK_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !88 {
bb.a:
    #dbg_value(ptr %0, !1671, !DIExpression(), !11965)
    #dbg_value(i64 %1, !1675, !DIExpression(), !11965)
    #dbg_value(i64 %1, !1677, !DIExpression(), !11967)
    #dbg_value(i64 %1, !1685, !DIExpression(), !11969)
    #dbg_value(i64 %1, !1690, !DIExpression(), !11971)
    #dbg_value(ptr %0, !1682, !DIExpression(), !11972)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11977
  %i.b = load i64, ptr %i.a, align 8, !dbg !11977, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.b, !1683, !DIExpression(), !11967)
    #dbg_value(i64 %i.b, !1687, !DIExpression(), !11969)
    #dbg_value(i64 %i.b, !1692, !DIExpression(), !11971)
    #dbg_value(i64 %i.b, !1695, !DIExpression(), !11974)
    #dbg_value(ptr %0, !1686, !DIExpression(), !11969)
    #dbg_value(ptr %0, !1691, !DIExpression(), !11971)
    #dbg_value(ptr %0, !1698, !DIExpression(), !11976)
    #dbg_value(i64 4, !1688, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11969)
    #dbg_value(i64 4, !1693, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11971)
    #dbg_value(i64 4, !1688, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11969)
    #dbg_value(i64 4, !1693, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11971)
    #dbg_value(i64 4, !1699, !DIExpression(), !11976)
  %i.c = load i64, ptr %0, align 8, !dbg !11978, !range !1566, !noundef !1180
    #dbg_value(i64 %i.c, !1696, !DIExpression(), !11974)
  %i.d = sub i64 %i.c, %i.b, !dbg !11979
  %i.e = icmp ugt i64 %1, %i.d, !dbg !11980
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !11981, !prof !1567

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !11982

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 4, i64 noundef 4), !dbg !11983
  br label %bb.b, !dbg !11983
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson10range_trie5StateE7reserveBM_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 !dbg !11984 {
bb.a:
    #dbg_value(ptr %0, !11991, !DIExpression(), !11994)
    #dbg_value(i64 %1, !11992, !DIExpression(), !11994)
    #dbg_value(i64 %1, !11995, !DIExpression(), !12003)
    #dbg_value(i64 %1, !12004, !DIExpression(), !12010)
    #dbg_value(i64 %1, !12011, !DIExpression(), !12017)
    #dbg_value(ptr %0, !11999, !DIExpression(), !12018)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12029
  %i.b = load i64, ptr %i.a, align 8, !dbg !12029, !noundef !1180 ; 2 uses
    #dbg_value(i64 %i.b, !12000, !DIExpression(), !12003)
    #dbg_value(i64 %i.b, !12006, !DIExpression(), !12010)
    #dbg_value(i64 %i.b, !12013, !DIExpression(), !12017)
    #dbg_value(i64 %i.b, !12019, !DIExpression(), !12023)
    #dbg_value(ptr %0, !12005, !DIExpression(), !12010)
    #dbg_value(ptr %0, !12012, !DIExpression(), !12017)
    #dbg_value(ptr %0, !12024, !DIExpression(), !12028)
    #dbg_value(i64 8, !12007, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12010)
    #dbg_value(i64 8, !12014, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12017)
    #dbg_value(i64 24, !12007, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12010)
    #dbg_value(i64 24, !12014, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12017)
    #dbg_value(i64 24, !12025, !DIExpression(), !12028)
  %i.c = load i64, ptr %0, align 8, !dbg !12030, !range !1566, !noundef !1180
    #dbg_value(i64 %i.c, !12020, !DIExpression(), !12023)
  %i.d = sub i64 %i.c, %i.b, !dbg !12031
  %i.e = icmp ugt i64 %1, %i.d, !dbg !12032
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !12033, !prof !1567

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void, !dbg !12034

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs9GYDdpCSJ4S_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 8, i64 noundef 24), !dbg !12035
  br label %bb.b, !dbg !12035
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtNtCs9GYDdpCSJ4S_14regex_automata3nfa8thompson3nfa10TransitionE16into_boxed_sliceBM_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12041 {
bb.a:
    #dbg_value(ptr poison, !12080, !DIExpression(), !12086)
    #dbg_declare(ptr %0, !12069, !DIExpression(), !12087)
    #dbg_value(i64 8, !12088, !DIExpression(), !12095)
    #dbg_value(i64 4, !12107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12114)
    #dbg_value(i64 8, !12107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12114)
    #dbg_value(i64 8, !12088, !DIExpression(), !12125)
    #dbg_value(ptr %0, !12097, !DIExpression(), !12156)
    #dbg_value(ptr %0, !12100, !DIExpression(), !12157)
  %i.a = load i64, ptr %0, align 8, !dbg !12163, !range !1566, !noundef !1180
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !12164 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !12164, !noundef !1180 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c, !dbg !12165
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !12165

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !12118, !DIExpression(), !12158)
    #dbg_value(i64 %i.c, !12119, !DIExpression(), !12159)
end_hunk_0
