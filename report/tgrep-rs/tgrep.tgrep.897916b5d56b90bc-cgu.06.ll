Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.06?download=true
inline.NumInlined: 852
inline.NumDeleted: 469
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0
@2 = private unnamed_addr constant [53 x i8] c"assertion failed: edge.height == self.node.height - 1", align 1
@3 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00#\04\00\00\09\00\00\00" }>, align 8
@4 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00E\05\00\00$\00\00\00" }>, align 8
@5 = private unnamed_addr constant [114 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/str.rs\00", align 1
@6 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"q\00\00\00\00\00\00\00\CA\00\00\00\16\00\00\00" }>, align 8
@7 = private unnamed_addr constant [53 x i8] c"attempt to join into collection with len > usize::MAX", align 1
@8 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @5, [16 x i8] c"q\00\00\00\00\00\00\00\B0\00\00\00\0A\00\00\00" }>, align 8
@9 = private unnamed_addr constant [40 x i8] c"assertion failed: src.len() == dst.len()", align 1
@10 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\9A\07\00\00\05\00\00\00" }>, align 8
@11 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXs17_NtB4_5implsyNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@12 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXs1a_NtB4_5implsjNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@13 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deINtNvXsh_NtB4_5implsINtNtCsgCecv3eZDcN_5alloc3vec3VecpENtB4_11Deserialize11deserialize10VecVisitorNtNtCsbNLsQi0JuJ4_5tgrep6search14FileMatchStatsENtB4_8Expected3fmtB2d_ }>, align 8
@14 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNtB4_5impls11BoolVisitorNtB4_8Expected3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@15 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNtB4_5impls13StringVisitorNtB4_8Expected3fmtCsbNLsQi0JuJ4_5tgrep }>, align 8
@16 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXNvNtCsbNLsQi0JuJ4_5tgrep6searchs_1__NtBG_14FileMatchStatsNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@17 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXs_NtCs4ZeZeX9PAiK_10serde_core2deNtNvXNvNtCsbNLsQi0JuJ4_5tgrep6status1__NtBG_12StatusResultNtB4_11Deserialize11deserialize9___VisitorNtB4_8Expected3fmtBI_ }>, align 8
@18 = private unnamed_addr constant [43 x i8] c"serialize_value called before serialize_key", align 1
@19 = private unnamed_addr constant [105 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/serde_json-1.0.149/src/value/ser.rs\00", align 1
@20 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @19, [16 x i8] c"h\00\00\00\00\00\00\00\AA\01\00\00\1F\00\00\00" }>, align 8
@21 = private unnamed_addr constant [138 x i8] c"/home/opt-bench/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/library/alloc/src/collections/btree/map/entry.rs\00", align 1
@22 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @21, [16 x i8] c"\89\00\00\00\00\00\00\00\D1\01\00\00.\00\00\00" }>, align 8
@23 = private unnamed_addr constant [9 x i8] c"mid > len", align 1
@24 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\00\05\00\00#\00\00\00" }>, align 8
@25 = private unnamed_addr constant [32 x i8] c"assertion failed: idx < CAPACITY", align 1
@26 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\B0\02\00\00\09\00\00\00" }>, align 8
@27 = private unnamed_addr constant [48 x i8] c"assertion failed: edge.height == self.height - 1", align 1
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\C9\02\00\00\09\00\00\00" }>, align 8
@29 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @0, [16 x i8] c"\84\00\00\00\00\00\00\00\CD\02\00\00\09\00\00\00" }>, align 8
@30 = private unnamed_addr constant [58 x i8] c"!Using external merge sort (arena \C0\15 MB before spilling)\0A\00", align 1
@31 = private unnamed_addr constant [6 x i8] c"memory", align 1
@32 = private unnamed_addr constant [8 x i8] c"external", align 1
@33 = private unnamed_addr constant [41 x i8] c"\0BIndexed in \C5 \00\00p\01\00\08s using \C0\0A strategy\0A\00", align 1
@34 = private unnamed_addr constant [58 x i8] c"\0BIndexed in \C5 \00\00p\01\00\08s using \C0\17 strategy (peak memory \C0\02)\0A\00", align 1
@35 = private unnamed_addr constant [4 x i8] c"\C0\01\0A\00", align 1
@36 = private unnamed_addr constant [72 x i8] c"\C0\0D text files (\C0\11 binary skipped, \C0\0C too large, \C0\0C errors) in \C1 \00\00p\03ms\0A\00", align 1
@37 = private unnamed_addr constant [11 x i8] c"PoisonError", align 1

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5valueNtB6_5Value3getReECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = call noundef align 8 ptr @_RNvXs1_NtNtCs6MoqnCnVQOT_10serde_json5value5indexReNtB5_5Index10index_intoCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.e = insertvalue { ptr, i64 } %i.d, i64 0, 1
  ret { ptr, i64 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringbNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringbEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjINtNtBc_3vec3VecTjjEENtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 362
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedjNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 3 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i16 0, ptr %i.b, align 2
  %i.c = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 0, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 626
  store i16 0, ptr %i.c, align 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  store ptr %0, ptr %i.d, align 8
  %i.e = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.a, ptr %i.f, align 8, !noalias !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 624
  store i16 0, ptr %i.g, align 8, !noalias !25
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.e, 1
  ret { ptr, i64 } %i.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 728, i64 noundef 8) #28
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvMs9_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringbNtB1a_8InternalE12new_internalNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep(ptr noundef nonnull %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringbEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep() ; 6 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 274
  store i16 0, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  store ptr %0, ptr %i.c, align 8
  %i.d = add i64 %1, 1                            ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !noalias !30
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 0, ptr %i.e, align 8, !noalias !31
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.a, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.d, 1
  ret { ptr, i64 } %i.g

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 384, i64 noundef 8) #28
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.0.i.sroa.4 = alloca [48 x i8], align 8   ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.458 = alloca [48 x i8], align 8          ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 12 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.750 = alloca [48 x i8], align 8          ; 5 uses
  %i.m = alloca [32 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7 = alloca [48 x i8], align 8            ; 5 uses
  %.sroa.7276 = alloca [48 x i8], align 8         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.458)
  %i.o = load ptr, ptr %1, align 8, !alias.scope !130, !nonnull !6, !noundef !6 ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 626 ; 4 uses
  %i.q = load i16, ptr %i.p, align 2, !noalias !131, !noundef !6 ; 3 uses
  %i.r = icmp ugt i16 %i.q, 10
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !130, !noundef !6 ; 6 uses
  %i.u = icmp ult i64 %i.t, 5
  br i1 %i.u, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.v = zext nneg i16 %i.q to i64                ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !133, !noundef !6 ; 6 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.z, %i.v
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.y ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %i.z
  %i.ac = sub nsw i64 %i.v, %i.y                  ; 2 uses
  %i.ad = mul nuw nsw i64 %i.ac, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ad, i1 false), !alias.scope !135, !noalias !136
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.z
  %i.ag = shl nuw nsw i64 %i.ac, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ae, i64 %i.ag, i1 false), !alias.scope !137, !noalias !136
  br label %.thread

bb.f:                                             ; preds = %bb.b
  switch i64 %i.t, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = add i64 %i.t, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ah, %bb.g ], [ %i.t, %bb.b ], [ %i.t, %bb.f ] ; 9 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.t, %bb.f ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !130, !noundef !6 ; 4 uses
  %i.ak = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i unwind label %bb.o, !noalias !131 ; 8 uses

.noexc.i:                                         ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr null, ptr %i.al, align 8, !noalias !138
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 626 ; 2 uses
  store i16 0, ptr %i.am, align 2, !noalias !138
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.an = load i16, ptr %i.p, align 2, !noalias !140, !noundef !6
  %i.ao = zext i16 %i.an to i64
  %i.ap = xor i64 %.sroa.013.0.i, -1
  %i.aq = add nsw i64 %i.ao, %i.ap                ; 5 uses
  %i.ar = trunc i64 %i.aq to i16
  store i16 %i.ar, ptr %i.am, align 2, !alias.scope !139, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !140
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 360 ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !140
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false), !noalias !140
  %i.av = icmp ult i64 %i.aq, 12
  br i1 %i.av, label %bb.p, label %bb.j, !prof !7

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.aq, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %bb.l unwind label %bb.k, !noalias !140

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g) #29
          to label %bb.n unwind label %bb.m, !noalias !140

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !140
  unreachable

bb.n:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #29
          to label %.thread.i.i unwind label %bb.m, !noalias !140

.thread.i.i:                                      ; preds = %bb.n
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef 632, i64 noundef 8) #28, !noalias !138
  br label %bb.t

bb.o:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.p:                                             ; preds = %.noexc.i
  %i.az = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  %i.bc = mul nuw nsw i64 %i.aq, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !141, !noalias !142
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.az
  %i.be = shl nuw nsw i64 %i.aq, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.ak, ptr nonnull readonly align 8 %i.bd, i64 %i.be, i1 false), !alias.scope !143, !noalias !142
  %i.bf = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bf, ptr %i.p, align 2, !noalias !140
  %.sroa.057.0.copyload = load i64, ptr %i.h, align 8, !noalias !131 ; 3 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.458.0..sroa_idx, i64 16, i1 false), !noalias !131
  %.sroa.458.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.458, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.458.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !140
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.aj ; 3 uses
  %spec.select31.i = select i1 %.sroa.09.0.i, ptr %i.ak, ptr %i.o ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 626 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !noalias !144, !noundef !6 ; 2 uses
  %i.bi = zext i16 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %spec.select31.i, i64 360 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bi
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %.sroa.510.0.i ; 3 uses
  br i1 %.not.i16.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.bl = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bm = getelementptr inbounds nuw [24 x i8], ptr %i.bj, i64 %i.bl
  %i.bn = sub nuw nsw i64 %i.bi, %.sroa.510.0.i   ; 2 uses
  %i.bo = mul nuw nsw i64 %i.bn, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr nonnull align 8 %i.bk, i64 %i.bo, i1 false), !alias.scope !146, !noalias !144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %i.bl
  %i.br = shl nuw nsw i64 %i.bn, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bq, ptr nonnull align 8 %i.bp, i64 %i.br, i1 false), !alias.scope !147, !noalias !144
  br label %bb.v

bb.s:                                             ; preds = %bb.u, %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !148
  unreachable

