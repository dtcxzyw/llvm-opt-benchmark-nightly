Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_error-98c9860d04c4aeed.polars_error.be07a98e21519244-cgu.1?download=true
inline.NumInlined: 86
inline.NumDeleted: 63
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvNtCsgjwxzEoLG5s_12polars_error5abort19decode_polars_abort:bb.a
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !dbg !558, !nonnull !44, !noundef !44 ; 3 uses
  %.sroa.5.0 = load i64, ptr %i.j, align 8, !dbg !558, !noundef !44 ; 3 uses
  %i.k = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !559
  br i1 %i.k, label %bb.e, label %bb.f, !dbg !560

bb.e:                                             ; preds = %bb.d
  %i.l = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 33, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !561
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !562

bb.f:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi i8 [ 2, %bb.d ], [ 0, %bb.e ], [ 2, %bb.b ], [ 1, %bb.g ], !dbg !558
  ret i8 %.sroa.0.0, !dbg !563

bb.g:                                             ; preds = %bb.e
  %i.m = call fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.5.0) #20, !dbg !564
  br i1 %i.m, label %bb.f, label %bb.h, !dbg !565, !prof !545

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !566
  unreachable, !dbg !566
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCsgjwxzEoLG5s_12polars_error5abort20try_register_catcher() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !567 {
bb.a:
  %i.a = atomicrmw add ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 4 monotonic, align 8, !dbg !581 ; 3 uses
  %i.b = and i64 %i.a, 3, !dbg !582
  %i.c = icmp eq i64 %i.b, 0, !dbg !582
  br i1 %i.c, label %bb.d, label %bb.b, !dbg !582

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE monotonic, align 8, !dbg !583
  br label %bb.c, !dbg !584

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.06.0.i.i = phi i64 [ %i.d, %bb.b ], [ %.sroa.01.0.i.i.i, %bb.c ], !dbg !585 ; 3 uses
  %i.e = icmp ugt i64 %.sroa.06.0.i.i, 7, !dbg !586
  %i.f = add i64 %.sroa.06.0.i.i, -4, !dbg !586
  %.sroa.3.0.i.i.i = select i1 %i.e, i64 %i.f, i64 0, !dbg !586
  %i.g = cmpxchg weak ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE, i64 %.sroa.06.0.i.i, i64 %.sroa.3.0.i.i.i monotonic monotonic, align 8, !dbg !587 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.g, 1, !dbg !588
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.g, 0, !dbg !588
  br i1 %.sroa.18.0.in.i.i.i, label %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit, label %bb.c, !dbg !589

_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit: ; preds = %bb.c
  %i.h = and i64 %i.a, 1, !dbg !590
  %i.i = icmp eq i64 %i.h, 0, !dbg !590
  br i1 %i.i, label %bb.e, label %bb.d, !dbg !590

bb.d:                                             ; preds = %bb.e, %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %bb.a ], [ 0, %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit ], [ 1, %bb.e ], !dbg !591
  ret i8 %.sroa.0.0, !dbg !592

bb.e:                                             ; preds = %_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher.exit
  %i.j = and i64 %i.a, 2, !dbg !593
  %i.k = icmp eq i64 %i.j, 0, !dbg !593
  br i1 %i.k, label %bb.f, label %bb.d, !dbg !593, !prof !113

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23, !dbg !594
  unreachable, !dbg !594
}

; Function Attrs: cold noinline noreturn nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort27try_raise_polars_abort_slow() unnamed_addr #5 !dbg !595 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsgjwxzEoLG5s_12polars_error5abort11ABORT_STATE acquire, align 8, !dbg !603 ; 2 uses
  %i.b = and i64 %i.a, 1, !dbg !604
  %i.c = icmp eq i64 %i.b, 0, !dbg !604
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !604

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.a, 2, !dbg !605
  %i.e = icmp eq i64 %i.d, 0, !dbg !605
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !605

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 33, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23, !dbg !606
  unreachable, !dbg !606

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #23, !dbg !607
  unreachable, !dbg !607

bb.e:                                             ; preds = %bb.b
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23, !dbg !608
  unreachable, !dbg !608
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk() unnamed_addr #6 !dbg !609 {
bb.a:
  tail call fastcc void @_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort28polars_abort_ooc_out_of_disk0EB1d_() #20, !dbg !614
  tail call void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 30, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !dbg !615
  unreachable, !dbg !615
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !616 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 5 uses
  %i.d = tail call { ptr, ptr } @_RNvNtCsh8eZTKRCwoO_3std9panicking9take_hook(), !dbg !648 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !648 ; 2 uses
  %i.f = extractvalue { ptr, ptr } %i.d, 1, !dbg !648 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8, !noalias !640
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !noalias !640
  tail call void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !dbg !649
  %i.h = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #19, !dbg !650 ; 4 uses
  %i.i = icmp eq ptr %i.h, null, !dbg !651
  br i1 %i.i, label %bb.b, label %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit, !dbg !652, !prof !113

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #24
          to label %.noexc unwind label %bb.c, !dbg !653

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !653

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a) #21
          to label %common.resume unwind label %bb.d, !dbg !654

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !655
  unreachable, !dbg !655

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.q, %bb.f ]
  resume { ptr, i32 } %common.resume.op, !dbg !656

_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit: ; preds = %bb.a
  store ptr %i.e, ptr %i.h, align 8, !dbg !657
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !657
  store ptr %i.f, ptr %i.l, align 8, !dbg !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !658
  tail call void @_RNvNtCsh8eZTKRCwoO_3std9panicking8set_hook(ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15), !dbg !659
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !660
  call void @_RINvCs8kXw7nnhjzR_20signal_hook_registry8registerNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanisms_0EBR_(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(address) dereferenceable(48) %i.c, i32 noundef 2), !dbg !660
  call void @llvm.experimental.noalias.scope.decl(metadata !642), !dbg !661
  %i.m = load i64, ptr %i.c, align 16, !dbg !662, !range !114, !alias.scope !642, !noalias !643, !noundef !44
  %i.n = trunc nuw i64 %i.m to i1, !dbg !663
  br i1 %i.n, label %bb.e, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtCs8kXw7nnhjzR_20signal_hook_registry5SigIdNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE6unwrapCsgjwxzEoLG5s_12polars_error.exit, !dbg !663, !prof !113

bb.e:                                             ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !664, !noalias !647
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !664
  %i.p = load ptr, ptr %i.o, align 8, !dbg !664, !alias.scope !642, !noalias !643, !nonnull !44, !noundef !44
  store ptr %i.p, ptr %i.b, align 8, !dbg !664, !noalias !647
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #24
          to label %bb.g unwind label %bb.f, !dbg !665, !noalias !647

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECsgjwxzEoLG5s_12polars_error(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #21
          to label %common.resume unwind label %bb.h, !dbg !666, !noalias !647

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #22, !dbg !667, !noalias !647
  unreachable, !dbg !667

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultNtCs8kXw7nnhjzR_20signal_hook_registry5SigIdNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE6unwrapCsgjwxzEoLG5s_12polars_error.exit: ; preds = %_RNvMNtCsgZ49sUHp3tW_5alloc5boxedINtB2_3BoxNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0E3newBK_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !668
  ret void, !dbg !669
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in(ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 15, 34) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !670 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 19 uses
  %i.c = icmp ult i64 %1, %3, !dbg !1113
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !1113

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread: ; preds = %.split.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, %.lr.ph.split.us.i.i, %bb.bb, %bb.b, %bb.bd, %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ %i.jr, %bb.bd ], [ %.sroa.0.025, %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit ], [ %.sroa.014.5.i, %bb.bb ], [ 1, %.lr.ph.split.us.i.i ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ], [ 0, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ 1, %.split.us.i.i ], !dbg !1114
  %i.d = trunc nuw i8 %.sroa.0.0 to i1, !dbg !1115
  ret i1 %i.d, !dbg !1115

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, %3, !dbg !1116
  br i1 %i.e, label %bb.bd, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1116

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i64 %1, 33, !dbg !1117
  br i1 %i.f, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, !dbg !1117

_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit: ; preds = %bb.ar, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1118
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1), !dbg !1119
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010), !dbg !1120
  %i.g = load i64, ptr %i.b, align 8, !dbg !1121, !range !114, !alias.scope !1010, !noalias !1011, !noundef !44
  %i.h = trunc nuw i64 %i.g to i1, !dbg !1122
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.h, label %bb.m, label %.preheader.i, !dbg !1122

.preheader.i:                                     ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.k = load i8, ptr %i.j, align 2, !range !1013, !alias.scope !1014, !noalias !1015, !noundef !44
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph.i, !dbg !1123

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !1010, !noalias !1011 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1014, !noalias !1015, !nonnull !44, !noundef !44 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1014, !noalias !1015, !noundef !44 ; 14 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !1014, !noalias !1015 ; 2 uses
  %i.r = trunc nuw i8 %.promoted26.i to i1, !dbg !1124
  %i.s = icmp eq i64 %.promoted.i, 0, !dbg !1125
  br i1 %i.s, label %bb.f, label %bb.d, !dbg !1125

bb.d:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.q, !dbg !1126
  br i1 %.not.i.i.i.peel, label %bb.e, label %.split.i.i.i.peel, !dbg !1126

.split.i.i.i.peel:                                ; preds = %bb.d
  %i.t = icmp eq i64 %.promoted.i, %i.q, !dbg !1127
  br i1 %i.t, label %bb.f, label %.loopexit, !dbg !1128

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 %.promoted.i, !dbg !1129
  %i.v = load i8, ptr %i.u, align 1, !dbg !1129, !alias.scope !1018, !noalias !1019, !noundef !44
  %i.w = icmp sgt i8 %i.v, -65, !dbg !1130
  br i1 %i.w, label %bb.f, label %.loopexit, !dbg !1128

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel, %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 %.promoted.i, !dbg !1131 ; 4 uses
  %i.y = icmp samesign eq i64 %.promoted.i, %i.q, !dbg !1132
  br i1 %i.y, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.g, !dbg !1133

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !dbg !1134, !noalias !1031, !noundef !44 ; 5 uses
  %i.aa = icmp sgt i8 %i.z, -1, !dbg !1135
  br i1 %i.aa, label %bb.h, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel, !dbg !1135

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel: ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1, !dbg !1136
  %i.ac = and i8 %i.z, 31, !dbg !1137
  %i.ad = zext nneg i8 %i.ac to i32, !dbg !1137   ; 3 uses
  %i.ae = add nuw nsw i64 %.promoted.i, 1, !dbg !1138
  %i.af = icmp samesign ne i64 %i.ae, %i.q, !dbg !1138
  tail call void @llvm.assume(i1 %i.af), !dbg !1139
  %i.ag = load i8, ptr %i.ab, align 1, !dbg !1140, !noalias !1031, !noundef !44
  %i.ah = shl nuw nsw i32 %i.ad, 6, !dbg !1141
  %i.ai = and i8 %i.ag, 63, !dbg !1142
  %i.aj = zext nneg i8 %i.ai to i32, !dbg !1142   ; 2 uses
  %i.ak = or disjoint i32 %i.ah, %i.aj, !dbg !1141
  %i.al = icmp samesign ugt i8 %i.z, -33, !dbg !1143
  br i1 %i.al, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel, label %bb.i, !dbg !1143

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 2, !dbg !1144
  %i.an = add nuw nsw i64 %.promoted.i, 2, !dbg !1145
  %i.ao = icmp samesign ne i64 %i.an, %i.q, !dbg !1145
  tail call void @llvm.assume(i1 %i.ao), !dbg !1146
  %i.ap = load i8, ptr %i.am, align 1, !dbg !1147, !noalias !1031, !noundef !44
  %i.aq = shl nuw nsw i32 %i.aj, 6, !dbg !1148
  %i.ar = and i8 %i.ap, 63, !dbg !1149
  %i.as = zext nneg i8 %i.ar to i32, !dbg !1149
  %i.at = or disjoint i32 %i.aq, %i.as, !dbg !1148 ; 2 uses
  %i.au = shl nuw nsw i32 %i.ad, 12, !dbg !1150
  %i.av = or disjoint i32 %i.at, %i.au, !dbg !1151
  %i.aw = icmp samesign ugt i8 %i.z, -17, !dbg !1152
  br i1 %i.aw, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel, label %bb.i, !dbg !1152

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 3, !dbg !1153
  %i.ay = add nuw nsw i64 %.promoted.i, 3, !dbg !1154
  %i.az = icmp samesign ne i64 %i.ay, %i.q, !dbg !1154
  tail call void @llvm.assume(i1 %i.az), !dbg !1155
  %i.ba = load i8, ptr %i.ax, align 1, !dbg !1156, !noalias !1031, !noundef !44
  %i.bb = shl nuw nsw i32 %i.ad, 18, !dbg !1157
  %i.bc = and i32 %i.bb, 1835008, !dbg !1157
  %i.bd = shl nuw nsw i32 %i.at, 6, !dbg !1158
  %i.be = and i8 %i.ba, 63, !dbg !1159
  %i.bf = zext nneg i8 %i.be to i32, !dbg !1159
  %i.bg = or disjoint i32 %i.bd, %i.bf, !dbg !1158
  %i.bh = or disjoint i32 %i.bg, %i.bc, !dbg !1160
  br label %bb.i, !dbg !1161

bb.h:                                             ; preds = %bb.g
  %i.bi = zext nneg i8 %i.z to i32, !dbg !1162
  br label %bb.i, !dbg !1163

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.av, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i.peel ], [ %i.bh, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i.peel ], [ %i.ak, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i.peel ], [ %i.bi, %bb.h ] ; 4 uses
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112, !dbg !1164
  tail call void @llvm.assume(i1 %i.bj), !dbg !1164
  br i1 %i.r, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.j, !dbg !1165

bb.j:                                             ; preds = %bb.i
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128, !dbg !1166
  br i1 %i.bk, label %bb.n, label %bb.k, !dbg !1166

bb.k:                                             ; preds = %bb.j
  %i.bl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048, !dbg !1167
  br i1 %i.bl, label %bb.n, label %bb.l, !dbg !1167

bb.l:                                             ; preds = %bb.k
  %i.bm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536, !dbg !1168
  %..i.i.peel = select i1 %i.bm, i64 3, i64 4, !dbg !1169
  br label %bb.n, !dbg !1169

bb.m:                                             ; preds = %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1170
  %i.bo = load i64, ptr %i.bn, align 8, !dbg !1170, !alias.scope !1010, !noalias !1011, !noundef !44 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, -1, !dbg !1171
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !1043
  %i.br = load ptr, ptr %i.bq, align 8, !dbg !1043, !alias.scope !1010, !noalias !1011, !nonnull !44, !noundef !44 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1043
  %i.bt = load i64, ptr %i.bs, align 8, !dbg !1043, !alias.scope !1010, !noalias !1011, !noundef !44 ; 14 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1043
  %i.bv = load ptr, ptr %i.bu, align 8, !dbg !1043, !alias.scope !1010, !noalias !1011, !nonnull !44, !noundef !44 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 96, !dbg !1043
  %i.bx = load i64, ptr %i.bw, align 8, !dbg !1043, !alias.scope !1010, !noalias !1011, !noundef !44 ; 12 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1172 ; 2 uses
  %i.bz = add nsw i64 %i.bx, -1, !dbg !1173       ; 4 uses
  br i1 %i.bp, label %bb.s, label %bb.ae, !dbg !1171

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.k ], [ %..i.i.peel, %bb.l ], [ 1, %bb.j ], !dbg !1169
  %i.ca = add i64 %.sroa.01.0.i.i.peel, %.promoted.i, !dbg !1174 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1044), !dbg !1175
  %i.cb = icmp eq i64 %i.ca, 0, !dbg !1125
  br i1 %i.cb, label %bb.q, label %bb.o, !dbg !1125

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i = icmp ult i64 %i.ca, %i.q, !dbg !1126
  br i1 %.not.i.i.i, label %bb.p, label %.split.i.i.i, !dbg !1126

