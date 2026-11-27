Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.07?download=true
inline.NumInlined: 892
inline.NumDeleted: 526
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs6_NtNtCsiWcPrHiWZDL_10serde_json5value3serNtB6_12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet:bb.a
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvNtCsiWcPrHiWZDL_10serde_json5value8to_valueRNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %.val, i64 range(i64 0, -9223372036854775808) %.val1, i1 false), !noalias !704
  br label %_RINvNtCsiWcPrHiWZDL_10serde_json5value8to_valueRNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume.i unwind label %bb.k, !noalias !705

_RINvNtCsiWcPrHiWZDL_10serde_json5value8to_valueRNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.h, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i.i.i
  store i8 3, ptr %i.b, align 8, !noalias !700
  %.sroa.62.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.v, ptr %.sroa.62.0..sroa_idx.i.i, align 8, !noalias !700
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !700
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.val1, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !700
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE6insertCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !700
  %i.ac = load i8, ptr %i.d, align 8, !range !22, !alias.scope !706, !noalias !700, !noundef !9
  %i.ad = icmp eq i8 %i.ac, -1
  br i1 %i.ad, label %_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsiWcPrHiWZDL_10serde_json5value8to_valueRNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !701
  br label %_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit

bb.k:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !705
  unreachable

_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryeNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RINvNtCsiWcPrHiWZDL_10serde_json5value8to_valueRNtNtCsexYYUdYSQU6_5alloc6string6StringECs9SMuO7kbZ2K_7git_xet.exit.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !698
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvXs6_NtNtCsiWcPrHiWZDL_10serde_json5value3serNtB6_12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser15SerializeStruct15serialize_fieldlECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val = load i32, ptr %3, align 4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !729)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !730
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef range(i64 0, -9223372036854775808) %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !730
  %i.e = load i64, ptr %i.d, align 8, !range !10, !noalias !730, !noundef !9
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !14, !noalias !730, !noundef !9 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8, !noalias !730
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22, !noalias !730
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !noalias !730, !nonnull !9, !noundef !9 ; 3 uses
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !730
  %.not.i.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i.i, label %_RINvXNtNtCs6SYjS1KFWza_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser16MapKeySerializerECs9SMuO7kbZ2K_7git_xet.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !731
  br label %_RINvXNtNtCs6SYjS1KFWza_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser16MapKeySerializerECs9SMuO7kbZ2K_7git_xet.exit.i.i

_RINvXNtNtCs6SYjS1KFWza_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser16MapKeySerializerECs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.c, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i.i.i
  %i.m = load i64, ptr %0, align 8, !range !16, !alias.scope !732, !noundef !9
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RINvXNtNtCs6SYjS1KFWza_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser16MapKeySerializerECs9SMuO7kbZ2K_7git_xet.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.f unwind label %bb.e, !noalias !733

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  store i64 %i.h, ptr %0, align 8, !alias.scope !734
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !734
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !734
  resume { ptr, i32 } %i.o

bb.f:                                             ; preds = %bb.d, %_RINvXNtNtCs6SYjS1KFWza_10serde_core3ser5implseNtB5_9Serialize9serializeNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser16MapKeySerializerECs9SMuO7kbZ2K_7git_xet.exit.i.i
  %.sroa.65.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %.sroa.65.0..sroa_idx6.i.i, align 8, !alias.scope !734
  %.sroa.7.0..sroa_idx8.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.7.0..sroa_idx8.i.i, align 8, !alias.scope !734
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !736
  store i64 -1, ptr %0, align 8, !alias.scope !737
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.65.0..sroa_idx6.i.i, i64 16, i1 false), !noalias !739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !738
  store i64 %i.h, ptr %i.b, align 8, !noalias !738
  %i.p = sext i32 %.val to i64                    ; 2 uses
  %.lobit.i.i.i.i.i.i.i = lshr i64 %i.p, 63
  store i8 2, ptr %i.a, align 8, !noalias !738
  %.sroa.62.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.lobit.i.i.i.i.i.i.i, ptr %.sroa.62.0..sroa_idx.i.i, align 8, !noalias !738
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.p, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !738
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_RNvMsi_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCsiWcPrHiWZDL_10serde_json5value5ValueE6insertCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !738
  %i.r = load i8, ptr %i.c, align 8, !range !22, !alias.scope !740, !noalias !738, !noundef !9
  %i.s = icmp eq i8 %i.r, -1
  br i1 %i.s, label %_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryelECs9SMuO7kbZ2K_7git_xet.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiWcPrHiWZDL_10serde_json5value5ValueECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !noalias !739
  br label %_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryelECs9SMuO7kbZ2K_7git_xet.exit