.thread:                                          ; preds = %bb.d, %bb.e
  %6 = add nuw nsw i16 %i.q, 1
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !149, !noalias !136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %6, ptr %i.p, align 2, !noalias !136
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !133, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.x

bb.t:                                             ; preds = %bb.o, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.aw, %.thread.i.i ], [ %i.ay, %bb.o ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m) #29
          to label %bb.u unwind label %bb.s, !noalias !150

bb.u:                                             ; preds = %bb.t
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #29
          to label %.critedge20 unwind label %bb.s, !noalias !148

bb.v:                                             ; preds = %bb.q, %bb.r
  %7 = add i16 %i.bh, 1
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !151, !noalias !144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.bg, align 2, !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.458, i64 48, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.458)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.not = icmp eq i64 %.sroa.057.0.copyload, -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7276)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !153, !noundef !6 ; 2 uses
  %.not.i177 = icmp eq ptr %i.by, null
  br i1 %.not.i177, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ca = icmp eq i64 %i.aj, 0
  %.sroa.7276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7276.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16 ; 5 uses
  br label %bb.an

bb.x:                                             ; preds = %.thread, %bb.v
  %.sink.i68 = phi i64 [ %i.y, %.thread ], [ %.sroa.510.0.i, %bb.v ]
  %.sink49.i67 = phi i64 [ %i.bv, %.thread ], [ %spec.select.i, %bb.v ]
  %.sink50.i66 = phi ptr [ %i.o, %.thread ], [ %spec.select31.i, %bb.v ]
  store ptr %.sink50.i66, ptr %0, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink49.i67, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i68, ptr %i.cc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  br label %bb.bx

._crit_edge:                                      ; preds = %bb.bw, %bb.w
  %.sroa.0.0 = phi i64 [ %.sroa.057.0.copyload, %bb.w ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %.lcssa169 = phi i64 [ 0, %bb.w ], [ %i.dg, %bb.bw ] ; 2 uses
  %.lcssa161 = phi ptr [ %i.ak, %bb.w ], [ %i.gb, %bb.bw ] ; 4 uses
  %.lcssa153 = phi i64 [ %i.aj, %bb.w ], [ %i.dg, %bb.bw ]
  %.lcssa = phi ptr [ %i.o, %bb.w ], [ %i.db, %bb.bw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, i64 48, i1 false)
  store i64 %.sroa.0.0, ptr %i.j, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa153, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa161, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa169, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !154, !noundef !6 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i23 = icmp eq ptr %i.cd, null
  br i1 %.not.i23, label %bb.y, label %bb.aa, !prof !5

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %bb.z unwind label %bb.ak, !noalias !154

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !155, !noalias !154, !noundef !6 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !156 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 352
  store ptr null, ptr %i.ch, align 8, !noalias !156
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 626 ; 3 uses
  store i16 0, ptr %i.ci, align 2, !noalias !156
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 632 ; 2 uses
  store ptr %i.cd, ptr %i.cj, align 8, !noalias !156
  %i.ck = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ck, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !5

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.ac unwind label %bb.ad, !noalias !156

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 728, i64 noundef 8) #28, !noalias !156
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 352
  store ptr %i.cg, ptr %i.cn, align 8, !noalias !157
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 624
  store i16 0, ptr %i.co, align 8, !noalias !158
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !155, !noalias !154
  store i64 %i.ck, ptr %i.ce, align 8, !alias.scope !155, !noalias !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !154
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i64 32, i1 false)
  %i.cq = icmp eq i64 %.lcssa169, %i.cf
  br i1 %i.cq, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.cr = phi ptr [ @27, %bb.af ], [ @25, %bb.ag ]
  %i.cs = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.ct = phi ptr [ @28, %bb.af ], [ @29, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ct) #27
          to label %.cont.i.i unwind label %bb.ah, !noalias !159

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i16, ptr %i.ci, align 2, !noalias !159, !noundef !6 ; 3 uses
  %i.cv = icmp ult i16 %i.cu, 11
  br i1 %i.cv, label %bb.by, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.d) #29
          to label %bb.aj unwind label %bb.ai, !noalias !160

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !161
  unreachable

bb.aj:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %.critedge20 unwind label %bb.ai, !noalias !161

bb.ak:                                            ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.j) #29
          to label %bb.am unwind label %bb.al

bb.al:                                            ; preds = %bb.am, %bb.ak
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.da = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.da) #29
          to label %.critedge20 unwind label %bb.al

bb.an:                                            ; preds = %.lr.ph, %bb.bw
  %.sroa.0.1 = phi i64 [ %.sroa.057.0.copyload, %.lr.ph ], [ %.sroa.0.i.sroa.0.0.copyload, %bb.bw ]
  %i.db = phi ptr [ %i.by, %.lr.ph ], [ %i.ky, %bb.bw ] ; 26 uses
  %i.dc = phi ptr [ %i.o, %.lr.ph ], [ %i.db, %bb.bw ]
  %i.dd = phi i64 [ %i.aj, %.lr.ph ], [ %i.dg, %bb.bw ]
  %i.de = phi ptr [ %i.ak, %.lr.ph ], [ %i.gb, %bb.bw ] ; 2 uses
  %i.df = phi i1 [ %i.ca, %.lr.ph ], [ true, %bb.bw ]
  %i.dg = add i64 %i.dd, 1                        ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 624
  %i.di = load i16, ptr %i.dh, align 8, !noalias !153 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0.1, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7276, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4)
  br i1 %i.df, label %bb.ap, label %bb.ao, !prof !8

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162

bb.ap:                                            ; preds = %bb.an
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 626 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !162, !noundef !6 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.as, label %bb.ar

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.az, %bb.ao
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.aq:                                            ; preds = %bb.ao
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.dn = icmp ult i16 %i.di, 5
  br i1 %i.dn, label %bb.az, label %bb.aw

bb.as:                                            ; preds = %bb.ap
  %i.do = zext nneg i16 %i.dl to i64              ; 5 uses
  %i.dp = add nuw nsw i16 %i.dl, 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 7 uses
  %.not.i.i32.not = icmp ult i16 %i.di, %i.dl
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dj ; 3 uses
  br i1 %.not.i.i32.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !163
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dt, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dq, i64 %i.dr
  %i.dv = sub nuw nsw i64 %i.do, %i.dj            ; 2 uses
  %i.dw = mul nuw nsw i64 %i.dv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.du, ptr nonnull align 8 %i.ds, i64 %i.dw, i1 false), !alias.scope !164, !noalias !165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !163
  %i.dx = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  %i.dy = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dr
  %i.dz = shl nuw nsw i64 %i.dv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dy, ptr nonnull align 8 %i.dx, i64 %i.dz, i1 false), !alias.scope !166, !noalias !165
  %i.ea = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ea, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7276.24..sroa_idx, i64 32, i1 false)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.db, i64 632 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = sub nuw nsw i64 %i.do, %i.dj
  %i.eg = shl nuw nsw i64 %i.ef, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr nonnull align 8 %i.ec, i64 %i.eg, i1 false), !alias.scope !167, !noalias !165
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au
  %i.eh = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ei = add nuw nsw i64 %i.do, 2                ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.dr
  store ptr %i.de, ptr %i.ej, align 8, !alias.scope !167, !noalias !165
  store i16 %i.dp, ptr %i.dk, align 2, !noalias !165
  %i.ek = icmp samesign ult i64 %i.dr, %i.ei
  br i1 %i.ek, label %.lr.ph.i.i.i.preheader, label %.thread73

.lr.ph.i.i.i.preheader:                           ; preds = %bb.av
  %i.el = add nuw nsw i64 %i.do, 1
  %i.em = sub nsw i64 %i.el, %i.dj
  %i.en = sub nsw i64 %i.do, %i.dj
  %xtraiter518 = and i64 %i.em, 3                 ; 2 uses
  %lcmp.mod519.not = icmp eq i64 %xtraiter518, 0
  br i1 %lcmp.mod519.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.eo = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.ep, %.lr.ph.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter520 = phi i64 [ %prol.iter520.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.ep = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.eq = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.eq)
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %.sroa.0.06.i.i.i.prol
  %i.es = load ptr, ptr %i.er, align 8, !noalias !165, !nonnull !6, !noundef !6 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.db, ptr %i.et, align 8, !noalias !165
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 624
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !165
  %prol.iter520.next = add i64 %prol.iter520, 1   ; 2 uses
  %prol.iter520.cmp.not = icmp eq i64 %prol.iter520.next, %xtraiter518
  br i1 %prol.iter520.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !98

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.i.prol ]
  %i.ew = icmp ult i64 %i.en, 3
  br i1 %i.ew, label %.thread73, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ex = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ey = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.ez = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  %i.fa = getelementptr inbounds nuw i8, ptr %i.db, i64 632
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.ft, %.lr.ph.i.i.i ] ; 7 uses
  %i.fb = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %.sroa.0.06.i.i.i
  %i.fd = load ptr, ptr %i.fc, align 8, !noalias !165, !nonnull !6, !noundef !6 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 352
  store ptr %i.db, ptr %i.fe, align 8, !noalias !165
  %i.ff = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 624
  store i16 %i.ff, ptr %i.fg, align 8, !noalias !165
  %i.fh = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fb
  %i.fj = load ptr, ptr %i.fi, align 8, !noalias !165, !nonnull !6, !noundef !6 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 352
  store ptr %i.db, ptr %i.fk, align 8, !noalias !165
  %i.fl = trunc nuw nsw i64 %i.fb to i16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 624
  store i16 %i.fl, ptr %i.fm, align 8, !noalias !165
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.fh
  %i.fp = load ptr, ptr %i.fo, align 8, !noalias !165, !nonnull !6, !noundef !6 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 352
  store ptr %i.db, ptr %i.fq, align 8, !noalias !165
  %i.fr = trunc nuw nsw i64 %i.fh to i16
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 624
  store i16 %i.fr, ptr %i.fs, align 8, !noalias !165
  %i.ft = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fu = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.fn
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !165, !nonnull !6, !noundef !6 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 352
  store ptr %i.db, ptr %i.fx, align 8, !noalias !165
  %i.fy = trunc nuw nsw i64 %i.fn to i16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 624
  store i16 %i.fy, ptr %i.fz, align 8, !noalias !165
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ft, %i.ei
  br i1 %exitcond.not.i.i.i.3, label %.thread73, label %.lr.ph.i.i.i