.split.i.i.i:                                     ; preds = %bb.o
  %i.cc = icmp eq i64 %i.ca, %i.q, !dbg !1127
  br i1 %i.cc, label %bb.q, label %.loopexit, !dbg !1128

bb.p:                                             ; preds = %bb.o
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ca, !dbg !1129
  %i.ce = load i8, ptr %i.cd, align 1, !dbg !1129, !alias.scope !1018, !noalias !1045, !noundef !44
  %i.cf = icmp sgt i8 %i.ce, -65, !dbg !1130
  br i1 %i.cf, label %bb.q, label %.loopexit, !dbg !1128

bb.q:                                             ; preds = %bb.p, %.split.i.i.i, %bb.n
  %i.cg = icmp samesign eq i64 %i.ca, %i.q, !dbg !1132
  br i1 %i.cg, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.r, !dbg !1133

bb.r:                                             ; preds = %bb.q
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ca, !dbg !1131
  %i.ci = load i8, ptr %i.ch, align 1, !dbg !1134, !noalias !1046, !noundef !44 ; 3 uses
  %i.cj = icmp sgt i8 %i.ci, -1, !dbg !1135
  br i1 %i.cj, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i, !dbg !1135

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i: ; preds = %bb.r
  %i.ck = add nuw nsw i64 %i.ca, 1, !dbg !1138
  %i.cl = icmp samesign ne i64 %i.ck, %i.q, !dbg !1138
  tail call void @llvm.assume(i1 %i.cl), !dbg !1139
  %i.cm = icmp samesign ugt i8 %i.ci, -33, !dbg !1143
  br i1 %i.cm, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1143

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i
  %i.cn = add nuw nsw i64 %i.ca, 2, !dbg !1145
  %i.co = icmp samesign ne i64 %i.cn, %i.q, !dbg !1145
  tail call void @llvm.assume(i1 %i.co), !dbg !1146
  %i.cp = icmp samesign ugt i8 %i.ci, -17, !dbg !1152
  br i1 %i.cp, label %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1152

_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i
  %i.cq = add nuw nsw i64 %i.ca, 3, !dbg !1154
  %i.cr = icmp samesign ne i64 %i.cq, %i.q, !dbg !1154
  tail call void @llvm.assume(i1 %i.cr), !dbg !1155
  br label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1161

.loopexit:                                        ; preds = %bb.p, %.split.i.i.i, %bb.e, %.split.i.i.i.peel
  %.lcssa143 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.e ], [ %i.ca, %.split.i.i.i ], [ %i.ca, %bb.p ]
  tail call void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q, i64 noundef %.lcssa143, i64 noundef %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #23, !dbg !1176, !noalias !1045
  unreachable, !dbg !1176

bb.s:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1047), !dbg !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1048), !dbg !1177
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1049), !dbg !1177
  %.promoted.i11 = load i64, ptr %i.by, align 8, !alias.scope !1047, !noalias !1050 ; 2 uses
  %i.cs = add i64 %.promoted.i11, %i.bz, !dbg !1178 ; 2 uses
  %i.ct = icmp ult i64 %i.cs, %i.bt, !dbg !1179
  br i1 %i.ct, label %.lr.ph.i14, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1179

.lr.ph.i14:                                       ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a

bb.v:                                             ; preds = %bb.ad, %bb.aa, %bb.u
  %i.dk = phi i64 [ %i.ed, %bb.ad ], [ %i.dj, %bb.u ], [ %i.dx, %bb.aa ] ; 2 uses
  %i.dl = add i64 %i.dk, %i.bz, !dbg !1178        ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %i.bt, !dbg !1179
  br i1 %i.dm, label %bb.t, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1179

.preheader89:                                     ; preds = %bb.ab
  %i.dn = add i64 %.sroa.02.0.i18263, 1, !dbg !1188 ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.dn, %umax49.i17, !dbg !1189
  br i1 %exitcond.not.i19, label %.preheader.preheader, label %.lr.ph264, !dbg !1185

.preheader.preheader:                             ; preds = %.preheader89, %.preheader89.preheader
  br i1 %.not265, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph267, !dbg !1190

.lr.ph264:                                        ; preds = %.preheader89.preheader, %.preheader89
  %.sroa.02.0.i18263 = phi i64 [ %i.dn, %.preheader89 ], [ %i.cw, %.preheader89.preheader ] ; 4 uses
  %i.do = add i64 %.sroa.02.0.i18263, %i.da, !dbg !1191 ; 2 uses
  %i.dp = icmp ult i64 %i.do, %i.bt, !dbg !1192
  br i1 %i.dp, label %bb.ab, label %bb.ac, !dbg !1192

.preheader:                                       ; preds = %bb.y
  %.not = icmp eq i64 %i.dq, 0, !dbg !1193
  br i1 %.not, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph267, !dbg !1190

.lr.ph267:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i22266 = phi i64 [ %i.dq, %.preheader ], [ %i.cw, %.preheader.preheader ]
  %i.dq = add i64 %.sroa.2.0.i22266, -1, !dbg !1194 ; 5 uses
  br i1 %.first_iter, label %bb.w, label %bb.x, !dbg !1195

bb.w:                                             ; preds = %.lr.ph267
  %i.dr = add i64 %i.dq, %i.da, !dbg !1196        ; 3 uses
  %i.ds = icmp ult i64 %i.dr, %i.bt, !dbg !1197
  br i1 %i.ds, label %bb.y, label %bb.z, !dbg !1197

bb.x:                                             ; preds = %.lr.ph267
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dq, i64 noundef range(i64 0, -9223372036854775808) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !1195, !noalias !1066
  unreachable, !dbg !1195

bb.y:                                             ; preds = %bb.w
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dq, !dbg !1195
  %i.du = load i8, ptr %i.dt, align 1, !dbg !1195, !alias.scope !1049, !noalias !1067, !noundef !44
  %i.dv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.dr, !dbg !1197
  %i.dw = load i8, ptr %i.dv, align 1, !dbg !1197, !alias.scope !1048, !noalias !1052, !noundef !44
  %.not.i23 = icmp eq i8 %i.du, %i.dw, !dbg !1195
  br i1 %.not.i23, label %.preheader, label %bb.aa, !dbg !1195

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !dbg !1197, !noalias !1066
  unreachable, !dbg !1197

bb.aa:                                            ; preds = %bb.y
  %i.dx = add i64 %i.da, %i.cy, !dbg !1198
  br label %bb.v, !dbg !1199

bb.ab:                                            ; preds = %.lr.ph264
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.02.0.i18263, !dbg !1200
  %i.dz = load i8, ptr %i.dy, align 1, !dbg !1200, !alias.scope !1049, !noalias !1067, !noundef !44
  %i.ea = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.do, !dbg !1192
  %i.eb = load i8, ptr %i.ea, align 1, !dbg !1192, !alias.scope !1048, !noalias !1052, !noundef !44
  %.not21.i21 = icmp eq i8 %i.dz, %i.eb, !dbg !1200
  br i1 %.not21.i21, label %.preheader89, label %bb.ad, !dbg !1200

bb.ac:                                            ; preds = %.lr.ph264
  %i.ec = add i64 %i.da, %i.cw, !dbg !1201
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.bt, i64 %i.ec), !dbg !1201
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i20, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !1192, !noalias !1066
  unreachable, !dbg !1192

bb.ad:                                            ; preds = %bb.ab
  %.reass223.reass = add i64 %i.da, %invariant.op347
  %i.ed = add i64 %.reass223.reass, %.sroa.02.0.i18263, !dbg !1202
  br label %bb.v, !dbg !1203

bb.ae:                                            ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1068), !dbg !1204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069), !dbg !1204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070), !dbg !1204
  %.promoted.i6 = load i64, ptr %i.by, align 8, !alias.scope !1068, !noalias !1071 ; 2 uses
  %i.ee = add i64 %.promoted.i6, %i.bz, !dbg !1205 ; 2 uses
  %i.ef = icmp ult i64 %i.ee, %i.bt, !dbg !1206
  br i1 %i.ef, label %.lr.ph.i9, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1206

.lr.ph.i9:                                        ; preds = %bb.ae
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !1068, !noalias !1071, !noundef !44
  %i.ei = load i64, ptr %i.i, align 8, !alias.scope !1068, !noalias !1071 ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ek = load i64, ptr %i.ej, align 8, !alias.scope !1068, !noalias !1071 ; 2 uses
  %i.el = sub i64 %i.bx, %i.ek
  %invariant.op = sub i64 1, %i.ei, !dbg !1206
  br label %bb.af, !dbg !1206

bb.af:                                            ; preds = %.sink.split.i, %.lr.ph.i9
  %i.em = phi i64 [ %.promoted.i6, %.lr.ph.i9 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.en = phi i64 [ %i.bo, %.lr.ph.i9 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.eo = phi i64 [ %i.ee, %.lr.ph.i9 ], [ %i.ex, %.sink.split.i ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.eo, !dbg !1207
  %i.eq = load i8, ptr %i.ep, align 1, !dbg !1208, !alias.scope !1069, !noalias !1072, !noundef !44
  %i.er = and i8 %i.eq, 63, !dbg !1209
  %i.es = zext nneg i8 %i.er to i64, !dbg !1210
  %i.et = shl nuw i64 1, %i.es, !dbg !1211
  %i.eu = and i64 %i.et, %i.eh, !dbg !1211
  %i.ev = icmp eq i64 %i.eu, 0, !dbg !1211
  br i1 %i.ev, label %bb.ag, label %bb.ah, !dbg !1211

bb.ag:                                            ; preds = %bb.af
  %i.ew = add i64 %i.em, %i.bx, !dbg !1212
  br label %.sink.split.i, !dbg !1213

bb.ah:                                            ; preds = %bb.af
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.en, i64 %i.ei), !dbg !1214 ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.bx), !dbg !1215
  %exitcond.not.i258.not = icmp ult i64 %.sroa.0.0.i.i, %i.bx, !dbg !1216
  br i1 %exitcond.not.i258.not, label %.lr.ph, label %.preheader29.preheader, !dbg !1217

.sink.split.i:                                    ; preds = %bb.aq, %bb.an, %bb.ag
  %.sink.i = phi i64 [ %i.el, %bb.an ], [ 0, %bb.aq ], [ 0, %bb.ag ]
  %.ph71.i = phi i64 [ %i.fm, %bb.an ], [ %i.fs, %bb.aq ], [ %i.ew, %bb.ag ] ; 2 uses
  %i.ex = add i64 %.ph71.i, %i.bz, !dbg !1205     ; 2 uses
  %i.ey = icmp ult i64 %i.ex, %i.bt, !dbg !1206
  br i1 %i.ey, label %bb.af, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1206

bb.ai:                                            ; preds = %bb.ao
  %i.ez = add i64 %.sroa.02.0.i259, 1, !dbg !1218 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ez, %umax49.i, !dbg !1216
  br i1 %exitcond.not.i, label %.preheader29.preheader, label %.lr.ph, !dbg !1217

.preheader29.preheader:                           ; preds = %bb.ai, %bb.ah
  %i.fa = icmp ult i64 %i.en, %i.ei, !dbg !1219
  br i1 %i.fa, label %.lr.ph261, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1220

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.sroa.02.0.i259 = phi i64 [ %i.ez, %bb.ai ], [ %.sroa.0.0.i.i, %bb.ah ] ; 4 uses
  %i.fb = add i64 %.sroa.02.0.i259, %i.em, !dbg !1221 ; 2 uses
  %i.fc = icmp ult i64 %i.fb, %i.bt, !dbg !1222
  br i1 %i.fc, label %bb.ao, label %bb.ap, !dbg !1222

.preheader29:                                     ; preds = %bb.al
  %i.fd = icmp ult i64 %i.en, %i.fe, !dbg !1219
  br i1 %i.fd, label %.lr.ph261, label %_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, !dbg !1220

.lr.ph261:                                        ; preds = %.preheader29.preheader, %.preheader29
  %.sroa.2.0.i260 = phi i64 [ %i.fe, %.preheader29 ], [ %i.ei, %.preheader29.preheader ]
  %i.fe = add i64 %.sroa.2.0.i260, -1, !dbg !1223 ; 6 uses
  %i.ff = icmp ult i64 %i.fe, %i.bx, !dbg !1224
  br i1 %i.ff, label %bb.aj, label %bb.ak, !dbg !1224

bb.aj:                                            ; preds = %.lr.ph261
  %i.fg = add i64 %i.fe, %i.em, !dbg !1225        ; 3 uses
  %i.fh = icmp ult i64 %i.fg, %i.bt, !dbg !1226
  br i1 %i.fh, label %bb.al, label %bb.am, !dbg !1226

bb.ak:                                            ; preds = %.lr.ph261
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fe, i64 noundef range(i64 0, -9223372036854775808) %i.bx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !dbg !1224, !noalias !1073
  unreachable, !dbg !1224

bb.al:                                            ; preds = %bb.aj
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.fe, !dbg !1224
  %i.fj = load i8, ptr %i.fi, align 1, !dbg !1224, !alias.scope !1070, !noalias !1074, !noundef !44
  %i.fk = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fg, !dbg !1226
  %i.fl = load i8, ptr %i.fk, align 1, !dbg !1226, !alias.scope !1069, !noalias !1072, !noundef !44
  %.not.i10 = icmp eq i8 %i.fj, %i.fl, !dbg !1224
  br i1 %.not.i10, label %.preheader29, label %bb.an, !dbg !1224

bb.am:                                            ; preds = %bb.aj
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.fg, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #23, !dbg !1226, !noalias !1073
  unreachable, !dbg !1226

bb.an:                                            ; preds = %bb.al
  %i.fm = add i64 %i.em, %i.ek, !dbg !1227
  br label %.sink.split.i, !dbg !1228

bb.ao:                                            ; preds = %.lr.ph
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.02.0.i259, !dbg !1229
  %i.fo = load i8, ptr %i.fn, align 1, !dbg !1229, !alias.scope !1070, !noalias !1074, !noundef !44
  %i.fp = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.fb, !dbg !1222
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !1222, !alias.scope !1069, !noalias !1072, !noundef !44
  %.not21.i = icmp eq i8 %i.fo, %i.fq, !dbg !1229
  br i1 %.not21.i, label %bb.ai, label %bb.aq, !dbg !1229

bb.ap:                                            ; preds = %.lr.ph
  %i.fr = add i64 %i.em, %.sroa.0.0.i.i, !dbg !1215
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.bt, i64 %i.fr), !dbg !1215
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23, !dbg !1222, !noalias !1073
  unreachable, !dbg !1222

