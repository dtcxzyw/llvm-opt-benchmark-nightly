Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_utils-a04f66c812329f94.polars_utils.1b9d48609f1572cb-cgu.14?download=true
inline.NumInlined: 103
inline.NumDeleted: 76
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableB1O_:bb.a
  %i.d = trunc nuw i8 %.val.i.i to i1, !dbg !627
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1M_.exit, !dbg !628, !prof !126

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std4sync9lazy_lock14panic_poisoned() #23, !dbg !629, !noalias !620
  unreachable, !dbg !629

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !630, !noalias !620
  unreachable, !dbg !630

_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceB1M_.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !dbg !631, !noalias !620, !nonnull !60, !noundef !60
  %i.f = tail call { ptr, i64 } %i.e(), !dbg !632, !noalias !620, !inline_history !616 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0, !dbg !633
  %i.h = extractvalue { ptr, i64 } %i.f, 1, !dbg !633
  store ptr %i.g, ptr %i.b, align 8, !dbg !634, !noalias !620
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !634
  store i64 %i.h, ptr %i.i, align 8, !dbg !634, !noalias !620
  ret void, !dbg !621
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockjE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs2mZqlW55729_12polars_utils(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !635 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !656, !nonnull !60, !align !119, !noundef !60 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !653), !dbg !656
  %i.b = load ptr, ptr %i.a, align 8, !dbg !657, !alias.scope !653, !noalias !654, !align !119, !noundef !60 ; 3 uses
  store ptr null, ptr %i.a, align 8, !dbg !658, !alias.scope !653, !noalias !654
  %.not.i.i = icmp eq ptr %i.b, null, !dbg !659
  br i1 %.not.i.i, label %bb.d, label %bb.b, !dbg !660, !prof !126

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4, !dbg !661
  %.val.i.i = load i8, ptr %i.c, align 4, !dbg !661, !range !127, !noalias !655, !noundef !60
  %i.d = trunc nuw i8 %.val.i.i to i1, !dbg !662
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockjE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2mZqlW55729_12polars_utils.exit, !dbg !663, !prof !126

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std4sync9lazy_lock14panic_poisoned() #23, !dbg !664, !noalias !655
  unreachable, !dbg !664

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23, !dbg !665, !noalias !655
  unreachable, !dbg !665

_RNvYNCINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockjE5force0E0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !dbg !666, !noalias !655, !nonnull !60, !noundef !60
  %i.f = tail call noundef i64 %i.e(), !dbg !667, !noalias !655, !inline_history !651
  store i64 %i.f, ptr %i.b, align 8, !dbg !668, !noalias !655
  ret void, !dbg !656
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB2_8PlRefStr5empty() unnamed_addr #0 personality ptr @rust_eh_personality !dbg !669 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, i64 16) acquire, align 8, !dbg !697
  %i.d = icmp eq i32 %i.c, 0, !dbg !698
  br i1 %i.d, label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0EB1H_.exit, label %bb.b, !dbg !698, !prof !71

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !699
  store ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, ptr %i.b, align 8, !dbg !700
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !701
  store ptr %i.b, ptr %i.a, align 8, !dbg !701
  call void @_RNvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, i64 16), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !dbg !702
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !704
  br label %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0EB1H_.exit, !dbg !704

_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0EB1H_.exit: ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, align 8, !dbg !705, !nonnull !60, !noundef !60
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !706
  %i.g = icmp slt i64 %i.f, 0, !dbg !707
  br i1 %i.g, label %bb.d, label %bb.c, !dbg !707

bb.c:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0EB1H_.exit
  %i.h = load ptr, ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, align 8, !dbg !708, !nonnull !60, !noundef !60
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMNtCs2mZqlW55729_12polars_utils10pl_ref_strNtB4_8PlRefStr5empty5EMPTY, i64 8), align 8, !dbg !708, !noundef !60
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.h, 0, !dbg !709
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %i.i, 1, !dbg !709
  ret { ptr, i64 } %i.k, !dbg !709