bb.aw:                                            ; preds = %bb.ar
  switch i16 %i.di, label %bb.ax [
    i16 5, label %bb.az
    i16 6, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  %i.ga = add nsw i64 %i.dj, -7
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.ar
  %.sroa.06.0.i = phi i64 [ 5, %bb.ay ], [ 6, %bb.ax ], [ 4, %bb.ar ], [ 5, %bb.aw ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ay ], [ %i.ga, %bb.ax ], [ %i.dj, %bb.ar ], [ 5, %bb.aw ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ay ], [ true, %bb.ax ], [ false, %bb.ar ], [ false, %bb.aw ]
  %i.gb = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !162 ; 14 uses

.noexc.i29:                                       ; preds = %bb.az
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 352
  store ptr null, ptr %i.gc, align 8, !noalias !168
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 626 ; 3 uses
  store i16 0, ptr %i.gd, align 2, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !168
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.ge = load i16, ptr %i.dk, align 2, !noalias !170, !noundef !6
  %i.gf = zext i16 %i.ge to i64
  %i.gg = xor i64 %.sroa.06.0.i, -1
  %i.gh = add nsw i64 %i.gf, %i.gg                ; 5 uses
  %i.gi = trunc i64 %i.gh to i16
  store i16 %i.gi, ptr %i.gd, align 2, !alias.scope !169, !noalias !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !170
  %i.gj = getelementptr inbounds nuw i8, ptr %i.db, i64 360 ; 2 uses
  %i.gk = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.gk, i64 24, i1 false), !noalias !170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !170
  %i.gl = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.gl, i64 32, i1 false), !noalias !170
  %i.gm = icmp ult i64 %i.gh, 12
  br i1 %i.gm, label %bb.bf, label %bb.ba, !prof !7

bb.ba:                                            ; preds = %.noexc.i29
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gh, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %bb.bc unwind label %bb.bb, !noalias !170

bb.bb:                                            ; preds = %bb.ba
  %i.gn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #29
          to label %bb.be unwind label %bb.bd, !noalias !170

bb.bc:                                            ; preds = %bb.ba
  unreachable

bb.bd:                                            ; preds = %bb.be, %bb.bb
  %i.go = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !170
  unreachable

bb.be:                                            ; preds = %bb.bb
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #29
          to label %bb.bo unwind label %bb.bd, !noalias !170

bb.bf:                                            ; preds = %.noexc.i29
  %i.gp = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gq = getelementptr inbounds nuw [24 x i8], ptr %i.gj, i64 %i.gp
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 360
  %i.gs = mul nuw nsw i64 %i.gh, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr nonnull readonly align 8 %i.gq, i64 %i.gs, i1 false), !alias.scope !171, !noalias !172
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.db, i64 %i.gp
  %i.gu = shl nuw nsw i64 %i.gh, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gb, ptr nonnull readonly align 8 %i.gt, i64 %i.gu, i1 false), !alias.scope !173, !noalias !172
  %i.gv = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gv, ptr %i.dk, align 2, !noalias !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !170
  %i.gw = load i16, ptr %i.gd, align 2, !noalias !168, !noundef !6 ; 3 uses
  %i.gx = zext i16 %i.gw to i64
end_hunk_0
begin_hunk_1_@_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs6MoqnCnVQOT_10serde_json5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3M_11VacantEntryB1D_B1Y_E12insert_entry0ECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %i.iu
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.sroa.5.0.i
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %i.jh = shl nuw nsw i64 %i.iy, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jg, ptr nonnull align 8 %i.je, i64 %i.jh, i1 false), !alias.scope !182, !noalias !179
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ji = getelementptr inbounds nuw i8, ptr %spec.select.i31, i64 632 ; 6 uses
  %i.jj = add nuw nsw i64 %i.ir, 2                ; 2 uses
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.iu
  store ptr %i.de, ptr %i.jk, align 8, !alias.scope !182, !noalias !179
  store i16 %i.is, ptr %i.ip, align 2, !noalias !179
  %i.jl = icmp samesign ult i64 %i.iu, %i.jj
  br i1 %i.jl, label %.lr.ph.i.i11.i.preheader, label %.loopexit

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bs
  %i.jm = add nuw nsw i64 %i.ir, 1
  %i.jn = sub nsw i64 %i.jm, %.sroa.5.0.i
  %i.jo = sub nsw i64 %i.ir, %.sroa.5.0.i
  %xtraiter516 = and i64 %i.jn, 3                 ; 2 uses
  %lcmp.mod517.not = icmp eq i64 %xtraiter516, 0
  br i1 %lcmp.mod517.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jp, %.lr.ph.i.i11.i.prol ], [ %i.iu, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jp = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.jq = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.jq)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i.prol
  %i.js = load ptr, ptr %i.jr, align 8, !noalias !179, !nonnull !6, !noundef !6 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 352
  store ptr %spec.select.i31, ptr %i.jt, align 8, !noalias !179
  %i.ju = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 624
  store i16 %i.ju, ptr %i.jv, align 8, !noalias !179
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter516
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !129

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.iu, %.lr.ph.i.i11.i.preheader ], [ %i.jp, %.lr.ph.i.i11.i.prol ]
  %i.jw = icmp ult i64 %i.jo, 3
  br i1 %i.jw, label %.loopexit, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kp, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jx = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %.sroa.0.06.i.i12.i
  %i.jz = load ptr, ptr %i.jy, align 8, !noalias !179, !nonnull !6, !noundef !6 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 352
  store ptr %spec.select.i31, ptr %i.ka, align 8, !noalias !179
  %i.kb = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 624
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !179
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.jx
  %i.kf = load ptr, ptr %i.ke, align 8, !noalias !179, !nonnull !6, !noundef !6 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 352
  store ptr %spec.select.i31, ptr %i.kg, align 8, !noalias !179
  %i.kh = trunc nuw nsw i64 %i.jx to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kf, i64 624
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !179
  %i.kj = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kd
  %i.kl = load ptr, ptr %i.kk, align 8, !noalias !179, !nonnull !6, !noundef !6 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 352
  store ptr %spec.select.i31, ptr %i.km, align 8, !noalias !179
  %i.kn = trunc nuw nsw i64 %i.kd to i16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 624
  store i16 %i.kn, ptr %i.ko, align 8, !noalias !179
  %i.kp = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.kq = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.kq)
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %i.kj
  %i.ks = load ptr, ptr %i.kr, align 8, !noalias !179, !nonnull !6, !noundef !6 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 352
  store ptr %spec.select.i31, ptr %i.kt, align 8, !noalias !179
  %i.ku = trunc nuw nsw i64 %i.kj to i16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ks, i64 624
  store i16 %i.ku, ptr %i.kv, align 8, !noalias !179
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kp, %i.jj
  br i1 %exitcond.not.i.i13.i.3, label %.loopexit, label %.lr.ph.i.i11.i

bb.bt:                                            ; preds = %bb.bv, %bb.bu
  %i.kw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !183
  unreachable

bb.bu:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bo
  %.pn.ph.i27 = phi { ptr, i32 } [ %.pn.i.i, %bb.bo ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #29
          to label %bb.bv unwind label %bb.bt, !noalias !184

bb.bv:                                            ; preds = %bb.bu
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #29
          to label %.critedge20 unwind label %bb.bt, !noalias !183

.thread73:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.loopexit78

.loopexit:                                        ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4, i64 48, i1 false), !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not16 = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload, -1
  br i1 %.not16, label %.loopexit78, label %bb.bw

bb.bw:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7276, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.750, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  %i.kx = getelementptr inbounds nuw i8, ptr %i.db, i64 352
  %i.ky = load ptr, ptr %i.kx, align 8, !noalias !153, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.ky, null
  br i1 %.not.i, label %._crit_edge, label %bb.an

.loopexit78:                                      ; preds = %.loopexit, %.thread73
  store ptr %spec.select31.i, ptr %0, align 8
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.kz, align 8
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.la, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.750)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit78, %bb.x, %bb.by
  ret void

bb.by:                                            ; preds = %bb.ag
  %i.lb = zext nneg i16 %i.cu to i64              ; 3 uses
  %i.lc = add nuw nsw i16 %i.cu, 1
  store i16 %i.lc, ptr %i.ci, align 2, !noalias !159
  %i.ld = getelementptr inbounds nuw i8, ptr %i.cg, i64 360
  %i.le = getelementptr inbounds nuw [24 x i8], ptr %i.ld, i64 %i.lb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.le, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false)
  %i.lf = getelementptr inbounds nuw [32 x i8], ptr %i.cg, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.7276, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lf, ptr noundef nonnull align 8 dereferenceable(32) %i.lg, i64 32, i1 false)
  %i.lh = add nuw nsw i64 %i.lb, 1                ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %i.lh
  store ptr %.lcssa161, ptr %i.li, align 8, !noalias !159
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 352
  store ptr %i.cg, ptr %i.lj, align 8, !noalias !159
  %i.lk = trunc nuw nsw i64 %i.lh to i16
  %i.ll = getelementptr inbounds nuw i8, ptr %.lcssa161, i64 624
  store i16 %i.lk, ptr %i.ll, align 8, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %spec.select31.i, ptr %0, align 8
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %spec.select.i, ptr %i.lm, align 8
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.510.0.i, ptr %i.ln, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7276)
  br label %bb.bx