bb.aq:                                            ; preds = %bb.ao
  %.reass.reass = add i64 %i.em, %invariant.op
  %i.fs = add i64 %.reass.reass, %.sroa.02.0.i259, !dbg !1230
  br label %.sink.split.i, !dbg !1231

_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader29.preheader, %.preheader29, %bb.v, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i, %bb.r, %bb.f, %bb.ae, %bb.s, %bb.i, %bb.q, %.preheader.i
  %.sroa.0.025 = phi i8 [ 1, %.preheader ], [ 0, %bb.s ], [ 0, %.preheader.i ], [ 1, %bb.q ], [ 1, %.preheader.preheader ], [ 1, %bb.i ], [ 1, %.preheader29 ], [ 0, %bb.ae ], [ %.promoted26.i, %bb.f ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit16.i.i.i ], [ 1, %bb.r ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error.exit14.i.i.i ], [ 0, %bb.v ], [ 0, %.sink.split.i ], [ 1, %.preheader29.preheader ], !dbg !1232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1233
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1233

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph: ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075), !dbg !1234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1076), !dbg !1234
  %i.ft = load i8, ptr %0, align 1, !dbg !1235, !alias.scope !1075, !noalias !1076, !noundef !44 ; 2 uses
  %i.fu = add nsw i64 %1, -1, !dbg !1236          ; 2 uses
  %i.fv = add nsw i64 %1, -4, !dbg !1237
  br label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i, !dbg !1238

bb.ar:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i
  %i.fw = icmp ult i64 %i.fv, %i.fx, !dbg !1239
  br i1 %i.fw, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit, !dbg !1238

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph, %bb.ar
  %4 = phi i64 [ %1, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i.lr.ph ], [ %i.fx, %bb.ar ]
  %i.fx = add nsw i64 %4, -1, !dbg !1240          ; 9 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx, !dbg !1241
  %i.fz = load i8, ptr %i.fy, align 1, !dbg !1241, !alias.scope !1075, !noalias !1082, !noundef !44 ; 2 uses
  %.not.i.not.i.i.a = icmp eq i8 %i.fz, %i.ft, !dbg !1241
  br i1 %.not.i.not.i.i.a, label %bb.ar, label %bb.as, !dbg !1242

bb.as:                                            ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error.exit.i.i
  %i.ga = add nuw nsw i64 %1, 15, !dbg !1243      ; 3 uses
  %i.gb = icmp ult i64 %3, %i.ga, !dbg !1244
  br i1 %i.gb, label %.lr.ph.split.us.i.i, label %bb.at, !dbg !1244

.lr.ph.split.us.i.i:                              ; preds = %bb.as
  %bcmp.i.i.us23.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %2, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !dbg !1245, !alias.scope !1083, !noalias !1084
  %i.gc = icmp eq i32 %bcmp.i.i.us23.i.i, 0, !dbg !1245
  br i1 %i.gc, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, !dbg !1246

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader: ; preds = %.lr.ph.split.us.i.i
  %i.gd = add nsw i64 %3, -1, !dbg !1247          ; 2 uses
  %.not28.i.i268 = icmp ugt i64 %1, %i.gd, !dbg !1248
  br i1 %.not28.i.i268, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !1248

.split.us.i.i:                                    ; preds = %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i
  %i.ge = phi i64 [ %i.gh, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ %i.gd, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ]
  %.pn.i269 = phi ptr [ %i.gf, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i ], [ %2, %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i.preheader ]
  %i.gf = getelementptr inbounds nuw i8, ptr %.pn.i269, i64 1, !dbg !1249 ; 2 uses
  %bcmp.i.i.us.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.gf, ptr noundef nonnull readonly dereferenceable(1) %0, i64 range(i64 15, 33) %1), !dbg !1245, !alias.scope !1083, !noalias !1084
  %i.gg = icmp eq i32 %bcmp.i.i.us.i.i, 0, !dbg !1245
  br i1 %i.gg, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i, !dbg !1246

_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error.exit.backedge.us.i.i: ; preds = %.split.us.i.i
  %i.gh = add nsw i64 %i.ge, -1, !dbg !1247       ; 2 uses
  %.not28.i.i = icmp ugt i64 %1, %i.gh, !dbg !1248
  br i1 %.not28.i.i, label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, label %.split.us.i.i, !dbg !1248

bb.at:                                            ; preds = %bb.as
  %i.gi = insertelement <16 x i8> poison, i8 %i.ft, i64 0, !dbg !1250
  %i.gj = shufflevector <16 x i8> %i.gi, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !1250 ; 6 uses
  %i.gk = insertelement <16 x i8> poison, i8 %i.fz, i64 0, !dbg !1251
  %i.gl = shufflevector <16 x i8> %i.gk, <16 x i8> poison, <16 x i32> zeroinitializer, !dbg !1251 ; 6 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1253, !noalias !1083
  store ptr %2, ptr %i.a, align 8, !dbg !1254, !noalias !1083
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1254
  store i64 %3, ptr %i.gn, align 8, !dbg !1254, !noalias !1083
  %i.go = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1254
  store ptr %i.gm, ptr %i.go, align 8, !dbg !1254, !noalias !1083
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !1254
  store i64 %i.fu, ptr %i.gp, align 8, !dbg !1254, !noalias !1083
  %i.gq = add nuw nsw i64 %1, 63                  ; 2 uses
  %.not.i = icmp ult i64 %i.gq, %3, !dbg !1255
  br i1 %.not.i, label %.lr.ph.i5, label %.preheader.i4, !dbg !1255

.preheader.i4:                                    ; preds = %bb.ax, %bb.at
  %.sroa.014.0.lcssa.i = phi i8 [ 0, %bb.at ], [ %.sroa.014.2.3.i, %bb.ax ], !dbg !1256 ; 2 uses
  %.sroa.06.0.lcssa.i = phi i64 [ 0, %bb.at ], [ %i.il, %bb.ax ], !dbg !1257 ; 2 uses
  %i.gr = add i64 %.sroa.06.0.lcssa.i, %i.ga, !dbg !1258
  %i.gs = icmp uge i64 %i.gr, %3, !dbg !1258
  %i.gt = trunc nuw i8 %.sroa.014.0.lcssa.i to i1 ; 2 uses
  %or.cond3100.i = select i1 %i.gs, i1 true, i1 %i.gt, !dbg !1258
  br i1 %or.cond3100.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !1258

.lr.ph.i5:                                        ; preds = %bb.at, %bb.ax
  %.sroa.06.098.i = phi i64 [ %i.il, %bb.ax ], [ 0, %bb.at ] ; 6 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.098.i ; 5 uses
  %.sroa.0.0.copyload.i.i = load <16 x i8>, ptr %i.gu, align 1, !dbg !1259, !alias.scope !1076, !noalias !1096
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %i.fx, !dbg !1260
  %.sroa.02.0.copyload.i.i = load <16 x i8>, ptr %i.gv, align 1, !dbg !1261, !alias.scope !1076, !noalias !1096
  %i.gw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i, %i.gj, !dbg !1262
  %i.gx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i, %i.gl, !dbg !1263
  %i.gy = and <16 x i1> %i.gw, %i.gx, !dbg !1264
  %i.gz = bitcast <16 x i1> %i.gy to i16, !dbg !1265 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 16, !dbg !1266 ; 2 uses
  %.sroa.0.0.copyload.i.1.i = load <16 x i8>, ptr %i.ha, align 1, !dbg !1259, !alias.scope !1076, !noalias !1096
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 %i.fx, !dbg !1260
  %.sroa.02.0.copyload.i.1.i = load <16 x i8>, ptr %i.hb, align 1, !dbg !1261, !alias.scope !1076, !noalias !1096
  %i.hc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i, %i.gj, !dbg !1262
  %i.hd = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i, %i.gl, !dbg !1263
  %i.he = and <16 x i1> %i.hc, %i.hd, !dbg !1264
  %i.hf = bitcast <16 x i1> %i.he to i16, !dbg !1265 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gu, i64 32, !dbg !1266 ; 2 uses
  %.sroa.0.0.copyload.i.2.i = load <16 x i8>, ptr %i.hg, align 1, !dbg !1259, !alias.scope !1076, !noalias !1096
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.fx, !dbg !1260
  %.sroa.02.0.copyload.i.2.i = load <16 x i8>, ptr %i.hh, align 1, !dbg !1261, !alias.scope !1076, !noalias !1096
  %i.hi = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i, %i.gj, !dbg !1262
  %i.hj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i, %i.gl, !dbg !1263
  %i.hk = and <16 x i1> %i.hi, %i.hj, !dbg !1264
  %i.hl = bitcast <16 x i1> %i.hk to i16, !dbg !1265 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gu, i64 48, !dbg !1266 ; 2 uses
  %.sroa.0.0.copyload.i.3.i = load <16 x i8>, ptr %i.hm, align 1, !dbg !1259, !alias.scope !1076, !noalias !1096
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.fx, !dbg !1260
  %.sroa.02.0.copyload.i.3.i = load <16 x i8>, ptr %i.hn, align 1, !dbg !1261, !alias.scope !1076, !noalias !1096
  %i.ho = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i, %i.gj, !dbg !1262
  %i.hp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i, %i.gl, !dbg !1263
  %i.hq = and <16 x i1> %i.ho, %i.hp, !dbg !1264
  %i.hr = bitcast <16 x i1> %i.hq to i16, !dbg !1265 ; 2 uses
  %i.hs = icmp eq i16 %i.gz, 0, !dbg !1267
  br i1 %i.hs, label %.preheader91.1.i, label %bb.ay, !dbg !1267

.preheader91.1.i:                                 ; preds = %bb.ay, %.lr.ph.i5
  %.sroa.014.2.i = phi i8 [ 0, %.lr.ph.i5 ], [ %i.iq, %bb.ay ], !dbg !1268 ; 3 uses
  %i.ht = icmp eq i16 %i.hf, 0, !dbg !1267
  br i1 %i.ht, label %.preheader91.2.i, label %bb.au, !dbg !1267

bb.au:                                            ; preds = %.preheader91.1.i
  %i.hu = or disjoint i64 %.sroa.06.098.i, 16, !dbg !1269
  %i.hv = trunc nuw i8 %.sroa.014.2.i to i1, !dbg !1270
  %i.hw = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.hu, i16 noundef %i.hf, i1 noundef zeroext %i.hv) #20, !dbg !1271
  %i.hx = zext i1 %i.hw to i8, !dbg !1272
  %i.hy = or i8 %.sroa.014.2.i, %i.hx, !dbg !1272
  br label %.preheader91.2.i, !dbg !1273

.preheader91.2.i:                                 ; preds = %bb.au, %.preheader91.1.i
  %.sroa.014.2.1.i = phi i8 [ %.sroa.014.2.i, %.preheader91.1.i ], [ %i.hy, %bb.au ], !dbg !1268 ; 3 uses
  %i.hz = icmp eq i16 %i.hl, 0, !dbg !1267
  br i1 %i.hz, label %.preheader91.3.i, label %bb.av, !dbg !1267

bb.av:                                            ; preds = %.preheader91.2.i
  %i.ia = or disjoint i64 %.sroa.06.098.i, 32, !dbg !1269
  %i.ib = trunc nuw i8 %.sroa.014.2.1.i to i1, !dbg !1270
  %i.ic = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ia, i16 noundef %i.hl, i1 noundef zeroext %i.ib) #20, !dbg !1271
  %i.id = zext i1 %i.ic to i8, !dbg !1272
  %i.ie = or i8 %.sroa.014.2.1.i, %i.id, !dbg !1272
  br label %.preheader91.3.i, !dbg !1273

.preheader91.3.i:                                 ; preds = %bb.av, %.preheader91.2.i
  %.sroa.014.2.2.i = phi i8 [ %.sroa.014.2.1.i, %.preheader91.2.i ], [ %i.ie, %bb.av ], !dbg !1268 ; 3 uses
  %i.if = icmp eq i16 %i.hr, 0, !dbg !1267
  br i1 %i.if, label %bb.ax, label %bb.aw, !dbg !1267

bb.aw:                                            ; preds = %.preheader91.3.i
  %i.ig = or disjoint i64 %.sroa.06.098.i, 48, !dbg !1269
  %i.ih = trunc nuw i8 %.sroa.014.2.2.i to i1, !dbg !1270
  %i.ii = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ig, i16 noundef %i.hr, i1 noundef zeroext %i.ih) #20, !dbg !1271
  %i.ij = zext i1 %i.ii to i8, !dbg !1272
  %i.ik = or i8 %.sroa.014.2.2.i, %i.ij, !dbg !1272
  br label %bb.ax, !dbg !1273

bb.ax:                                            ; preds = %bb.aw, %.preheader91.3.i
  %.sroa.014.2.3.i = phi i8 [ %.sroa.014.2.2.i, %.preheader91.3.i ], [ %i.ik, %bb.aw ], !dbg !1268 ; 2 uses
  %i.il = add i64 %.sroa.06.098.i, 64, !dbg !1274 ; 3 uses
  %i.im = add i64 %i.il, %i.gq, !dbg !1255
  %i.in = icmp uge i64 %i.im, %3, !dbg !1255
  %i.io = trunc nuw i8 %.sroa.014.2.3.i to i1
  %or.cond.i = select i1 %i.in, i1 true, i1 %i.io, !dbg !1255
  br i1 %or.cond.i, label %.preheader.i4, label %.lr.ph.i5, !dbg !1255

bb.ay:                                            ; preds = %.lr.ph.i5
  %i.ip = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.098.i, i16 noundef %i.gz, i1 noundef zeroext false) #20, !dbg !1271
  %i.iq = zext i1 %i.ip to i8, !dbg !1272
  br label %.preheader91.1.i, !dbg !1273

._crit_edge.i:                                    ; preds = %bb.az, %.preheader.i4
  %.sroa.014.3.lcssa.i = phi i8 [ %.sroa.014.0.lcssa.i, %.preheader.i4 ], [ %.sroa.014.4.i, %bb.az ], !dbg !1256 ; 2 uses
  %.lcssa.i = phi i1 [ %i.gt, %.preheader.i4 ], [ %i.jk, %bb.az ]
  %i.ir = sub nuw i64 %3, %i.fu, !dbg !1275
  %i.is = add i64 %i.ir, -16, !dbg !1275          ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 %i.is, !dbg !1276 ; 2 uses
  %.sroa.0.0.copyload.i58.i = load <16 x i8>, ptr %i.it, align 1, !dbg !1277, !alias.scope !1076, !noalias !1107
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.fx, !dbg !1278
  %.sroa.02.0.copyload.i59.i = load <16 x i8>, ptr %i.iu, align 1, !dbg !1279, !alias.scope !1076, !noalias !1107
  %i.iv = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i, %i.gj, !dbg !1280
  %i.iw = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i, %i.gl, !dbg !1281
  %i.ix = and <16 x i1> %i.iv, %i.iw, !dbg !1282
  %i.iy = bitcast <16 x i1> %i.ix to i16, !dbg !1283 ; 2 uses
  %i.iz = icmp eq i16 %i.iy, 0, !dbg !1284
  br i1 %i.iz, label %bb.bb, label %bb.bc, !dbg !1284