bb.d:                                             ; preds = %_RINvMs0_NtNtCsh8eZTKRCwoO_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrE5force0EB1H_.exit
  call void @llvm.trap(), !dbg !710
  unreachable, !dbg !710
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_11VacantEntryTyyEmE12insert_entryCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !711 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !728
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !729 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !dbg !729, !noundef !60
  %.not = icmp eq ptr %i.e, null, !dbg !729
  br i1 %.not, label %bb.c, label %bb.b, !dbg !730

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !731
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !732
  %i.g = load i64, ptr %i.f, align 8, !dbg !732, !noundef !60
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !732
  %i.i = load i64, ptr %i.h, align 8, !dbg !732, !noundef !60
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !733
  call void @_RINvMsN_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutTyyEmNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs6_NtNtB8_3map5entryINtB2Q_11VacantEntryB1D_mE12insert_entry0ECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef %i.i, i32 noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j), !dbg !734
  %.pre = load ptr, ptr %1, align 8, !dbg !735
  br label %bb.d, !dbg !734

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !dbg !736, !nonnull !60, !noundef !60 ; 3 uses
  %i.l = tail call { ptr, i64 } @_RINvMs8_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTyyEmNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils(), !dbg !737 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0, !dbg !737 ; 3 uses
  %i.n = extractvalue { ptr, i64 } %i.l, 1, !dbg !737 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ], !dbg !738
  store ptr %i.m, ptr %i.k, align 8, !dbg !739
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !739
  store i64 %i.n, ptr %i.o, align 8, !dbg !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !740
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !741
  store i64 %i.n, ptr %i.p, align 8, !dbg !741
  store ptr %i.m, ptr %i.b, align 8, !dbg !741
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !742
  %i.r = load i64, ptr %i.q, align 8, !dbg !742, !noundef !60
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !742
  %i.t = load i64, ptr %i.s, align 8, !dbg !742, !noundef !60
  call void @_RNvMsu_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutTyyEmNtB19_4LeafE16push_with_handleCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.r, i64 noundef %i.t, i32 noundef %2), !dbg !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !744
  br label %bb.d, !dbg !745

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ], !dbg !735
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !746 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !746, !noundef !60
  %i.x = add i64 %i.w, 1, !dbg !746
  store i64 %i.x, ptr %i.v, align 8, !dbg !746
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !747
  %i.z = load ptr, ptr %i.c, align 8, !dbg !747, !nonnull !60, !noundef !60
  %i.aa = load ptr, ptr %1, align 8, !dbg !748, !nonnull !60, !noundef !60
  store ptr %i.z, ptr %0, align 8, !dbg !749
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !749
  %i.ab = load <2 x i64>, ptr %i.y, align 8, !dbg !747
  store <2 x i64> %i.ab, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !749
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !749
  store ptr %i.aa, ptr %i.ac, align 8, !dbg !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !750
  ret void, !dbg !751
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 4 ptr @_RNvMs7_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTyyEmE8into_mutCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !752 {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @_RNvMsQ_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutTyyEmNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutCs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0), !dbg !753
  ret ptr %i.a, !dbg !754
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryTyyEmE9remove_kvCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !755 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !764
  store i8 0, ptr %i.b, align 1, !dbg !765
  call void @_RINvMNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutTyyEmNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs7_NtNtB5_3map5entryINtB2N_13OccupiedEntryB1J_mE9remove_kv0NtNtB9_5alloc6GlobalECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull dereferenceable(1) %i.b), !dbg !766
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !767
  %i.d = load ptr, ptr %i.c, align 8, !dbg !767, !nonnull !60, !noundef !60 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !768 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !768, !noundef !60
  %i.g = add i64 %i.f, -1, !dbg !768
  store i64 %i.g, ptr %i.e, align 8, !dbg !768
  %i.h = load i8, ptr %i.b, align 1, !dbg !769, !range !127, !noundef !60
  %i.i = trunc nuw i8 %i.h to i1, !dbg !769
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !769

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.d, align 8, !dbg !770, !noundef !60
  %.not = icmp eq ptr %i.j, null, !dbg !770
  br i1 %.not, label %bb.e, label %bb.d, !dbg !771, !prof !126

bb.c:                                             ; preds = %bb.a, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !773
  ret void, !dbg !774

bb.d:                                             ; preds = %bb.b
  call void @_RINvMss_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedTyyEmNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d), !dbg !775
  br label %bb.c, !dbg !773

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25, !dbg !776
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsi_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_8BTreeMapTyyEmE5entryCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 32)) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !777 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = load ptr, ptr %1, align 8, !dbg !784, !noundef !60 ; 2 uses
  %.not = icmp eq ptr %i.d, null, !dbg !784
  br i1 %.not, label %bb.c, label %bb.b, !dbg !785

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !786
  %i.f = load i64, ptr %i.e, align 8, !dbg !787, !noundef !60
  call void @_RINvMs_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree6searchINtNtB7_4node7NodeRefNtNtBY_6marker3MutTyyEmNtB1i_14LeafOrInternalE11search_treeB1y_ECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b), !dbg !788
  %i.g = load i64, ptr %i.a, align 8, !dbg !786, !range !67, !noundef !60
  %i.h = trunc nuw i64 %i.g to i1, !dbg !789
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !790 ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e, !dbg !789

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !dbg !791
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !791
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !791
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !791
  store i64 %3, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !791
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !791
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !791
  br label %bb.f, !dbg !792