.critedge20:                                      ; preds = %bb.bv, %bb.am, %bb.aj, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i27, %bb.bv ], [ %i.cy, %bb.am ], [ %i.cw, %bb.aj ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_3vec3VecTjjEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB37_11VacantEntryjB1E_E12insert_entry0ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, ptr nofree noundef nonnull readonly align 8 captures(none) %4, ptr nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0.i.sroa.5 = alloca [16 x i8], align 8   ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4.i.sroa.4 = alloca [16 x i8], align 8   ; 4 uses
  %i.g = alloca [64 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.547 = alloca i64, align 8                ; 8 uses
  %.sroa.749 = alloca [16 x i8], align 8          ; 5 uses
  %.sroa.13 = alloca i64, align 8                 ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.5 = alloca i64, align 8                  ; 6 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 5 uses
  %.sroa.14 = alloca i64, align 8                 ; 5 uses
  %.sroa.16 = alloca [16 x i8], align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.sroa.4)
  %i.j = load ptr, ptr %1, align 8, !alias.scope !277, !nonnull !6, !noundef !6 ; 11 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 362 ; 4 uses
  %i.l = load i16, ptr %i.k, align 2, !noalias !278, !noundef !6 ; 3 uses
  %i.m = icmp ugt i16 %i.l, 10
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !277, !noundef !6 ; 6 uses
  %i.p = icmp ult i64 %i.o, 5
  br i1 %i.p, label %bb.i, label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.q = zext nneg i16 %i.l to i64                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !280, !noundef !6 ; 6 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %.not.i.i = icmp ugt i64 %i.u, %i.q
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.t ; 3 uses
  br i1 %.not.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %2, ptr %i.v, align 8, !alias.scope !281, !noalias !282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.u
  %i.x = sub nsw i64 %i.q, %i.t                   ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull align 8 %i.v, i64 %i.y, i1 false), !alias.scope !281, !noalias !282
  store i64 %2, ptr %i.v, align 8, !alias.scope !281, !noalias !282
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.t
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.u
  %i.ac = mul nuw nsw i64 %i.x, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %i.aa, i64 %i.ac, i1 false), !alias.scope !284, !noalias !282
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.g [
    i64 5, label %bb.i
    i64 6, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = add i64 %i.o, -7
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.h ], [ true, %bb.g ], [ false, %bb.b ], [ false, %bb.f ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.h ], [ %i.ad, %bb.g ], [ %i.o, %bb.b ], [ %i.o, %bb.f ] ; 7 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.h ], [ 6, %bb.g ], [ 4, %bb.b ], [ %i.o, %bb.f ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !277, !noundef !6 ; 2 uses
  %i.ag = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i unwind label %bb.n, !noalias !278 ; 7 uses

.noexc.i:                                         ; preds = %bb.i
  store ptr null, ptr %i.ag, align 8, !noalias !285
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 362 ; 2 uses
  store i16 0, ptr %i.ah, align 2, !noalias !285
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.ai = load i16, ptr %i.k, align 2, !noalias !287, !noundef !6
  %i.aj = zext i16 %i.ai to i64
  %i.ak = xor i64 %.sroa.013.0.i, -1
  %i.al = add nsw i64 %i.aj, %i.ak                ; 5 uses
  %i.am = trunc i64 %i.al to i16
  store i16 %i.am, ptr %i.ah, align 2, !alias.scope !286, !noalias !285
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.013.0.i
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !287, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !287
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %.sroa.013.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.ar, i64 24, i1 false), !noalias !287
  %i.as = icmp ult i64 %i.al, 12
  br i1 %i.as, label %bb.o, label %bb.j, !prof !7

bb.j:                                             ; preds = %.noexc.i
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.al, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %bb.l unwind label %bb.k, !noalias !287

bb.k:                                             ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %.thread.i.i unwind label %bb.m, !noalias !287

bb.l:                                             ; preds = %bb.j
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !287
  unreachable

.thread.i.i:                                      ; preds = %bb.k
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef 368, i64 noundef 8) #28, !noalias !285
  br label %bb.u

bb.n:                                             ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %.noexc.i
  %i.aw = add nuw nsw i64 %.sroa.013.0.i, 1       ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.az = shl nuw nsw i64 %i.al, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr nonnull readonly align 8 %i.ax, i64 %i.az, i1 false), !alias.scope !288, !noalias !289
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.bc = mul nuw nsw i64 %i.al, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull readonly align 8 %i.ba, i64 %i.bc, i1 false), !alias.scope !290, !noalias !289
  %i.bd = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.bd, ptr %i.k, align 2, !noalias !287
  %.sroa.4.i.sroa.0.0.copyload = load i64, ptr %i.e, align 8, !noalias !278
  %.sroa.4.i.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !278
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !287
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.af
  %spec.select30.i = select i1 %.sroa.09.0.i, ptr %i.ag, ptr %i.j ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 362 ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !noalias !291, !noundef !6 ; 2 uses
  %i.bg = zext i16 %i.bf to i64                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 8 ; 2 uses
  %.not.i16.not.i = icmp ult i64 %.sroa.510.0.i, %i.bg
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.sroa.510.0.i ; 2 uses
  br i1 %.not.i16.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bj = add nuw nsw i64 %.sroa.510.0.i, 1       ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.bj
  %i.bl = sub nuw nsw i64 %i.bg, %.sroa.510.0.i   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr nonnull align 8 %i.bi, i64 %i.bm, i1 false), !alias.scope !293, !noalias !291
  %i.bn = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.sroa.510.0.i
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bj
  %i.bq = mul nuw nsw i64 %i.bl, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bp, ptr nonnull align 8 %i.bo, i64 %i.bq, i1 false), !alias.scope !294, !noalias !291
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 %2, ptr %i.bi, align 8, !alias.scope !293, !noalias !291
  %i.br = getelementptr inbounds nuw i8, ptr %spec.select30.i, i64 96
  %6 = add i16 %i.bf, 1
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %i.br, i64 %.sroa.510.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !295, !noalias !291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i16 %6, ptr %i.be, align 2, !noalias !291
  store i64 %.sroa.4.i.sroa.0.0.copyload, ptr %.sroa.5, align 8, !noalias !296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.i.sroa.4, i64 16, i1 false), !noalias !296
  br label %bb.v

bb.s:                                             ; preds = %bb.u
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !297
  unreachable

bb.t:                                             ; preds = %bb.e, %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %7 = add nuw nsw i16 %i.l, 1
  %i.bv = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !alias.scope !298, !noalias !282
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %7, ptr %i.k, align 2, !noalias !282
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !280, !noundef !6
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %.thread.i.i
  %.pn.ph.i = phi { ptr, i32 } [ %i.at, %.thread.i.i ], [ %i.av, %bb.n ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #29
          to label %.body unwind label %bb.s, !noalias !297

bb.v:                                             ; preds = %bb.t, %bb.r
  %.sroa.12.0 = phi ptr [ %i.ag, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sroa.10.0 = phi i64 [ %i.af, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sroa.033.0 = phi i64 [ %i.ap, %bb.r ], [ undef, %bb.t ] ; 2 uses
  %.sink54.i.sroa.phi = phi ptr [ %.sroa.14, %bb.r ], [ %.sroa.5, %bb.t ]
  %.sink53.i = phi i64 [ 0, %bb.r ], [ -1, %bb.t ]
  %.sink51.i = phi ptr [ %spec.select30.i, %bb.r ], [ %i.j, %bb.t ] ; 3 uses
  %.sink50.i = phi i64 [ %spec.select.i, %bb.r ], [ %i.bx, %bb.t ] ; 3 uses
  %.sink.i = phi i64 [ %.sroa.510.0.i, %bb.r ], [ %i.t, %bb.t ] ; 3 uses
  store i64 %.sink53.i, ptr %.sink54.i.sroa.phi, align 8, !alias.scope !276
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !10, !noundef !6 ; 3 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., -1
  br i1 %.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.56. = load i64, ptr %.sroa.14, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.by = load ptr, ptr %i.j, align 8, !noalias !299, !noundef !6 ; 2 uses
  %.not.i117 = icmp eq ptr %i.by, null
  br i1 %.not.i117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.w
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.0.i.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  br label %bb.al

bb.x:                                             ; preds = %bb.v
  store ptr %.sink51.i, ptr %0, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.cb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  br label %bb.bu

._crit_edge:                                      ; preds = %bb.bs, %bb.w
  %.sroa.13182.0 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %bb.w ], [ %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., %bb.bs ]
  %.lcssa110 = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.56., %bb.w ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.56., %bb.bs ] ; 2 uses
  %.sroa.11.0103.lcssa = phi ptr [ %.sroa.12.0, %bb.w ], [ %.sroa.11.0, %bb.bs ] ; 4 uses
  %i.cc = phi i64 [ %.sroa.033.0, %bb.w ], [ %.sroa.045.0, %bb.bs ] ; 2 uses
  %.lcssa89 = phi i64 [ %.sroa.10.0, %bb.w ], [ %i.db, %bb.bs ]
  %.lcssa82 = phi ptr [ %i.j, %bb.w ], [ %i.cx, %bb.bs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.02.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  store i64 %i.cc, ptr %i.g, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store i64 %.sroa.13182.0, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.lcssa82, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 %.lcssa89, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %.sroa.11.0103.lcssa, ptr %.sroa.65.0..sroa_idx, align 8
  %.sroa.76.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 %.lcssa110, ptr %.sroa.76.0..sroa_idx, align 8
  %.val = load ptr, ptr %4, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.cd = load ptr, ptr %.val, align 8, !noalias !300, !noundef !6 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.not.i19 = icmp eq ptr %i.cd, null
  br i1 %.not.i19, label %bb.y, label %bb.aa, !prof !5

bb.y:                                             ; preds = %._crit_edge
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #27
          to label %bb.z unwind label %bb.aj, !noalias !300

bb.z:                                             ; preds = %bb.y
  unreachable

bb.aa:                                            ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !301)
  %i.cf = load i64, ptr %i.ce, align 8, !alias.scope !301, !noalias !300, !noundef !6 ; 2 uses
  %i.cg = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i.i unwind label %bb.ae, !noalias !302 ; 9 uses

.noexc.i.i:                                       ; preds = %bb.aa
  store ptr null, ptr %i.cg, align 8, !noalias !302
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 362 ; 3 uses
  store i16 0, ptr %i.ch, align 2, !noalias !302
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 368 ; 2 uses
  store ptr %i.cd, ptr %i.ci, align 8, !noalias !302
  %i.cj = add i64 %i.cf, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.af, !prof !5

bb.ab:                                            ; preds = %.noexc.i.i
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.ac unwind label %bb.ad, !noalias !302

bb.ac:                                            ; preds = %bb.ab
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cg, i64 noundef 464, i64 noundef 8) #28, !noalias !302
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ae, %bb.ad
  tail call void @llvm.trap()
  unreachable

bb.af:                                            ; preds = %.noexc.i.i
  store ptr %i.cg, ptr %i.cd, align 8, !noalias !303
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 360
  store i16 0, ptr %i.cm, align 8, !noalias !304
  store ptr %i.cg, ptr %.val, align 8, !alias.scope !301, !noalias !300
  store i64 %i.cj, ptr %i.ce, align 8, !alias.scope !301, !noalias !300
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !300
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx, i64 24, i1 false)
  %i.cn = icmp eq i64 %.lcssa110, %i.cf
  br i1 %i.cn, label %bb.ag, label %.invoke.i.i, !prof !8