.lr.ph102.i:                                      ; preds = %.preheader.i4, %bb.az
  %.sroa.06.1101.i = phi i64 [ %i.jh, %bb.az ], [ %.sroa.06.0.lcssa.i, %.preheader.i4 ] ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.06.1101.i, !dbg !1285 ; 2 uses
  %.sroa.0.0.copyload.i60.i = load <16 x i8>, ptr %i.ja, align 1, !dbg !1286, !alias.scope !1076, !noalias !1111
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.fx, !dbg !1287
  %.sroa.02.0.copyload.i61.i = load <16 x i8>, ptr %i.jb, align 1, !dbg !1288, !alias.scope !1076, !noalias !1111
  %i.jc = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i, %i.gj, !dbg !1289
  %i.jd = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i, %i.gl, !dbg !1290
  %i.je = and <16 x i1> %i.jc, %i.jd, !dbg !1291
  %i.jf = bitcast <16 x i1> %i.je to i16, !dbg !1292 ; 2 uses
  %i.jg = icmp eq i16 %i.jf, 0, !dbg !1293
  br i1 %i.jg, label %bb.az, label %bb.ba, !dbg !1293

bb.az:                                            ; preds = %bb.ba, %.lr.ph102.i
  %.sroa.014.4.i = phi i8 [ 0, %.lr.ph102.i ], [ %i.jm, %bb.ba ], !dbg !1268 ; 2 uses
  %i.jh = add i64 %.sroa.06.1101.i, 16, !dbg !1294 ; 2 uses
  %i.ji = add i64 %i.jh, %i.ga, !dbg !1258
  %i.jj = icmp uge i64 %i.ji, %3, !dbg !1258
  %i.jk = trunc nuw i8 %.sroa.014.4.i to i1       ; 2 uses
  %or.cond3.i = or i1 %i.jj, %i.jk, !dbg !1258
  br i1 %or.cond3.i, label %._crit_edge.i, label %.lr.ph102.i, !dbg !1258

bb.ba:                                            ; preds = %.lr.ph102.i
  %i.jl = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.1101.i, i16 noundef %i.jf, i1 noundef zeroext false) #20, !dbg !1295
  %i.jm = zext i1 %i.jl to i8, !dbg !1296
  br label %bb.az, !dbg !1297

bb.bb:                                            ; preds = %bb.bc, %._crit_edge.i
  %.sroa.014.5.i = phi i8 [ %.sroa.014.3.lcssa.i, %._crit_edge.i ], [ %i.jp, %bb.bc ], !dbg !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1298, !noalias !1083
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1299

bb.bc:                                            ; preds = %._crit_edge.i
  %i.jn = call fastcc noundef zeroext i1 @_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss0_0CsgjwxzEoLG5s_12polars_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.is, i16 noundef %i.iy, i1 noundef zeroext %.lcssa.i) #20, !dbg !1300
  %i.jo = zext i1 %i.jn to i8, !dbg !1301
  %i.jp = or i8 %.sroa.014.3.lcssa.i, %i.jo, !dbg !1301
  br label %bb.bb, !dbg !1302