_RINvYNtNtNtCsiWcPrHiWZDL_10serde_json5value3ser12SerializeMapNtNtCs6SYjS1KFWza_10serde_core3ser12SerializeMap15serialize_entryelECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !736
  ret ptr null
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvXs7_NtCsiWcPrHiWZDL_10serde_json5errorNtB6_5ErrorNtNtCs6SYjS1KFWza_10serde_core3ser5Error6customReECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !750
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !750
  %i.c = load i64, ptr %i.a, align 8, !range !10, !noalias !750, !noundef !9
  %i.d = trunc nuw i64 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !14, !noalias !750, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.d, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !750
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.f, i64 %i.h) #22, !noalias !750
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i: ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !noalias !750, !nonnull !9, !noundef !9 ; 2 uses
  %i.j = icmp ule i64 %1, %i.f
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !750
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCs9SMuO7kbZ2K_7git_xet.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull readonly align 1 %0, i64 range(i64 0, -9223372036854775808) %1, i1 false), !noalias !751
  br label %_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCs9SMuO7kbZ2K_7git_xet.exit

_RNvXsB_NtCsexYYUdYSQU6_5alloc6stringReNtB5_8ToString9to_stringCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs9SMuO7kbZ2K_7git_xet.exit.i.i.i, %bb.c
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !752
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !752
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !752
  %i.k = call noundef nonnull align 8 ptr @_RNvNtCsiWcPrHiWZDL_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.k
}

; Function Attrs: noreturn nonlazybind uwtable
define internal fastcc void @_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error4exitCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error5printCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs9SMuO7kbZ2K_7git_xet(ptr %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 249
  %i.d = load i8, ptr %i.c, align 1, !range !23, !noundef !9
  %i.e = and i8 %i.d, 29
  %switch.selectcmp = icmp eq i8 %i.e, 12
  %i.f = select i1 %switch.selectcmp, i32 0, i32 2
  tail call void @_RNvNtCsG258MDvU3F_3std7process4exit(i32 noundef %i.f) #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error5printCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !756)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !756, !nonnull !9, !noundef !9 ; 5 uses
  %i.g = load i64, ptr %i.f, align 8, !range !15, !noalias !757, !noundef !9
  %.not.i = icmp eq i64 %i.g, 2
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @_RNvMs4_NtCsf1bHqHEg0eP_12clap_builder5errorNtB5_7Message9formatted(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(126) %i.h), !noalias !756
  br label %_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error9formattedCs9SMuO7kbZ2K_7git_xet.exit

bb.c:                                             ; preds = %bb.a
  call void @_RNvXs_NtNtCsf1bHqHEg0eP_12clap_builder5error6formatNtB4_13RichFormatterNtB4_14ErrorFormatter12format_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0)
  br label %_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error9formattedCs9SMuO7kbZ2K_7git_xet.exit