.invoke.i.i:                                      ; preds = %bb.ag, %bb.af
  %i.co = phi ptr [ @27, %bb.af ], [ @25, %bb.ag ]
  %i.cp = phi i64 [ 48, %bb.af ], [ 32, %bb.ag ]
  %i.cq = phi ptr [ @28, %bb.af ], [ @29, %bb.ag ]
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.co, i64 noundef %i.cp, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cq) #27
          to label %.cont.i.i unwind label %bb.ah, !noalias !305

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.cr = load i16, ptr %i.ch, align 2, !noalias !305, !noundef !6 ; 3 uses
  %i.cs = icmp ult i16 %i.cr, 11
  br i1 %i.cs, label %bb.bv, label %.invoke.i.i, !prof !8

bb.ah:                                            ; preds = %.invoke.i.i
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #29
          to label %.body unwind label %bb.ai, !noalias !300

bb.ai:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !300
  unreachable

bb.aj:                                            ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx) #29
          to label %.body unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.al:                                            ; preds = %.lr.ph, %bb.bs
  %.sroa.13182.1 = phi i64 [ %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8., %.lr.ph ], [ %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., %bb.bs ]
  %i.cx = phi ptr [ %i.by, %.lr.ph ], [ %i.kk, %bb.bs ] ; 24 uses
  %i.cy = phi ptr [ %i.j, %.lr.ph ], [ %i.cx, %bb.bs ]
  %i.cz = phi i64 [ %.sroa.10.0, %.lr.ph ], [ %i.db, %bb.bs ] ; 2 uses
  %.sroa.045.096119 = phi i64 [ %.sroa.033.0, %.lr.ph ], [ %.sroa.045.0, %bb.bs ] ; 4 uses
  %.sroa.11.0103118 = phi ptr [ %.sroa.12.0, %.lr.ph ], [ %.sroa.11.0, %bb.bs ] ; 2 uses
  %i.da = phi i64 [ %.sroa.14.0..sroa.14.0..sroa.14.0..sroa.14.56., %.lr.ph ], [ %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.56., %bb.bs ]
  %i.db = add i64 %i.cz, 1                        ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 360
  %i.dd = load i16, ptr %i.dc, align 8, !noalias !299 ; 4 uses
  %i.de = zext i16 %i.dd to i64                   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.13182.1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !306)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.5)
  %i.df = icmp eq i64 %i.da, %i.cz
  br i1 %i.df, label %bb.an, label %bb.am, !prof !8

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !307

bb.an:                                            ; preds = %bb.al
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 362 ; 4 uses
  %i.dh = load i16, ptr %i.dg, align 2, !noalias !307, !noundef !6 ; 5 uses
  %i.di = icmp ult i16 %i.dh, 11
  br i1 %i.di, label %bb.aq, label %bb.ap

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ax, %bb.am
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ao:                                            ; preds = %bb.am
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.dj = icmp ult i16 %i.dd, 5
  br i1 %i.dj, label %bb.ax, label %bb.au

bb.aq:                                            ; preds = %bb.an
  %i.dk = zext nneg i16 %i.dh to i64              ; 5 uses
  %i.dl = add nuw nsw i16 %i.dh, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.dn = add nuw nsw i64 %i.de, 1                ; 7 uses
  %.not.i.i29.not = icmp ult i16 %i.dd, %i.dh
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.de ; 3 uses
  br i1 %.not.i.i29.not, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store i64 %.sroa.045.096119, ptr %i.do, align 8, !alias.scope !308, !noalias !309
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %i.dn
  %i.ds = sub nuw nsw i64 %i.dk, %i.de            ; 2 uses
  %i.dt = shl nuw nsw i64 %i.ds, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dr, ptr nonnull align 8 %i.do, i64 %i.dt, i1 false), !alias.scope !308, !noalias !309
  store i64 %.sroa.045.096119, ptr %i.do, align 8, !alias.scope !308, !noalias !309
  %i.du = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  %i.dv = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.de
  %i.dw = getelementptr inbounds nuw [24 x i8], ptr %i.du, i64 %i.dn
  %i.dx = mul nuw nsw i64 %i.ds, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr nonnull align 8 %i.dv, i64 %i.dx, i1 false), !alias.scope !310, !noalias !309
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cx, i64 96
  %i.dz = getelementptr inbounds nuw [24 x i8], ptr %i.dy, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dz, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cx, i64 368 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.dn
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.de
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = sub nuw nsw i64 %i.dk, %i.de
  %i.ef = shl nuw nsw i64 %i.ee, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ed, ptr nonnull align 8 %i.eb, i64 %i.ef, i1 false), !alias.scope !311, !noalias !309
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.eh = add nuw nsw i64 %i.dk, 2                ; 2 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.dn
  store ptr %.sroa.11.0103118, ptr %i.ei, align 8, !alias.scope !311, !noalias !309
  store i16 %i.dl, ptr %i.dg, align 2, !noalias !309
  %i.ej = icmp samesign ult i64 %i.dn, %i.eh
  br i1 %i.ej, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.at
  %i.ek = add nuw nsw i64 %i.dk, 1
  %i.el = sub nsw i64 %i.ek, %i.de
  %i.em = sub nsw i64 %i.dk, %i.de
  %xtraiter281 = and i64 %i.el, 3                 ; 2 uses
  %lcmp.mod282.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod282.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.en = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.eo, %.lr.ph.i.i.i.prol ], [ %i.dn, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter283 = phi i64 [ %prol.iter283.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.eo = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.ep = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ep)
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.sroa.0.06.i.i.i.prol
  %i.er = load ptr, ptr %i.eq, align 8, !noalias !309, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cx, ptr %i.er, align 8, !noalias !309
  %i.es = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 360
  store i16 %i.es, ptr %i.et, align 8, !noalias !309
  %prol.iter283.next = add i64 %prol.iter283, 1   ; 2 uses
  %prol.iter283.cmp.not = icmp eq i64 %prol.iter283.next, %xtraiter281
  br i1 %prol.iter283.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !245

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.dn, %.lr.ph.i.i.i.preheader ], [ %i.eo, %.lr.ph.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.em, 3
  br i1 %i.eu, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.ev = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.ew = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  %i.ey = getelementptr inbounds nuw i8, ptr %i.cx, i64 368
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.fo, %.lr.ph.i.i.i ] ; 7 uses
  %i.ez = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %.sroa.0.06.i.i.i
  %i.fb = load ptr, ptr %i.fa, align 8, !noalias !309, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cx, ptr %i.fb, align 8, !noalias !309
  %i.fc = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 360
  store i16 %i.fc, ptr %i.fd, align 8, !noalias !309
  %i.fe = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.ez
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !309, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cx, ptr %i.fg, align 8, !noalias !309
  %i.fh = trunc nuw nsw i64 %i.ez to i16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 360
  store i16 %i.fh, ptr %i.fi, align 8, !noalias !309
  %i.fj = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.fe
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !309, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cx, ptr %i.fl, align 8, !noalias !309
  %i.fm = trunc nuw nsw i64 %i.fe to i16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 360
  store i16 %i.fm, ptr %i.fn, align 8, !noalias !309
  %i.fo = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.fp = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.fj
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !309, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.cx, ptr %i.fr, align 8, !noalias !309
  %i.fs = trunc nuw nsw i64 %i.fj to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 360
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !309
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.fo, %i.eh
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.au:                                            ; preds = %bb.ap
  switch i16 %i.dd, label %bb.av [
    i16 5, label %bb.ax
    i16 6, label %bb.aw
  ]

bb.av:                                            ; preds = %bb.au
  %i.fu = add nsw i64 %i.de, -7
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av, %bb.au, %bb.ap
  %.sroa.06.0.i = phi i64 [ 5, %bb.aw ], [ 6, %bb.av ], [ 4, %bb.ap ], [ 5, %bb.au ] ; 7 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.aw ], [ %i.fu, %bb.av ], [ %i.de, %bb.ap ], [ 5, %bb.au ] ; 9 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.aw ], [ true, %bb.av ], [ false, %bb.ap ], [ false, %bb.au ]
  %i.fv = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejINtNtB6_3vec3VecTjjEEEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i25 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !307 ; 13 uses

.noexc.i25:                                       ; preds = %bb.ax
  store ptr null, ptr %i.fv, align 8, !noalias !312
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 362 ; 3 uses
  store i16 0, ptr %i.fw, align 2, !noalias !312
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.fx = load i16, ptr %i.dg, align 2, !noalias !315, !noundef !6
  %i.fy = zext i16 %i.fx to i64
  %i.fz = xor i64 %.sroa.06.0.i, -1
  %i.ga = add nsw i64 %i.fy, %i.fz                ; 5 uses
  %i.gb = trunc i64 %i.ga to i16
  store i16 %i.gb, ptr %i.fw, align 2, !alias.scope !314, !noalias !312
  %i.gc = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %.sroa.06.0.i
  %i.ge = load i64, ptr %i.gd, align 8, !noalias !315, !noundef !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !315
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cx, i64 96 ; 2 uses
  %i.gg = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %.sroa.06.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.gg, i64 24, i1 false), !noalias !315
  %i.gh = icmp ult i64 %i.ga, 12
  br i1 %i.gh, label %bb.bc, label %bb.ay, !prof !7

bb.ay:                                            ; preds = %.noexc.i25
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ga, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #27
          to label %bb.ba unwind label %bb.az, !noalias !315

bb.az:                                            ; preds = %bb.ay
  %i.gi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #29
          to label %bb.bl unwind label %bb.bb, !noalias !315

bb.ba:                                            ; preds = %bb.ay
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !315
  unreachable

bb.bc:                                            ; preds = %.noexc.i25
  %i.gk = add nuw nsw i64 %.sroa.06.0.i, 1        ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.gk
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gn = shl nuw nsw i64 %i.ga, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull readonly align 8 %i.gl, i64 %i.gn, i1 false), !alias.scope !316, !noalias !317
  %i.go = getelementptr inbounds nuw [24 x i8], ptr %i.gf, i64 %i.gk
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fv, i64 96
  %i.gq = mul nuw nsw i64 %i.ga, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gp, ptr nonnull readonly align 8 %i.go, i64 %i.gq, i1 false), !alias.scope !318, !noalias !317
  %i.gr = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.gr, ptr %i.dg, align 2, !noalias !315
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !319
  store i64 %i.ge, ptr %i.b, align 8, !alias.scope !313, !noalias !312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !315
  %i.gs = load i16, ptr %i.fw, align 2, !noalias !312, !noundef !6 ; 3 uses
  %i.gt = zext i16 %i.gs to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %i.gv = icmp ult i16 %i.gs, 12
  br i1 %i.gv, label %bb.bd, label %bb.bf, !prof !7