bb.bd:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1), !dbg !1303
  %i.jq = icmp eq i32 %bcmp, 0, !dbg !1303
  %i.jr = zext i1 %i.jq to i8, !dbg !1303
  br label %_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains.exit.thread, !dbg !1304
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCsgjwxzEoLG5s_12polars_error(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtCsh8eZTKRCwoO_3std2io5errorNtB2_5ErrorNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9MrPpZx4smZ_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgZ49sUHp3tW_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCsh8eZTKRCwoO_3std9panicking11begin_panicReEB4_(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvNtCsh8eZTKRCwoO_3std9panicking9take_hook() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCsh8eZTKRCwoO_3std9panicking8set_hook(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvCs8kXw7nnhjzR_20signal_hook_registry8registerNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanisms_0EBR_(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 16 captures(address) dereferenceable(48), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscgRAwXFJnXP_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

attributes #0 = { inlinehint norecurse nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { norecurse nounwind nonlazybind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { inlinehint }
attributes #21 = { cold }
attributes #22 = { cold noreturn nounwind }
attributes #23 = { noinline noreturn }
attributes #24 = { noreturn }

!llvm.module.flags = !{!33, !34, !35, !36}
!llvm.ident = !{!37}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !38, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "atomic_load<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic11atomic_loadyECsgjwxzEoLG5s_12polars_error", scope: !42, file: !39, line: 3900, type: !45, scopeLine: 3900, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!2 = distinct !DISubprogram(name: "atomic_compare_exchange_weak<u64>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core4sync6atomic28atomic_compare_exchange_weakyECsgjwxzEoLG5s_12polars_error", scope: !42, file: !39, line: 4034, type: !45, scopeLine: 4034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!3 = distinct !DISubprogram(name: "drop_in_place<polars_error::abort::register_polars_abort_mechanism::{closure_env#0}>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0EBM_", scope: !51, file: !50, line: 810, type: !46, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!4 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2N_4SyncEL_EECsgjwxzEoLG5s_12polars_error", scope: !51, file: !50, line: 810, type: !45, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!5 = distinct !DISubprogram(name: "size_of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem15size_of_val_rawDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2g_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !54, file: !53, line: 455, type: !46, scopeLine: 455, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!6 = distinct !DISubprogram(name: "for_value_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core5alloc6layoutNtB3_6Layout13for_value_rawDG0_INtNtNtB7_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB7_6marker4SendNtB2C_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !58, file: !55, line: 253, type: !46, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!7 = distinct !DISubprogram(name: "drop<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_ENtNtBQ_4drop4Drop4dropCsgjwxzEoLG5s_12polars_error", scope: !62, file: !59, line: 1913, type: !45, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!8 = distinct !DILexicalBlock(scope: !7, file: !59, line: 1916, column: 9)
!9 = distinct !DILexicalBlock(scope: !8, file: !59, line: 1919, column: 13)
!10 = distinct !DISubprogram(name: "align_of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3mem16align_of_val_rawDG0_INtNtNtB4_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB4_6marker4SendNtB2h_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !54, file: !53, line: 594, type: !46, scopeLine: 594, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!11 = distinct !DISubprogram(name: "of_val_raw<(dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync)>", linkageName: "_RINvMNtNtCscgRAwXFJnXP_4core3mem9alignmentNtB3_9Alignment10of_val_rawDG0_INtNtNtB7_3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtB7_6marker4SendNtB2D_4SyncEL_ECsgjwxzEoLG5s_12polars_error", scope: !67, file: !65, line: 123, type: !46, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!12 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !69, file: !68, line: 127, type: !46, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!13 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !70, file: !68, line: 219, type: !46, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!14 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !70, file: !68, line: 343, type: !46, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!15 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !71, file: !68, line: 460, type: !45, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!16 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort31register_polars_abort_mechanism0B5_", scope: !79, file: !47, line: 53, type: !46, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!17 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE4load", scope: !43, file: !39, line: 2868, type: !46, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!18 = distinct !DILexicalBlock(scope: !16, file: !47, line: 56, column: 9)
!19 = distinct !DISubprogram(name: "payload", linkageName: "_RNvMNtCsh8eZTKRCwoO_3std5panicNtB2_13PanicHookInfo7payload", scope: !82, file: !80, line: 95, type: !46, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!20 = distinct !DISubprogram(name: "is_some<polars_error::abort::QueryAborted>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6optionINtB2_6OptionNtNtCsgjwxzEoLG5s_12polars_error5abort12QueryAbortedE7is_someBL_", scope: !78, file: !76, line: 635, type: !46, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!21 = distinct !DILexicalBlock(scope: !20, file: !84, line: 429, column: 9)
!22 = distinct !DILexicalBlock(scope: !18, file: !47, line: 58, column: 9)
!23 = distinct !DISubprogram(name: "call<(&std::panic::PanicHookInfo), (dyn core::ops::function::Fn<(&std::panic::PanicHookInfo), Output=()> + core::marker::Send + core::marker::Sync), alloc::alloc::Global>", linkageName: "_RNvXsv_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxDG0_INtNtNtCscgRAwXFJnXP_4core3ops8function2FnTRL1_INtNtCsh8eZTKRCwoO_3std5panic13PanicHookInfoL0_EEEp6OutputuNtNtBS_6marker4SendNtB2v_4SyncEL_EIBM_TRB1x_EE4callCsgjwxzEoLG5s_12polars_error", scope: !85, file: !59, line: 2253, type: !46, scopeLine: 2253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!24 = distinct !DISubprogram(name: "unregister_catcher", linkageName: "_RNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher", scope: !49, file: !47, line: 154, type: !46, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!25 = distinct !DISubprogram(name: "load", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE4load", scope: !43, file: !39, line: 2868, type: !46, scopeLine: 2868, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!26 = distinct !DISubprogram(name: "try_update<polars_error::abort::unregister_catcher::{closure_env#0}>", linkageName: "_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE10try_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher0EB1d_", scope: !43, file: !39, line: 3405, type: !45, scopeLine: 3405, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!27 = distinct !DISubprogram(name: "fetch_update<polars_error::abort::unregister_catcher::{closure_env#0}>", linkageName: "_RINvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB7_6AtomicyE12fetch_updateNCNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher0EB1f_", scope: !43, file: !39, line: 3345, type: !46, scopeLine: 3345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!28 = distinct !DILexicalBlock(scope: !26, file: !39, line: 3411, column: 17)
!29 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtCsgjwxzEoLG5s_12polars_error5abort18unregister_catcher0B5_", scope: !110, file: !47, line: 156, type: !45, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!30 = distinct !DILexicalBlock(scope: !29, file: !47, line: 157, column: 13)
!31 = distinct !DILexicalBlock(scope: !28, file: !39, line: 3412, column: 48)
!32 = distinct !DISubprogram(name: "compare_exchange_weak", linkageName: "_RNvMs1c_NtNtCscgRAwXFJnXP_4core4sync6atomicINtB6_6AtomicyE21compare_exchange_weak", scope: !43, file: !39, line: 3123, type: !46, scopeLine: 3123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!33 = !{i32 8, !"PIC Level", i32 2}
!34 = !{i32 2, !"RtLibUseGOT", i32 1}
!35 = !{i32 7, !"Dwarf Version", i32 4}
!36 = !{i32 2, !"Debug Info Version", i32 3}
!37 = !{!"rustc version 1.96.0-nightly (48cc71ee8 2026-03-31)"}
!38 = !DIFile(filename: "crates/polars-error/src/lib.rs/@/polars_error.be07a98e21519244-cgu.1", directory: "/opt-bench/work/pola-rs/polars")
!39 = !DIFile(filename: "library/core/src/sync/atomic.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "0fa055d022a09bf85eb4fa0bc0114101")
!40 = !DINamespace(name: "core", scope: null)
!41 = !DINamespace(name: "sync", scope: !40)
!42 = !DINamespace(name: "atomic", scope: !41)
!43 = !DINamespace(name: "Atomic", scope: !42)
!44 = !{}
!45 = !DISubroutineType(cc: DW_CC_nocall, types: !44)
!46 = !DISubroutineType(types: !44)
!47 = !DIFile(filename: "crates/polars-error/src/abort.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "f7aca53d2585ecaa802ee7b46b631ba8")
!48 = !DINamespace(name: "polars_error", scope: null)
!49 = !DINamespace(name: "abort", scope: !48)
!50 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e257ba3fa91f9f150d8872ddddab6def")
!51 = !DINamespace(name: "ptr", scope: !40)
!52 = !{i64 8}
!53 = !DIFile(filename: "library/core/src/mem/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f117990a17890c376e3a360d512003aa")
!54 = !DINamespace(name: "mem", scope: !40)
!55 = !DIFile(filename: "library/core/src/alloc/layout.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9b0fa2b5eccd748fb6b1e11a9156468")
!56 = !DINamespace(name: "alloc", scope: !40)
!57 = !DINamespace(name: "layout", scope: !56)
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!640 = !{!618}
!641 = !DINamespace(name: "{impl#0}", scope: !61)
!642 = !{!635}
!643 = !{!636}
!644 = !DIFile(filename: "library/core/src/result.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7ebc974a4b69a504d7e902d792c422dd")
!645 = !DINamespace(name: "result", scope: !40)
!646 = !DINamespace(name: "Result", scope: !645)
!647 = !{!636, !635}
!648 = !DILocation(line: 52, column: 24, scope: !616)
!649 = !DILocation(line: 99, column: 9, scope: !619, inlinedAt: !632)
!650 = !DILocation(line: 101, column: 9, scope: !619, inlinedAt: !632)
!651 = !DILocation(line: 248, column: 11, scope: !624, inlinedAt: !628)
!652 = !DILocation(line: 248, column: 5, scope: !624, inlinedAt: !628)
!653 = !DILocation(line: 250, column: 19, scope: !624, inlinedAt: !628)
!654 = !DILocation(line: 292, column: 5, scope: !625, inlinedAt: !627)
!655 = !DILocation(line: 284, column: 5, scope: !625, inlinedAt: !627)
!656 = !DILocation(line: 0, scope: !626)
!657 = !DILocation(line: 289, column: 56, scope: !633, inlinedAt: !627)
!658 = !DILocation(line: 292, column: 6, scope: !625, inlinedAt: !627)
!659 = !DILocation(line: 53, column: 5, scope: !626)
!660 = !DILocation(line: 68, column: 9, scope: !626)
!661 = !DILocation(line: 81, column: 10, scope: !626)
!662 = !DILocation(line: 1231, column: 15, scope: !637, inlinedAt: !638)
!663 = !DILocation(line: 1231, column: 9, scope: !637, inlinedAt: !638)
!664 = !DILocation(line: 1233, column: 17, scope: !637, inlinedAt: !638)
!665 = !DILocation(line: 1233, column: 23, scope: !639, inlinedAt: !638)
!666 = !DILocation(line: 1233, column: 86, scope: !637, inlinedAt: !638)
!667 = !DILocation(line: 1227, column: 5, scope: !637, inlinedAt: !638)
!668 = !DILocation(line: 81, column: 17, scope: !626)
!669 = !DILocation(line: 83, column: 2, scope: !616)
!670 = distinct !DISubprogram(name: "is_contained_in", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern15is_contained_in", scope: !993, file: !86, line: 987, type: !46, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!671 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !996, file: !994, line: 20, type: !46, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!672 = distinct !DILexicalBlock(scope: !671, file: !994, line: 21, column: 9)
!673 = distinct !DISubprogram(name: "eq<str, str>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsReNtB7_9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !1005, file: !997, line: 2123, type: !46, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!674 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1008, file: !1006, line: 29, type: !46, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!675 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !1005, file: !997, line: 2123, type: !46, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!676 = distinct !DISubprogram(name: "into_searcher", linkageName: "_RNvXst_NtNtCscgRAwXFJnXP_4core3str7patternReNtB5_7Pattern13into_searcher", scope: !993, file: !86, line: 975, type: !46, scopeLine: 975, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!677 = distinct !{!677, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match"}
!678 = distinct !{!678, !677, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 1"}
!679 = distinct !{!679, !677, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match: argument 0"}
!680 = distinct !DISubprogram(name: "next_match", linkageName: "_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match", scope: !1012, file: !86, line: 1171, type: !46, scopeLine: 1171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!681 = distinct !DILocation(line: 1009, column: 46, scope: !670)
!682 = distinct !{!682, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next"}
!683 = distinct !{!683, !682, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1"}
!684 = distinct !{!684, !682, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 0"}
!685 = distinct !DISubprogram(name: "next", linkageName: "_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next", scope: !1012, file: !86, line: 1119, type: !46, scopeLine: 1119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!686 = distinct !DILexicalBlock(scope: !685, file: !86, line: 1121, column: 13)
!687 = distinct !DILocation(line: 1174, column: 28, scope: !680, inlinedAt: !681)
!688 = distinct !DISubprogram(name: "is_char_boundary", linkageName: "_RNvMNtCscgRAwXFJnXP_4core3stre16is_char_boundary", scope: !112, file: !111, line: 373, type: !46, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!689 = distinct !DISubprogram(name: "get", linkageName: "_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get", scope: !1016, file: !1006, line: 507, type: !46, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!690 = distinct !DISubprogram(name: "index", linkageName: "_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE5index", scope: !1016, file: !1006, line: 539, type: !46, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!691 = distinct !DILexicalBlock(scope: !690, file: !1006, line: 540, column: 9)
!692 = distinct !DISubprogram(name: "index<core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXs2_NtNtCscgRAwXFJnXP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsgjwxzEoLG5s_12polars_error", scope: !1017, file: !1006, line: 62, type: !46, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!693 = distinct !DILexicalBlock(scope: !686, file: !86, line: 1126, column: 17)
!694 = distinct !DILexicalBlock(scope: !693, file: !86, line: 1128, column: 17)
!695 = distinct !DILocation(line: 1129, column: 36, scope: !694, inlinedAt: !687)
!696 = distinct !DILocation(line: 63, column: 15, scope: !692, inlinedAt: !695)
!697 = distinct !DILocation(line: 541, column: 20, scope: !691, inlinedAt: !696)
!698 = distinct !DILocation(line: 508, column: 18, scope: !689, inlinedAt: !697)
!699 = distinct !{!699, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!700 = distinct !{!700, !699, !"_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!701 = distinct !{!701, !682, !"_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next: argument 1:Peel0"}
!702 = distinct !DISubprogram(name: "is_utf8_char_boundary", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh21is_utf8_char_boundary", scope: !1021, file: !1020, line: 1176, type: !46, scopeLine: 1176, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!703 = distinct !DILocation(line: 394, column: 36, scope: !688, inlinedAt: !698)
!704 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsgjwxzEoLG5s_12polars_error", scope: !109, file: !107, line: 829, type: !46, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!705 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !1022, file: !1006, line: 189, type: !46, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!706 = distinct !DILexicalBlock(scope: !705, file: !1006, line: 190, column: 9)
!707 = distinct !DILexicalBlock(scope: !706, file: !1006, line: 211, column: 13)
!708 = distinct !DISubprogram(name: "get_unchecked", linkageName: "_RNvXs9_NtNtCscgRAwXFJnXP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE13get_unchecked", scope: !1016, file: !1006, line: 527, type: !46, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!709 = distinct !DILexicalBlock(scope: !708, file: !1006, line: 528, column: 9)
!710 = distinct !DILocation(line: 511, column: 34, scope: !689, inlinedAt: !697)
!711 = distinct !DILocation(line: 530, column: 36, scope: !709, inlinedAt: !710)
!712 = distinct !DILocation(line: 212, column: 54, scope: !707, inlinedAt: !711)
!713 = distinct !DISubprogram(name: "eq<u8>", linkageName: "_RNvXsd_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhENtNtB9_3cmp9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !1025, file: !1023, line: 1716, type: !46, scopeLine: 1716, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!714 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !106, file: !104, line: 157, type: !46, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!715 = distinct !DILexicalBlock(scope: !714, file: !104, line: 161, column: 17)
!716 = distinct !DILexicalBlock(scope: !715, file: !104, line: 162, column: 17)
!717 = distinct !DISubprogram(name: "next_code_point<core::slice::iter::Iter<u8>>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgjwxzEoLG5s_12polars_error", scope: !1027, file: !1026, line: 35, type: !46, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!718 = distinct !DISubprogram(name: "next", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next", scope: !1030, file: !1028, line: 39, type: !46, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!719 = distinct !DILocation(line: 1129, column: 52, scope: !694, inlinedAt: !687)
!720 = distinct !DILocation(line: 42, column: 18, scope: !718, inlinedAt: !719)
!721 = distinct !DILocation(line: 37, column: 20, scope: !717, inlinedAt: !720)
!722 = distinct !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !721)
!723 = distinct !{!723, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgjwxzEoLG5s_12polars_error"}
!724 = distinct !{!724, !723, !"_RINvNtNtCscgRAwXFJnXP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECsgjwxzEoLG5s_12polars_error: argument 0"}
!725 = distinct !DILexicalBlock(scope: !717, file: !1026, line: 37, column: 5)
!726 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCscgRAwXFJnXP_4core3ptr8non_nullINtB5_7NonNullhE3addCsgjwxzEoLG5s_12polars_error", scope: !1032, file: !1023, line: 651, type: !46, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!727 = distinct !DILocation(line: 185, column: 40, scope: !716, inlinedAt: !721)
!728 = distinct !DISubprogram(name: "utf8_first_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations15utf8_first_byte", scope: !1027, file: !1026, line: 10, type: !46, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!729 = distinct !DILocation(line: 45, column: 16, scope: !725, inlinedAt: !720)
!730 = distinct !DILexicalBlock(scope: !725, file: !1026, line: 45, column: 5)
!731 = distinct !DILocation(line: 48, column: 29, scope: !730, inlinedAt: !720)
!732 = distinct !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !731)
!733 = distinct !DISubprogram(name: "utf8_acc_cont_byte", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str11validations18utf8_acc_cont_byte", scope: !1027, file: !1026, line: 16, type: !46, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!734 = distinct !DILexicalBlock(scope: !730, file: !1026, line: 48, column: 5)
!735 = distinct !DILocation(line: 49, column: 18, scope: !734, inlinedAt: !720)
!736 = distinct !DILexicalBlock(scope: !734, file: !1026, line: 49, column: 5)
!737 = distinct !DILocation(line: 185, column: 40, scope: !716, inlinedAt: !731)
!738 = distinct !DILocation(line: 55, column: 33, scope: !736, inlinedAt: !720)
!739 = distinct !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !738)
!740 = distinct !DILexicalBlock(scope: !736, file: !1026, line: 55, column: 9)
!741 = distinct !DILocation(line: 56, column: 19, scope: !740, inlinedAt: !720)
!742 = distinct !DILexicalBlock(scope: !740, file: !1026, line: 56, column: 9)
!743 = distinct !DILocation(line: 185, column: 40, scope: !716, inlinedAt: !738)
!744 = distinct !DILocation(line: 63, column: 37, scope: !742, inlinedAt: !720)
!745 = distinct !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !744)
!746 = distinct !DILexicalBlock(scope: !742, file: !1026, line: 63, column: 13)
!747 = distinct !DILocation(line: 64, column: 37, scope: !746, inlinedAt: !720)
!748 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7convert18from_u32_unchecked", scope: !1037, file: !1035, line: 26, type: !46, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!749 = distinct !DISubprogram(name: "from_u32_unchecked", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc18from_u32_unchecked", scope: !1040, file: !1038, line: 237, type: !46, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!750 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvXNtNtCscgRAwXFJnXP_4core3str4iterNtB4_5CharsNtNtNtNtB8_4iter6traits8iterator8Iterator4next0CsgjwxzEoLG5s_12polars_error", scope: !1041, file: !1028, line: 42, type: !46, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!751 = distinct !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsgjwxzEoLG5s_12polars_error", scope: !78, file: !76, line: 1160, type: !46, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!752 = distinct !DILexicalBlock(scope: !751, file: !76, line: 1165, column: 13)
!753 = distinct !DILocation(line: 42, column: 50, scope: !718, inlinedAt: !719)
!754 = distinct !DILocation(line: 1165, column: 29, scope: !752, inlinedAt: !753)
!755 = distinct !DILocation(line: 42, column: 59, scope: !750, inlinedAt: !754)
!756 = distinct !DILocation(line: 239, column: 18, scope: !749, inlinedAt: !755)
!757 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core4char7methods8len_utf8", scope: !1039, file: !1038, line: 2038, type: !46, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!758 = distinct !DISubprogram(name: "len_utf8", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core4char7methodsc8len_utf8", scope: !1040, file: !1038, line: 645, type: !46, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!759 = distinct !DILexicalBlock(scope: !694, file: !86, line: 1135, column: 21)
!760 = distinct !DILocation(line: 1136, column: 49, scope: !759, inlinedAt: !687)
!761 = distinct !DILocation(line: 646, column: 9, scope: !758, inlinedAt: !760)
!762 = distinct !DILexicalBlock(scope: !680, file: !86, line: 1180, column: 13)
!763 = distinct !DILexicalBlock(scope: !762, file: !86, line: 1181, column: 17)
!764 = distinct !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error", scope: !1042, file: !86, line: 1461, type: !46, scopeLine: 1461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!765 = distinct !DILexicalBlock(scope: !764, file: !86, line: 1466, column: 9)
!766 = distinct !{!766, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error"}
!767 = distinct !{!767, !766, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 1"}
!768 = distinct !{!768, !766, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 2"}
!769 = distinct !{!769, !766, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 3"}
!770 = distinct !{!770, !766, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 0"}
!771 = distinct !DILexicalBlock(scope: !765, file: !86, line: 1467, column: 9)
!772 = distinct !DILocation(line: 1185, column: 30, scope: !763, inlinedAt: !681)
!773 = distinct !DISubprogram(name: "get<u8>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexShE3getCsgjwxzEoLG5s_12polars_error", scope: !1051, file: !92, line: 218, type: !46, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!774 = distinct !DISubprogram(name: "get<u8, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSh3getjECsgjwxzEoLG5s_12polars_error", scope: !96, file: !95, line: 572, type: !46, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!775 = distinct !DILocation(line: 1472, column: 44, scope: !771, inlinedAt: !772)
!776 = distinct !DILocation(line: 576, column: 15, scope: !774, inlinedAt: !775)
!777 = distinct !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !1042, file: !86, line: 1451, type: !46, scopeLine: 1451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!778 = distinct !DILexicalBlock(scope: !771, file: !86, line: 1472, column: 13)
!779 = distinct !DILocation(line: 1485, column: 22, scope: !778, inlinedAt: !772)
!780 = distinct !DISubprogram(name: "spec_next<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl9spec_nextCsgjwxzEoLG5s_12polars_error", scope: !1055, file: !1053, line: 780, type: !46, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!781 = distinct !DISubprogram(name: "next<usize>", linkageName: "_RNvXs4_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !1056, file: !1053, line: 865, type: !46, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!782 = distinct !DILexicalBlock(scope: !778, file: !86, line: 1494, column: 13)
!783 = distinct !DILexicalBlock(scope: !782, file: !86, line: 1496, column: 13)
!784 = distinct !DILocation(line: 1496, column: 22, scope: !1057, inlinedAt: !772)
!785 = distinct !DILocation(line: 866, column: 14, scope: !781, inlinedAt: !784)
!786 = distinct !DISubprogram(name: "unchecked_add", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_add", scope: !1058, file: !90, line: 886, type: !46, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!787 = distinct !DISubprogram(name: "forward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step17forward_unchecked", scope: !1059, file: !1053, line: 212, type: !46, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!788 = distinct !DILexicalBlock(scope: !780, file: !1053, line: 782, column: 13)
!789 = distinct !DILocation(line: 784, column: 35, scope: !788, inlinedAt: !785)
!790 = distinct !DILocation(line: 214, column: 28, scope: !787, inlinedAt: !789)
!791 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1060, file: !997, line: 1917, type: !46, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!792 = distinct !DILocation(line: 781, column: 12, scope: !780, inlinedAt: !785)
!793 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsgjwxzEoLG5s_12polars_error", scope: !1055, file: !1053, line: 822, type: !46, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!794 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsgjwxzEoLG5s_12polars_error", scope: !1061, file: !1053, line: 987, type: !46, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!795 = distinct !DISubprogram(name: "next<core::ops::range::Range<usize>>", linkageName: "_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB4_3RevINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !1064, file: !1062, line: 52, type: !46, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!796 = distinct !DILexicalBlock(scope: !782, file: !86, line: 1507, column: 13)
!797 = distinct !DILexicalBlock(scope: !796, file: !86, line: 1508, column: 13)
!798 = distinct !DILocation(line: 1508, column: 22, scope: !1065, inlinedAt: !772)
!799 = distinct !DILocation(line: 53, column: 19, scope: !795, inlinedAt: !798)
!800 = distinct !DILocation(line: 988, column: 14, scope: !794, inlinedAt: !799)
!801 = distinct !DILexicalBlock(scope: !783, file: !86, line: 1496, column: 13)
!802 = distinct !DILocation(line: 823, column: 12, scope: !793, inlinedAt: !800)
!803 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_sub", scope: !1058, file: !90, line: 1065, type: !46, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!804 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !1059, file: !1053, line: 218, type: !46, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!805 = distinct !DILocation(line: 825, column: 33, scope: !793, inlinedAt: !800)
!806 = distinct !DILocation(line: 220, column: 28, scope: !804, inlinedAt: !805)
!807 = distinct !DILexicalBlock(scope: !797, file: !86, line: 1508, column: 13)
!808 = distinct !{!808, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error"}
!809 = distinct !{!809, !808, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 1"}
!810 = distinct !{!810, !808, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 2"}
!811 = distinct !{!811, !808, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 3"}
!812 = distinct !{!812, !808, !"_RINvMsx_NtNtCscgRAwXFJnXP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsgjwxzEoLG5s_12polars_error: argument 0"}
!813 = distinct !DILocation(line: 1191, column: 30, scope: !763, inlinedAt: !681)
!814 = distinct !DILocation(line: 1472, column: 44, scope: !771, inlinedAt: !813)
!815 = distinct !DILocation(line: 576, column: 15, scope: !774, inlinedAt: !814)
!816 = distinct !DILocation(line: 1485, column: 22, scope: !778, inlinedAt: !813)
!817 = distinct !DILocation(line: 1496, column: 22, scope: !1057, inlinedAt: !813)
!818 = distinct !DILocation(line: 866, column: 14, scope: !781, inlinedAt: !817)
!819 = distinct !DILocation(line: 781, column: 12, scope: !780, inlinedAt: !818)
!820 = distinct !DILocation(line: 784, column: 35, scope: !788, inlinedAt: !818)
!821 = distinct !DILocation(line: 214, column: 28, scope: !787, inlinedAt: !820)
!822 = distinct !DILocation(line: 1508, column: 22, scope: !1065, inlinedAt: !813)
!823 = distinct !DILocation(line: 53, column: 19, scope: !795, inlinedAt: !822)
!824 = distinct !DILocation(line: 988, column: 14, scope: !794, inlinedAt: !823)
!825 = distinct !DILocation(line: 823, column: 12, scope: !793, inlinedAt: !824)
!826 = distinct !DILocation(line: 825, column: 33, scope: !793, inlinedAt: !824)
!827 = distinct !DILocation(line: 220, column: 28, scope: !804, inlinedAt: !826)
!828 = distinct !{!828, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains"}
!829 = distinct !{!829, !828, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 0"}
!830 = distinct !DILexicalBlock(scope: !670, file: !86, line: 1004, column: 73)
!831 = distinct !{!831, !828, !"_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains: argument 1"}
!832 = distinct !DISubprogram(name: "simd_contains", linkageName: "_RNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains", scope: !88, file: !86, line: 1790, type: !46, scopeLine: 1790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!833 = distinct !DILexicalBlock(scope: !832, file: !86, line: 1791, column: 5)
!834 = distinct !DILexicalBlock(scope: !833, file: !86, line: 1792, column: 5)
!835 = distinct !DILocation(line: 1004, column: 43, scope: !830)
!836 = distinct !DILexicalBlock(scope: !834, file: !86, line: 1800, column: 5)
!837 = distinct !DISubprogram(name: "saturating_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj14saturating_sub", scope: !1058, file: !90, line: 2398, type: !46, scopeLine: 2398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!838 = distinct !DILexicalBlock(scope: !836, file: !86, line: 1801, column: 5)
!839 = distinct !DILocation(line: 1811, column: 27, scope: !838, inlinedAt: !835)
!840 = distinct !DISubprogram(name: "spec_next_back<usize>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtB5_17RangeIteratorImpl14spec_next_backCsgjwxzEoLG5s_12polars_error", scope: !1055, file: !1053, line: 822, type: !46, scopeLine: 822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!841 = distinct !DISubprogram(name: "next_back<usize>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits12double_ended19DoubleEndedIterator9next_backCsgjwxzEoLG5s_12polars_error", scope: !1061, file: !1053, line: 987, type: !46, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!842 = distinct !DISubprogram(name: "try_rfold<core::ops::range::Range<usize>, (), core::iter::traits::double_ended::DoubleEndedIterator::rfind::check::{closure_env#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>, core::ops::control_flow::ControlFlow<usize, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error", scope: !1079, file: !1077, line: 230, type: !46, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!843 = distinct !DILexicalBlock(scope: !842, file: !1077, line: 236, column: 9)
!844 = distinct !DILexicalBlock(scope: !843, file: !1077, line: 237, column: 46)
!845 = distinct !DISubprogram(name: "rfind<core::ops::range::Range<usize>, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfindNCNvNtNtBa_3str7pattern13simd_contains0ECsgjwxzEoLG5s_12polars_error", scope: !1079, file: !1077, line: 366, type: !46, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!846 = distinct !DILocation(line: 1811, column: 60, scope: !838, inlinedAt: !835)
!847 = distinct !DILocation(line: 378, column: 14, scope: !845, inlinedAt: !846)
!848 = distinct !DILocation(line: 237, column: 34, scope: !844, inlinedAt: !847)
!849 = distinct !DILocation(line: 988, column: 14, scope: !841, inlinedAt: !848)
!850 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1060, file: !997, line: 1917, type: !46, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!851 = distinct !DILocation(line: 823, column: 12, scope: !840, inlinedAt: !849)
!852 = distinct !DISubprogram(name: "unchecked_sub", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj13unchecked_sub", scope: !1058, file: !90, line: 1065, type: !46, scopeLine: 1065, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!853 = distinct !DISubprogram(name: "backward_unchecked", linkageName: "_RNvXsF_NtNtCscgRAwXFJnXP_4core4iter5rangejNtB5_4Step18backward_unchecked", scope: !1059, file: !1053, line: 218, type: !46, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!854 = distinct !DILocation(line: 825, column: 33, scope: !840, inlinedAt: !849)
!855 = distinct !DILocation(line: 220, column: 28, scope: !853, inlinedAt: !854)
!856 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error", scope: !89, file: !86, line: 1811, type: !45, scopeLine: 1811, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!857 = distinct !DILexicalBlock(scope: !856, file: !86, line: 1811, column: 73)
!858 = distinct !DISubprogram(name: "{closure#0}<usize, core::str::pattern::simd_contains::{closure_env#0}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error", scope: !1081, file: !1077, line: 373, type: !46, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!859 = distinct !DILocation(line: 238, column: 21, scope: !844, inlinedAt: !847)
!860 = distinct !DILocation(line: 374, column: 20, scope: !858, inlinedAt: !859)
!861 = distinct !{!861, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error"}
!862 = distinct !{!862, !861, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error: argument 1"}
!863 = distinct !{!863, !861, !"_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvBL_5rfind5checkjNCNvNtNtBa_3str7pattern13simd_contains0E0INtNtB8_12control_flow11ControlFlowjEECsgjwxzEoLG5s_12polars_error: argument 0"}
!864 = distinct !{!864, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error"}
!865 = distinct !{!865, !864, !"_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsgjwxzEoLG5s_12polars_error: argument 0"}
!866 = distinct !{!866, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error"}
!867 = distinct !{!867, !866, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_contains0CsgjwxzEoLG5s_12polars_error: argument 0"}
!868 = distinct !DILexicalBlock(scope: !838, file: !86, line: 1804, column: 5)
!869 = distinct !{!869, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error"}
!870 = distinct !{!870, !869, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error: argument 1"}
!871 = distinct !{!871, !869, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error: argument 0"}
!872 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsgjwxzEoLG5s_12polars_error", scope: !1085, file: !994, line: 152, type: !46, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!873 = distinct !DILexicalBlock(scope: !872, file: !994, line: 157, column: 13)
!874 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !996, file: !994, line: 20, type: !46, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!875 = distinct !DILexicalBlock(scope: !874, file: !994, line: 21, column: 9)
!876 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCsgjwxzEoLG5s_12polars_error", scope: !1005, file: !997, line: 2123, type: !46, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!877 = distinct !DISubprogram(name: "{closure#1}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss_0CsgjwxzEoLG5s_12polars_error", scope: !89, file: !86, line: 1822, type: !45, scopeLine: 1822, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!878 = distinct !DISubprogram(name: "{closure#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RNCINvNvNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CsgjwxzEoLG5s_12polars_error", scope: !1087, file: !100, line: 2910, type: !45, scopeLine: 2910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!879 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Windows<u8>, (), core::iter::traits::iterator::Iterator::any::check::{closure_env#0}<&[u8], core::str::pattern::simd_contains::{closure_env#1}>, core::ops::control_flow::ControlFlow<(), ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBO_3any5checkRShNCNvNtNtBa_3str7pattern13simd_containss_0E0INtNtNtBa_3ops12control_flow11ControlFlowuEECsgjwxzEoLG5s_12polars_error", scope: !103, file: !100, line: 2501, type: !46, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!880 = distinct !DILexicalBlock(scope: !879, file: !100, line: 2507, column: 9)
!881 = distinct !DILexicalBlock(scope: !880, file: !100, line: 2508, column: 41)
!882 = distinct !DISubprogram(name: "any<core::slice::iter::Windows<u8>, core::str::pattern::simd_contains::{closure_env#1}>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter7WindowshENtNtNtNtBa_4iter6traits8iterator8Iterator3anyNCNvNtNtBa_3str7pattern13simd_containss_0ECsgjwxzEoLG5s_12polars_error", scope: !103, file: !100, line: 2903, type: !46, scopeLine: 2903, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!883 = distinct !DILocation(line: 1822, column: 52, scope: !868, inlinedAt: !835)
!884 = distinct !DILocation(line: 2915, column: 14, scope: !882, inlinedAt: !883)
!885 = distinct !DILocation(line: 2509, column: 21, scope: !881, inlinedAt: !884)
!886 = distinct !DILocation(line: 2911, column: 20, scope: !878, inlinedAt: !885)
!887 = distinct !DILocation(line: 1822, column: 60, scope: !877, inlinedAt: !886)
!888 = distinct !DILocation(line: 2124, column: 13, scope: !876, inlinedAt: !887)
!889 = distinct !DILocation(line: 25, column: 22, scope: !875, inlinedAt: !888)
!890 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgjwxzEoLG5s_12polars_error", scope: !97, file: !92, line: 567, type: !46, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!891 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsgjwxzEoLG5s_12polars_error", scope: !1089, file: !92, line: 18, type: !46, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!892 = distinct !DISubprogram(name: "next<u8>", linkageName: "_RNvXsY_NtNtCscgRAwXFJnXP_4core5slice4iterINtB5_7WindowshENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCsgjwxzEoLG5s_12polars_error", scope: !1091, file: !1090, line: 1356, type: !46, scopeLine: 1356, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!893 = distinct !DILexicalBlock(scope: !892, file: !1090, line: 1360, column: 13)
!894 = distinct !DILocation(line: 2508, column: 34, scope: !881, inlinedAt: !884)
!895 = distinct !DILocation(line: 1361, column: 29, scope: !893, inlinedAt: !894)
!896 = distinct !DILocation(line: 19, column: 15, scope: !1088, inlinedAt: !895)
!897 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsgjwxzEoLG5s_12polars_error", scope: !94, file: !92, line: 82, type: !46, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!898 = distinct !DILexicalBlock(scope: !897, file: !92, line: 87, column: 5)
!899 = distinct !DILexicalBlock(scope: !890, file: !92, line: 573, column: 13)
!900 = distinct !DILocation(line: 574, column: 15, scope: !899, inlinedAt: !896)
!901 = distinct !DISubprogram(name: "splat<u8, 16>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core9core_simd6vectorINtB2_4SimdhKj10_E5splatCsgjwxzEoLG5s_12polars_error", scope: !1095, file: !1092, line: 151, type: !46, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!902 = distinct !DILocation(line: 1825, column: 30, scope: !868, inlinedAt: !835)
!903 = distinct !DILexicalBlock(scope: !868, file: !86, line: 1825, column: 5)
!904 = distinct !DILocation(line: 1826, column: 31, scope: !903, inlinedAt: !835)
!905 = distinct !DISubprogram(name: "get_offset_len_noubcheck<u8>", linkageName: "_RINvNtNtCscgRAwXFJnXP_4core5slice5index24get_offset_len_noubcheckhECsgjwxzEoLG5s_12polars_error", scope: !94, file: !92, line: 82, type: !46, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!906 = distinct !DILexicalBlock(scope: !905, file: !92, line: 87, column: 5)
!907 = distinct !DISubprogram(name: "index<u8>", linkageName: "_RNvXs5_NtNtCscgRAwXFJnXP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgjwxzEoLG5s_12polars_error", scope: !97, file: !92, line: 567, type: !46, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!908 = distinct !DILexicalBlock(scope: !907, file: !92, line: 573, column: 13)
!909 = distinct !DISubprogram(name: "index<u8, core::ops::range::RangeFrom<usize>>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice5indexShINtNtNtB6_3ops5index5IndexINtNtBI_5range9RangeFromjEE5indexCsgjwxzEoLG5s_12polars_error", scope: !1089, file: !92, line: 18, type: !46, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!910 = distinct !DILexicalBlock(scope: !903, file: !86, line: 1826, column: 5)
!911 = distinct !DILocation(line: 1829, column: 33, scope: !910, inlinedAt: !835)
!912 = distinct !DILocation(line: 19, column: 15, scope: !909, inlinedAt: !911)
!913 = distinct !DILocation(line: 574, column: 15, scope: !908, inlinedAt: !912)
!914 = distinct !DILexicalBlock(scope: !910, file: !86, line: 1829, column: 5)
!915 = distinct !DILexicalBlock(scope: !914, file: !86, line: 1832, column: 5)
!916 = distinct !DILexicalBlock(scope: !915, file: !86, line: 1857, column: 5)
!917 = distinct !DILexicalBlock(scope: !916, file: !86, line: 1873, column: 5)
!918 = distinct !DILexicalBlock(scope: !917, file: !86, line: 1874, column: 5)
!919 = distinct !{!919, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!920 = distinct !{!920, !919, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!921 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECsgjwxzEoLG5s_12polars_error", scope: !51, file: !50, line: 531, type: !46, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!922 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr14read_unalignedINtNtNtB4_9core_simd6vector4SimdhKj10_EECsgjwxzEoLG5s_12polars_error", scope: !51, file: !50, line: 1800, type: !46, scopeLine: 1800, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!923 = distinct !DILexicalBlock(scope: !922, file: !50, line: 1801, column: 5)
!924 = distinct !DISubprogram(name: "read_unaligned<core::core_simd::vector::Simd<u8, 16>>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPINtNtNtB6_9core_simd6vector4SimdhKj10_E14read_unalignedCsgjwxzEoLG5s_12polars_error", scope: !109, file: !107, line: 1207, type: !46, scopeLine: 1207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!925 = distinct !DISubprogram(name: "{closure#3}", linkageName: "_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error", scope: !89, file: !86, line: 1857, type: !46, scopeLine: 1857, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!926 = distinct !DILexicalBlock(scope: !918, file: !86, line: 1879, column: 9)
!927 = distinct !DILexicalBlock(scope: !926, file: !86, line: 1880, column: 9)
!928 = distinct !DILexicalBlock(scope: !927, file: !86, line: 1880, column: 9)
!929 = distinct !DILocation(line: 1881, column: 24, scope: !928, inlinedAt: !835)
!930 = distinct !DILocation(line: 1860, column: 76, scope: !925, inlinedAt: !929)
!931 = distinct !DILocation(line: 1212, column: 18, scope: !924, inlinedAt: !930)
!932 = distinct !DILocation(line: 1809, column: 9, scope: !923, inlinedAt: !931)
!933 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh3addCsgjwxzEoLG5s_12polars_error", scope: !109, file: !107, line: 829, type: !46, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!934 = distinct !DILexicalBlock(scope: !925, file: !86, line: 1860, column: 9)
!935 = distinct !DILocation(line: 1863, column: 40, scope: !934, inlinedAt: !929)
!936 = distinct !DILexicalBlock(scope: !922, file: !50, line: 1801, column: 5)
!937 = distinct !DILocation(line: 1863, column: 81, scope: !934, inlinedAt: !929)
!938 = distinct !DILocation(line: 1212, column: 18, scope: !1098, inlinedAt: !937)
!939 = distinct !DILocation(line: 1809, column: 9, scope: !1097, inlinedAt: !938)
!940 = distinct !DISubprogram(name: "simd_eq<16>", linkageName: "_RNvXs2_NtNtNtNtCscgRAwXFJnXP_4core9core_simd4simd3cmp2eqINtNtBb_6vector4SimdhKj10_ENtB5_13SimdPartialEq7simd_eqCsgjwxzEoLG5s_12polars_error", scope: !1103, file: !1099, line: 28, type: !46, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!941 = distinct !DILexicalBlock(scope: !934, file: !86, line: 1862, column: 9)
!942 = distinct !DILocation(line: 1865, column: 32, scope: !941, inlinedAt: !929)
!943 = distinct !DILexicalBlock(scope: !941, file: !86, line: 1865, column: 9)
!944 = distinct !DILocation(line: 1866, column: 31, scope: !943, inlinedAt: !929)
!945 = distinct !DISubprogram(name: "bitand<i8, 16>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_ENtNtNtB9_3ops3bit6BitAnd6bitandCsgjwxzEoLG5s_12polars_error", scope: !1106, file: !1104, line: 479, type: !46, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!946 = distinct !DILexicalBlock(scope: !943, file: !86, line: 1866, column: 9)
!947 = distinct !DILocation(line: 1867, column: 29, scope: !946, inlinedAt: !929)
!948 = distinct !DILocation(line: 1860, column: 51, scope: !925, inlinedAt: !929)
!949 = distinct !DILexicalBlock(scope: !926, file: !86, line: 1883, column: 9)
!950 = distinct !DILexicalBlock(scope: !949, file: !86, line: 1883, column: 9)
!951 = distinct !DILexicalBlock(scope: !950, file: !86, line: 1884, column: 13)
!952 = distinct !DILexicalBlock(scope: !918, file: !86, line: 1903, column: 5)
!953 = distinct !DILocation(line: 1904, column: 16, scope: !952, inlinedAt: !835)
!954 = distinct !DILocation(line: 1860, column: 51, scope: !925, inlinedAt: !953)
!955 = distinct !{!955, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!956 = distinct !{!956, !955, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!957 = distinct !DILocation(line: 1860, column: 76, scope: !925, inlinedAt: !953)
!958 = distinct !DILocation(line: 1212, column: 18, scope: !924, inlinedAt: !957)
!959 = distinct !DILocation(line: 1809, column: 9, scope: !923, inlinedAt: !958)
!960 = distinct !DILocation(line: 1863, column: 40, scope: !934, inlinedAt: !953)
!961 = distinct !DILocation(line: 1863, column: 81, scope: !934, inlinedAt: !953)
!962 = distinct !DILocation(line: 1212, column: 18, scope: !1098, inlinedAt: !961)
!963 = distinct !DILocation(line: 1809, column: 9, scope: !1097, inlinedAt: !962)
!964 = distinct !DILocation(line: 1865, column: 32, scope: !941, inlinedAt: !953)
!965 = distinct !DILocation(line: 1866, column: 31, scope: !943, inlinedAt: !953)
!966 = distinct !DILocation(line: 1867, column: 29, scope: !946, inlinedAt: !953)
!967 = distinct !DISubprogram(name: "to_bitmask_impl<i8, u16, 16, 16>", linkageName: "_RINvNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB8_4MaskpKpE10to_bitmask15to_bitmask_implatKj10_KB1w_ECsgjwxzEoLG5s_12polars_error", scope: !1109, file: !1104, line: 305, type: !46, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!968 = distinct !DILexicalBlock(scope: !967, file: !1104, line: 311, column: 13)
!969 = distinct !DISubprogram(name: "to_bitmask<i8, 16>", linkageName: "_RNvMs0_NtNtCscgRAwXFJnXP_4core9core_simd5masksINtB5_4MaskaKj10_E10to_bitmaskCsgjwxzEoLG5s_12polars_error", scope: !1110, file: !1104, line: 299, type: !45, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!970 = distinct !DILexicalBlock(scope: !946, file: !86, line: 1867, column: 9)
!971 = distinct !DILocation(line: 1868, column: 25, scope: !970, inlinedAt: !953)
!972 = distinct !DILocation(line: 326, column: 22, scope: !969, inlinedAt: !971)
!973 = distinct !DILexicalBlock(scope: !952, file: !86, line: 1904, column: 5)
!974 = distinct !DILocation(line: 1892, column: 20, scope: !918, inlinedAt: !835)
!975 = distinct !DILocation(line: 1860, column: 51, scope: !925, inlinedAt: !974)
!976 = distinct !{!976, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error"}
!977 = distinct !{!977, !976, !"_RNCNvNtNtCscgRAwXFJnXP_4core3str7pattern13simd_containss1_0CsgjwxzEoLG5s_12polars_error: argument 0"}
!978 = distinct !DILocation(line: 1860, column: 76, scope: !925, inlinedAt: !974)
!979 = distinct !DILocation(line: 1212, column: 18, scope: !924, inlinedAt: !978)
!980 = distinct !DILocation(line: 1809, column: 9, scope: !923, inlinedAt: !979)
!981 = distinct !DILocation(line: 1863, column: 40, scope: !934, inlinedAt: !974)
!982 = distinct !DILocation(line: 1863, column: 81, scope: !934, inlinedAt: !974)
!983 = distinct !DILocation(line: 1212, column: 18, scope: !1098, inlinedAt: !982)
!984 = distinct !DILocation(line: 1809, column: 9, scope: !1097, inlinedAt: !983)
!985 = distinct !DILocation(line: 1865, column: 32, scope: !941, inlinedAt: !974)
!986 = distinct !DILocation(line: 1866, column: 31, scope: !943, inlinedAt: !974)
!987 = distinct !DILocation(line: 1867, column: 29, scope: !946, inlinedAt: !974)
!988 = distinct !DILocation(line: 1868, column: 25, scope: !970, inlinedAt: !974)
!989 = distinct !DILocation(line: 326, column: 22, scope: !969, inlinedAt: !988)
!990 = distinct !DILexicalBlock(scope: !918, file: !86, line: 1892, column: 9)
!991 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCsgjwxzEoLG5s_12polars_error", scope: !1085, file: !994, line: 152, type: !46, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !44)
!992 = distinct !DILexicalBlock(scope: !991, file: !994, line: 157, column: 13)
!993 = !DINamespace(name: "{impl#31}", scope: !88)
!994 = !DIFile(filename: "library/core/src/slice/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84ef1ad06348bcbccb4880198773df8b")
!995 = !DINamespace(name: "cmp", scope: !93)
!996 = !DINamespace(name: "{impl#0}", scope: !995)
!997 = !DIFile(filename: "library/core/src/cmp.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "93720ae7898ae8b09789e408e6950d44")
!998 = !DILexicalBlockFile(scope: !675, file: !997, discriminator: 2)
!999 = !DILocation(line: 1011, column: 18, scope: !670)
!1000 = !DILocation(line: 2124, column: 13, scope: !673, inlinedAt: !999)
!1001 = !DILocation(line: 30, column: 9, scope: !674, inlinedAt: !1000)
!1002 = !DILocation(line: 2124, column: 13, scope: !998, inlinedAt: !1001)
!1003 = !DINamespace(name: "cmp", scope: !40)
!1004 = !DINamespace(name: "impls", scope: !1003)
!1005 = !DINamespace(name: "{impl#9}", scope: !1004)
!1006 = !DIFile(filename: "library/core/src/str/traits.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "ceefce93fff2781d56cedc7cc19e92ed")
!1007 = !DINamespace(name: "traits", scope: !87)
!1008 = !DINamespace(name: "{impl#1}", scope: !1007)
!1009 = !DILocation(line: 1009, column: 22, scope: !670)
!1010 = !{!678}
!1011 = !{!679}
!1012 = !DINamespace(name: "{impl#33}", scope: !88)
!1013 = !{i8 0, i8 2}
!1014 = !{!683, !678}
!1015 = !{!684, !679}
!1016 = !DINamespace(name: "{impl#11}", scope: !1007)
!1017 = !DINamespace(name: "{impl#4}", scope: !1007)
!1018 = !{!700}
!1019 = !{!684, !701, !679, !678}
!1020 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "2e8f934969debccc4094e90ba6a480f5")
!1021 = !DINamespace(name: "{impl#6}", scope: !91)
!1022 = !DINamespace(name: "{impl#7}", scope: !1007)
!1023 = !DIFile(filename: "library/core/src/ptr/non_null.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "84a86787d0c87de0d69993189aea0a0d")
!1024 = !DINamespace(name: "non_null", scope: !51)
!1025 = !DINamespace(name: "{impl#15}", scope: !1024)
!1026 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!1027 = !DINamespace(name: "validations", scope: !87)
!1028 = !DIFile(filename: "library/core/src/str/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "930179fefecf60d8f78cba5290f596b2")
!1029 = !DINamespace(name: "iter", scope: !87)
!1030 = !DINamespace(name: "{impl#0}", scope: !1029)
!1031 = !{!724, !684, !701, !679, !678}
!1032 = !DINamespace(name: "NonNull", scope: !1024)
!1033 = !DIFile(filename: "crates/polars-error/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "49971f08fd25b94414fd1245099a73ea")
!1034 = !DILexicalBlockFile(scope: !725, file: !1033, discriminator: 0)
!1035 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "fdce958fc348cd3d447b8c64a2fb30f1")
!1036 = !DINamespace(name: "char", scope: !40)
!1037 = !DINamespace(name: "convert", scope: !1036)
!1038 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "250be42d67a870f63f129e5a4f1373a2")
!1039 = !DINamespace(name: "methods", scope: !1036)
!1040 = !DINamespace(name: "{impl#0}", scope: !1039)
!1041 = !DINamespace(name: "next", scope: !1030)
!1042 = !DINamespace(name: "TwoWaySearcher", scope: !88)
!1043 = !DILocation(line: 0, scope: !763, inlinedAt: !681)
!1044 = !{!683}
!1045 = !{!684, !683, !679, !678}
!1046 = !{!724, !684, !683, !679, !678}
!1047 = !{!767}
!1048 = !{!768}
!1049 = !{!769}
!1050 = !{!770, !768, !769}
!1051 = !DINamespace(name: "{impl#2}", scope: !94)
!1052 = !{!770, !767, !769}
!1053 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7915aa40df45185604e056d6562b6895")
!1054 = !DINamespace(name: "range", scope: !98)
!1055 = !DINamespace(name: "{impl#5}", scope: !1054)
!1056 = !DINamespace(name: "{impl#6}", scope: !1054)
!1057 = !DILexicalBlockFile(scope: !783, file: !86, discriminator: 2)
!1058 = !DINamespace(name: "{impl#11}", scope: !91)
!1059 = !DINamespace(name: "{impl#43}", scope: !1054)
!1060 = !DINamespace(name: "{impl#58}", scope: !1004)
!1061 = !DINamespace(name: "{impl#7}", scope: !1054)
!1062 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "c0b51c2e2801a373cd0b2d2d78a81982")
!1063 = !DINamespace(name: "rev", scope: !99)
!1064 = !DINamespace(name: "{impl#1}", scope: !1063)
!1065 = !DILexicalBlockFile(scope: !797, file: !86, discriminator: 2)
!1066 = !{!770, !767, !768, !769}
!1067 = !{!770, !767, !768}
!1068 = !{!809}
!1069 = !{!810}
!1070 = !{!811}
!1071 = !{!812, !810, !811}
!1072 = !{!812, !809, !811}
!1073 = !{!812, !809, !810, !811}
!1074 = !{!812, !809, !810}
!1075 = !{!829}
!1076 = !{!831}
!1077 = !DIFile(filename: "library/core/src/iter/traits/double_ended.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "44f20493a76f1796bc2878d611fe77c6")
!1078 = !DINamespace(name: "double_ended", scope: !101)
!1079 = !DINamespace(name: "DoubleEndedIterator", scope: !1078)
!1080 = !DINamespace(name: "rfind", scope: !1079)
!1081 = !DINamespace(name: "check", scope: !1080)
!1082 = !{!867, !865, !863, !862, !831}
!1083 = !{!829, !831}
!1084 = !{!871, !870}
!1085 = !DINamespace(name: "{impl#5}", scope: !995)
!1086 = !DINamespace(name: "any", scope: !103)
!1087 = !DINamespace(name: "check", scope: !1086)
!1088 = !DILexicalBlockFile(scope: !891, file: !92, discriminator: 2)
!1089 = !DINamespace(name: "{impl#0}", scope: !94)
!1090 = !DIFile(filename: "library/core/src/slice/iter.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "f33ab2e22fe09095bf73c41c52bd166c")
!1091 = !DINamespace(name: "{impl#62}", scope: !105)
!1092 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/vector.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "e9007a8fc0e081f1d4ddc6b9e6405748")
!1093 = !DINamespace(name: "core_simd", scope: !40)
!1094 = !DINamespace(name: "vector", scope: !1093)
!1095 = !DINamespace(name: "Simd", scope: !1094)
!1096 = !{!920, !829}
!1097 = !DILexicalBlockFile(scope: !936, file: !50, discriminator: 2)
!1098 = !DILexicalBlockFile(scope: !924, file: !107, discriminator: 2)
!1099 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/simd/cmp/eq.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "7685cb03cbca8e20bb043063063cbb87")
!1100 = !DINamespace(name: "simd", scope: !1093)
!1101 = !DINamespace(name: "cmp", scope: !1100)
!1102 = !DINamespace(name: "eq", scope: !1101)
!1103 = !DINamespace(name: "{impl#4}", scope: !1102)
!1104 = !DIFile(filename: "library/core/src/../../portable-simd/crates/core_simd/src/masks.rs", directory: "/rustc/48cc71ee88cd0f11217eced958b9930970da998b", checksumkind: CSK_MD5, checksum: "9d00f8d04957d898984aa5da18e7e089")
!1105 = !DINamespace(name: "masks", scope: !1093)
!1106 = !DINamespace(name: "{impl#9}", scope: !1105)
!1107 = !{!956, !829}
!1108 = !DINamespace(name: "{impl#2}", scope: !1105)
!1109 = !DINamespace(name: "to_bitmask", scope: !1108)
!1110 = !DINamespace(name: "Mask", scope: !1105)
!1111 = !{!977, !829}
!1112 = !DILocation(line: 25, column: 22, scope: !672, inlinedAt: !1002)
!1113 = !DILocation(line: 992, column: 9, scope: !670)
!1114 = !DILocation(line: 0, scope: !670)
!1115 = !DILocation(line: 1013, column: 6, scope: !670)
!1116 = !DILocation(line: 22, column: 12, scope: !672, inlinedAt: !1002)
!1117 = !DILocation(line: 1003, column: 20, scope: !670)
!1118 = !DILocation(line: 1009, column: 17, scope: !670)
!1119 = !DILocation(line: 976, column: 9, scope: !676, inlinedAt: !1009)
!1120 = !DILocation(line: 1009, column: 46, scope: !670)
!1121 = !DILocation(line: 1172, column: 15, scope: !680, inlinedAt: !681)
!1122 = !DILocation(line: 1172, column: 9, scope: !680, inlinedAt: !681)
!1123 = !DILocation(line: 1122, column: 20, scope: !686, inlinedAt: !687)
!1124 = !DILocation(line: 1126, column: 32, scope: !686, inlinedAt: !687)
!1125 = !DILocation(line: 378, column: 12, scope: !688, inlinedAt: !698)
!1126 = !DILocation(line: 382, column: 12, scope: !688, inlinedAt: !698)
!1127 = !DILocation(line: 392, column: 13, scope: !688, inlinedAt: !698)
!1128 = !DILocation(line: 508, column: 12, scope: !689, inlinedAt: !697)
!1129 = !DILocation(line: 394, column: 13, scope: !688, inlinedAt: !698)
!1130 = !DILocation(line: 1178, column: 9, scope: !702, inlinedAt: !703)
!1131 = !DILocation(line: 863, column: 18, scope: !704, inlinedAt: !712)
!1132 = !DILocation(line: 1717, column: 9, scope: !713, inlinedAt: !722)
!1133 = !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !721)
!1134 = !DILocation(line: 37, column: 13, scope: !717, inlinedAt: !720)
!1135 = !DILocation(line: 38, column: 8, scope: !725, inlinedAt: !720)
!1136 = !DILocation(line: 659, column: 28, scope: !726, inlinedAt: !727)
!1137 = !DILocation(line: 11, column: 5, scope: !728, inlinedAt: !729)
!1138 = !DILocation(line: 1717, column: 9, scope: !713, inlinedAt: !732)
!1139 = !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !731)
!1140 = !DILocation(line: 48, column: 22, scope: !730, inlinedAt: !720)
!1141 = !DILocation(line: 17, column: 5, scope: !733, inlinedAt: !735)
!1142 = !DILocation(line: 17, column: 17, scope: !733, inlinedAt: !735)
!1143 = !DILocation(line: 50, column: 8, scope: !736, inlinedAt: !720)
!1144 = !DILocation(line: 659, column: 28, scope: !726, inlinedAt: !737)
!1145 = !DILocation(line: 1717, column: 9, scope: !713, inlinedAt: !739)
!1146 = !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !738)
!1147 = !DILocation(line: 55, column: 26, scope: !736, inlinedAt: !720)
!1148 = !DILocation(line: 17, column: 5, scope: !733, inlinedAt: !741)
!1149 = !DILocation(line: 17, column: 17, scope: !733, inlinedAt: !741)
!1150 = !DILocation(line: 57, column: 14, scope: !742, inlinedAt: !720)
!1151 = !DILocation(line: 57, column: 9, scope: !742, inlinedAt: !720)
!1152 = !DILocation(line: 58, column: 12, scope: !742, inlinedAt: !720)
!1153 = !DILocation(line: 659, column: 28, scope: !726, inlinedAt: !743)
!1154 = !DILocation(line: 1717, column: 9, scope: !713, inlinedAt: !745)
!1155 = !DILocation(line: 180, column: 28, scope: !716, inlinedAt: !744)
!1156 = !DILocation(line: 63, column: 30, scope: !742, inlinedAt: !720)
!1157 = !DILocation(line: 64, column: 18, scope: !746, inlinedAt: !720)
!1158 = !DILocation(line: 17, column: 5, scope: !733, inlinedAt: !747)
!1159 = !DILocation(line: 17, column: 17, scope: !733, inlinedAt: !747)
!1160 = !DILocation(line: 64, column: 13, scope: !746, inlinedAt: !720)
!1161 = !DILocation(line: 58, column: 9, scope: !742, inlinedAt: !720)
!1162 = !DILocation(line: 39, column: 21, scope: !725, inlinedAt: !720)
!1163 = !DILocation(line: 0, scope: !1034, inlinedAt: !720)
!1164 = !DILocation(line: 34, column: 9, scope: !748, inlinedAt: !756)
!1165 = !DILocation(line: 1130, column: 26, scope: !694, inlinedAt: !687)
!1166 = !DILocation(line: 2040, column: 9, scope: !757, inlinedAt: !761)
!1167 = !DILocation(line: 2041, column: 9, scope: !757, inlinedAt: !761)
!1168 = !DILocation(line: 2042, column: 9, scope: !757, inlinedAt: !761)
!1169 = !DILocation(line: 0, scope: !757, inlinedAt: !761)
!1170 = !DILocation(line: 1181, column: 31, scope: !762, inlinedAt: !681)
!1171 = !DILocation(line: 1184, column: 20, scope: !763, inlinedAt: !681)
!1172 = !DILocation(line: 1466, column: 23, scope: !764, inlinedAt: !1043)
!1173 = !DILocation(line: 1467, column: 27, scope: !765, inlinedAt: !1043)
!1174 = !DILocation(line: 1136, column: 25, scope: !759, inlinedAt: !687)
!1175 = !DILocation(line: 1174, column: 28, scope: !680, inlinedAt: !681)
!1176 = !DILocation(line: 543, column: 21, scope: !691, inlinedAt: !696)
!1177 = !DILocation(line: 1185, column: 30, scope: !763, inlinedAt: !681)
!1178 = !DILocation(line: 1472, column: 48, scope: !771, inlinedAt: !772)
!1179 = !DILocation(line: 219, column: 12, scope: !773, inlinedAt: !776)
!1180 = !DILocation(line: 221, column: 27, scope: !773, inlinedAt: !776)
!1181 = !DILocation(line: 1473, column: 23, scope: !771, inlinedAt: !772)
!1182 = !DILocation(line: 1452, column: 27, scope: !777, inlinedAt: !779)
!1183 = !DILocation(line: 1452, column: 26, scope: !777, inlinedAt: !779)
!1184 = !DILocation(line: 1485, column: 17, scope: !778, inlinedAt: !772)
!1185 = !DILocation(line: 781, column: 12, scope: !780, inlinedAt: !785)
!1186 = !DILocation(line: 1486, column: 17, scope: !778, inlinedAt: !772)
!1187 = !DILocation(line: 1487, column: 21, scope: !778, inlinedAt: !772)
!1188 = !DILocation(line: 898, column: 17, scope: !786, inlinedAt: !790)
!1189 = !DILocation(line: 1917, column: 50, scope: !791, inlinedAt: !792)
!1190 = !DILocation(line: 823, column: 12, scope: !793, inlinedAt: !800)
!1191 = !DILocation(line: 1497, column: 42, scope: !801, inlinedAt: !772)
!1192 = !DILocation(line: 1497, column: 33, scope: !801, inlinedAt: !772)
!1193 = !DILocation(line: 1917, column: 50, scope: !791, inlinedAt: !802)
!1194 = !DILocation(line: 1077, column: 17, scope: !803, inlinedAt: !806)
!1195 = !DILocation(line: 1509, column: 20, scope: !807, inlinedAt: !772)
!1196 = !DILocation(line: 1509, column: 42, scope: !807, inlinedAt: !772)
!1197 = !DILocation(line: 1509, column: 33, scope: !807, inlinedAt: !772)
!1198 = !DILocation(line: 1510, column: 21, scope: !807, inlinedAt: !772)
!1199 = !DILocation(line: 1511, column: 25, scope: !807, inlinedAt: !772)
!1200 = !DILocation(line: 1497, column: 20, scope: !801, inlinedAt: !772)
!1201 = !DILocation(line: 1496, column: 13, scope: !783, inlinedAt: !772)
!1202 = !DILocation(line: 1498, column: 21, scope: !801, inlinedAt: !772)
!1203 = !DILocation(line: 1499, column: 25, scope: !801, inlinedAt: !772)
!1204 = !DILocation(line: 1191, column: 30, scope: !763, inlinedAt: !681)
!1205 = !DILocation(line: 1472, column: 48, scope: !771, inlinedAt: !813)
!1206 = !DILocation(line: 219, column: 12, scope: !773, inlinedAt: !815)
!1207 = !DILocation(line: 221, column: 27, scope: !773, inlinedAt: !815)
!1208 = !DILocation(line: 1473, column: 23, scope: !771, inlinedAt: !813)
!1209 = !DILocation(line: 1452, column: 27, scope: !777, inlinedAt: !816)
!1210 = !DILocation(line: 1452, column: 26, scope: !777, inlinedAt: !816)
!1211 = !DILocation(line: 1485, column: 17, scope: !778, inlinedAt: !813)
!1212 = !DILocation(line: 1486, column: 17, scope: !778, inlinedAt: !813)
!1213 = !DILocation(line: 1487, column: 21, scope: !778, inlinedAt: !813)
!1214 = !DILocation(line: 1495, column: 20, scope: !778, inlinedAt: !813)
!1215 = !DILocation(line: 1496, column: 13, scope: !783, inlinedAt: !813)
!1216 = !DILocation(line: 1917, column: 50, scope: !791, inlinedAt: !819)
!1217 = !DILocation(line: 781, column: 12, scope: !780, inlinedAt: !818)
!1218 = !DILocation(line: 898, column: 17, scope: !786, inlinedAt: !821)
!1219 = !DILocation(line: 1917, column: 50, scope: !791, inlinedAt: !825)
!1220 = !DILocation(line: 823, column: 12, scope: !793, inlinedAt: !824)
!1221 = !DILocation(line: 1497, column: 42, scope: !801, inlinedAt: !813)
!1222 = !DILocation(line: 1497, column: 33, scope: !801, inlinedAt: !813)
!1223 = !DILocation(line: 1077, column: 17, scope: !803, inlinedAt: !827)
!1224 = !DILocation(line: 1509, column: 20, scope: !807, inlinedAt: !813)
!1225 = !DILocation(line: 1509, column: 42, scope: !807, inlinedAt: !813)
!1226 = !DILocation(line: 1509, column: 33, scope: !807, inlinedAt: !813)
!1227 = !DILocation(line: 1510, column: 21, scope: !807, inlinedAt: !813)
!1228 = !DILocation(line: 1511, column: 25, scope: !807, inlinedAt: !813)
!1229 = !DILocation(line: 1497, column: 20, scope: !801, inlinedAt: !813)
!1230 = !DILocation(line: 1498, column: 21, scope: !801, inlinedAt: !813)
!1231 = !DILocation(line: 1499, column: 25, scope: !801, inlinedAt: !813)
!1232 = !DILocation(line: 0, scope: !680, inlinedAt: !681)
!1233 = !DILocation(line: 1009, column: 67, scope: !670)
!1234 = !DILocation(line: 1004, column: 43, scope: !830)
!1235 = !DILocation(line: 1800, column: 23, scope: !834, inlinedAt: !835)
!1236 = !DILocation(line: 1801, column: 28, scope: !836, inlinedAt: !835)
!1237 = !DILocation(line: 2399, column: 13, scope: !837, inlinedAt: !839)
!1238 = !DILocation(line: 823, column: 12, scope: !840, inlinedAt: !849)
!1239 = !DILocation(line: 1917, column: 50, scope: !850, inlinedAt: !851)
!1240 = !DILocation(line: 1077, column: 17, scope: !852, inlinedAt: !855)
!1241 = !DILocation(line: 1811, column: 73, scope: !857, inlinedAt: !860)
!1242 = !DILocation(line: 238, column: 21, scope: !844, inlinedAt: !847)
!1243 = !DILocation(line: 1821, column: 25, scope: !868, inlinedAt: !835)
!1244 = !DILocation(line: 1821, column: 8, scope: !868, inlinedAt: !835)
!1245 = !DILocation(line: 158, column: 13, scope: !873, inlinedAt: !889)
!1246 = !DILocation(line: 2509, column: 21, scope: !881, inlinedAt: !884)
!1247 = !DILocation(line: 573, column: 27, scope: !890, inlinedAt: !896)
!1248 = !DILocation(line: 1357, column: 12, scope: !892, inlinedAt: !894)
!1249 = !DILocation(line: 89, column: 24, scope: !898, inlinedAt: !900)
!1250 = !DILocation(line: 153, column: 18, scope: !901, inlinedAt: !902)
!1251 = !DILocation(line: 153, column: 18, scope: !901, inlinedAt: !904)
!1252 = !DILocation(line: 89, column: 24, scope: !906, inlinedAt: !913)
!1253 = !DILocation(line: 1832, column: 9, scope: !914, inlinedAt: !835)
!1254 = !DILocation(line: 1833, column: 5, scope: !914, inlinedAt: !835)
!1255 = !DILocation(line: 1878, column: 11, scope: !918, inlinedAt: !835)
!1256 = !DILocation(line: 1874, column: 22, scope: !917, inlinedAt: !835)
!1257 = !DILocation(line: 0, scope: !916, inlinedAt: !835)
!1258 = !DILocation(line: 1891, column: 11, scope: !918, inlinedAt: !835)
!1259 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !932)
!1260 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !935)
!1261 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !939)
!1262 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !942)
!1263 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !944)
!1264 = !DILocation(line: 481, column: 23, scope: !945, inlinedAt: !947)
!1265 = !DILocation(line: 1881, column: 13, scope: !928, inlinedAt: !835)
!1266 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !948)
!1267 = !DILocation(line: 1885, column: 16, scope: !951, inlinedAt: !835)
!1268 = !DILocation(line: 0, scope: !917, inlinedAt: !835)
!1269 = !DILocation(line: 1886, column: 38, scope: !951, inlinedAt: !835)
!1270 = !DILocation(line: 1886, column: 64, scope: !951, inlinedAt: !835)
!1271 = !DILocation(line: 1886, column: 27, scope: !951, inlinedAt: !835)
!1272 = !DILocation(line: 1886, column: 17, scope: !951, inlinedAt: !835)
!1273 = !DILocation(line: 1885, column: 13, scope: !951, inlinedAt: !835)
!1274 = !DILocation(line: 1889, column: 9, scope: !926, inlinedAt: !835)
!1275 = !DILocation(line: 1903, column: 13, scope: !918, inlinedAt: !835)
!1276 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !954)
!1277 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !959)
!1278 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !960)
!1279 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !963)
!1280 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !964)
!1281 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !965)
!1282 = !DILocation(line: 481, column: 23, scope: !945, inlinedAt: !966)
!1283 = !DILocation(line: 314, column: 39, scope: !968, inlinedAt: !972)
!1284 = !DILocation(line: 1905, column: 8, scope: !973, inlinedAt: !835)
!1285 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !975)
!1286 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !980)
!1287 = !DILocation(line: 863, column: 18, scope: !933, inlinedAt: !981)
!1288 = !DILocation(line: 552, column: 14, scope: !921, inlinedAt: !984)
!1289 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !985)
!1290 = !DILocation(line: 31, column: 52, scope: !940, inlinedAt: !986)
!1291 = !DILocation(line: 481, column: 23, scope: !945, inlinedAt: !987)
!1292 = !DILocation(line: 314, column: 39, scope: !968, inlinedAt: !989)
!1293 = !DILocation(line: 1893, column: 12, scope: !990, inlinedAt: !835)
!1294 = !DILocation(line: 1896, column: 9, scope: !990, inlinedAt: !835)
!1295 = !DILocation(line: 1894, column: 23, scope: !990, inlinedAt: !835)
!1296 = !DILocation(line: 1894, column: 13, scope: !990, inlinedAt: !835)
!1297 = !DILocation(line: 1893, column: 9, scope: !990, inlinedAt: !835)
!1298 = !DILocation(line: 1910, column: 1, scope: !914, inlinedAt: !835)
!1299 = !DILocation(line: 1910, column: 2, scope: !832, inlinedAt: !835)
!1300 = !DILocation(line: 1906, column: 19, scope: !973, inlinedAt: !835)
!1301 = !DILocation(line: 1906, column: 9, scope: !973, inlinedAt: !835)
!1302 = !DILocation(line: 1905, column: 5, scope: !973, inlinedAt: !835)
!1303 = !DILocation(line: 158, column: 13, scope: !992, inlinedAt: !1112)
!1304 = !DILocation(line: 22, column: 9, scope: !672, inlinedAt: !1002)
end_hunk_2