_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error9formattedCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 249
  %i.j = load i8, ptr %i.i, align 1, !range !23, !noundef !9 ; 2 uses
  %i.k = and i8 %i.j, 30
  %switch = icmp eq i8 %i.k, 12
  %.sroa.0.0.in.v = select i1 %switch, i64 248, i64 247
  %.sroa.0.0.in = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sroa.0.0.in.v
  %.sroa.0.0 = load i8, ptr %.sroa.0.0.in, align 1, !range !758, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = and i8 %i.j, 29
  %switch.selectcmp = icmp ne i8 %i.l, 12
  %1 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %2 = zext i1 %switch.selectcmp to i16
  %3 = zext nneg i8 %.sroa.0.0 to i16
  %4 = shl nuw nsw i16 %3, 8
  %5 = or disjoint i16 %4, %2
  store i16 %5, ptr %1, align 8
  store i64 0, ptr %i.c, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.59.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load i64, ptr %i.e, align 8, !range !16, !noundef !9
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error9formattedCs9SMuO7kbZ2K_7git_xet.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error9formattedCs9SMuO7kbZ2K_7git_xet.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !9, !align !13, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.f unwind label %bb.k

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @_RNvMNtNtCsf1bHqHEg0eP_12clap_builder6output3fmtNtB2_9Colorizer12with_content(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.p = invoke noundef ptr @_RNvMs_NtNtCsf1bHqHEg0eP_12clap_builder6output3fmtNtB4_9Colorizer5print(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder6output3fmt9ColorizerECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.p

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder6output3fmt9ColorizerECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.k, %bb.h
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsf1bHqHEg0eP_12clap_builder6output3fmt9ColorizerECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMNtCsf1bHqHEg0eP_12clap_builder5errorNtB2_5Error8with_cmdCs9SMuO7kbZ2K_7git_xet(ptr noalias noundef nonnull returned align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [126 x i8], align 2               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.d = invoke noundef align 2 ptr @_RINvMNtNtCsf1bHqHEg0eP_12clap_builder7builder3extNtB3_10Extensions3getNtNtB5_7styling6StylesECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %._crit_edge unwind label %bb.b ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0) #23
          to label %.body unwind label %bb.k

._crit_edge:                                      ; preds = %bb.a
  %.not = icmp eq ptr %i.d, null
  %. = select i1 %.not, ptr @10, ptr %i.d         ; 9 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.b, ptr noundef nonnull align 2 dereferenceable(14) %., i64 14, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %., i64 14
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.g, ptr noundef nonnull align 2 dereferenceable(14) %i.f, i64 14, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %., i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.i, ptr noundef nonnull align 2 dereferenceable(14) %i.h, i64 14, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %., i64 42
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.k, ptr noundef nonnull align 2 dereferenceable(14) %i.j, i64 14, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %., i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.m, ptr noundef nonnull align 2 dereferenceable(14) %i.l, i64 14, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %., i64 70
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.o, ptr noundef nonnull align 2 dereferenceable(14) %i.n, i64 14, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %., i64 84
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.q, ptr noundef nonnull align 2 dereferenceable(14) %i.p, i64 14, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %., i64 98
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.s, ptr noundef nonnull align 2 dereferenceable(14) %i.r, i64 14, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %., i64 112
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %i.u, ptr noundef nonnull align 2 dereferenceable(14) %i.t, i64 14, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(126) %i.v, ptr noundef nonnull align 2 dereferenceable(126) %i.b, i64 126, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 700
  %i.x = load i32, ptr %i.w, align 4, !noundef !9 ; 4 uses
  %i.y = and i32 %i.x, 536870912
  %.not14 = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.aa = load i32, ptr %i.z, align 8             ; 4 uses
  %i.ab = and i32 %i.aa, 536870912
  %.not15 = icmp eq i32 %i.ab, 0
  %or.cond = select i1 %.not14, i1 %.not15, i1 false
  %i.ac = or i32 %i.aa, %i.x
  %i.ad = lshr i32 %i.ac, 28
  %i.ae = trunc nuw nsw i32 %i.ad to i8
  %spec.select = and i8 %i.ae, 1
  %.sroa.09.0 = select i1 %or.cond, i8 %spec.select, i8 2
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 247
  store i8 %.sroa.09.0, ptr %i.af, align 1
  %i.ag = and i32 %i.x, 262144
  %.not.i = icmp eq i32 %i.ag, 0
  %i.ah = and i32 %i.aa, 262144
  %.not1.i = icmp eq i32 %i.ah, 0
  %or.cond1.i = select i1 %.not.i, i1 %.not1.i, i1 false
  br i1 %or.cond1.i, label %bb.c, label %_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.c:                                             ; preds = %._crit_edge
  %i.ai = or i32 %i.aa, %i.x                      ; 2 uses
  %i.aj = and i32 %i.ai, 536870912
  %or.cond.i = icmp eq i32 %i.aj, 0
  br i1 %or.cond.i, label %bb.d, label %_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit

bb.d:                                             ; preds = %bb.c
  %i.ak = lshr i32 %i.ai, 28
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %spec.select.i = and i8 %i.al, 1
  br label %_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit

_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit: ; preds = %bb.d, %bb.c, %._crit_edge
  %.sroa.0.0.i = phi i8 [ 2, %bb.c ], [ 2, %._crit_edge ], [ %spec.select.i, %bb.d ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 %.sroa.0.0.i, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCsf1bHqHEg0eP_12clap_builder5error6format13get_help_flag(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !764)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !20, !alias.scope !765, !noundef !9
  %switch.i.i = icmp ugt i64 %i.ao, -3
  br i1 %switch.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %bb.i unwind label %bb.g, !noalias !764

bb.g:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !766
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull align 8 %0) #23
          to label %.body unwind label %bb.h, !noalias !764

bb.h:                                             ; preds = %bb.g
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !764
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !766
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0

.body:                                            ; preds = %bb.g, %bb.b, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %i.e, %bb.b ], [ %i.ap, %bb.g ]
  resume { ptr, i32 } %.pn

bb.j:                                             ; preds = %_RNvMs5_NtNtCsf1bHqHEg0eP_12clap_builder7builder7commandNtB5_7Command10color_help.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsf1bHqHEg0eP_12clap_builder5error5ErrorECs9SMuO7kbZ2K_7git_xet(ptr nonnull %0) #23
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs31YAwBA1AlL_19xet_core_structures10merklehash9data_hash8DataHashyEE6resizeCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