bb.bd:                                            ; preds = %bb.bc
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fv, i64 368 ; 6 uses
end_hunk_1
begin_hunk_2_@_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjINtNtBc_3vec3VecTjjEENtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB37_11VacantEntryjB1E_E12insert_entry0ECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.ih = load i16, ptr %i.ig, align 2, !noalias !324, !noundef !6 ; 2 uses
  %i.ii = zext i16 %i.ih to i64                   ; 5 uses
  %i.ij = add i16 %i.ih, 1
  %i.ik = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 8 ; 2 uses
  %i.il = add nuw nsw i64 %.sroa.5.0.i, 1         ; 7 uses
  %.not.i10.not.i = icmp samesign ult i64 %.sroa.5.0.i, %i.ii
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %.sroa.5.0.i ; 3 uses
  br i1 %.not.i10.not.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %.epilog-lcssa
  store i64 %.sroa.045.096119, ptr %i.im, align 8, !alias.scope !325, !noalias !324
  %i.in = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 96
  %i.io = getelementptr inbounds nuw [24 x i8], ptr %i.in, i64 %.sroa.5.0.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.io, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !326
  br label %bb.bp

bb.bo:                                            ; preds = %.epilog-lcssa
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %i.il
  %i.iq = sub nuw nsw i64 %i.ii, %.sroa.5.0.i     ; 2 uses
  %i.ir = shl nuw nsw i64 %i.iq, 3                ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ip, ptr nonnull align 8 %i.im, i64 %i.ir, i1 false), !alias.scope !325, !noalias !324
  %i.is = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 96 ; 2 uses
  %i.it = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %.sroa.5.0.i ; 2 uses
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.is, i64 %i.il
  %i.iv = mul nuw nsw i64 %i.iq, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.it, i64 %i.iv, i1 false), !alias.scope !327, !noalias !324
  store i64 %.sroa.045.096119, ptr %i.im, align 8, !alias.scope !325, !noalias !324
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.it, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !326
  %i.iw = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 368 ; 2 uses
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.il
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %.sroa.5.0.i
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iz, ptr nonnull align 8 %i.ix, i64 %i.ir, i1 false), !alias.scope !328, !noalias !324
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i27, i64 368 ; 6 uses
  %i.jb = add nuw nsw i64 %i.ii, 2                ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.il
  store ptr %.sroa.11.0103118, ptr %i.jc, align 8, !alias.scope !328, !noalias !324
  store i16 %i.ij, ptr %i.ig, align 2, !noalias !324
  %i.jd = icmp samesign ult i64 %i.il, %i.jb
  br i1 %i.jd, label %.lr.ph.i.i11.i.preheader, label %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i

.lr.ph.i.i11.i.preheader:                         ; preds = %bb.bp
  %i.je = add nuw nsw i64 %i.ii, 1
  %i.jf = sub nsw i64 %i.je, %.sroa.5.0.i
  %i.jg = sub nsw i64 %i.ii, %.sroa.5.0.i
  %xtraiter279 = and i64 %i.jf, 3                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br i1 %lcmp.mod280.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol

.lr.ph.i.i11.i.prol:                              ; preds = %.lr.ph.i.i11.i.preheader, %.lr.ph.i.i11.i.prol
  %.sroa.0.06.i.i12.i.prol = phi i64 [ %i.jh, %.lr.ph.i.i11.i.prol ], [ %i.il, %.lr.ph.i.i11.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.prol ], [ 0, %.lr.ph.i.i11.i.preheader ]
  %i.jh = add nuw nsw i64 %.sroa.0.06.i.i12.i.prol, 1 ; 2 uses
  %i.ji = icmp samesign ult i64 %.sroa.0.06.i.i12.i.prol, 12
  tail call void @llvm.assume(i1 %i.ji)
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i.prol
  %i.jk = load ptr, ptr %i.jj, align 8, !noalias !324, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %spec.select.i27, ptr %i.jk, align 8, !noalias !324
  %i.jl = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.prol to i16
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 360
  store i16 %i.jl, ptr %i.jm, align 8, !noalias !324
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter279
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.prol.loopexit, label %.lr.ph.i.i11.i.prol, !llvm.loop !275

.lr.ph.i.i11.i.prol.loopexit:                     ; preds = %.lr.ph.i.i11.i.prol, %.lr.ph.i.i11.i.preheader
  %.sroa.0.06.i.i12.i.unr = phi i64 [ %i.il, %.lr.ph.i.i11.i.preheader ], [ %i.jh, %.lr.ph.i.i11.i.prol ]
  %i.jn = icmp ult i64 %i.jg, 3
  br i1 %i.jn, label %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i, label %.lr.ph.i.i11.i

.lr.ph.i.i11.i:                                   ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i
  %.sroa.0.06.i.i12.i = phi i64 [ %i.kd, %.lr.ph.i.i11.i ], [ %.sroa.0.06.i.i12.i.unr, %.lr.ph.i.i11.i.prol.loopexit ] ; 7 uses
  %i.jo = add nuw nsw i64 %.sroa.0.06.i.i12.i, 1  ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.0.06.i.i12.i
  %i.jq = load ptr, ptr %i.jp, align 8, !noalias !324, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %spec.select.i27, ptr %i.jq, align 8, !noalias !324
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i12.i to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 360
  store i16 %i.jr, ptr %i.js, align 8, !noalias !324
  %i.jt = add nuw nsw i64 %.sroa.0.06.i.i12.i, 2  ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jo
  %i.jv = load ptr, ptr %i.ju, align 8, !noalias !324, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %spec.select.i27, ptr %i.jv, align 8, !noalias !324
  %i.jw = trunc nuw nsw i64 %i.jo to i16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 360
  store i16 %i.jw, ptr %i.jx, align 8, !noalias !324
  %i.jy = add nuw nsw i64 %.sroa.0.06.i.i12.i, 3  ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jt
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !324, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %spec.select.i27, ptr %i.ka, align 8, !noalias !324
  %i.kb = trunc nuw nsw i64 %i.jt to i16
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ka, i64 360
  store i16 %i.kb, ptr %i.kc, align 8, !noalias !324
  %i.kd = add nuw nsw i64 %.sroa.0.06.i.i12.i, 4  ; 2 uses
  %i.ke = icmp ult i64 %.sroa.0.06.i.i12.i, 9
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.jy
  %i.kg = load ptr, ptr %i.kf, align 8, !noalias !324, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %spec.select.i27, ptr %i.kg, align 8, !noalias !324
  %i.kh = trunc nuw nsw i64 %i.jy to i16
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 360
  store i16 %i.kh, ptr %i.ki, align 8, !noalias !324
  %exitcond.not.i.i13.i.3 = icmp eq i64 %i.kd, %i.jb
  br i1 %exitcond.not.i.i13.i.3, label %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i, label %.lr.ph.i.i11.i

_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i: ; preds = %.lr.ph.i.i11.i.prol.loopexit, %.lr.ph.i.i11.i, %bb.bp
  store i64 %.sroa.0.i.sroa.4.0.copyload, ptr %.sroa.547, align 8, !noalias !329
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.749, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.sroa.5, i64 16, i1 false), !noalias !329
  br label %.loopexit

bb.bq:                                            ; preds = %bb.br
  %i.kj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !326
  unreachable

bb.br:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bl
  %.pn.ph.i23 = phi { ptr, i32 } [ %.pn.i.i, %bb.bl ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecTjjEEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #29
          to label %.body unwind label %bb.bq, !noalias !326

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i, %bb.at
  %.sroa.11.0 = phi ptr [ %i.fv, %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i ], [ undef, %bb.at ], [ undef, %.lr.ph.i.i.i ], [ undef, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.045.0 = phi i64 [ %i.ge, %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i ], [ undef, %bb.at ], [ undef, %.lr.ph.i.i.i ], [ undef, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %.sink40.i.sroa.phi = phi ptr [ %.sroa.13, %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i ], [ %.sroa.547, %bb.at ], [ %.sroa.547, %.lr.ph.i.i.i ], [ %.sroa.547, %.lr.ph.i.i.i.prol.loopexit ]
  %.sink.i28 = phi i64 [ %i.db, %_RNvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutjINtNtBb_3vec3VecTjjEENtB1m_8InternalENtB1m_4EdgeE10insert_fitCsbNLsQi0JuJ4_5tgrep.exit14.i ], [ -1, %bb.at ], [ -1, %.lr.ph.i.i.i ], [ -1, %.lr.ph.i.i.i.prol.loopexit ]
  store i64 %.sink.i28, ptr %.sink40.i.sroa.phi, align 8, !alias.scope !306
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8. = load i64, ptr %.sroa.547, align 8, !range !10, !noundef !6 ; 3 uses
  %.not16 = icmp eq i64 %.sroa.547.0..sroa.547.0..sroa.547.0..sroa.547.8., -1
  br i1 %.not16, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.749, i64 16, i1 false)
  %.sroa.13.0..sroa.13.0..sroa.13.0..sroa.13.56. = load i64, ptr %.sroa.13, align 8, !noundef !6 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.11.0) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  %i.kk = load ptr, ptr %i.cx, align 8, !noalias !299, !noundef !6 ; 2 uses
  %.not.i = icmp eq ptr %i.kk, null
  br i1 %.not.i, label %._crit_edge, label %bb.al

bb.bt:                                            ; preds = %.loopexit
  store ptr %.sink51.i, ptr %0, align 8
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i, ptr %i.kl, align 8
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.km, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.547)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.749)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.x, %bb.bv
  ret void

bb.bv:                                            ; preds = %bb.ag
  %i.kn = zext nneg i16 %i.cr to i64              ; 3 uses
  %i.ko = add nuw nsw i16 %i.cr, 1
  store i16 %i.ko, ptr %i.ch, align 2, !noalias !305
  %i.kp = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %i.kn
  store i64 %i.cc, ptr %i.kq, align 8, !noalias !305
  %i.kr = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  %i.ks = getelementptr inbounds nuw [24 x i8], ptr %i.kr, i64 %i.kn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ks, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx, i64 24, i1 false)
  %i.kt = add nuw nsw i64 %i.kn, 1                ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.kt
  store ptr %.sroa.11.0103.lcssa, ptr %i.ku, align 8, !noalias !305
  store ptr %i.cg, ptr %.sroa.11.0103.lcssa, align 8, !noalias !305
  %i.kv = trunc nuw nsw i64 %i.kt to i16
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.11.0103.lcssa, i64 360
  store i16 %i.kv, ptr %i.kw, align 8, !noalias !305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !300
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr %.sink51.i, ptr %0, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink50.i, ptr %i.kx, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.i, ptr %i.ky, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  br label %bb.bu