bb.d:                                             ; preds = %bb.b
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !793
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx8, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !794
  store ptr %1, ptr %0, align 8, !dbg !793
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !793
  store i64 %2, ptr %.sroa.46.0..sroa_idx, align 8, !dbg !793
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !793
  store i64 %3, ptr %.sroa.57.0..sroa_idx, align 8, !dbg !793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !795
  br label %bb.f, !dbg !795

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !796
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !797
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !796
  store ptr %1, ptr %.sroa.44.0..sroa_idx, align 8, !dbg !796
  store ptr null, ptr %0, align 8, !dbg !796
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !795
  br label %bb.f, !dbg !798

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void, !dbg !799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCs7mBf7xsg8h_15crossbeam_epoch6atomicINtB5_6SharedINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6BufferNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEE5derefCs2mZqlW55729_12polars_utils(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 !dbg !800 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !811, !noundef !60
  %i.b = and i64 %i.a, -8, !dbg !812
  %i.c = inttoptr i64 %i.b to ptr, !dbg !813
  ret ptr %i.c, !dbg !814
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_8IntoIterTyyEmE10dying_nextCs2mZqlW55729_12polars_utils(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !815 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !924 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !924, !noundef !60 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0, !dbg !924
  br i1 %i.g, label %bb.b, label %bb.e, !dbg !924

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901), !dbg !925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !926
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905), !dbg !926
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !dbg !927, !alias.scope !906
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !927
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !927, !alias.scope !906 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !927
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !927, !alias.scope !906 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !927
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !dbg !927, !alias.scope !906 ; 6 uses
  store i64 0, ptr %1, align 8, !dbg !928, !alias.scope !906
  %i.h = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1, !dbg !929
  br i1 %i.h, label %bb.c, label %_RINvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTyyEmE16deallocating_endNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils.exit, !dbg !929

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null, !dbg !930
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i, !dbg !931

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.i = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0, !dbg !932
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader, !dbg !932

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter4 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7, !dbg !932 ; 2 uses
  %lcmp.mod5.not = icmp eq i64 %xtraiter4, 0, !dbg !932
  br i1 %lcmp.mod5.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !932

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.020.023.i.i.prol = phi ptr [ %i.k, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.022.i.i.prol = phi i64 [ %i.l, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter6 = phi i64 [ %prol.iter6.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.023.i.i.prol, i64 232, !dbg !933
  %i.k = load ptr, ptr %i.j, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60 ; 3 uses
  %i.l = add i64 %.sroa.018.022.i.i.prol, -1, !dbg !935 ; 2 uses
  %prol.iter6.next = add i64 %prol.iter6, 1, !dbg !932 ; 2 uses
  %prol.iter6.cmp.not = icmp eq i64 %prol.iter6.next, %xtraiter4, !dbg !932
  br i1 %prol.iter6.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !932, !llvm.loop !850

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.020.023.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.k, %.lr.ph.i.i.prol ]
  %.sroa.018.022.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.l, %.lr.ph.i.i.prol ]
  %i.m = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8, !dbg !932
  br i1 %i.m, label %.loopexit.i, label %.lr.ph.i.i, !dbg !932

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.020.023.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.sroa.020.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.022.i.i = phi i64 [ %i.ad, %.lr.ph.i.i ], [ %.sroa.018.022.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.020.023.i.i, i64 232, !dbg !933
  %i.o = load ptr, ptr %i.n, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 232, !dbg !933
  %i.q = load ptr, ptr %i.p, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 232, !dbg !933
  %i.s = load ptr, ptr %i.r, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 232, !dbg !933
  %i.u = load ptr, ptr %i.t, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 232, !dbg !933
  %i.w = load ptr, ptr %i.v, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232, !dbg !933
  %i.y = load ptr, ptr %i.x, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 232, !dbg !933
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 232, !dbg !933
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !934, !noalias !909, !nonnull !60, !noundef !60 ; 2 uses
  %i.ad = add i64 %.sroa.018.022.i.i, -8, !dbg !935 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0, !dbg !932
  br i1 %i.ae, label %.loopexit.i, label %.lr.ph.i.i, !dbg !932

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.10.0.ph.i = phi i64 [ 0, %bb.d ], [ %.sroa.5.sroa.6.0.copyload.i.i, %bb.c ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ac, %.lr.ph.i.i ]
  store ptr %.sroa.0.0.ph.i, ptr %i.c, align 8, !dbg !936, !noalias !901
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !936
  store ptr %.sroa.8.0.ph.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !dbg !936, !noalias !901
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !936
  store i64 %.sroa.10.0.ph.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !dbg !936, !noalias !901
  call void @_RINvMsj_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTyyEmNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c), !dbg !937, !noalias !901
  br label %_RINvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTyyEmE16deallocating_endNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils.exit, !dbg !938

_RINvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTyyEmE16deallocating_endNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils.exit: ; preds = %bb.b, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !939
  store ptr null, ptr %0, align 8, !dbg !940
  br label %bb.j, !dbg !941

bb.e:                                             ; preds = %bb.a
  %i.af = add i64 %i.f, -1, !dbg !942
  store i64 %i.af, ptr %i.e, align 8, !dbg !942
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910), !dbg !943
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911), !dbg !944
  %i.ag = load i64, ptr %1, align 8, !dbg !945, !range !67, !alias.scope !912, !noundef !60
  %i.ah = trunc nuw i64 %i.ag to i1, !dbg !946
  br i1 %i.ah, label %bb.f, label %.critedge.i, !dbg !946

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !945 ; 4 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !945, !alias.scope !912, !noundef !60
  %.not.i.i1 = icmp eq ptr %i.aj, null, !dbg !945
  br i1 %.not.i.i1, label %bb.g, label %_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTyyEmE10init_frontCs2mZqlW55729_12polars_utils.exit.i, !dbg !946

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !947 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !947
  %i.am = load i64, ptr %i.al, align 8, !dbg !947, !alias.scope !912, !noundef !60 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.ak, align 8, !dbg !948, !alias.scope !912, !nonnull !60, !noundef !60 ; 3 uses
  %i.an = icmp eq i64 %i.am, 0, !dbg !949
  br i1 %i.an, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader, !dbg !949

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.am, 7, !dbg !949         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !949
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !949

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.ap, %.lr.ph.i.i2.prol ], [ %i.am, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 232, !dbg !950
  %i.ap = add i64 %.sroa.011.016.i.i.prol, -1, !dbg !951 ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ao, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !949 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !949
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !dbg !949, !llvm.loop !873

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i2.preheader ], [ %i.ap, %.lr.ph.i.i2.prol ]
  %i.aq = icmp ult i64 %i.am, 8, !dbg !949
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !949

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], !dbg !948
  store i64 1, ptr %1, align 8, !dbg !952, !alias.scope !912
  store ptr %.sroa.013.0.lcssa.i.i, ptr %i.ai, align 8, !dbg !952, !alias.scope !912
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i8 0, i64 16, i1 false), !dbg !952, !alias.scope !912
  br label %_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTyyEmE10init_frontCs2mZqlW55729_12polars_utils.exit.i, !dbg !953

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.az, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 232, !dbg !950
  %.sroa.013.0.i.i = load ptr, ptr %i.ar, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 232, !dbg !950
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.as, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 232, !dbg !950
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.at, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.2, i64 232, !dbg !950
  %.sroa.013.0.i.i.3 = load ptr, ptr %i.au, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.3, i64 232, !dbg !950
  %.sroa.013.0.i.i.4 = load ptr, ptr %i.av, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.4, i64 232, !dbg !950
  %.sroa.013.0.i.i.5 = load ptr, ptr %i.aw, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.5, i64 232, !dbg !950
  %.sroa.013.0.i.i.6 = load ptr, ptr %i.ax, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.6, i64 232, !dbg !950
  %i.az = add i64 %.sroa.011.016.i.i, -8, !dbg !951 ; 2 uses
  %.sroa.013.0.i.i.7 = load ptr, ptr %i.ay, align 8, !dbg !948, !noalias !913, !nonnull !60, !noundef !60 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0, !dbg !949
  br i1 %i.ba, label %._crit_edge.i.i, label %.lr.ph.i.i2, !dbg !949

_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTyyEmE10init_frontCs2mZqlW55729_12polars_utils.exit.i: ; preds = %._crit_edge.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !954, !noalias !914
  invoke void @_RINvMsj_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTyyEmNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ai)
          to label %.noexc.i.i unwind label %bb.i, !dbg !955, !noalias !919

.noexc.i.i:                                       ; preds = %_RNvMsc_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTyyEmE10init_frontCs2mZqlW55729_12polars_utils.exit.i
  %i.bb = load ptr, ptr %i.a, align 8, !dbg !956, !noalias !914, !noundef !60
  %.not.i.i.i = icmp eq ptr %i.bb, null, !dbg !956
  br i1 %.not.i.i.i, label %bb.h, label %_RINvMsb_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTyyEmE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs2mZqlW55729_12polars_utils.exit, !dbg !957, !prof !126

bb.h:                                             ; preds = %.noexc.i.i
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
          to label %.noexc1.i.i unwind label %bb.i, !dbg !958, !noalias !920
end_hunk_0