.body:                                            ; preds = %bb.aj, %bb.ah, %bb.br, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %.pn.ph.i, %bb.u ], [ %.pn.ph.i23, %bb.br ], [ %i.cv, %bb.aj ], [ %i.ct, %bb.ah ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3b_11VacantEntryjB1E_E12insert_entry0ECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) %3, ptr nofree noundef nonnull readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !394, !nonnull !6, !noundef !6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 98 ; 4 uses
  %i.c = load i16, ptr %i.b, align 2, !noalias !395, !noundef !6 ; 3 uses
  %i.d = icmp ult i16 %i.c, 11
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !394, !noundef !6 ; 6 uses
  %i.g = icmp ult i64 %i.f, 5
  br i1 %i.g, label %bb.h, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.h = zext nneg i16 %i.c to i64                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !397, !noundef !6 ; 5 uses
  %i.l = add i64 %i.k, 1                          ; 2 uses
  %.not.i.i = icmp ugt i64 %i.l, %i.h
  br i1 %.not.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.l
  %i.o = sub nsw i64 %i.h, %i.k
  %i.p = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.n, ptr nonnull align 8 %i.m, i64 %i.p, i1 false), !alias.scope !398, !noalias !399
  br label %bb.m

bb.e:                                             ; preds = %bb.b
  switch i64 %i.f, label %bb.f [
    i64 5, label %bb.h
    i64 6, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.f, -7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  %.sroa.09.0.i = phi i1 [ true, %bb.g ], [ true, %bb.f ], [ false, %bb.b ], [ false, %bb.e ] ; 2 uses
  %.sroa.510.0.i = phi i64 [ 0, %bb.g ], [ %i.q, %bb.f ], [ %i.f, %bb.b ], [ %i.f, %bb.e ] ; 8 uses
  %.sroa.013.0.i = phi i64 [ 5, %bb.g ], [ 6, %bb.f ], [ 4, %bb.b ], [ %i.f, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !394, !noundef !6 ; 3 uses
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep(), !noalias !400 ; 7 uses
  store ptr null, ptr %i.t, align 8, !noalias !400
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 98 ; 2 uses
  store i16 0, ptr %i.u, align 2, !noalias !400
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.v = load i16, ptr %i.b, align 2, !noalias !402, !noundef !6
  %i.w = zext i16 %i.v to i64
  %i.x = xor i64 %.sroa.013.0.i, -1
  %i.y = add nsw i64 %i.w, %i.x                   ; 4 uses
  %i.z = trunc i64 %i.y to i16
  store i16 %i.z, ptr %i.u, align 2, !alias.scope !401, !noalias !400
  %i.aa = icmp ult i64 %i.y, 12
  br i1 %i.aa, label %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.y, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #31
          to label %.noexc.i.i unwind label %bb.j, !noalias !400

.noexc.i.i:                                       ; preds = %bb.i
  unreachable

common.resume:                                    ; preds = %bb.ak, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.j ], [ %i.fc, %bb.ak ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef 104, i64 noundef 8) #28, !noalias !400
  br label %common.resume

_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.sroa.013.0.i ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !402, !noundef !6 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ah = shl nuw nsw i64 %i.y, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr nonnull readonly align 8 %i.af, i64 %i.ah, i1 false), !alias.scope !403, !noalias !400
  %i.ai = trunc nuw nsw i64 %.sroa.013.0.i to i16
  store i16 %i.ai, ptr %i.b, align 2, !noalias !402
  %spec.select.i = select i1 %.sroa.09.0.i, i64 0, i64 %i.s ; 4 uses
  %spec.select36.i = select i1 %.sroa.09.0.i, ptr %i.t, ptr %i.a ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %spec.select36.i, i64 98 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 2, !noalias !404, !noundef !6 ; 2 uses
  %i.al = zext i16 %i.ak to i64                   ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %spec.select36.i, i64 8 ; 2 uses
  %.not.i14.not.i = icmp ult i64 %.sroa.510.0.i, %i.al
  br i1 %.not.i14.not.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.510.0.i ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = sub nuw nsw i64 %i.al, %.sroa.510.0.i
  %i.aq = shl nuw nsw i64 %i.ap, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr nonnull align 8 %i.an, i64 %i.aq, i1 false), !alias.scope !405, !noalias !404
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RINvMsV_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_2KVE5splitNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit.i
  %5 = add i16 %i.ak, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.510.0.i
  store i64 %2, ptr %i.ar, align 8, !alias.scope !405, !noalias !404
  store i16 %5, ptr %i.aj, align 2, !noalias !404
  %i.as = load ptr, ptr %i.a, align 8, !noalias !406, !noundef !6 ; 2 uses
  %.not.i117 = icmp eq ptr %i.as, null
  br i1 %.not.i117, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.at = icmp eq i64 %i.s, 0
  br label %.lr.ph

bb.m:                                             ; preds = %bb.c, %bb.d
  %6 = add nuw nsw i16 %i.c, 1
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.k
  store i64 %2, ptr %i.au, align 8, !alias.scope !398, !noalias !399
  store i16 %6, ptr %i.b, align 2, !noalias !399
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !397, !noundef !6
  br label %.loopexit

._crit_edge:                                      ; preds = %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit, %bb.l
  %.sroa.11.0.lcssa = phi i64 [ %i.ae, %bb.l ], [ %i.ep, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ]
  %.sroa.9.0.lcssa = phi i64 [ 0, %bb.l ], [ %i.bt, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ]
  %.sroa.7.0.lcssa = phi ptr [ %i.t, %bb.l ], [ %i.ef, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ] ; 3 uses
  %.val = load ptr, ptr %3, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.ax = load ptr, ptr %.val, align 8, !noalias !407, !noundef !6 ; 4 uses
  %.not.i30 = icmp eq ptr %i.ax, null
  br i1 %.not.i30, label %bb.v, label %bb.n, !prof !5

bb.n:                                             ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408)
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !408, !noalias !407, !noundef !6 ; 2 uses
  %i.ba = invoke noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep()
          to label %.noexc.i.i31 unwind label %bb.r, !noalias !409 ; 8 uses

.noexc.i.i31:                                     ; preds = %bb.n
  store ptr null, ptr %i.ba, align 8, !noalias !409
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 98 ; 3 uses
  store i16 0, ptr %i.bb, align 2, !noalias !409
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 104 ; 2 uses
  store ptr %i.ax, ptr %i.bc, align 8, !noalias !409
  %i.bd = add i64 %i.az, 1                        ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i.i.i.i.i, label %bb.o, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbNLsQi0JuJ4_5tgrep.exit.i, !prof !5

bb.o:                                             ; preds = %.noexc.i.i31
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.p unwind label %bb.q, !noalias !409

bb.p:                                             ; preds = %bb.o
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 200, i64 noundef 8) #28, !noalias !409
  br label %.body.i.i

bb.r:                                             ; preds = %bb.n
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.r, %bb.q
  tail call void @llvm.trap()
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %.noexc.i.i31
  store ptr %i.ba, ptr %i.ax, align 8, !noalias !410
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i16 0, ptr %i.bg, align 8, !noalias !411
  store ptr %i.ba, ptr %.val, align 8, !alias.scope !408, !noalias !407
  store i64 %i.bd, ptr %i.ay, align 8, !alias.scope !408, !noalias !407
  %i.bh = icmp eq i64 %.sroa.9.0.lcssa, %i.az
  br i1 %i.bh, label %bb.t, label %bb.s, !prof !8

bb.s:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbNLsQi0JuJ4_5tgrep.exit.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @27, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #31, !noalias !407
  unreachable

bb.t:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedjNtNtB4_7set_val9SetValZSTNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.bi = load i16, ptr %i.bb, align 2, !noalias !407, !noundef !6 ; 3 uses
  %i.bj = icmp ult i16 %i.bi, 11
  br i1 %i.bj, label %_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0CsbNLsQi0JuJ4_5tgrep.exit, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #31, !noalias !407
  unreachable

bb.v:                                             ; preds = %._crit_edge
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #31, !noalias !407
  unreachable

_RNCNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB7_11VacantEntryjNtNtBb_7set_val9SetValZSTE12insert_entry0CsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.t
  %i.bk = zext nneg i16 %i.bi to i64              ; 2 uses
  %i.bl = add nuw nsw i16 %i.bi, 1
  store i16 %i.bl, ptr %i.bb, align 2, !noalias !407
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bk
  store i64 %.sroa.11.0.lcssa, ptr %i.bn, align 8, !noalias !407
  %i.bo = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bo
  store ptr %.sroa.7.0.lcssa, ptr %i.bp, align 8, !noalias !407
  store ptr %i.ba, ptr %.sroa.7.0.lcssa, align 8, !noalias !407
  %i.bq = trunc nuw nsw i64 %i.bo to i16
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.7.0.lcssa, i64 96
  store i16 %i.bq, ptr %i.br, align 8, !noalias !407
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit
  %i.bs = phi ptr [ %i.ie, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.as, %.lr.ph.preheader ] ; 19 uses
  %.sroa.0.0122 = phi ptr [ %i.bs, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.a, %.lr.ph.preheader ]
  %.sroa.6.0121 = phi i64 [ %i.bt, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.s, %.lr.ph.preheader ]
  %.sroa.7.0120 = phi ptr [ %i.ef, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.t, %.lr.ph.preheader ] ; 2 uses
  %.sroa.9.0119 = phi i1 [ true, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.at, %.lr.ph.preheader ]
  %.sroa.11.0118 = phi i64 [ %i.ep, %_RINvMsM_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutjNtNtB8_7set_val9SetValZSTNtB1n_8InternalENtB1n_4EdgeE6insertNtNtBc_5alloc6GlobalECsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ae, %.lr.ph.preheader ] ; 3 uses
  %i.bt = add i64 %.sroa.6.0121, 1                ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.0122, i64 96
  %i.bv = load i16, ptr %i.bu, align 8, !noalias !406 ; 4 uses
  %i.bw = zext i16 %i.bv to i64                   ; 10 uses
  br i1 %.sroa.9.0119, label %bb.x, label %bb.w, !prof !8

bb.w:                                             ; preds = %.lr.ph
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 53, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #31, !noalias !412
  unreachable

bb.x:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 98 ; 4 uses
  %i.by = load i16, ptr %i.bx, align 2, !noalias !412, !noundef !6 ; 5 uses
  %i.bz = icmp ult i16 %i.by, 11
  br i1 %i.bz, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ca = icmp ult i16 %i.bv, 5
  br i1 %i.ca, label %bb.ae, label %bb.ab

bb.z:                                             ; preds = %bb.x
  %i.cb = zext nneg i16 %i.by to i64              ; 5 uses
  %i.cc = add nuw nsw i16 %i.by, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 3 uses
  %i.ce = add nuw nsw i64 %i.bw, 1                ; 6 uses
  %.not.i.i34.not = icmp ult i16 %i.bv, %i.by
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bw ; 2 uses
  br i1 %.not.i.i34.not, label %bb.aa, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertjECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertjECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.z
  store i64 %.sroa.11.0118, ptr %i.cf, align 8, !alias.scope !413, !noalias !414
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.aa:                                            ; preds = %bb.z
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ce
  %i.ch = sub nuw nsw i64 %i.cb, %i.bw
  %i.ci = shl nuw nsw i64 %i.ch, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cg, ptr nonnull align 8 %i.cf, i64 %i.ci, i1 false), !alias.scope !413, !noalias !414
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.bw
  store i64 %.sroa.11.0118, ptr %i.cj, align 8, !alias.scope !413, !noalias !414
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 104 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.ce
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.bw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = sub nuw nsw i64 %i.cb, %i.bw
  %i.cp = shl nuw nsw i64 %i.co, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cl, i64 %i.cp, i1 false), !alias.scope !415, !noalias !414
  br label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECsbNLsQi0JuJ4_5tgrep.exit.i.i

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertjECsbNLsQi0JuJ4_5tgrep.exit.i.i, %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.cr = add nuw nsw i64 %i.cb, 2                ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.ce
  store ptr %.sroa.7.0120, ptr %i.cs, align 8, !alias.scope !415, !noalias !414
  store i16 %i.cc, ptr %i.bx, align 2, !noalias !414
  %i.ct = icmp samesign ult i64 %i.ce, %i.cr
  br i1 %i.ct, label %.lr.ph.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader:                           ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node12slice_insertINtNtNtCsf3Ta7LF998c_4core3ptr8non_null7NonNullINtB2_8LeafNodejNtNtB4_7set_val9SetValZSTEEECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.cu = add nuw nsw i64 %i.cb, 1
  %i.cv = sub nsw i64 %i.cu, %i.bw
  %i.cw = sub nsw i64 %i.cb, %i.bw
  %xtraiter378 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol.preheader

.lr.ph.i.i.i.prol.preheader:                      ; preds = %.lr.ph.i.i.i.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  br label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.prol.preheader
  %.sroa.0.06.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.prol ], [ %i.ce, %.lr.ph.i.i.i.prol.preheader ] ; 4 uses
  %prol.iter380 = phi i64 [ %prol.iter380.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.prol.preheader ]
  %i.cy = add nuw nsw i64 %.sroa.0.06.i.i.i.prol, 1 ; 2 uses
  %i.cz = icmp samesign ult i64 %.sroa.0.06.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cx, i64 %.sroa.0.06.i.i.i.prol
  %i.db = load ptr, ptr %i.da, align 8, !noalias !414, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.db, align 8, !noalias !414
  %i.dc = trunc nuw nsw i64 %.sroa.0.06.i.i.i.prol to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 96
  store i16 %i.dc, ptr %i.dd, align 8, !noalias !414
  %prol.iter380.next = add i64 %prol.iter380, 1   ; 2 uses
  %prol.iter380.cmp.not = icmp eq i64 %prol.iter380.next, %xtraiter378
  br i1 %prol.iter380.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !370

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.sroa.0.06.i.i.i.unr = phi i64 [ %i.ce, %.lr.ph.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.prol ]
  %i.de = icmp ult i64 %i.cw, 3
  br i1 %i.de, label %.loopexit, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.prol.loopexit
  %i.df = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.bs, i64 104
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %.sroa.0.06.i.i.i = phi i64 [ %.sroa.0.06.i.i.i.unr, %.lr.ph.i.i.i.preheader.new ], [ %i.dy, %.lr.ph.i.i.i ] ; 7 uses
  %i.dj = add nuw nsw i64 %.sroa.0.06.i.i.i, 1    ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.sroa.0.06.i.i.i
  %i.dl = load ptr, ptr %i.dk, align 8, !noalias !414, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.dl, align 8, !noalias !414
  %i.dm = trunc nuw nsw i64 %.sroa.0.06.i.i.i to i16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 96
  store i16 %i.dm, ptr %i.dn, align 8, !noalias !414
  %i.do = add nuw nsw i64 %.sroa.0.06.i.i.i, 2    ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dj
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !414, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.dq, align 8, !noalias !414
  %i.dr = trunc nuw nsw i64 %i.dj to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 96
  store i16 %i.dr, ptr %i.ds, align 8, !noalias !414
  %i.dt = add nuw nsw i64 %.sroa.0.06.i.i.i, 3    ; 2 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.do
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !414, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.dv, align 8, !noalias !414
  %i.dw = trunc nuw nsw i64 %i.do to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 96
  store i16 %i.dw, ptr %i.dx, align 8, !noalias !414
  %i.dy = add nuw nsw i64 %.sroa.0.06.i.i.i, 4    ; 2 uses
  %i.dz = icmp ult i64 %.sroa.0.06.i.i.i, 9
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dt
  %i.eb = load ptr, ptr %i.ea, align 8, !noalias !414, !nonnull !6, !noundef !6 ; 2 uses
  store ptr %i.bs, ptr %i.eb, align 8, !noalias !414
  %i.ec = trunc nuw nsw i64 %i.dt to i16
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 96
  store i16 %i.ec, ptr %i.ed, align 8, !noalias !414
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.dy, %i.cr
  br i1 %exitcond.not.i.i.i.3, label %.loopexit, label %.lr.ph.i.i.i

bb.ab:                                            ; preds = %bb.y
  switch i16 %i.bv, label %bb.ac [
    i16 5, label %bb.ae
    i16 6, label %bb.ad
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.ee = add nsw i64 %i.bw, -7
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.y
  %.sroa.06.0.i = phi i64 [ 5, %bb.ad ], [ 6, %bb.ac ], [ 4, %bb.y ], [ 5, %bb.ab ] ; 5 uses
  %.sroa.5.0.i = phi i64 [ 0, %bb.ad ], [ %i.ee, %bb.ac ], [ %i.bw, %bb.y ], [ 5, %bb.ab ] ; 7 uses
  %.sroa.03.0.i = phi i1 [ true, %bb.ad ], [ true, %bb.ac ], [ false, %bb.y ], [ false, %bb.ab ]
  %i.ef = tail call noundef nonnull align 8 ptr @_RNvMs_NtCsgCecv3eZDcN_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodejNtNtBL_7set_val9SetValZSTEE13new_uninit_inCsbNLsQi0JuJ4_5tgrep(), !noalias !416 ; 13 uses
  store ptr null, ptr %i.ef, align 8, !noalias !416
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 98 ; 3 uses
  store i16 0, ptr %i.eg, align 2, !noalias !416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.eh = load i16, ptr %i.bx, align 2, !noalias !418, !noundef !6
  %i.ei = zext i16 %i.eh to i64
  %i.ej = xor i64 %.sroa.06.0.i, -1
  %i.ek = add nsw i64 %i.ei, %i.ej                ; 4 uses
  %i.el = trunc i64 %i.ek to i16
  store i16 %i.el, ptr %i.eg, align 2, !alias.scope !417, !noalias !416
  %i.em = icmp ult i64 %i.ek, 12
  br i1 %i.em, label %bb.ag, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ek, i64 noundef 11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #31
          to label %.noexc.i.i32 unwind label %bb.ak, !noalias !416

.noexc.i.i32:                                     ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.sroa.06.0.i ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !noalias !418, !noundef !6 ; 2 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.es = shl nuw nsw i64 %i.ek, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.er, ptr nonnull readonly align 8 %i.eq, i64 %i.es, i1 false), !alias.scope !419, !noalias !416
  %i.et = trunc nuw nsw i64 %.sroa.06.0.i to i16
  store i16 %i.et, ptr %i.bx, align 2, !noalias !418
  %i.eu = load i16, ptr %i.eg, align 2, !noalias !416, !noundef !6 ; 3 uses
  %i.ev = zext i16 %i.eu to i64
  %i.ew = add nuw nsw i64 %i.ev, 1                ; 5 uses
  %i.ex = icmp ult i16 %i.eu, 12
  br i1 %i.ex, label %bb.ah, label %bb.aj, !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ef, i64 104 ; 6 uses
  %i.ez = zext i16 %i.by to i64
  %i.fa = sub nuw nsw i64 %i.ez, %.sroa.06.0.i
  %i.fb = icmp eq i64 %i.fa, %i.ew
  br i1 %i.fb, label %bb.al, label %bb.ai, !prof !8

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #31
          to label %.noexc7.i.i unwind label %bb.ak, !noalias !416

.noexc7.i.i:                                      ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ag
  invoke void @_RNvNtNtCsf3Ta7LF998c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ew, i64 noundef 12, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #27
          to label %bb.an unwind label %bb.ak, !noalias !416

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.af
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ef, i64 noundef 200, i64 noundef 8) #28, !noalias !416
  br label %common.resume

bb.al:                                            ; preds = %bb.ah
  %i.fd = getelementptr i8, ptr %i.bs, i64 112
  %i.fe = getelementptr [8 x i8], ptr %i.fd, i64 %.sroa.06.0.i
  %i.ff = shl nuw nsw i64 %i.ew, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ey, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.fe, i64 %i.ff, i1 false), !alias.scope !420, !noalias !416
  %i.fg = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %i.fg)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %xtraiter = and i64 %i.ew, 3                    ; 3 uses
  %i.fh = icmp ult i16 %i.eu, 3
  br i1 %i.fh, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.al
  %unroll_iter = and i64 %i.ew, 28
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.new
end_hunk_2
