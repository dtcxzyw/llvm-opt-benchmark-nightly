Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.06?download=true
inline.NumInlined: 2312
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 35
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNSNvYNCNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_completes4_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE9call_once6vtableBa_:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !noalias !2575
  br label %_RNvYNCNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_completes4_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE9call_onceB8_.exit

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !2576
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !2576
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2576
  br label %_RNvYNCNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_completes4_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE9call_onceB8_.exit

_RNvYNCNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_completes4_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEE9call_onceB8_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYRDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputbEL_INtB9_6FnOnceuE9call_once6vtableCs8frGy5WneL6_4fish(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !11, !noundef !10
  %i.d = tail call noundef zeroext i1 @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsRDINtB7_2FnuEp6OutputbEL_INtB7_6FnOnceuE9call_onceCs8frGy5WneL6_4fish(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load atomic i8, ptr %0 monotonic, align 1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool5store(ptr nofree noundef nonnull captures(none) %0, i1 noundef zeroext %1) unnamed_addr #7 {
bb.a:
  %i.a = zext i1 %1 to i8
  store atomic i8 %i.a, ptr %0 monotonic, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i32 @_RNvMNtCs8frGy5WneL6_4fish6parserNtB2_5Block10src_lineno(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i32 @_RNvMs5_NtCs8frGy5WneL6_4fish10parse_treeINtB5_7NodeRefNtNtB7_3ast11JobPipelineE17lineno_with_cacheB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i32 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i16 noundef %3, ptr noundef nonnull %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %5, ptr noalias nofree noundef align 8 dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.d, i64 %i.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2579
  %i.h = tail call { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @86), !noalias !2579 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @50, i64 32, i1 false), !noalias !2579
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.i, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2579
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.j, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !2579
  invoke void @_RINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2A_8adapters3map3MapINtNtNtB2C_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB4u_8wildcard8expanderNtB5e_16WildCardExpander3new0EEB4u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.g)
          to label %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtB25_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB48_8wildcard8expanderNtB4S_16WildCardExpander3new0EEB48_.exit unwind label %bb.b, !noalias !2579

bb.b:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %common.resume unwind label %bb.c, !noalias !2579

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2579
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.n, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtB25_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB48_8wildcard8expanderNtB4S_16WildCardExpander3new0EEB48_.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2579
  %i.m = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @86)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtB25_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB48_8wildcard8expanderNtB4S_16WildCardExpander3new0EEB48_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.f

bb.e:                                             ; preds = %_RINvXs7_NtNtNtCsaL1QbXo9JQH_3std11collections4hash3setINtB6_7HashSetNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB23_8adapters3map3MapINtNtNtB25_5slice4iter4IterNtNtCs8frGy5WneL6_4fish8complete10CompletionENCNvMNtNtB48_8wildcard8expanderNtB4S_16WildCardExpander3new0EEB48_.exit
  %i.o = extractvalue { i64, i64 } %i.m, 0
  %i.p = extractvalue { i64, i64 } %i.m, 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %4, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %5, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %2, ptr %i.t, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) @50, i64 32, i1 false)
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.o, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.p, ptr %.sroa.56.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i16 %3, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %6, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 0, ptr %i.x, align 2
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 139
  store i8 0, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i8 0, ptr %i.z, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [88 x i8], align 8                ; 7 uses
  %i.g = alloca [88 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [4 x i8], align 4                 ; 3 uses
  %i.j = alloca [4 x i8], align 4                 ; 3 uses
  %i.k = alloca [16 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [4 x i8], align 4                 ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [4 x i8], align 4                 ; 4 uses
  %i.w = alloca [4 x i8], align 4                 ; 4 uses
  %i.x = alloca [88 x i8], align 8                ; 7 uses
  %i.y = alloca [88 x i8], align 8                ; 15 uses
  %i.z = alloca [88 x i8], align 8                ; 6 uses
  %i.aa = alloca [88 x i8], align 8               ; 9 uses
  %i.ab = alloca [24 x i8], align 8               ; 8 uses
  %i.ac = alloca [24 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 8 uses
  %i.ag = alloca [24 x i8], align 8               ; 9 uses
  %i.ah = alloca [24 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 6 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !2703, !nonnull !10, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !2703, !nonnull !10, !align !11, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !10, !noalias !2703, !nonnull !10
  %i.ao = tail call noundef zeroext i1 %i.an(ptr noundef nonnull %i.aj) #43, !noalias !2703, !inline_history !5
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 12 uses
  %i.aq = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2703, !noundef !10
  %i.ar = trunc nuw i8 %i.aq to i1
  %i.as = or i1 %i.ao, %i.ar                      ; 2 uses
  %i.at = zext i1 %i.as to i8
  store i8 %i.at, ptr %i.ap, align 2, !alias.scope !2703
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 6 uses
  %i.av = load i8, ptr %i.au, align 1, !range !19
  %i.aw = trunc nuw i8 %i.av to i1
  %.sroa.0.0.i = select i1 %i.as, i1 true, i1 %i.aw
  br i1 %.sroa.0.0.i, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ax = tail call { i64, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9find_charCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, i32 noundef 47) ; 2 uses
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ba = extractvalue { i64, i64 } %i.ax, 1      ; 4 uses
  %.not.i = icmp ugt i64 %i.ba, %4
  br i1 %.not.i, label %bb.d, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit, !prof !27

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @62, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #40, !noalias !2704
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit: ; preds = %bb.c
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ba
  %i.bc = sub nuw nsw i64 %4, %i.ba
  %i.bd = tail call { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bb, i64 noundef %i.bc, i64 noundef 1) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 0
  %i.bf = extractvalue { ptr, i64 } %i.bd, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit
  %.sroa.14.0 = phi i64 [ %i.ba, %_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit ], [ %4, %bb.b ] ; 14 uses
  %.sroa.7.0 = phi i64 [ %i.bf, %_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit ], [ undef, %bb.b ] ; 5 uses
  %.sroa.02.0 = phi ptr [ %i.be, %_RNvMNtCs3oUPovFnLWP_4core5sliceSm8split_atCs8frGy5WneL6_4fish.exit ], [ null, %bb.b ] ; 6 uses
  %.not73 = icmp ne ptr %.sroa.02.0, null         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2705)
  %.idx257 = shl nuw nsw i64 %.sroa.14.0, 2
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %.idx257
  %cond = icmp eq i64 %.sroa.14.0, 0
  br i1 %cond, label %.thread135, label %.lr.ph

bb.f:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %.not.not.not.i.not.not.not.i.not = icmp eq ptr %i.bh, %i.bg
  br i1 %.not.not.not.i.not.not.not.i.not, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.bi = phi ptr [ %i.bh, %bb.f ], [ %3, %bb.e ] ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !alias.scope !2705, !noalias !2706, !noundef !10 ; 4 uses
  %i.bk = xor i32 %i.bj, 55296
  %i.bl = add i32 %i.bk, -1114112
  %i.bm = icmp ult i32 %i.bl, -1112064
  br i1 %i.bm, label %.split.i.i.i, label %bb.g

.split.i.i.i:                                     ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !2707
  store i32 %i.bj, ptr %i.r, align 4, !noalias !2707
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40, !noalias !2708
  unreachable

bb.g:                                             ; preds = %.lr.ph
  %i.bn = icmp ult i32 %i.bj, 1114112
  tail call void @llvm.assume(i1 %i.bn)
  %.off.i.i.i.i = add nsw i32 %i.bj, -64992
  %switch.i.i.i.i = icmp ult i32 %.off.i.i.i.i, 3
  br i1 %switch.i.i.i.i, label %_RINvNtCs8frGy5WneL6_4fish8wildcard21wildcard_has_internalRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_.exit, label %bb.f

.thread:                                          ; preds = %bb.f
  br i1 %.not73, label %bb.h, label %bb.ba

bb.h:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.bo = load i64, ptr %i.t, align 8, !range !26, !noundef !10
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !40, !noundef !10 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.i, label %bb.j, !prof !27

bb.i:                                             ; preds = %bb.h
  %i.bt = load i64, ptr %i.bs, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #42
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bu = load ptr, ptr %i.bs, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bv = icmp ule i64 %2, %i.br
  tail call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.p, %bb.j
  store i64 %i.br, ptr %i.ae, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.bu, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  store i64 %2, ptr %.sroa.646.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2709)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, i64 noundef range(i64 0, 4611686018427387904) %.sroa.14.0)
          to label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit unwind label %bb.l, !noalias !2710

bb.l:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae) #37
          to label %common.resume unwind label %bb.m, !noalias !2710

bb.m:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2710
  unreachable

common.resume:                                    ; preds = %bb.fd, %.loopexit.split-lp.i, %bb.es, %bb.db, %bb.cm, %.body, %.body103, %bb.fa, %bb.ay, %bb.n, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %.pn11.i, %.loopexit.split-lp.i ], [ %i.bw, %bb.l ], [ %i.ce, %bb.n ], [ %i.ex, %bb.ay ], [ %.pn68, %.body ], [ %i.js, %bb.cm ], [ %i.lb, %bb.db ], [ %i.pc, %bb.fa ], [ %eh.lpad-body104, %.body103 ], [ %i.ov, %bb.es ], [ %i.ph, %bb.fd ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit: ; preds = %bb.k
  %i.by = load i64, ptr %.sroa.646.0..sroa_idx, align 8, !alias.scope !2711, !noundef !10 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 2305843009213693952
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load ptr, ptr %.sroa.445.0..sroa_idx, align 8, !alias.scope !2711, !nonnull !10, !noundef !10
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.by
  %i.cc = shl nuw nsw i64 %.sroa.14.0, 2          ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cb, ptr nonnull readonly align 4 %3, i64 %i.cc, i1 false), !noalias !2709
  %.pre.i.i.i = load i64, ptr %.sroa.646.0..sroa_idx, align 8, !alias.scope !2711
  %i.cd = add i64 %.pre.i.i.i, %.sroa.14.0
  store i64 %i.cd, ptr %.sroa.646.0..sroa_idx, align 8, !alias.scope !2711
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false), !alias.scope !2712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !2713)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit78 unwind label %bb.n, !noalias !2714

bb.n:                                             ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af) #37
          to label %common.resume unwind label %bb.o, !noalias !2714

bb.o:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2714
  unreachable

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit78: ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit
  %i.cg = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !2715, !noundef !10 ; 2 uses
  %i.ci = icmp ult i64 %i.ch, 2305843009213693952
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !2715, !nonnull !10, !noundef !10
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ch
  store i32 47, ptr %i.cl, align 4, !noalias !2713
  %.pre.i.i.i77 = load i64, ptr %i.cg, align 8, !alias.scope !2715
  %i.cm = add i64 %.pre.i.i.i77, 1
  store i64 %i.cm, ptr %i.cg, align 8, !alias.scope !2715
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !alias.scope !2716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !10, !align !11, !noundef !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, i64 noundef %6, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.j
  %i.cr = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull align 4 %1, i64 %i.cr, i1 false)
  br label %bb.k

.body:                                            ; preds = %bb.ag, %bb.z, %bb.v, %bb.q, %bb.ac
  %.pn68 = phi { ptr, i32 } [ %.pn66, %bb.ac ], [ %i.dj, %bb.z ], [ %i.db, %bb.v ], [ %i.cs, %bb.q ], [ %i.ee, %bb.ag ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ag) #37
          to label %common.resume unwind label %bb.aw

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %bb.s, %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit78
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit78
  %i.ct = load i64, ptr %i.s, align 8, !range !26, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !40, !noundef !10 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  br i1 %i.cu, label %bb.s, label %bb.t, !prof !27

bb.s:                                             ; preds = %bb.r
  %i.cy = load i64, ptr %i.cx, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.cw, i64 %i.cy) #42
          to label %bb.ao unwind label %bb.q
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand:bb.a
  call void @llvm.assume(i1 %i.df)
  %i.dg = load ptr, ptr %.sroa.448.0..sroa_idx, align 8, !alias.scope !2719, !nonnull !10, !noundef !10
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.de
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dh, ptr nonnull readonly align 4 %3, i64 %i.cc, i1 false), !noalias !2717
  %.pre.i.i.i81 = load i64, ptr %.sroa.649.0..sroa_idx, align 8, !alias.scope !2719
  %i.di = add i64 %.pre.i.i.i81, %.sroa.14.0
  store i64 %i.di, ptr %.sroa.649.0..sroa_idx, align 8, !alias.scope !2719
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false), !alias.scope !2720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.experimental.noalias.scope.decl(metadata !2721)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %bb.ab unwind label %bb.z, !noalias !2722

bb.z:                                             ; preds = %bb.y
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ac) #37
          to label %.body unwind label %bb.aa, !noalias !2722

bb.aa:                                            ; preds = %bb.z
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2722
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !2723, !noundef !10 ; 2 uses
  %i.dn = icmp ult i64 %i.dm, 2305843009213693952
  call void @llvm.assume(i1 %i.dn)
  %i.do = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !alias.scope !2723, !nonnull !10, !noundef !10
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %i.dm
  store i32 47, ptr %i.dq, align 4, !noalias !2721
  %.pre.i.i.i84 = load i64, ptr %i.dl, align 8, !alias.scope !2723
  %i.dr = add i64 %.pre.i.i.i84, 1
  store i64 %i.dr, ptr %i.dl, align 8, !alias.scope !2723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !alias.scope !2724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !10, !noundef !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !noundef !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !nonnull !10, !noundef !10
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !noundef !10
  invoke void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dt, i64 noundef %i.dv, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dx, i64 noundef %i.dz, i1 noundef zeroext %7)
          to label %bb.ae unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ax, %bb.at, %bb.ad
  %.pn66 = phi { ptr, i32 } [ %i.ea, %bb.ad ], [ %.pn, %bb.at ], [ %.pn, %bb.ax ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ad) #37
          to label %.body unwind label %bb.aw

bb.ad:                                            ; preds = %.invoke225, %bb.an, %bb.am, %bb.aj, %bb.ab
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ae:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 8, !noundef !10
  %i.ed = and i16 %i.ec, 256
  %.not61 = icmp eq i16 %i.ed, 0
  br i1 %.not61, label %bb.af, label %bb.ai

.sink.split:                                      ; preds = %.invoke225, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.ak, %bb.ai, %bb.ae
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.af
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.q

bb.ai:                                            ; preds = %bb.ae
  %i.eg = load ptr, ptr %i.cn, align 8, !nonnull !10, !align !11, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !noundef !10
  %i.ej = icmp eq i64 %i.ei, %i.cq
  br i1 %i.ej, label %bb.aj, label %bb.af

bb.aj:                                            ; preds = %bb.ai
  %i.ek = load ptr, ptr %i.ds, align 8, !nonnull !10, !noundef !10
  %i.el = load i64, ptr %i.du, align 8, !noundef !10
  %i.em = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ek, i64 noundef %i.el, i32 noundef 0)
          to label %bb.ak unwind label %bb.ad

bb.ak:                                            ; preds = %bb.aj
  %.not62 = icmp eq i32 %i.em, -1
  br i1 %.not62, label %bb.af, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.en = load i16, ptr %i.eb, align 8, !noundef !10
  %i.eo = and i16 %i.en, 8
  %.not63 = icmp eq i16 %i.eo, 0
  br i1 %.not63, label %bb.am, label %bb.an, !prof !27

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 67, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #42
          to label %bb.ao unwind label %bb.ad

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander8open_dir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
          to label %bb.ap unwind label %bb.ad

bb.ao:                                            ; preds = %bb.cp, %bb.am, %bb.s
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ep = load i64, ptr %i.aa, align 8, !range !24, !noundef !10
  %i.eq = icmp eq i64 %i.ep, -1
  br i1 %i.eq, label %.invoke225, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.z, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 88, i1 false)
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander45expand_literal_intermediate_segment_with_fuzz(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(88) %i.z, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %.sroa.14.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6)
          to label %bb.as unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.z) #37
          to label %bb.at unwind label %bb.aw

bb.as:                                            ; preds = %bb.aq
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.z)
          to label %bb.av unwind label %bb.au

bb.at:                                            ; preds = %bb.au, %bb.ar
  %.pn = phi { ptr, i32 } [ %i.et, %bb.au ], [ %i.er, %bb.ar ] ; 2 uses
  %i.es = load i64, ptr %i.aa, align 8, !range !24, !noundef !10
  %.not65 = icmp eq i64 %i.es, -1
  br i1 %.not65, label %bb.ax, label %bb.ac

bb.au:                                            ; preds = %bb.as
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.av:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.eu = load i64, ptr %i.aa, align 8, !range !24, !noundef !10
  %i.ev = icmp eq i64 %i.eu, -1
  br i1 %i.ev, label %.invoke225, label %.sink.split

bb.aw:                                            ; preds = %bb.fa, %.body103, %bb.ax, %bb.ar, %bb.ac, %.body
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.ax:                                            ; preds = %bb.at
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aa) #37
          to label %bb.ac unwind label %bb.aw

.invoke225:                                       ; preds = %bb.ap, %bb.av
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.aa)
          to label %.sink.split unwind label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92 unwind label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ex = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ey = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.ba:                                            ; preds = %bb.bc, %.thread, %bb.bb, %_RINvNtCs8frGy5WneL6_4fish8wildcard21wildcard_has_internalRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.fa = load i16, ptr %i.ez, align 8, !noundef !10
  %i.fb = and i16 %i.fa, 8
  %i.fc = icmp ne i16 %i.fb, 0
  call fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander8open_dir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %i.fc)
  %i.fd = load i64, ptr %i.x, align 8, !range !24, !noundef !10
  %i.fe = icmp eq i64 %i.fd, -1
  br i1 %i.fe, label %bb.dd, label %bb.bd

_RINvNtCs8frGy5WneL6_4fish8wildcard21wildcard_has_internalRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_.exit: ; preds = %bb.g
  %i.ff = icmp eq i64 %.sroa.14.0, 1
  %or.cond = and i1 %i.ff, %.not73
  br i1 %or.cond, label %bb.bb, label %bb.ba

bb.bb:                                            ; preds = %_RINvNtCs8frGy5WneL6_4fish8wildcard21wildcard_has_internalRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEB4_.exit
  %i.fg = load i32, ptr %3, align 4, !range !18, !noundef !10
  %i.fh = icmp eq i32 %i.fg, 64994
  br i1 %i.fh, label %bb.bc, label %bb.ba

bb.bc:                                            ; preds = %bb.bb
  tail call void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  %i.fi = load ptr, ptr %i.ai, align 8, !alias.scope !2725, !nonnull !10, !noundef !10
  %i.fj = load ptr, ptr %i.ak, align 8, !alias.scope !2725, !nonnull !10, !align !11, !noundef !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !invariant.load !10, !noalias !2725, !nonnull !10
  %i.fm = tail call noundef zeroext i1 %i.fl(ptr noundef nonnull %i.fi) #43, !noalias !2725, !inline_history !5
  %i.fn = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2725, !noundef !10
  %i.fo = trunc nuw i8 %i.fn to i1
  %i.fp = or i1 %i.fm, %i.fo                      ; 2 uses
  %i.fq = zext i1 %i.fp to i8
  store i8 %i.fq, ptr %i.ap, align 2, !alias.scope !2725
  %i.fr = load i8, ptr %i.au, align 1, !range !19
  %i.fs = trunc nuw i8 %i.fr to i1
  %.sroa.0.0.i93 = select i1 %i.fp, i1 true, i1 %i.fs
  br i1 %.sroa.0.0.i93, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit, label %bb.ba

bb.bd:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.y, ptr noundef nonnull align 8 dereferenceable(88) %i.x, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %.not73, label %bb.be, label %bb.bf

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i, %.backedge.i, %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit.i, %bb.bo, %bb.bn, %bb.bl, %bb.bg, %.invoke223, %.invoke221, %.invoke, %.split.i112.invoke, %bb.bj, %bb.bf, %bb.cy, %bb.cx, %bb.cq, %bb.cp, %bb.co, %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit, %bb.be
  %lpad.loopexit.split-lp268 = landingpad { ptr, i32 }
          cleanup
  br label %.body103

.body103:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bt, %bb.ca, %bb.cd, %bb.cf
  %eh.lpad-body104 = phi { ptr, i32 } [ %i.je, %bb.cd ], [ %i.jf, %bb.cf ], [ %i.ht, %bb.bt ], [ %i.iw, %bb.ca ], [ %lpad.loopexit.split-lp268, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.y) #37
          to label %common.resume unwind label %bb.aw

bb.be:                                            ; preds = %bb.bd
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander27expand_intermediate_segment(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %.sroa.14.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %i.ft = load i16, ptr %i.ez, align 8, !alias.scope !2726, !noundef !10
  %i.fu = and i16 %i.ft, 32
  %.not.i94 = icmp eq i16 %i.fu, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  %i.fv = load ptr, ptr %i.ai, align 8, !alias.scope !2728, !nonnull !10, !noundef !10
  %i.fw = load ptr, ptr %i.ak, align 8, !alias.scope !2728, !nonnull !10, !align !11, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !invariant.load !10, !noalias !2729, !nonnull !10
  %i.fz = invoke noundef zeroext i1 %i.fy(ptr noundef nonnull %i.fv) #43
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2635

.noexc:                                           ; preds = %bb.bf
  %i.ga = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2728, !noundef !10
  %i.gb = trunc nuw i8 %i.ga to i1
  %i.gc = or i1 %i.fz, %i.gb                      ; 2 uses
  %i.gd = zext i1 %i.gc to i8
  store i8 %i.gd, ptr %i.ap, align 2, !alias.scope !2728
  %i.ge = load i8, ptr %i.au, align 1, !range !19, !alias.scope !2726
  %i.gf = trunc nuw i8 %i.ge to i1
  %.sroa.0.0.i29.i = select i1 %i.gc, i1 true, i1 %i.gf
  br i1 %.sroa.0.0.i29.i, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.not10.i = icmp eq i64 %2, 0                   ; 2 uses
  %i.gi = shl nuw nsw i64 %2, 2                   ; 2 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.42.0..sroa_idx.i95 = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.noexc106, %.lr.ph.i
  %i.gn = invoke { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc96:                                         ; preds = %bb.bg
  %i.go = extractvalue { i64, ptr } %i.gn, 0
  %i.gp = extractvalue { i64, ptr } %i.gn, 1      ; 11 uses
  switch i64 %i.go, label %bb.bh [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit16.i
    i64 2, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit
  ]

bb.bh:                                            ; preds = %.noexc96
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2730
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gp) ]
  %i.gq = ptrtoint ptr %i.gp to i64               ; 2 uses
  %i.gr = and i64 %i.gq, 3
  switch i64 %i.gr, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 3, label %bb.bi
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 1, label %bb.bj
  ], !prof !13

default.unreachable:                              ; preds = %bb.dq, %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.gs = icmp ult ptr %i.gp, inttoptr (i64 188978561024 to ptr)
  %i.gt = and i64 %i.gq, 1095216660480
  %i.gu = icmp ne i64 %i.gt, 1095216660480
  call void @llvm.assume(i1 %i.gs)
  call void @llvm.assume(i1 %i.gu)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i

bb.bj:                                            ; preds = %bb.bh
  %i.gv = getelementptr i8, ptr %i.gp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  %i.gw = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.gv, ptr %i.gw, align 8, !alias.scope !2731, !noalias !2730
  store i8 3, ptr %i.k, align 8, !alias.scope !2731, !noalias !2730
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gw)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2730
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit16.i: ; preds = %.noexc96
  br i1 %.not.i94, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.noexc98, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit16.i
  %i.gx = load i16, ptr %i.ez, align 8, !alias.scope !2726, !noundef !10
  %i.gy = and i16 %i.gx, 8
  %.not8.i = icmp eq i16 %i.gy, 0
  br i1 %.not8.i, label %bb.bm, label %bb.bn

bb.bl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit16.i
  %i.gz = invoke noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry6is_dir(ptr noundef nonnull align 8 %i.gp)
          to label %.noexc98 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc98:                                         ; preds = %bb.bl
  br i1 %i.gz, label %bb.bk, label %.backedge.i

bb.bm:                                            ; preds = %bb.bk
  %i.ha = invoke fastcc noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard14wildcard_matchRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBR_6utfstr8Utf32StrEB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %.sroa.14.0)
          to label %.noexc99 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc99:                                         ; preds = %bb.bm
  br i1 %i.ha, label %bb.bo, label %.backedge.i

bb.bn:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !2730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2730
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc100 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc100:                                        ; preds = %bb.bn
  %i.hb = load i64, ptr %i.m, align 8, !range !26, !noalias !2730, !noundef !10
  %i.hc = trunc nuw i64 %i.hb to i1
  %i.hd = load i64, ptr %i.gg, align 8, !range !40, !noalias !2730, !noundef !10 ; 3 uses
  br i1 %i.hc, label %bb.bw, label %bb.bx, !prof !27

bb.bo:                                            ; preds = %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2730
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %.noexc101 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc101:                                        ; preds = %bb.bo
  %i.he = load i64, ptr %i.l, align 8, !range !26, !noalias !2730, !noundef !10
  %i.hf = trunc nuw i64 %i.he to i1
  %i.hg = load i64, ptr %i.gl, align 8, !range !40, !noalias !2730, !noundef !10 ; 3 uses
  br i1 %i.hf, label %bb.bp, label %bb.bq, !prof !27

bb.bp:                                            ; preds = %.noexc101
  %i.hh = load i64, ptr %i.gm, align 8, !noalias !2730
  br label %.invoke

bb.bq:                                            ; preds = %.noexc101
  %i.hi = load ptr, ptr %i.gm, align 8, !noalias !2730, !nonnull !10, !noundef !10 ; 2 uses
  %i.hj = icmp ule i64 %2, %i.hg
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2730
  br i1 %.not10.i, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bv, %bb.bq
  store i64 %i.hg, ptr %i.n, align 8, !noalias !2730
  store ptr %i.hi, ptr %.sroa.42.0..sroa_idx.i95, align 8, !noalias !2730
  store i64 %2, ptr %.sroa.63.0..sroa_idx.i, align 8, !noalias !2730
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !noalias !2732, !nonnull !10, !noundef !10
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !2732, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2733)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef range(i64 0, 4611686018427387904) %i.hn)
          to label %.noexc.i.i unwind label %bb.bt, !noalias !2734

.noexc.i.i:                                       ; preds = %bb.br
  %i.ho = load i64, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !2735, !noalias !2730, !noundef !10 ; 3 uses
  %i.hp = icmp ult i64 %i.ho, 2305843009213693952
  call void @llvm.assume(i1 %i.hp)
  %.not.i.i.i.i = icmp eq i64 %i.hn, 0
  br i1 %.not.i.i.i.i, label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc.i.i
  %i.hq = load ptr, ptr %.sroa.42.0..sroa_idx.i95, align 8, !alias.scope !2735, !noalias !2730, !nonnull !10, !noundef !10
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho
  %i.hs = shl nuw nsw i64 %i.hn, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hr, ptr nonnull readonly align 4 %i.hl, i64 %i.hs, i1 false), !noalias !2736
  %.pre.i.i.i.i = load i64, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !2735, !noalias !2730
  br label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit.i

bb.bt:                                            ; preds = %bb.br
  %i.ht = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #37
          to label %.body103 unwind label %bb.bu, !noalias !2734

bb.bu:                                            ; preds = %bb.bt
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2734
  unreachable

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit.i: ; preds = %bb.bs, %.noexc.i.i
  %i.hv = phi i64 [ %.pre.i.i.i.i, %bb.bs ], [ %i.ho, %.noexc.i.i ]
  %i.hw = add i64 %i.hv, %i.hn
  store i64 %i.hw, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !2735, !noalias !2730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !alias.scope !2737, !noalias !2730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2730
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander20add_expansion_result(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
          to label %.noexc105 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc105:                                        ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2730
  br label %.backedge.i

bb.bv:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.hi, ptr nonnull readonly align 4 %1, i64 %i.gi, i1 false)
  br label %bb.br

.backedge.i:                                      ; preds = %.noexc108, %.noexc105, %.noexc99, %.noexc98
  call void @llvm.experimental.noalias.scope.decl(metadata !2738)
  %i.hx = load ptr, ptr %i.ai, align 8, !alias.scope !2739, !nonnull !10, !noundef !10
  %i.hy = load ptr, ptr %i.ak, align 8, !alias.scope !2739, !nonnull !10, !align !11, !noundef !10
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load ptr, ptr %i.hz, align 8, !invariant.load !10, !noalias !2740, !nonnull !10
  %i.ib = invoke noundef zeroext i1 %i.ia(ptr noundef nonnull %i.hx) #43
          to label %.noexc106 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !2635

.noexc106:                                        ; preds = %.backedge.i
  %i.ic = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2739, !noundef !10
  %i.id = trunc nuw i8 %i.ic to i1
  %i.ie = or i1 %i.ib, %i.id                      ; 2 uses
  %i.if = zext i1 %i.ie to i8
  store i8 %i.if, ptr %i.ap, align 2, !alias.scope !2739
  %i.ig = load i8, ptr %i.au, align 1, !range !19, !alias.scope !2726
  %i.ih = trunc nuw i8 %i.ig to i1
  %.sroa.0.0.i.i = select i1 %i.ie, i1 true, i1 %i.ih
  br i1 %.sroa.0.0.i.i, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit, label %bb.bg

bb.bw:                                            ; preds = %.noexc100
  %i.ii = load i64, ptr %i.gh, align 8, !noalias !2730
  br label %.invoke

.invoke:                                          ; preds = %bb.bp, %bb.bw
  %i.ij = phi i64 [ %i.hd, %bb.bw ], [ %i.hg, %bb.bp ]
  %i.ik = phi i64 [ %i.ii, %bb.bw ], [ %i.hh, %bb.bp ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ij, i64 %i.ik) #42
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bx:                                            ; preds = %.noexc100
  %i.il = load ptr, ptr %i.gh, align 8, !noalias !2730, !nonnull !10, !noundef !10 ; 2 uses
  %i.im = icmp ule i64 %2, %i.hd
  call void @llvm.assume(i1 %i.im)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2730
  br i1 %.not10.i, label %bb.by, label %bb.cc

bb.by:                                            ; preds = %bb.cc, %bb.bx
  store i64 %i.hd, ptr %i.p, align 8, !noalias !2730
  store ptr %i.il, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2730
  store i64 %2, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !2730
  %i.in = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !noalias !2732, !nonnull !10, !noundef !10
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !2732, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef range(i64 0, 4611686018427387904) %i.iq)
          to label %.noexc.i17.i unwind label %bb.ca, !noalias !2742

.noexc.i17.i:                                     ; preds = %bb.by
  %i.ir = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2743, !noalias !2730, !noundef !10 ; 3 uses
  %i.is = icmp ult i64 %i.ir, 2305843009213693952
  call void @llvm.assume(i1 %i.is)
  %.not.i.i.i18.i = icmp eq i64 %i.iq, 0
  br i1 %.not.i.i.i18.i, label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit20.i, label %bb.bz

bb.bz:                                            ; preds = %.noexc.i17.i
  %i.it = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !2743, !noalias !2730, !nonnull !10, !noundef !10
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.ir
  %i.iv = shl nuw nsw i64 %i.iq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.iu, ptr nonnull readonly align 4 %i.io, i64 %i.iv, i1 false), !noalias !2744
  %.pre.i.i.i19.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2743, !noalias !2730
  br label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit20.i

bb.ca:                                            ; preds = %bb.by
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p) #37
          to label %.body103 unwind label %bb.cb, !noalias !2742

bb.cb:                                            ; preds = %bb.ca
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2742
  unreachable

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit20.i: ; preds = %bb.bz, %.noexc.i17.i
  %i.iy = phi i64 [ %.pre.i.i.i19.i, %bb.bz ], [ %i.ir, %.noexc.i17.i ]
  %i.iz = add i64 %i.iy, %i.iq
  store i64 %i.iz, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !2743, !noalias !2730
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !alias.scope !2745, !noalias !2730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2730
  %i.ja = load ptr, ptr %i.gj, align 8, !noalias !2730, !nonnull !10, !noundef !10
  %i.jb = load i64, ptr %i.gk, align 8, !noalias !2730, !noundef !10
  %i.jc = load ptr, ptr %i.in, align 8, !noalias !2732, !nonnull !10, !noundef !10
  %i.jd = load i64, ptr %i.ip, align 8, !noalias !2732, !noundef !10
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25try_add_completion_result(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ja, i64 noundef %i.jb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jc, i64 noundef %i.jd, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 1, 0) %.sroa.14.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull align 8 %i.gp, i1 noundef zeroext %7)
          to label %bb.ce unwind label %bb.cd, !noalias !2732

bb.cc:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.il, ptr nonnull readonly align 4 %1, i64 %i.gi, i1 false)
  br label %bb.by

bb.cd:                                            ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit20.i
  %i.je = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q) #37
          to label %.body103 unwind label %bb.ch, !noalias !2732

bb.ce:                                            ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit20.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i unwind label %bb.cf, !noalias !2732

bb.cf:                                            ; preds = %bb.ce
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body103 unwind label %bb.cg, !noalias !2732

bb.cg:                                            ; preds = %bb.cf
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2732
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ce
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc108:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2730
  br label %.backedge.i

bb.ch:                                            ; preds = %bb.cd
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2732
  unreachable

_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit: ; preds = %.noexc106, %.noexc96, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i, %.noexc, %bb.be
  %i.ji = invoke { i64, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt9find_charCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %.sroa.14.0, i32 noundef 64994)
          to label %bb.ci unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ci:                                            ; preds = %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander19expand_last_segment.exit
  %i.jj = extractvalue { i64, i64 } %i.ji, 0
  %i.jk = extractvalue { i64, i64 } %i.ji, 1      ; 3 uses
  %i.jl = trunc nuw i64 %i.jj to i1
  br i1 %i.jl, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.jm = icmp eq i64 %i.jk, -1
  br i1 %i.jm, label %bb.cp, label %bb.co

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !2746)
  %i.jn = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2747)
  call void @llvm.experimental.noalias.scope.decl(metadata !2748)
  %i.jo = load ptr, ptr %i.jn, align 8, !alias.scope !2749, !nonnull !10, !noundef !10 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !2749, !noundef !10
  %i.jq = add i64 %i.jp, -1                       ; 2 uses
  store i64 %i.jq, ptr %i.jo, align 8, !noalias !2749
  %i.jr = icmp eq i64 %i.jq, 0
  br i1 %i.jr, label %bb.cl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit

bb.cl:                                            ; preds = %bb.ck
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.jn) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.js = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y) #37
          to label %common.resume unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit: ; preds = %bb.ck, %bb.cl
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.co:                                            ; preds = %bb.cj
  %i.ju = add nuw i64 %i.jk, 1
  %i.jv = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt8slice_toCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %.sroa.14.0, i64 noundef %i.ju)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cp:                                            ; preds = %bb.cj
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @91) #42
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.co
  %i.jw = extractvalue { ptr, i64 } %i.jv, 0      ; 3 uses
  %i.jx = extractvalue { ptr, i64 } %i.jv, 1      ; 3 uses
  %i.jy = invoke { ptr, i64 } @_RNvYNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrNtCskr4qsHYS30i_15fish_widestring4WExt10slice_fromCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %i.jk)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cr:                                            ; preds = %bb.cq
  %i.jz = extractvalue { ptr, i64 } %i.jy, 0      ; 3 uses
  %i.ka = extractvalue { ptr, i64 } %i.jy, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jw) ]
  %i.kb = icmp eq i64 %i.jx, 0
  br i1 %i.kb, label %.invoke223, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.idx = shl nuw nsw i64 %i.jx, 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jw, i64 %.idx
  %i.kd = getelementptr inbounds i8, ptr %i.kc, i64 -4
  %i.ke = load i32, ptr %i.kd, align 4, !noalias !2750, !noundef !10 ; 5 uses
  %i.kf = xor i32 %i.ke, 55296
  %i.kg = add i32 %i.kf, -1114112
  %i.kh = icmp ult i32 %i.kg, -1112064
  br i1 %i.kh, label %.split.i, label %bb.ct

.split.i:                                         ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2751
  store i32 %i.ke, ptr %i.j, align 4, !noalias !2751
  br label %.split.i112.invoke

bb.ct:                                            ; preds = %bb.cs
  %i.ki = icmp ult i32 %i.ke, 1114112
  call void @llvm.assume(i1 %i.ki)
  store i32 %i.ke, ptr %i.w, align 4
  %i.kj = icmp eq i32 %i.ke, 64994
  br i1 %i.kj, label %bb.cu, label %.invoke221, !prof !17

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.jz) ]
  %i.kk = icmp eq i64 %i.ka, 0
  br i1 %i.kk, label %.invoke223, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.kl = load i32, ptr %i.jz, align 4, !noalias !2752, !noundef !10 ; 5 uses
  %i.km = xor i32 %i.kl, 55296
  %i.kn = add i32 %i.km, -1114112
  %i.ko = icmp ult i32 %i.kn, -1112064
  br i1 %i.ko, label %.split.i112, label %bb.cw

.split.i112:                                      ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2753
  store i32 %i.kl, ptr %i.i, align 4, !noalias !2753
  br label %.split.i112.invoke

.split.i112.invoke:                               ; preds = %.split.i, %.split.i112
  %i.kp = phi ptr [ %i.i, %.split.i112 ], [ %i.j, %.split.i ]
  %i.kq = phi ptr [ @518, %.split.i112 ], [ @524, %.split.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.kp, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kq) #40
          to label %.split.i112.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.i112.cont:                                 ; preds = %.split.i112.invoke
  unreachable

bb.cw:                                            ; preds = %bb.cv
  %i.kr = icmp ult i32 %i.kl, 1114112
  call void @llvm.assume(i1 %i.kr)
  store i32 %i.kl, ptr %i.v, align 4
  %i.ks = icmp eq i32 %i.kl, 64994
  br i1 %i.ks, label %bb.cx, label %.invoke221, !prof !17

.invoke223:                                       ; preds = %bb.cu, %bb.cr
  %i.kt = phi ptr [ @92, %bb.cr ], [ @94, %bb.cu ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kt) #42
          to label %.cont224 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont224:                                         ; preds = %.invoke223
  unreachable

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  invoke void @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter6rewind(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke221:                                       ; preds = %bb.cw, %bb.ct
  %i.ku = phi ptr [ %i.w, %bb.ct ], [ %i.v, %bb.cw ]
  %i.kv = phi ptr [ @96, %bb.ct ], [ @95, %bb.cw ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedccECs5UXtnEuoeIl_11fish_common(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ku, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @93, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kv) #42
          to label %.cont222 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont222:                                         ; preds = %.invoke221
  unreachable

bb.cy:                                            ; preds = %bb.cx
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander27expand_intermediate_segment(ptr noalias nofree noundef align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef align 8 dereferenceable(88) %i.y, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jw, i64 noundef %i.jx, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jz, i64 noundef %i.ka, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, i1 noundef zeroext %7)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.experimental.noalias.scope.decl(metadata !2754)
  %i.kw = getelementptr inbounds nuw i8, ptr %i.y, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.experimental.noalias.scope.decl(metadata !2756)
  %i.kx = load ptr, ptr %i.kw, align 8, !alias.scope !2757, !nonnull !10, !noundef !10 ; 2 uses
  %i.ky = load i64, ptr %i.kx, align 8, !noalias !2757, !noundef !10
  %i.kz = add i64 %i.ky, -1                       ; 2 uses
  store i64 %i.kz, ptr %i.kx, align 8, !noalias !2757
  %i.la = icmp eq i64 %i.kz, 0
  br i1 %i.la, label %bb.da, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit114

bb.da:                                            ; preds = %bb.cz
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kw) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit114 unwind label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.lb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y) #37
          to label %common.resume unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit114: ; preds = %bb.cz, %bb.da
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.dd:                                            ; preds = %bb.ba
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit: ; preds = %bb.bc, %bb.a, %bb.eu, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i, %bb.dm, %bb.dh, %bb.df, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit, %bb.dd, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit92, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit114, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit131
  ret void

.thread135:                                       ; preds = %bb.e
  br i1 %.not73, label %bb.de, label %bb.df

bb.de:                                            ; preds = %.thread135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef %6, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.ld = load i64, ptr %i.u, align 8, !range !26, !noundef !10
  %i.le = trunc nuw i64 %i.ld to i1
  %i.lf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.lg = load i64, ptr %i.lf, align 8, !range !40, !noundef !10 ; 4 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.le, label %bb.ev, label %bb.ew, !prof !27

bb.df:                                            ; preds = %.thread135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2759)
  %i.li = load ptr, ptr %i.ai, align 8, !alias.scope !2760, !nonnull !10, !noundef !10
  %i.lj = load ptr, ptr %i.ak, align 8, !alias.scope !2760, !nonnull !10, !align !11, !noundef !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ll = load ptr, ptr %i.lk, align 8, !invariant.load !10, !noalias !2761, !nonnull !10
  %i.lm = tail call noundef zeroext i1 %i.ll(ptr noundef nonnull %i.li) #43, !noalias !2761, !inline_history !2682
  %i.ln = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2760, !noundef !10
  %i.lo = trunc nuw i8 %i.ln to i1
  %i.lp = or i1 %i.lm, %i.lo                      ; 2 uses
  %i.lq = zext i1 %i.lp to i8
  store i8 %i.lq, ptr %i.ap, align 2, !alias.scope !2760
  %i.lr = load i8, ptr %i.au, align 1, !range !19, !alias.scope !2758
  %i.ls = trunc nuw i8 %i.lr to i1
  %.sroa.0.0.i.i115 = select i1 %i.lp, i1 true, i1 %i.ls
  br i1 %.sroa.0.0.i.i115, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.lu = load i16, ptr %i.lt, align 8, !alias.scope !2758, !noundef !10 ; 2 uses
  %i.lv = and i16 %i.lu, 8
  %.not.i116 = icmp eq i16 %i.lv, 0
  br i1 %.not.i116, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.lw = tail call noundef i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 0), !noalias !2758
  %i.lx = icmp eq i32 %i.lw, -1
  br i1 %i.lx, label %bb.dj, label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2762
  call fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander8open_dir(ptr noalias nofree noundef align 8 captures(address) dereferenceable(88) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  %i.ly = load i64, ptr %i.f, align 8, !range !24, !noalias !2762, !noundef !10
  %i.lz = icmp eq i64 %i.ly, -1
  br i1 %i.lz, label %bb.eu, label %bb.do

bb.dj:                                            ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2762
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !noalias !2758
  %i.ma = load i64, ptr %i.c, align 8, !range !26, !noalias !2762, !noundef !10
  %i.mb = trunc nuw i64 %i.ma to i1
  %i.mc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.md = load i64, ptr %i.mc, align 8, !range !40, !noalias !2762, !noundef !10 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.mb, label %bb.dk, label %bb.dl, !prof !27

bb.dk:                                            ; preds = %bb.dj
  %i.mf = load i64, ptr %i.me, align 8, !noalias !2762
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.md, i64 %i.mf) #42, !noalias !2758
  unreachable

bb.dl:                                            ; preds = %bb.dj
  %i.mg = load ptr, ptr %i.me, align 8, !noalias !2762, !nonnull !10, !noundef !10 ; 2 uses
  %i.mh = icmp ule i64 %2, %i.md
  tail call void @llvm.assume(i1 %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2762
  %.not6.i = icmp eq i64 %2, 0
  br i1 %.not6.i, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  store i64 %i.md, ptr %i.h, align 8, !noalias !2762
  %.sroa.4.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.mg, ptr %.sroa.4.0..sroa_idx.i126, align 8, !noalias !2762
  %.sroa.6.0..sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx.i127, align 8, !noalias !2762
  call fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander20add_expansion_result(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2762
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.dn:                                            ; preds = %bb.dl
  %i.mi = shl nuw nsw i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mg, ptr nonnull readonly align 4 %1, i64 %i.mi, i1 false), !noalias !2758
  br label %bb.dm

bb.do:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false), !noalias !2762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2762
  %i.mj = and i16 %i.lu, 32
  %.not7.i = icmp eq i16 %i.mj, 0
  %i.mk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not9.i = icmp eq i64 %2, 0
  %i.mm = shl nuw nsw i64 %2, 2
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.64.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.mo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.el, %bb.en
  %.pn11.i = phi { ptr, i32 } [ %i.on, %bb.en ], [ %i.om, %bb.el ], [ %i.oe, %bb.eh ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.g) #37
          to label %common.resume unwind label %bb.ep, !noalias !2758

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge, %bb.do
  %i.mp = invoke { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %bb.dp unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758 ; 2 uses

bb.dp:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i
  %i.mq = extractvalue { i64, ptr } %i.mp, 0
  %i.mr = extractvalue { i64, ptr } %i.mp, 1      ; 9 uses
  switch i64 %i.mq, label %bb.dq [
    i64 0, label %bb.dt
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i
  ]

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2762
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mr) ]
  %i.ms = ptrtoint ptr %i.mr to i64               ; 2 uses
  %i.mt = and i64 %i.ms, 3
  switch i64 %i.mt, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124
    i64 3, label %bb.dr
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124
    i64 1, label %bb.ds
  ], !prof !13

bb.dr:                                            ; preds = %bb.dq
  %i.mu = icmp ult ptr %i.mr, inttoptr (i64 188978561024 to ptr)
  %i.mv = and i64 %i.ms, 1095216660480
  %i.mw = icmp ne i64 %i.mv, 1095216660480
  call void @llvm.assume(i1 %i.mu)
  call void @llvm.assume(i1 %i.mw)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124

bb.ds:                                            ; preds = %bb.dq
  %i.mx = getelementptr i8, ptr %i.mr, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mx) ]
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.mx, ptr %i.my, align 8, !alias.scope !2763, !noalias !2762
  store i8 3, ptr %i.a, align 8, !alias.scope !2763, !noalias !2762
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.my)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124 unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124: ; preds = %bb.ds, %bb.dr, %bb.dq, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2762
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i

bb.dt:                                            ; preds = %bb.dp
  call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  %i.mz = load ptr, ptr %i.ai, align 8, !alias.scope !2765, !nonnull !10, !noundef !10
  %i.na = load ptr, ptr %i.ak, align 8, !alias.scope !2765, !nonnull !10, !align !11, !noundef !10
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 32
  %i.nc = load ptr, ptr %i.nb, align 8, !invariant.load !10, !noalias !2765, !nonnull !10
  %i.nd = invoke noundef zeroext i1 %i.nc(ptr noundef nonnull %i.mz) #43
          to label %bb.du unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758, !inline_history !5

bb.du:                                            ; preds = %bb.dt
  %i.ne = load i8, ptr %i.ap, align 2, !range !19, !alias.scope !2765, !noundef !10
  %i.nf = trunc nuw i8 %i.ne to i1
  %i.ng = or i1 %i.nd, %i.nf                      ; 2 uses
  %i.nh = zext i1 %i.ng to i8
  store i8 %i.nh, ptr %i.ap, align 2, !alias.scope !2765
  %i.ni = load i8, ptr %i.au, align 1, !range !19, !alias.scope !2758
  %i.nj = trunc nuw i8 %i.ni to i1
  %.sroa.0.0.i22.i = select i1 %i.ng, i1 true, i1 %i.nj
  br i1 %.sroa.0.0.i22.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i, label %bb.dv

.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.dt, %bb.dw, %bb.dz, %bb.eb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i, %bb.ds, %bb.ed
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.dv:                                            ; preds = %bb.du
  br i1 %.not7.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.nk = invoke noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry6is_dir(ptr noundef nonnull align 8 %i.mr)
          to label %bb.dy unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

bb.dx:                                            ; preds = %bb.dy, %bb.dv
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mr, i64 16 ; 3 uses
  %i.nm = load i64, ptr %i.nl, align 8, !noalias !2758, !noundef !10 ; 2 uses
  %i.nn = icmp ult i64 %i.nm, 2305843009213693952
  call void @llvm.assume(i1 %i.nn)
  %i.no = icmp eq i64 %i.nm, 0
  br i1 %i.no, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge, label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  br i1 %i.nk, label %bb.dx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge

bb.dz:                                            ; preds = %bb.dx
  %i.np = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.mr, i32 noundef 46)
          to label %bb.ea unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

bb.ea:                                            ; preds = %bb.dz
  br i1 %i.np, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2762
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.ec unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

bb.ec:                                            ; preds = %bb.eb
  %i.nq = load i64, ptr %i.b, align 8, !range !26, !noalias !2762, !noundef !10
  %i.nr = trunc nuw i64 %i.nq to i1
  %i.ns = load i64, ptr %i.mk, align 8, !range !40, !noalias !2762, !noundef !10 ; 3 uses
  br i1 %i.nr, label %bb.ed, label %bb.ee, !prof !27

bb.ed:                                            ; preds = %bb.ec
  %i.nt = load i64, ptr %i.ml, align 8, !noalias !2762
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ns, i64 %i.nt) #42
          to label %bb.eq unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

bb.ee:                                            ; preds = %bb.ec
  %i.nu = load ptr, ptr %i.ml, align 8, !noalias !2762, !nonnull !10, !noundef !10 ; 2 uses
  %i.nv = icmp ule i64 %2, %i.ns
  call void @llvm.assume(i1 %i.nv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2762
  br i1 %.not9.i, label %bb.ef, label %bb.ej

bb.ef:                                            ; preds = %bb.ej, %bb.ee
  store i64 %i.ns, ptr %i.d, align 8, !noalias !2762
  store ptr %i.nu, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !2762
  store i64 %2, ptr %.sroa.64.0..sroa_idx.i117, align 8, !noalias !2762
  %i.nw = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !noalias !2758, !nonnull !10, !noundef !10
  %i.ny = load i64, ptr %i.nl, align 8, !noalias !2758, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 0, 4611686018427387904) %i.ny)
          to label %.noexc.i.i120 unwind label %bb.eh, !noalias !2767

.noexc.i.i120:                                    ; preds = %bb.ef
  %i.nz = load i64, ptr %.sroa.64.0..sroa_idx.i117, align 8, !alias.scope !2768, !noalias !2762, !noundef !10 ; 3 uses
  %i.oa = icmp ult i64 %i.nz, 2305843009213693952
  call void @llvm.assume(i1 %i.oa)
  %.not.i.i.i.i121 = icmp eq i64 %i.ny, 0
  br i1 %.not.i.i.i.i121, label %bb.ek, label %bb.eg

bb.eg:                                            ; preds = %.noexc.i.i120
  %i.ob = load ptr, ptr %.sroa.43.0..sroa_idx.i, align 8, !alias.scope !2768, !noalias !2762, !nonnull !10, !noundef !10
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %i.ob, i64 %i.nz
  %i.od = shl nuw nsw i64 %i.ny, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oc, ptr nonnull readonly align 4 %i.nx, i64 %i.od, i1 false), !noalias !2769
  %.pre.i.i.i.i122 = load i64, ptr %.sroa.64.0..sroa_idx.i117, align 8, !alias.scope !2768, !noalias !2762
  br label %bb.ek

bb.eh:                                            ; preds = %bb.ef
  %i.oe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #37
          to label %.loopexit.split-lp.i unwind label %bb.ei, !noalias !2767

bb.ei:                                            ; preds = %bb.eh
  %i.of = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2767
  unreachable

bb.ej:                                            ; preds = %bb.ee
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.nu, ptr nonnull readonly align 4 %1, i64 %i.mm, i1 false), !noalias !2758
  br label %bb.ef

bb.ek:                                            ; preds = %bb.eg, %.noexc.i.i120
  %i.og = phi i64 [ %.pre.i.i.i.i122, %bb.eg ], [ %i.nz, %.noexc.i.i120 ]
  %i.oh = add i64 %i.og, %i.ny
  store i64 %i.oh, ptr %.sroa.64.0..sroa_idx.i117, align 8, !alias.scope !2768, !noalias !2762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !2770, !noalias !2762
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2762
  %i.oi = load ptr, ptr %i.mn, align 8, !noalias !2762, !nonnull !10, !noundef !10
  %i.oj = load i64, ptr %i.mo, align 8, !noalias !2762, !noundef !10
  %i.ok = load ptr, ptr %i.nw, align 8, !noalias !2758, !nonnull !10, !noundef !10
  %i.ol = load i64, ptr %i.nl, align 8, !noalias !2758, !noundef !10
  invoke fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25try_add_completion_result(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.oi, i64 noundef %i.oj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ok, i64 noundef %i.ol, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) inttoptr (i64 4 to ptr), i64 noundef 0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %5, i64 noundef %6, ptr noundef nonnull align 8 %i.mr, i1 noundef zeroext %7)
          to label %bb.em unwind label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.om = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #37
          to label %.loopexit.split-lp.i unwind label %bb.ep, !noalias !2758

bb.em:                                            ; preds = %bb.ek
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i unwind label %bb.en, !noalias !2758

bb.en:                                            ; preds = %bb.em
  %i.on = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.loopexit.split-lp.i unwind label %bb.eo, !noalias !2758

bb.eo:                                            ; preds = %bb.en
  %i.oo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2758
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.em
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i123 unwind label %.loopexit.split-lp53.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !2758

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i123: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2762
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i.backedge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i123, %bb.ea, %bb.dy, %bb.dx
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit31.i

bb.ep:                                            ; preds = %bb.el, %.loopexit.split-lp.i
  %i.op = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2758
  unreachable

bb.eq:                                            ; preds = %bb.ed
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i: ; preds = %bb.du, %bb.dp, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i124
  call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.oq = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  call void @llvm.experimental.noalias.scope.decl(metadata !2773)
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !2774, !noalias !2762, !nonnull !10, !noundef !10 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !noalias !2775, !noundef !10
  %i.ot = add i64 %i.os, -1                       ; 2 uses
  store i64 %i.ot, ptr %i.or, align 8, !noalias !2775
  %i.ou = icmp eq i64 %i.ot, 0
  br i1 %i.ou, label %bb.er, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i

bb.er:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oq) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i unwind label %bb.es, !noalias !2758

bb.es:                                            ; preds = %bb.er
  %i.ov = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g) #37
          to label %common.resume unwind label %bb.et, !noalias !2758

bb.et:                                            ; preds = %bb.es
  %i.ow = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !2758
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i: ; preds = %bb.er, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit27.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g), !noalias !2758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2762
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.eu:                                            ; preds = %bb.di
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.f), !noalias !2758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2762
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit

bb.ev:                                            ; preds = %bb.de
  %i.ox = load i64, ptr %i.lh, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.lg, i64 %i.ox) #42
  unreachable

bb.ew:                                            ; preds = %bb.de
  %i.oy = load ptr, ptr %i.lh, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.oz = icmp ule i64 %6, %i.lg
  tail call void @llvm.assume(i1 %i.oz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %.not72 = icmp eq i64 %6, 0
  br i1 %.not72, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ez, %bb.ew
  store i64 %i.lg, ptr %i.ah, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  store ptr %i.oy, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  store i64 %6, ptr %.sroa.6.0..sroa_idx, align 8
  %i.pa = icmp eq i64 %6, %i.lg
  br i1 %i.pa, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah) #39
          to label %._crit_edge unwind label %bb.fa

._crit_edge:                                      ; preds = %bb.ey
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2776
  br label %bb.fb

bb.ez:                                            ; preds = %bb.ew
  %i.pb = shl nuw nsw i64 %6, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.oy, ptr nonnull align 4 %5, i64 %i.pb, i1 false)
  br label %bb.ex

bb.fa:                                            ; preds = %bb.ey, %bb.fb
  %i.pc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #37
          to label %common.resume unwind label %bb.aw

bb.fb:                                            ; preds = %._crit_edge, %bb.ex
  %i.pd = phi ptr [ %.pre, %._crit_edge ], [ %i.oy, %bb.ex ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.pd, i64 %6
  store i32 47, ptr %i.pe, align 4
  %i.pf = add nuw i64 %6, 1                       ; 2 uses
  store i64 %i.pf, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2776
  %i.pg = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  invoke void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.02.0, i64 noundef %.sroa.7.0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.pg, i64 noundef %i.pf, i1 noundef zeroext %7)
          to label %bb.fc unwind label %bb.fa

bb.fc:                                            ; preds = %bb.fb
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit131 unwind label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.ph = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.pi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit131: ; preds = %bb.fc
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander21expand_trailing_slash.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB2_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileE13with_capacityCs8frGy5WneL6_4fish(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, ptr noalias nofree noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !26, !noundef !10
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !40, !noundef !10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #42
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs8frGy5WneL6_4fish.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvMs0_NtCs8frGy5WneL6_4fish6parserNtB5_11ProfileItem3now() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i64 @_RNvCs3pTQYeTDvAj_9fish_util8get_time()
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs1_NtCs8frGy5WneL6_4fish11tty_handoffNtB5_10TtyHandoff12to_job_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [1 x i8], align 1                 ; 3 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %i.e = alloca [1 x i8], align 1                 ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [32 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 15 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [96 x i8], align 8                ; 11 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25try_add_completion_result:bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.hx = load i8, ptr %i.hw, align 1, !range !19, !alias.scope !3910
  %i.hy = trunc nuw i8 %i.hx to i1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 4 uses
  %.promoted.i = load i8, ptr %i.hv, align 2, !alias.scope !3910
  %i.ia = trunc nuw i8 %.promoted.i to i1
  br label %bb.cz

bb.cz:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit61.i, %bb.cy
  %i.ib = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit61.i ], [ %i.ia, %bb.cy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3912
  store i64 0, ptr %i.f, align 8, !noalias !3912
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !3912
  store i64 0, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3912
  %i.ic = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3911, !nonnull !10, !noundef !10
  %i.id = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3911, !noundef !10
  invoke void @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.ic, i64 noundef %i.id)
          to label %bb.da unwind label %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

.body46.i:                                        ; preds = %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.eh, %bb.dx, %.loopexit.split-lp.i
  %.pn16.i = phi { ptr, i32 } [ %.pn14.i, %.loopexit.split-lp.i ], [ %i.jn, %bb.dx ], [ %i.kj, %bb.eh ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #37
          to label %.body58.i unwind label %bb.du, !noalias !3913

.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i51.i, %bb.cz, %bb.eo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i.i
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.body46.i

bb.da:                                            ; preds = %bb.cz
  %i.ie = load i64, ptr %i.d, align 8, !range !24, !noalias !3912, !noundef !10
  %i.if = icmp eq i64 %i.ie, -1
  br i1 %i.if, label %bb.eo, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3912
  br label %.backedge.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i36
  %.pn14.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i36 ], [ %lpad.loopexit.split-lp138, %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.e) #37
          to label %.body46.i unwind label %bb.du, !noalias !3913

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.db
  %i.ig = invoke { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.dc unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913 ; 2 uses

bb.dc:                                            ; preds = %.backedge.i
  %i.ih = extractvalue { i64, ptr } %i.ig, 0
  %i.ii = extractvalue { i64, ptr } %i.ig, 1      ; 9 uses
  switch i64 %i.ih, label %bb.dd [
    i64 0, label %bb.dg
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i
  ]

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3912
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ii) ]
  %i.ij = ptrtoint ptr %i.ii to i64               ; 2 uses
  %i.ik = and i64 %i.ij, 3
  switch i64 %i.ik, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 3, label %bb.de
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
    i64 1, label %bb.df
  ], !prof !13

bb.de:                                            ; preds = %bb.dd
  %i.il = icmp ult ptr %i.ii, inttoptr (i64 188978561024 to ptr)
  %i.im = and i64 %i.ij, 1095216660480
  %i.in = icmp ne i64 %i.im, 1095216660480
  call void @llvm.assume(i1 %i.il)
  call void @llvm.assume(i1 %i.in)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.io = getelementptr i8, ptr %i.ii, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.io) ]
  store ptr %i.io, ptr %i.hp, align 8, !alias.scope !3914, !noalias !3912
  store i8 3, ptr %i.a, align 8, !alias.scope !3914, !noalias !3912
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hp)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i: ; preds = %bb.df, %bb.de, %bb.dd, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3912
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i

bb.dg:                                            ; preds = %bb.dc
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !3913, !noundef !10 ; 2 uses
  %i.ir = icmp ult i64 %i.iq, 2305843009213693952
  call void @llvm.assume(i1 %i.ir)
  %i.is = icmp eq i64 %i.iq, 0
  br i1 %i.is, label %.backedge.i.backedge, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.it = invoke noundef zeroext i1 @_RINvYNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringNtCskr4qsHYS30i_15fish_widestring4WExt11starts_withcECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii, i32 noundef 46)
          to label %bb.di unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.backedge.i, %bb.do, %bb.dl, %bb.dj, %bb.dh, %bb.df, %bb.dv, %bb.dz, %bb.eb, %bb.ec, %bb.ee
  %lpad.loopexit.split-lp138 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.di:                                            ; preds = %bb.dh
  br i1 %i.it, label %.backedge.i.backedge, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !3913, !noundef !10
  %i.iw = invoke noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapyuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g, i64 noundef %i.iv)
          to label %bb.dk unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.dk:                                            ; preds = %bb.dj
  br i1 %i.iw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.ix = invoke noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry6is_dir(ptr noundef nonnull align 8 %i.ii)
          to label %bb.dm unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.ix, label %bb.dn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.thread.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.thread.i: ; preds = %bb.dn, %bb.dm
  store i64 0, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912
  br label %.loopexit87.i

bb.dn:                                            ; preds = %bb.dm
  %i.iy = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912, !noundef !10 ; 2 uses
  %i.iz = icmp ult i64 %i.iy, 2305843009213693952
  call void @llvm.assume(i1 %i.iz)
  %i.ja = icmp eq i64 %i.iy, 0
  br i1 %i.ja, label %bb.do, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.thread.i

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3912
  invoke void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ii)
          to label %bb.dp unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i: ; preds = %bb.dk, %bb.dc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i
  %.pr.i = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912 ; 2 uses
  %i.jb = icmp ult i64 %.pr.i, 2305843009213693952
  call void @llvm.assume(i1 %i.jb)
  %i.jc = icmp eq i64 %.pr.i, 0
  br i1 %i.jc, label %.loopexit87.i, label %bb.dv

bb.dp:                                            ; preds = %bb.do
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3912
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i37 unwind label %bb.dq, !noalias !3913

bb.dq:                                            ; preds = %bb.dp
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i36 unwind label %bb.dr, !noalias !3913

bb.dr:                                            ; preds = %bb.dq
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i37: ; preds = %bb.dp
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.dt unwind label %bb.ds, !noalias !3913

bb.ds:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i37
  %i.jf = landingpad { ptr, i32 }
          cleanup
  br label %.body.i36

.body.i36:                                        ; preds = %bb.ds, %bb.dq
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.jf, %bb.ds ], [ %i.jd, %bb.dq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3912
  br label %.loopexit.split-lp.i

bb.dt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.dt, %bb.di, %bb.dg
  br label %.backedge.i

bb.du:                                            ; preds = %.thread.i, %.body58.i, %.loopexit.split-lp.i, %.body46.i
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

bb.dv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  %i.jh = load ptr, ptr %i.hu, align 8, !invariant.load !10, !noalias !3916, !nonnull !10
  %i.ji = invoke noundef zeroext i1 %i.jh(ptr noundef nonnull %i.hr) #43
          to label %.noexc44.i unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913, !inline_history !5

.noexc44.i:                                       ; preds = %bb.dv
  %11 = or i1 %i.ib, %i.ji                        ; 2 uses
  %12 = zext i1 %11 to i8
  store i8 %12, ptr %i.hv, align 2, !alias.scope !3917
  %or.cond.i = select i1 %11, i1 true, i1 %i.hy
  br i1 %or.cond.i, label %.loopexit87.i, label %bb.dz

.loopexit87.i:                                    ; preds = %.noexc44.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit38.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3918)
  call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  call void @llvm.experimental.noalias.scope.decl(metadata !3920)
  %i.jj = load ptr, ptr %i.hz, align 8, !alias.scope !3921, !noalias !3912, !nonnull !10, !noundef !10 ; 2 uses
  %i.jk = load i64, ptr %i.jj, align 8, !noalias !3922, !noundef !10
  %i.jl = add i64 %i.jk, -1                       ; 2 uses
  store i64 %i.jl, ptr %i.jj, align 8, !noalias !3922
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.dw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i.i

bb.dw:                                            ; preds = %.loopexit87.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i.i unwind label %bb.dx, !noalias !3913

bb.dx:                                            ; preds = %bb.dw
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e) #37
          to label %.body46.i unwind label %bb.dy, !noalias !3913

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i.i: ; preds = %bb.dw, %.loopexit87.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i unwind label %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.dy:                                            ; preds = %bb.dx
  %i.jo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

bb.dz:                                            ; preds = %.noexc44.i
  %i.jp = load ptr, ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !3912, !nonnull !10, !noundef !10
  %i.jq = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912, !noundef !10
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path21append_path_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jp, i64 noundef %i.jq)
          to label %bb.ea unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ea:                                            ; preds = %bb.dz
  %i.jr = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3923, !noalias !3912, !noundef !10 ; 3 uses
  %i.js = load i64, ptr %i.h, align 8, !range !15, !alias.scope !3923, !noalias !3912, !noundef !10
  %i.jt = icmp eq i64 %i.jr, %i.js
  br i1 %i.jt, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #39
          to label %bb.ec unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.ju = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !3923, !noalias !3912, !nonnull !10, !noundef !10
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.jr
  store i32 47, ptr %i.jv, align 4, !noalias !3913
  %i.jw = add i64 %i.jr, 1
  store i64 %i.jw, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3923, !noalias !3912
  %i.jx = load ptr, ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !3912, !nonnull !10, !noundef !10
  %i.jy = load i64, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !3912, !noundef !10
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path21append_path_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.jx, i64 noundef %i.jy)
          to label %bb.ed unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ed:                                            ; preds = %bb.ec
  %i.jz = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3924, !noundef !10 ; 3 uses
  %i.ka = load i64, ptr %i.ad, align 8, !range !15, !alias.scope !3924, !noundef !10
  %i.kb = icmp eq i64 %i.jz, %i.ka
  br i1 %i.kb, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ad) #39
          to label %bb.ef unwind label %.loopexit.split-lp55.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.kc = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3924, !nonnull !10, !noundef !10
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.jz
  store i32 47, ptr %i.kd, align 4, !noalias !3913
  %i.ke = add i64 %i.jz, 1
  store i64 %i.ke, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3924
  call void @llvm.experimental.noalias.scope.decl(metadata !3925)
  call void @llvm.experimental.noalias.scope.decl(metadata !3926)
  call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  %i.kf = load ptr, ptr %i.hz, align 8, !alias.scope !3928, !noalias !3912, !nonnull !10, !noundef !10 ; 2 uses
  %i.kg = load i64, ptr %i.kf, align 8, !noalias !3929, !noundef !10
  %i.kh = add i64 %i.kg, -1                       ; 2 uses
  store i64 %i.kh, ptr %i.kf, align 8, !noalias !3929
  %i.ki = icmp eq i64 %i.kh, 0
  br i1 %i.ki, label %bb.eg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i51.i

bb.eg:                                            ; preds = %bb.ef
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdE9drop_slowBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.hz) #39
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i51.i unwind label %bb.eh, !noalias !3913

bb.eh:                                            ; preds = %bb.eg
  %i.kj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e) #37
          to label %.body46.i unwind label %bb.ei, !noalias !3913

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i51.i: ; preds = %bb.eg, %bb.ef
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit55.i unwind label %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ei:                                            ; preds = %bb.eh
  %i.kk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit55.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i51.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3912
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i57.i unwind label %bb.ej, !noalias !3913

bb.ej:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit55.i
  %i.kl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body58.i unwind label %bb.ek, !noalias !3913

bb.ek:                                            ; preds = %bb.ej
  %i.km = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i57.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit55.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit61.i unwind label %.loopexit.split-lp89.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

.body58.i:                                        ; preds = %.loopexit.split-lp89.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.em, %bb.ej, %.body46.i
  %.pn18.i = phi { ptr, i32 } [ %.pn16.i, %.body46.i ], [ %i.kl, %bb.ej ], [ %i.kn, %bb.em ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp89.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %.thread.i unwind label %bb.du, !noalias !3913

.loopexit.split-lp89.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i57.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i64.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body58.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit61.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i57.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3912
  br label %bb.cz

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3912
  br label %bb.el

bb.el:                                            ; preds = %bb.ep, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i64.i unwind label %bb.em, !noalias !3913

bb.em:                                            ; preds = %bb.el
  %i.kn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body58.i unwind label %bb.en, !noalias !3913

bb.en:                                            ; preds = %bb.em
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !3913
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i64.i: ; preds = %bb.el
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit68.i unwind label %.loopexit.split-lp89.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.eo:                                            ; preds = %bb.da
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterNtNtNtB4_2io5error5ErrorEEB13_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.d)
          to label %bb.ep unwind label %.loopexit.split-lp83.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3913

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3912
  br label %bb.el

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit68.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i64.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !3930
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTyuEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %bb.eq unwind label %.loopexit65.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.thread.i:                                        ; preds = %.body58.i, %.thread79.i
  %.pn2078.i = phi { ptr, i32 } [ %i.hm, %.thread79.i ], [ %.pn18.i, %.body58.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #37
          to label %.body unwind label %bb.du, !noalias !3913

bb.eq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit68.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3912
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.kq = load i64, ptr %i.kp, align 8, !noundef !10 ; 2 uses
  %i.kr = icmp ult i64 %i.kq, 2305843009213693952
  call void @llvm.assume(i1 %i.kr)
  %i.ks = icmp eq i64 %i.kq, 0
  br i1 %i.ks, label %.loopexit, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.kt = load i64, ptr %i.ax, align 8, !noundef !10 ; 2 uses
  %.not14 = icmp ugt i64 %i.go, %i.kt
  br i1 %.not14, label %bb.eu, label %bb.ev, !prof !27

.loopexit:                                        ; preds = %bb.ez, %bb.ev, %bb.eq
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i45 unwind label %bb.es

bb.es:                                            ; preds = %.loopexit
  %i.ku = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %.body unwind label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.kv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i45: ; preds = %.loopexit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit49 unwind label %.loopexit65.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.eu:                                            ; preds = %bb.er
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.ay, i64 noundef %i.go, i64 noundef %i.kt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @262) #42
          to label %bb.ew unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ev:                                            ; preds = %bb.er
  %i.kw = load ptr, ptr %i.gs, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.kx = getelementptr inbounds nuw [56 x i8], ptr %i.kw, i64 %i.go
  %i.ky = icmp samesign eq i64 %i.ay, %i.go
  br i1 %i.ky, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ev
  %i.kz = getelementptr inbounds nuw [56 x i8], ptr %i.kw, i64 %i.ay
  %i.la = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  br label %bb.ex

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ex, %bb.eu
  %lpad.loopexit.split-lp136 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #37
          to label %.body unwind label %bb.fa

bb.ew:                                            ; preds = %bb.eu, %bb.cp
  unreachable

bb.ex:                                            ; preds = %.lr.ph, %bb.ez
  %.sroa.02.077 = phi ptr [ %i.kz, %.lr.ph ], [ %i.lk, %bb.ez ] ; 4 uses
  %.val = load ptr, ptr %i.la, align 8, !nonnull !10, !noundef !10
  %.val16 = load i64, ptr %i.kp, align 8, !noundef !10 ; 4 uses
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.02.077, i64 noundef range(i64 0, 4611686018427387904) %.val16)
          to label %.noexc50 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ex
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.02.077, i64 16 ; 3 uses
  %i.lc = load i64, ptr %i.lb, align 8, !alias.scope !3931, !noundef !10 ; 3 uses
  %i.ld = icmp ult i64 %i.lc, 2305843009213693952
  call void @llvm.assume(i1 %i.ld)
  %.not.i.i = icmp eq i64 %.val16, 0
  br i1 %.not.i.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.noexc50
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.02.077, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !alias.scope !3931, !nonnull !10, !noundef !10
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %i.lc
  %i.lh = shl nuw nsw i64 %.val16, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.lg, ptr nonnull readonly align 4 %.val, i64 %i.lh, i1 false)
  %.pre.i.i = load i64, ptr %i.lb, align 8, !alias.scope !3931
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %.noexc50
  %i.li = phi i64 [ %.pre.i.i, %bb.ey ], [ %i.lc, %.noexc50 ]
  %i.lj = add i64 %i.li, %.val16
  store i64 %i.lj, ptr %i.lb, align 8, !alias.scope !3931
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.02.077, i64 56 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.kx
  br i1 %i.ll, label %.loopexit, label %bb.ex

bb.fa:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.lm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit49: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ct
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander27expand_intermediate_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %8, i64 noundef %9, i1 noundef zeroext %10) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = icmp eq i64 %7, 0
  br i1 %i.t, label %bb.b, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

bb.b:                                             ; preds = %bb.a
  %i.u = and i64 %5, 2305843009213693936          ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.u ; 2 uses
  %.not.i216 = icmp eq i64 %i.u, 0
  br i1 %.not.i216, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

bb.c:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i218, i64 64
  %i.x = add nsw i64 %.sroa.5.0.i217, -16         ; 2 uses
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %i.y = shl i64 %5, 2
  %.idx = and i64 %i.y, 60                        ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx
  %.not.not.not.i.not.not.i219 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not.i219, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph221

.lr.ph221:                                        ; preds = %.lr.ph221, %._crit_edge
  %i.aa = phi ptr [ %i.ac, %.lr.ph221 ], [ %i.v, %._crit_edge ] ; 2 uses
  %.val2.i.i = load i32, ptr %i.aa, align 4, !range !18, !alias.scope !4009, !noalias !4010, !noundef !10
  %i.ab = icmp ne i32 %.val2.i.i, 64994           ; 2 uses
  %.not335 = xor i1 %i.ab, true
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not.not.not.i.not.not.i = icmp eq ptr %i.ac, %i.z
  %or.cond.a = select i1 %.not335, i1 true, i1 %.not.not.not.i.not.not.i
  br i1 %or.cond.a, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, label %.lr.ph221

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.b, %bb.c
  %.sroa.0.05.i218 = phi ptr [ %i.w, %bb.c ], [ %4, %bb.b ] ; 2 uses
  %.sroa.5.0.i217 = phi i64 [ %i.x, %bb.c ], [ %i.u, %bb.b ]
  %i.ad = load <16 x i32>, ptr %.sroa.0.05.i218, align 4, !alias.scope !4009, !noalias !4011
  %i.ae = icmp eq <16 x i32> %i.ad, splat (i32 64994)
  %i.af = bitcast <16 x i1> %i.ae to i16
  %.not = icmp eq i16 %i.af, 0
  br i1 %.not, label %bb.c, label %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit

_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit: ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i, %.lr.ph221, %._crit_edge, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.ab, %.lr.ph221 ], [ true, %._crit_edge ], [ false, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish.exit.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4012)
  %i.ai = load ptr, ptr %i.ag, align 8, !alias.scope !4012, !nonnull !10, !noundef !10
  %i.aj = load ptr, ptr %i.ah, align 8, !alias.scope !4012, !nonnull !10, !align !11, !noundef !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !invariant.load !10, !noalias !4012, !nonnull !10
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull %i.ai) #43, !noalias !4012, !inline_history !5
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 4 uses
  %i.ao = load i8, ptr %i.an, align 2, !range !19, !alias.scope !4012, !noundef !10
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = or i1 %i.am, %i.ap                      ; 2 uses
  %i.ar = zext i1 %i.aq to i8
  store i8 %i.ar, ptr %i.an, align 2, !alias.scope !4012
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %i.at = load i8, ptr %i.as, align 1, !range !19
  %i.au = trunc nuw i8 %i.at to i1
  %.sroa.0.0.i31107 = select i1 %i.aq, i1 true, i1 %i.au
  br i1 %.sroa.0.0.i31107, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not19 = icmp eq i64 %2, 0                     ; 2 uses
  %i.bb = shl nuw nsw i64 %2, 2                   ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not20 = icmp eq i64 %9, 0                     ; 2 uses
  %i.bg = shl nuw nsw i64 %9, 2                   ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %.not.i.i.i39 = icmp eq i64 %5, 0               ; 2 uses
  %i.bh = shl nuw nsw i64 %5, 2                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.backedge
  %i.ca = call { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3) ; 2 uses
  %i.cb = extractvalue { i64, ptr } %i.ca, 0
  %i.cc = extractvalue { i64, ptr } %i.ca, 1      ; 12 uses
  switch i64 %i.cb, label %bb.e [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit34
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit: ; preds = %.backedge, %bb.d, %_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
  ret void

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = ptrtoint ptr %i.cc to i64               ; 2 uses
  %i.ce = and i64 %i.cd, 3
  switch i64 %i.ce, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 3, label %bb.f
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 1, label %bb.g
  ], !prof !13

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.cf = icmp ult ptr %i.cc, inttoptr (i64 188978561024 to ptr)
  %i.cg = and i64 %i.cd, 1095216660480
  %i.ch = icmp ne i64 %i.cg, 1095216660480
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.ch)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ci = getelementptr i8, ptr %i.cc, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !4013
  store i8 3, ptr %i.a, align 8, !alias.scope !4013
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit34: ; preds = %bb.d
  %i.ck = call fastcc noundef zeroext i1 @_RINvNtCs8frGy5WneL6_4fish8wildcard14wildcard_matchRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringRNtNtBR_6utfstr8Utf32StrEB4_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5)
  br i1 %i.ck, label %bb.h, label %.backedge

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit34
  %i.cl = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry6is_dir(ptr noundef nonnull align 8 %i.cc)
  br i1 %i.cl, label %bb.i, label %.backedge

.backedge:                                        ; preds = %bb.n, %bb.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit77, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit34, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit51
  call void @llvm.experimental.noalias.scope.decl(metadata !4014)
  %i.cm = load ptr, ptr %i.ag, align 8, !alias.scope !4014, !nonnull !10, !noundef !10
  %i.cn = load ptr, ptr %i.ah, align 8, !alias.scope !4014, !nonnull !10, !align !11, !noundef !10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !invariant.load !10, !noalias !4014, !nonnull !10
  %i.cq = call noundef zeroext i1 %i.cp(ptr noundef nonnull %i.cm) #43, !noalias !4014, !inline_history !5
  %i.cr = load i8, ptr %i.an, align 2, !range !19, !alias.scope !4014, !noundef !10
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = or i1 %i.cq, %i.cs                      ; 2 uses
  %i.cu = zext i1 %i.ct to i8
  store i8 %i.cu, ptr %i.an, align 2, !alias.scope !4014
  %i.cv = load i8, ptr %i.as, align 1, !range !19
  %i.cw = trunc nuw i8 %i.cv to i1
  %.sroa.0.0.i31 = select i1 %i.ct, i1 true, i1 %i.cw
  br i1 %.sroa.0.0.i31, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit, label %bb.d

bb.i:                                             ; preds = %bb.h
  br i1 %.sroa.0.0, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry9dev_inode(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull align 8 %i.cc)
  %i.cx = load i64, ptr %i.l, align 8, !range !26, !noundef !10
  %i.cy = trunc nuw i64 %i.cx to i1
  br i1 %i.cy, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cc, i64 64
  %i.da = load i8, ptr %i.cz, align 8, !range !25, !noundef !10
  %or.cond.not.not = icmp eq i8 %i.da, 0
  br i1 %or.cond.not.not, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.db = load i64, ptr %i.e, align 8, !range !26, !noundef !10
  %i.dc = trunc nuw i64 %i.db to i1
  %i.dd = load i64, ptr %i.bo, align 8, !range !40, !noundef !10 ; 3 uses
  br i1 %i.dc, label %bb.au, label %bb.av, !prof !27

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.de = load i64, ptr %i.av, align 8, !noundef !10 ; 2 uses
  %i.df = load i64, ptr %i.aw, align 8, !noundef !10 ; 2 uses
  store i64 %i.de, ptr %i.m, align 8
  store i64 %i.df, ptr %i.ax, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.dg = call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtNtCs8frGy5WneL6_4fish5wutil6fileid8DevInodeuNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ay, i64 noundef %i.de, i64 noundef %i.df)
  br i1 %i.dg, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.backedge

bb.p:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.dh = load i64, ptr %i.c, align 8, !range !26, !noundef !10
  %i.di = trunc nuw i64 %i.dh to i1
  %i.dj = load i64, ptr %i.az, align 8, !range !40, !noundef !10 ; 3 uses
  br i1 %i.di, label %bb.q, label %bb.r, !prof !27

bb.q:                                             ; preds = %bb.p
  %i.dk = load i64, ptr %i.ba, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.dj, i64 %i.dk) #42
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.dl = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dm = icmp ule i64 %2, %i.dj
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not19, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.y, %bb.r
  store i64 %i.dj, ptr %i.i, align 8
  store ptr %i.dl, ptr %.sroa.410.0..sroa_idx, align 8
  store i64 %2, ptr %.sroa.611.0..sroa_idx, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !nonnull !10, !noundef !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4015)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef range(i64 0, 4611686018427387904) %i.dq)
          to label %.noexc.i unwind label %bb.u, !noalias !4016

.noexc.i:                                         ; preds = %bb.s
  %i.dr = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4017, !noundef !10 ; 3 uses
  %i.ds = icmp ult i64 %i.dr, 2305843009213693952
  call void @llvm.assume(i1 %i.ds)
  %.not.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i, label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit, label %bb.t

bb.t:                                             ; preds = %.noexc.i
  %i.dt = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !alias.scope !4017, !nonnull !10, !noundef !10
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.dr
  %i.dv = shl nuw nsw i64 %i.dq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.du, ptr nonnull readonly align 4 %i.do, i64 %i.dv, i1 false), !noalias !4015
  %.pre.i.i.i = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4017
  br label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit

bb.u:                                             ; preds = %bb.s
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #37
          to label %common.resume unwind label %bb.v, !noalias !4016

bb.v:                                             ; preds = %bb.u
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4016
  unreachable

common.resume:                                    ; preds = %bb.bt, %bb.ba, %bb.ay, %.body, %.body62, %bb.aq, %bb.w, %bb.u
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.ba ], [ %i.dw, %bb.u ], [ %i.ea, %bb.w ], [ %i.fk, %bb.aq ], [ %.pn, %.body ], [ %i.fz, %bb.ay ], [ %.pn24, %.body62 ], [ %i.hm, %bb.bt ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit: ; preds = %.noexc.i, %bb.t
  %i.dy = phi i64 [ %.pre.i.i.i, %bb.t ], [ %i.dr, %.noexc.i ]
  %i.dz = add i64 %i.dy, %i.dq
  store i64 %i.dz, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !4018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit37 unwind label %bb.w, !noalias !4020

bb.w:                                             ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j) #37
          to label %common.resume unwind label %bb.x, !noalias !4020

bb.x:                                             ; preds = %bb.w
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4020
  unreachable

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit37: ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit
  %i.ec = load i64, ptr %i.bc, align 8, !alias.scope !4021, !noundef !10 ; 2 uses
  %i.ed = icmp ult i64 %i.ec, 2305843009213693952
  call void @llvm.assume(i1 %i.ed)
  %i.ee = load ptr, ptr %i.bd, align 8, !alias.scope !4021, !nonnull !10, !noundef !10
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ec
  store i32 47, ptr %i.ef, align 4, !noalias !4019
  %.pre.i.i.i36 = load i64, ptr %i.bc, align 8, !alias.scope !4021
  %i.eg = add i64 %.pre.i.i.i36, 1
  store i64 %i.eg, ptr %i.bc, align 8, !alias.scope !4021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !alias.scope !4022
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.y:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dl, ptr nonnull align 4 %1, i64 %i.bb, i1 false)
  br label %bb.s

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ao, %bb.ai, %bb.ae, %bb.al
  %.pn = phi { ptr, i32 } [ %i.fg, %bb.al ], [ %i.ev, %bb.ai ], [ %i.er, %bb.ae ], [ %i.fi, %bb.ao ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #37
          to label %common.resume unwind label %bb.as

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i, %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit37, %bb.aa
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.z:                                             ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit37
  %i.eh = load i64, ptr %i.b, align 8, !range !26, !noundef !10
  %i.ei = trunc nuw i64 %i.eh to i1
  %i.ej = load i64, ptr %i.be, align 8, !range !40, !noundef !10 ; 3 uses
  br i1 %i.ei, label %bb.aa, label %bb.ab, !prof !27

bb.aa:                                            ; preds = %bb.z
  %i.ek = load i64, ptr %i.bf, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ej, i64 %i.ek) #42
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.z
  %i.el = load ptr, ptr %i.bf, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.em = icmp ule i64 %9, %i.ej
  call void @llvm.assume(i1 %i.em)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not20, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ag, %bb.ab
  store i64 %i.ej, ptr %i.f, align 8
  store ptr %i.el, ptr %.sroa.413.0..sroa_idx, align 8
  store i64 %9, ptr %.sroa.614.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4023)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef range(i64 0, 4611686018427387904) %5)
          to label %.noexc.i38 unwind label %bb.ae, !noalias !4024

.noexc.i38:                                       ; preds = %bb.ac
  %i.en = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !4025, !noundef !10 ; 3 uses
  %i.eo = icmp ult i64 %i.en, 2305843009213693952
  call void @llvm.assume(i1 %i.eo)
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander27expand_intermediate_segment:bb.a
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %i.gf
  store i32 47, ptr %i.gi, align 4, !noalias !4035
  %.pre.i.i.i57 = load i64, ptr %i.bq, align 8, !alias.scope !4037
  %i.gj = add i64 %.pre.i.i.i57, 1
  store i64 %i.gj, ptr %i.bq, align 8, !alias.scope !4037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !alias.scope !4038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
          to label %bb.bd unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fo, ptr nonnull align 4 %1, i64 %i.bb, i1 false)
  br label %bb.aw

.body62:                                          ; preds = %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.br, %bb.bm, %bb.bi, %bb.bp
  %.pn24 = phi { ptr, i32 } [ %i.hj, %bb.bp ], [ %i.gy, %bb.bm ], [ %i.gu, %bb.bi ], [ %i.hk, %bb.br ], [ %lpad.loopexit.split-lp225, %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.s) #37
          to label %common.resume unwind label %bb.as

.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i71, %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit58, %bb.be
  %lpad.loopexit.split-lp225 = landingpad { ptr, i32 }
          cleanup
  br label %.body62

bb.bd:                                            ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit58
  %i.gk = load i64, ptr %i.d, align 8, !range !26, !noundef !10
  %i.gl = trunc nuw i64 %i.gk to i1
  %i.gm = load i64, ptr %i.bs, align 8, !range !40, !noundef !10 ; 3 uses
  br i1 %i.gl, label %bb.be, label %bb.bf, !prof !27

bb.be:                                            ; preds = %bb.bd
  %i.gn = load i64, ptr %i.bt, align 8
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.gm, i64 %i.gn) #42
          to label %bb.at unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bf:                                            ; preds = %bb.bd
  %i.go = load ptr, ptr %i.bt, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gp = icmp ule i64 %9, %i.gm
  call void @llvm.assume(i1 %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not20, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bk, %bb.bf
  store i64 %i.gm, ptr %i.n, align 8
  store ptr %i.go, ptr %.sroa.47.0..sroa_idx, align 8
  store i64 %9, ptr %.sroa.68.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !4039)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef range(i64 0, 4611686018427387904) %5)
          to label %.noexc.i59 unwind label %bb.bi, !noalias !4040

.noexc.i59:                                       ; preds = %bb.bg
  %i.gq = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !4041, !noundef !10 ; 3 uses
  %i.gr = icmp ult i64 %i.gq, 2305843009213693952
  call void @llvm.assume(i1 %i.gr)
  br i1 %.not.i.i.i39, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %.noexc.i59
  %i.gs = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !alias.scope !4041, !nonnull !10, !noundef !10
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.gq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.gt, ptr nonnull readonly align 4 %4, i64 %i.bh, i1 false), !noalias !4039
  %.pre.i.i.i61 = load i64, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !4041
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #37
          to label %.body62 unwind label %bb.bj, !noalias !4040

bb.bj:                                            ; preds = %bb.bi
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4040
  unreachable

bb.bk:                                            ; preds = %bb.bf
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.go, ptr nonnull align 4 %8, i64 %i.bg, i1 false)
  br label %bb.bg

bb.bl:                                            ; preds = %bb.bh, %.noexc.i59
  %i.gw = phi i64 [ %.pre.i.i.i61, %bb.bh ], [ %i.gq, %.noexc.i59 ]
  %i.gx = add i64 %i.gw, %5
  store i64 %i.gx, ptr %.sroa.68.0..sroa_idx, align 8, !alias.scope !4041
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !alias.scope !4042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !4043)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %bb.bo unwind label %bb.bm, !noalias !4044

bb.bm:                                            ; preds = %bb.bl
  %i.gy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o) #37
          to label %.body62 unwind label %bb.bn, !noalias !4044

bb.bn:                                            ; preds = %bb.bm
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4044
  unreachable

bb.bo:                                            ; preds = %bb.bl
  %i.ha = load i64, ptr %i.bu, align 8, !alias.scope !4045, !noundef !10 ; 2 uses
  %i.hb = icmp ult i64 %i.ha, 2305843009213693952
  call void @llvm.assume(i1 %i.hb)
  %i.hc = load ptr, ptr %i.bv, align 8, !alias.scope !4045, !nonnull !10, !noundef !10
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %i.ha
  store i32 47, ptr %i.hd, align 4, !noalias !4043
  %.pre.i.i.i66 = load i64, ptr %i.bu, align 8, !alias.scope !4045
  %i.he = add i64 %.pre.i.i.i66, 1
  store i64 %i.he, ptr %i.bu, align 8, !alias.scope !4045
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !alias.scope !4046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.hf = load ptr, ptr %i.bw, align 8, !nonnull !10, !noundef !10
  %i.hg = load i64, ptr %i.bx, align 8, !noundef !10
  %i.hh = load ptr, ptr %i.by, align 8, !nonnull !10, !noundef !10
  %i.hi = load i64, ptr %i.bz, align 8, !noundef !10
  invoke void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hf, i64 noundef %i.hg, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.hh, i64 noundef %i.hi, i1 noundef zeroext %10)
          to label %bb.bq unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #37
          to label %.body62 unwind label %bb.as

bb.bq:                                            ; preds = %bb.bo
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i71 unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.hk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body62 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i71: ; preds = %bb.bq
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74 unwind label %.loopexit.split-lp82.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit77 unwind label %bb.bt

bb.bt:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74
  %i.hm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %common.resume unwind label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit77: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit74
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %.backedge
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander45expand_literal_intermediate_segment_with_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef range(i64 1, 0) %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly align 4 captures(none) %8, i64 noundef %9) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4087)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !4087, !nonnull !10, !noundef !10
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !4087, !nonnull !10, !align !11, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !10, !noalias !4087, !nonnull !10
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull %i.l) #43, !noalias !4087, !inline_history !5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 4 uses
  %i.r = load i8, ptr %i.q, align 2, !range !19, !alias.scope !4087, !noundef !10
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = or i1 %i.p, %i.s                         ; 2 uses
  %i.u = zext i1 %i.t to i8
  store i8 %i.u, ptr %i.q, align 2, !alias.scope !4087
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 139 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !range !19
  %i.x = trunc nuw i8 %i.w to i1
  %.sroa.0.0.i91 = select i1 %i.t, i1 true, i1 %i.x
  br i1 %.sroa.0.0.i91, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.not22 = icmp eq i64 %9, 0
  %i.aa = shl nuw nsw i64 %9, 2
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.not23 = icmp eq i64 %2, 0
  %i.af = shl nuw nsw i64 %2, 2
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph93, %.backedge
  %i.an = call { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %3) ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %i.ap = extractvalue { i64, ptr } %i.an, 1      ; 7 uses
  switch i64 %i.ao, label %bb.c [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit40
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit: ; preds = %.backedge, %bb.b, %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
  ret void

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  %i.aq = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.ar = and i64 %i.aq, 3
  switch i64 %i.ar, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i
    i64 1, label %bb.e
  ], !prof !13

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.as = icmp ult ptr %i.ap, inttoptr (i64 188978561024 to ptr)
  %i.at = and i64 %i.aq, 1095216660480
  %i.au = icmp ne i64 %i.at, 1095216660480
  call void @llvm.assume(i1 %i.as)
  call void @llvm.assume(i1 %i.au)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.av = getelementptr i8, ptr %i.ap, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.av) ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !4088
  store i8 3, ptr %i.a, align 8, !alias.scope !4088
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aw)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit40: ; preds = %bb.b
  %i.ax = getelementptr i8, ptr %i.ap, i64 8      ; 5 uses
  %.val34 = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 16     ; 5 uses
  %.val35 = load i64, ptr %i.ay, align 8, !noundef !10
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.val34, i64 %.val35
  %i.ba = call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val34, ptr noundef nonnull %i.az, ptr noundef nonnull @20, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @20, i64 1))
  br i1 %i.ba, label %.backedge, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit40
  %.val30 = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.val31 = load i64, ptr %i.ay, align 8, !noundef !10
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.val30, i64 %.val31
  %i.bc = call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull %.val30, ptr noundef nonnull %i.bb, ptr noundef nonnull @21, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @21, i64 2))
  br i1 %i.bc, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10
  %i.be = load i64, ptr %i.ay, align 8, !noundef !10
  %i.bf = call i24 @_RNvCskeBJdk8gjxq_17fish_wcstringutil25string_fuzzy_match_string(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.bd, i64 noundef %i.be, i1 noundef zeroext false) ; 3 uses
  %.sroa.015.0.extract.trunc = trunc i24 %i.bf to i8 ; 3 uses
  %.not21 = icmp eq i8 %.sroa.015.0.extract.trunc, 2
  br i1 %.not21, label %.backedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.015.1.extract.shift = lshr i24 %i.bf, 8  ; 2 uses
  %.sroa.015.1.extract.trunc = trunc nuw i24 %.sroa.015.1.extract.shift to i16
  %.sroa.662.2.extract.shift69 = lshr i24 %i.bf, 16 ; 2 uses
  %.sroa.662.2.extract.trunc = trunc nuw i24 %.sroa.662.2.extract.shift69 to i8
  %i.bg = icmp eq i24 %.sroa.662.2.extract.shift69, 0 ; 2 uses
  %.sroa.662.1.extract.trunc = trunc i24 %.sroa.015.1.extract.shift to i8 ; 3 uses
  %i.bh = icmp eq i8 %.sroa.662.1.extract.trunc, 0
  %or.cond = and i1 %i.bg, %i.bh
  br i1 %or.cond, label %.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = call noundef zeroext i1 @_RNvMNtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB2_8DirEntry6is_dir(ptr noundef nonnull align 8 %i.ap)
  br i1 %i.bi, label %bb.j, label %.backedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %9, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.bj = load i64, ptr %i.c, align 8, !range !26, !noundef !10
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = load i64, ptr %i.y, align 8, !range !40, !noundef !10 ; 3 uses
  br i1 %i.bk, label %bb.k, label %bb.l, !prof !27

bb.k:                                             ; preds = %bb.j
  %i.bm = load i64, ptr %i.z, align 8
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bl, i64 %i.bm) #42
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bn = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bo = icmp ule i64 %9, %i.bl
  call void @llvm.assume(i1 %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not22, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.s, %bb.l
  store i64 %i.bl, ptr %i.g, align 8
  store ptr %i.bn, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %9, ptr %.sroa.611.0..sroa_idx, align 8
  %i.bp = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10
  %i.bq = load i64, ptr %i.ay, align 8, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4089)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef range(i64 0, 4611686018427387904) %i.bq)
          to label %.noexc.i unwind label %bb.o, !noalias !4090

.noexc.i:                                         ; preds = %bb.m
  %i.br = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4091, !noundef !10 ; 3 uses
  %i.bs = icmp ult i64 %i.br, 2305843009213693952
  call void @llvm.assume(i1 %i.bs)
  %.not.i.i.i = icmp eq i64 %i.bq, 0
  br i1 %.not.i.i.i, label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit, label %bb.n

bb.n:                                             ; preds = %.noexc.i
  %i.bt = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4091, !nonnull !10, !noundef !10
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  %i.bv = shl nuw nsw i64 %i.bq, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bu, ptr nonnull readonly align 4 %i.bp, i64 %i.bv, i1 false), !noalias !4089
  %.pre.i.i.i = load i64, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4091
  br label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit

bb.o:                                             ; preds = %bb.m
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g) #37
          to label %common.resume unwind label %bb.p, !noalias !4090

bb.p:                                             ; preds = %bb.o
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4090
  unreachable

common.resume:                                    ; preds = %.body, %bb.aq, %bb.q, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.ew, %bb.aq ], [ %i.bw, %bb.o ], [ %i.ca, %bb.q ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit: ; preds = %.noexc.i, %bb.n
  %i.by = phi i64 [ %.pre.i.i.i, %bb.n ], [ %i.br, %.noexc.i ]
  %i.bz = add i64 %i.by, %i.bq
  store i64 %i.bz, ptr %.sroa.611.0..sroa_idx, align 8, !alias.scope !4091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !alias.scope !4092
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !4093)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit43 unwind label %bb.q, !noalias !4094

bb.q:                                             ; preds = %_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add.exit
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %common.resume unwind label %bb.r, !noalias !4094

bb.r:                                             ; preds = %bb.q
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4094
  unreachable
end_hunk_3
begin_hunk_4_@_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander45expand_literal_intermediate_segment_with_fuzz:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cs, ptr nonnull readonly align 4 %i.cn, i64 %i.ct, i1 false), !noalias !4097
  %.pre.i.i.i46 = load i64, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !4099
  br label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #37
          to label %.body unwind label %bb.z, !noalias !4098

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4098
  unreachable

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cl, ptr nonnull align 4 %1, i64 %i.af, i1 false)
  br label %bb.w

bb.ab:                                            ; preds = %bb.x, %.noexc.i44
  %i.cw = phi i64 [ %.pre.i.i.i46, %bb.x ], [ %i.cp, %.noexc.i44 ]
  %i.cx = add i64 %i.cw, %i.co
  store i64 %i.cx, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !4099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !alias.scope !4100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !4101)
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef range(i64 0, 4611686018427387904) 1)
          to label %bb.ae unwind label %bb.ac, !noalias !4102

bb.ac:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #37
          to label %.body unwind label %bb.ad, !noalias !4102

bb.ad:                                            ; preds = %bb.ac
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38, !noalias !4102
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.da = load i64, ptr %i.ag, align 8, !alias.scope !4103, !noundef !10 ; 2 uses
  %i.db = icmp ult i64 %i.da, 2305843009213693952
  call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.ah, align 8, !alias.scope !4103, !nonnull !10, !noundef !10
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  store i32 47, ptr %i.dd, align 4, !noalias !4101
  %.pre.i.i.i49 = load i64, ptr %i.ag, align 8, !alias.scope !4103
  %i.de = add i64 %.pre.i.i.i49, 1
  store i64 %i.de, ptr %i.ag, align 8, !alias.scope !4103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !alias.scope !4104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.df = load ptr, ptr %i.ai, align 8, !nonnull !10, !align !11, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !noundef !10 ; 3 uses
  %i.di = load ptr, ptr %i.aj, align 8, !nonnull !10, !noundef !10
  %i.dj = load i64, ptr %i.ak, align 8, !noundef !10
  %i.dk = load ptr, ptr %i.al, align 8, !nonnull !10, !noundef !10
  %i.dl = load i64, ptr %i.am, align 8, !noundef !10
  invoke void @_RNvMNtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB2_16WildCardExpander6expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.di, i64 noundef %i.dj, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %6, i64 noundef %7, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.dk, i64 noundef %i.dl, i1 noundef zeroext true)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ae, %bb.ag
  %lpad.loopexit.split-lp44 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #37
          to label %.body unwind label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.dm = load ptr, ptr %i.ai, align 8, !nonnull !10, !align !11, !noundef !10 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load i64, ptr %i.dn, align 8, !noundef !10 ; 3 uses
  %.not24 = icmp ugt i64 %i.dh, %i.do
  br i1 %.not24, label %bb.ag, label %bb.ai, !prof !27

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @264, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265) #42
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag, %bb.u
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw [56 x i8], ptr %i.dq, i64 %i.do
  %i.ds = icmp samesign eq i64 %i.dh, %i.do
  br i1 %i.ds, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ai
  %i.dt = getelementptr inbounds nuw [56 x i8], ptr %i.dq, i64 %i.dh
  %i.du = shl nuw nsw i8 %.sroa.662.2.extract.trunc, 2
  %narrow.i = select i1 %i.bg, i8 4, i8 %i.du
  %i.dv = icmp eq i8 %.sroa.662.1.extract.trunc, 1
  %narrow3.i = select i1 %i.dv, i8 0, i8 %.sroa.662.1.extract.trunc
  %i.dw = shl nuw nsw i8 %.sroa.015.0.extract.trunc, 4
  %i.dx = add nuw nsw i8 %narrow.i, %i.dw
  %i.dy = add nuw nsw i8 %i.dx, %narrow3.i
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph, %bb.ap
  %.sroa.08.090 = phi ptr [ %i.dt, %.lr.ph ], [ %i.dz, %bb.ap ] ; 6 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.08.090, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.08.090, i64 48 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 8, !noundef !10 ; 2 uses
  %i.ec = and i16 %i.eb, 2
  %.not25 = icmp eq i16 %i.ec, 0
  br i1 %.not25, label %bb.am, label %bb.an

._crit_edge:                                      ; preds = %bb.ap, %bb.ai
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.ak

bb.ak:                                            ; preds = %._crit_edge
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %._crit_edge
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp71.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.aj
  %i.ef = or disjoint i16 %i.eb, 2
  store i16 %i.ef, ptr %i.ea, align 8
  %i.eg = load ptr, ptr %i.al, align 8, !nonnull !10, !noundef !10
  %i.eh = load i64, ptr %i.am, align 8, !noundef !10
  invoke void @_RNvMs0_NtCs8frGy5WneL6_4fish8completeNtB5_10Completion20prepend_token_prefix(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.sroa.08.090, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.eg, i64 noundef %i.eh)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.am, %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.08.090, i64 50 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.08.090, i64 52
  %i.ek = load i8, ptr %i.ej, align 4, !range !46, !alias.scope !4105, !noundef !10 ; 2 uses
  %i.el = icmp eq i8 %i.ek, 0
  %i.em = shl nuw nsw i8 %i.ek, 2
  %narrow.i55 = select i1 %i.el, i8 4, i8 %i.em
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.090, i64 51 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !range !25, !alias.scope !4105, !noundef !10 ; 2 uses
  %i.ep = icmp eq i8 %i.eo, 1
  %narrow3.i56 = select i1 %i.ep, i8 0, i8 %i.eo
  %i.eq = load i8, ptr %i.ei, align 2, !range !19, !alias.scope !4105, !noundef !10
  %i.er = shl nuw nsw i8 %i.eq, 4
  %i.es = or disjoint i8 %i.er, %narrow.i55
  %i.et = or disjoint i8 %i.es, %narrow3.i56
  %i.eu = icmp ugt i8 %i.dy, %i.et
  br i1 %i.eu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i8 %.sroa.015.0.extract.trunc, ptr %i.ei, align 2
  store i16 %.sroa.015.1.extract.trunc, ptr %i.en, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.ev = icmp eq ptr %i.dz, %i.dr
  br i1 %i.ev, label %._crit_edge, label %bb.aj

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit59 unwind label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  %i.ew = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit59: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.backedge

.backedge:                                        ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit40, %bb.g, %bb.i, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit59
  call void @llvm.experimental.noalias.scope.decl(metadata !4106)
  %i.ey = load ptr, ptr %i.j, align 8, !alias.scope !4106, !nonnull !10, !noundef !10
  %i.ez = load ptr, ptr %i.k, align 8, !alias.scope !4106, !nonnull !10, !align !11, !noundef !10
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load ptr, ptr %i.fa, align 8, !invariant.load !10, !noalias !4106, !nonnull !10
  %i.fc = call noundef zeroext i1 %i.fb(ptr noundef nonnull %i.ey) #43, !noalias !4106, !inline_history !5
  %i.fd = load i8, ptr %i.q, align 2, !range !19, !alias.scope !4106, !noundef !10
  %i.fe = trunc nuw i8 %i.fd to i1
  %i.ff = or i1 %i.fc, %i.fe                      ; 2 uses
  %i.fg = zext i1 %i.ff to i8
  store i8 %i.fg, ptr %i.q, align 2, !alias.scope !4106
  %i.fh = load i8, ptr %i.v, align 1, !range !19
  %i.fi = trunc nuw i8 %i.fh to i1
  %.sroa.0.0.i = select i1 %i.ff, i1 true, i1 %i.fi
  br i1 %.sroa.0.0.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultRNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter8DirEntryNtNtNtB4_2io5error5ErrorEEEB1q_.exit, label %bb.b

bb.as:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.fj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander8open_dir(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !align !28, !noundef !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.g = load i64, ptr %i.f, align 8, !noundef !10 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.h = load i64, ptr %i.a, align 8, !range !26, !noundef !10
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !40, !noundef !10 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #42
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  store i64 %i.k, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvNtCs8frGy5WneL6_4fish4path21append_path_component(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.p = shl nuw nsw i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.n, ptr nonnull align 4 %i.e, i64 %i.p, i1 false)
  br label %bb.d

bb.f:                                             ; preds = %.body, %bb.g
  %.pn = phi { ptr, i32 } [ %i.q, %bb.g ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #37
          to label %common.resume unwind label %bb.t

bb.g:                                             ; preds = %bb.p, %bb.o, %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.s = load i16, ptr %i.r, align 8, !noundef !10
  %i.t = and i16 %i.s, 2048
  %.not3 = icmp eq i16 %i.t, 0
  br i1 %.not3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %bb.h
  %i.u = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.v = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noundef !10
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil14normalize_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.w, i64 noundef %i.x, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.g

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.n ], [ %i.y, %bb.l ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.f

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.o:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter3new(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.u, i64 noundef %i.v)
          to label %bb.q unwind label %bb.g

bb.p:                                             ; preds = %bb.i
  invoke void @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter13new_with_dots(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.u, i64 noundef %i.v)
          to label %bb.q unwind label %bb.g

bb.q:                                             ; preds = %bb.p, %bb.o
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit7 unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit7: ; preds = %bb.q
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.t:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #38
  unreachable
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileE14write_all_coldCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #11 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !10 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileE9flush_bufCs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(40) %0) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !15
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4109)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !4109, !noundef !10 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !4109, !nonnull !10, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !4109
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !4109
  br label %bb.f
end_hunk_4
begin_hunk_5_@llvm.abs.i64
!3717 = distinct !{!3717, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!3718 = distinct !{!3718, !3717, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!3719 = distinct !{!3719, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_"}
!3720 = distinct !{!3720, !3719, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_: argument 0"}
!3721 = distinct !{!3721, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!3722 = distinct !{!3722, !3721, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!3723 = distinct !{!3723, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3724 = distinct !{!3724, !3723, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3725 = distinct !{!3725, !3723, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3726 = !{!3718, !3716}
!3727 = !{!3722, !3720}
!3728 = !{!3724}
!3729 = !{!3724, !3725}
!3730 = distinct !{!3730, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEE3newB14_"}
!3731 = distinct !{!3731, !3730, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEE3newB14_: argument 0"}
!3732 = distinct !{!3732, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_"}
!3733 = distinct !{!3733, !3732, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_: argument 0"}
!3734 = distinct !{!3734, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!3735 = distinct !{!3735, !3734, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!3736 = distinct !{!3736, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_"}
!3737 = distinct !{!3737, !3736, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceEEB1d_: argument 0"}
!3738 = distinct !{!3738, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!3739 = distinct !{!3739, !3738, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs8frGy5WneL6_4fish10parse_tree12ParsedSourceENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!3740 = !{!3731}
!3741 = !{!3735, !3733}
!3742 = !{!3739, !3737}
!3743 = distinct !{!3743, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryERNtNtB6_5alloc6GlobalE6new_inB1p_"}
!3744 = distinct !{!3744, !3743, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryERNtNtB6_5alloc6GlobalE6new_inB1p_: argument 0"}
!3745 = !{!3744}
!3746 = distinct !{!3746, i1 true, !"_RINvMs2_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB6_4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE12into_elementRNtNtBa_5alloc6GlobalEB19_"}
!3747 = distinct !{!3747, !3746, !"_RINvMs2_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB6_4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE12into_elementRNtNtBa_5alloc6GlobalEB19_: argument 0"}
!3748 = !{!3747}
!3749 = distinct !{!3749, i1 true, !"_RINvMs2_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB6_4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE12into_elementRNtNtBa_5alloc6GlobalEB19_"}
!3750 = distinct !{!3750, !3749, !"_RINvMs2_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB6_4NodeNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE12into_elementRNtNtBa_5alloc6GlobalEB19_: argument 0"}
!3751 = !{!3750}
!3752 = distinct !{!3752, !3757}
!3753 = distinct !{!3753, !3757}
!3754 = distinct !{!3754, i1 true, !"_RNvMs3_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE20split_off_after_nodeB1f_"}
!3755 = distinct !{!3755, !3754, !"_RNvMs3_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE20split_off_after_nodeB1f_: argument 0"}
!3756 = distinct !{!3756, !3754, !"_RNvMs3_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtCs8frGy5WneL6_4fish6screen16PromptCacheEntryE20split_off_after_nodeB1f_: argument 1"}
!3757 = !{!"llvm.loop.unroll.disable"}
!3758 = !{!3755}
!3759 = !{!3756}
!3760 = !{!3755, !3756}
!3761 = distinct !{!3761, i1 true, !"_RNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB4_13FdReadableSet7do_poll"}
!3762 = distinct !{!3762, !3761, !"_RNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB4_13FdReadableSet7do_poll: argument 0"}
!3763 = !{!3762}
!3764 = distinct !{!3764, i1 true, !"_RNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB4_13FdReadableSet7do_poll"}
!3765 = distinct !{!3765, !3764, !"_RNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB4_13FdReadableSet7do_poll: argument 0"}
!3766 = !{!3765}
!3767 = distinct !{!3767, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1w_13FdReadableSet13pollfd_get_fdEB1y_"}
!3768 = distinct !{!3768, !3767, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1w_13FdReadableSet13pollfd_get_fdEB1y_: argument 0"}
!3769 = distinct !{!3769, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd16binary_search_byNCINvB2_20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1W_13FdReadableSet13pollfd_get_fdE0EB1Y_"}
!3770 = distinct !{!3770, !3769, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd16binary_search_byNCINvB2_20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1W_13FdReadableSet13pollfd_get_fdE0EB1Y_: argument 0"}
!3771 = distinct !{!3771, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdE10insert_mutCs8frGy5WneL6_4fish"}
!3772 = distinct !{!3772, !3771, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtCs1vxLqTlM7jN_4libc4unix6pollfdE10insert_mutCs8frGy5WneL6_4fish: argument 0"}
!3773 = !{!3770, !3768}
!3774 = !{!3772}
!3775 = distinct !{!3775, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1w_13FdReadableSet13pollfd_get_fdEB1y_"}
!3776 = distinct !{!3776, !3775, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1w_13FdReadableSet13pollfd_get_fdEB1y_: argument 0"}
!3777 = distinct !{!3777, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd16binary_search_byNCINvB2_20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1W_13FdReadableSet13pollfd_get_fdE0EB1Y_"}
!3778 = distinct !{!3778, !3777, !"_RINvMNtCs3oUPovFnLWP_4core5sliceSNtNtCs1vxLqTlM7jN_4libc4unix6pollfd16binary_search_byNCINvB2_20binary_search_by_keylNvMs_NtCs8frGy5WneL6_4fish15fd_readable_setNtB1W_13FdReadableSet13pollfd_get_fdE0EB1Y_: argument 0"}
!3779 = !{!3778, !3776}
!3780 = distinct !{!3780, i1 true, !"_RNvMNtCs8frGy5WneL6_4fish6parserNtB2_5Block10src_lineno"}
!3781 = distinct !{!3781, !3780, !"_RNvMNtCs8frGy5WneL6_4fish6parserNtB2_5Block10src_lineno: argument 0"}
!3782 = distinct !{!3782, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3783 = distinct !{!3783, !3782, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3784 = distinct !{!3784, !3782, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3785 = distinct !{!3785, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish"}
!3786 = distinct !{!3786, !3785, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish: argument 0"}
!3787 = distinct !{!3787, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3788 = distinct !{!3788, !3787, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3789 = distinct !{!3789, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish"}
!3790 = distinct !{!3790, !3789, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 0"}
!3791 = distinct !{!3791, !3789, !"_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultjNtNtCs1HV6ixfL8cZ_11fish_printf11printf_impl5ErrorE6unwrapCs8frGy5WneL6_4fish: argument 1"}
!3792 = distinct !{!3792, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish"}
!3793 = distinct !{!3793, !3792, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish: argument 0"}
!3794 = distinct !{!3794, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3795 = distinct !{!3795, !3794, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3796 = !{!3781}
!3797 = !{!3783}
!3798 = !{!3783, !3784}
!3799 = !{!3788, !3786}
!3800 = !{!3790}
!3801 = !{!3790, !3791}
!3802 = !{!3795, !3793}
!3803 = distinct !{!3803, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs8frGy5WneL6_4fish5event5EventEE3newB11_"}
!3804 = distinct !{!3804, !3803, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_2rc7RcInnerNtNtCs8frGy5WneL6_4fish5event5EventEE3newB11_: argument 0"}
!3805 = distinct !{!3805, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_"}
!3806 = distinct !{!3806, !3805, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_: argument 0"}
!3807 = !{!3804}
!3808 = !{!3806}
!3809 = distinct !{!3809, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_"}
!3810 = distinct !{!3810, !3809, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_: argument 0"}
!3811 = !{!3810}
!3812 = distinct !{!3812, i1 true, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_"}
!3813 = distinct !{!3813, !3812, !"_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtNtCs8frGy5WneL6_4fish6parser9BlockDataE3newBI_: argument 0"}
!3814 = !{!3813}
!3815 = distinct !{!3815, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_complete"}
!3816 = distinct !{!3816, !3815, !"_RNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_complete: argument 3"}
!3817 = distinct !{!3817, !3815, !"_RNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_complete: argument 2"}
!3818 = distinct !{!3818, !3815, !"_RNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_complete: argument 1"}
!3819 = distinct !{!3819, !3815, !"_RNvNtCs8frGy5WneL6_4fish8wildcard33wildcard_test_flags_then_complete: argument 0"}
!3820 = distinct !{!3820, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete"}
!3821 = distinct !{!3821, !3820, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 2"}
!3822 = distinct !{!3822, !3820, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 1"}
!3823 = distinct !{!3823, !3820, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 0"}
!3824 = distinct !{!3824, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3825 = distinct !{!3825, !3824, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3826 = distinct !{!3826, !3824, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3827 = distinct !{!3827, !3824, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3828 = distinct !{!3828, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3829 = distinct !{!3829, !3828, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3830 = distinct !{!3830, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3831 = distinct !{!3831, !3830, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3832 = distinct !{!3832, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete"}
!3833 = distinct !{!3833, !3832, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 2"}
!3834 = distinct !{!3834, !3832, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 1"}
!3835 = distinct !{!3835, !3832, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 0"}
!3836 = distinct !{!3836, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!3837 = distinct !{!3837, !3836, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!3838 = distinct !{!3838, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete"}
!3839 = distinct !{!3839, !3838, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 2"}
!3840 = distinct !{!3840, !3838, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 1"}
!3841 = distinct !{!3841, !3838, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 0"}
!3842 = distinct !{!3842, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!3843 = distinct !{!3843, !3842, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!3844 = distinct !{!3844, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!3845 = distinct !{!3845, !3844, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!3846 = distinct !{!3846, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3847 = distinct !{!3847, !3846, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3848 = distinct !{!3848, !3846, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3849 = distinct !{!3849, !3846, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3850 = distinct !{!3850, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3851 = distinct !{!3851, !3850, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3852 = distinct !{!3852, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3853 = distinct !{!3853, !3852, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3854 = distinct !{!3854, i1 true, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete"}
!3855 = distinct !{!3855, !3854, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 2"}
!3856 = distinct !{!3856, !3854, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 1"}
!3857 = distinct !{!3857, !3854, !"_RNvNtCs8frGy5WneL6_4fish8wildcard17wildcard_complete: argument 0"}
!3858 = distinct !{!3858, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish"}
!3859 = distinct !{!3859, !3858, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEECs8frGy5WneL6_4fish: argument 0"}
!3860 = distinct !{!3860, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander24descend_unique_hierarchy"}
!3861 = distinct !{!3861, !3860, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander24descend_unique_hierarchy: argument 1"}
!3862 = distinct !{!3862, !3860, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander24descend_unique_hierarchy: argument 2"}
!3863 = distinct !{!3863, !3860, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander24descend_unique_hierarchy: argument 0"}
!3864 = distinct !{!3864, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!3865 = distinct !{!3865, !3864, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!3866 = distinct !{!3866, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed"}
!3867 = distinct !{!3867, !3866, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed: argument 0"}
!3868 = distinct !{!3868, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_"}
!3869 = distinct !{!3869, !3868, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_: argument 0"}
!3870 = distinct !{!3870, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_"}
!3871 = distinct !{!3871, !3870, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_: argument 0"}
!3872 = distinct !{!3872, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_"}
!3873 = distinct !{!3873, !3872, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_: argument 0"}
!3874 = distinct !{!3874, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!3875 = distinct !{!3875, !3874, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3876 = distinct !{!3876, i1 true, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish"}
!3877 = distinct !{!3877, !3876, !"_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish: argument 0"}
!3878 = distinct !{!3878, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_"}
!3879 = distinct !{!3879, !3878, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter7DirIterEBH_: argument 0"}
!3880 = distinct !{!3880, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_"}
!3881 = distinct !{!3881, !3880, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdEEB1c_: argument 0"}
!3882 = distinct !{!3882, i1 true, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_"}
!3883 = distinct !{!3883, !3882, !"_RNvXsw_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtNtCs8frGy5WneL6_4fish5wutil8dir_iter5DirFdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_: argument 0"}
!3884 = distinct !{!3884, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish"}
!3885 = distinct !{!3885, !3884, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrBJ_ECs8frGy5WneL6_4fish: argument 0"}
!3886 = distinct !{!3886, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3887 = distinct !{!3887, !3886, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3888 = !{!3823, !3822, !3821, !3819, !3818, !3817, !3816}
!3889 = !{!3819, !3818, !3817, !3816}
!3890 = !{!3825}
!3891 = !{!3825, !3826, !3816}
!3892 = !{!3831, !3829, !3827}
!3893 = !{!3825, !3816}
!3894 = !{!3825, !3827}
!3895 = !{!3835, !3834, !3833, !3819, !3818, !3817, !3816}
!3896 = !{!3816}
!3897 = !{i64 0, i64 6}
!3898 = !{i64 0, i64 3}
!3899 = !{!3837}
!3900 = !{!3841, !3840, !3839, !3819, !3818, !3817, !3816}
!3901 = !{!3843}
!3902 = !{!3845}
!3903 = !{!3847}
!3904 = !{!3847, !3848, !3816}
!3905 = !{!3853, !3851, !3849}
!3906 = !{!3847, !3816}
!3907 = !{!3847, !3849}
!3908 = !{!3857, !3856, !3855, !3819, !3818, !3817, !3816}
!3909 = !{!3859}
!3910 = !{!3861}
!3911 = !{!3862}
!3912 = !{!3863, !3861, !3862}
!3913 = !{!3863, !3861}
!3914 = !{!3865}
!3915 = !{!3867}
!3916 = !{!3867, !3863, !3861}
!3917 = !{!3867, !3861}
!3918 = !{!3869}
!3919 = !{!3871}
!3920 = !{!3873}
!3921 = !{!3873, !3871, !3869}
!3922 = !{!3873, !3871, !3869, !3863, !3861}
!3923 = !{!3875}
!3924 = !{!3877, !3862}
!3925 = !{!3879}
!3926 = !{!3881}
!3927 = !{!3883}
!3928 = !{!3883, !3881, !3879}
!3929 = !{!3883, !3881, !3879, !3863, !3861}
!3930 = !{!3861, !3862}
!3931 = !{!3887, !3885}
!3932 = distinct !{!3932, i1 true, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains"}
!3933 = distinct !{!3933, !3932, !"_RNvXsK_NtNtCs3oUPovFnLWP_4core5slice3cmpcNtB5_13SliceContains14slice_contains: argument 0"}
!3934 = distinct !{!3934, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish"}
!3935 = distinct !{!3935, !3934, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 1"}
!3936 = distinct !{!3936, !3934, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsK_NtB9_3cmpcNtB1J_13SliceContains14slice_containss_0ECs8frGy5WneL6_4fish: argument 0"}
!3937 = distinct !{!3937, i1 true, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish"}
!3938 = distinct !{!3938, !3937, !"_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4ItercENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCNvXsK_NtB9_3cmpcNtB1L_13SliceContains14slice_contains0ECs8frGy5WneL6_4fish: argument 0"}
!3939 = distinct !{!3939, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed"}
!3940 = distinct !{!3940, !3939, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed: argument 0:pre.rot"}
!3941 = distinct !{!3941, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!3942 = distinct !{!3942, !3941, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!3943 = distinct !{!3943, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed"}
!3944 = distinct !{!3944, !3943, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed: argument 0:h.rot"}
!3945 = distinct !{!3945, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3946 = distinct !{!3946, !3945, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3947 = distinct !{!3947, !3945, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3948 = distinct !{!3948, !3945, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3949 = distinct !{!3949, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3950 = distinct !{!3950, !3949, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3951 = distinct !{!3951, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3952 = distinct !{!3952, !3951, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3953 = distinct !{!3953, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3954 = distinct !{!3954, !3953, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3955 = distinct !{!3955, !3953, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3956 = distinct !{!3956, !3953, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3957 = distinct !{!3957, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3958 = distinct !{!3958, !3957, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3959 = distinct !{!3959, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3960 = distinct !{!3960, !3959, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3961 = distinct !{!3961, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3962 = distinct !{!3962, !3961, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3963 = distinct !{!3963, !3961, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3964 = distinct !{!3964, !3961, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3965 = distinct !{!3965, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3966 = distinct !{!3966, !3965, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3967 = distinct !{!3967, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3968 = distinct !{!3968, !3967, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3969 = distinct !{!3969, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3970 = distinct !{!3970, !3969, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3971 = distinct !{!3971, !3969, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3972 = distinct !{!3972, !3969, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3973 = distinct !{!3973, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3974 = distinct !{!3974, !3973, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3975 = distinct !{!3975, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3976 = distinct !{!3976, !3975, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3977 = distinct !{!3977, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3978 = distinct !{!3978, !3977, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3979 = distinct !{!3979, !3977, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3980 = distinct !{!3980, !3977, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3981 = distinct !{!3981, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3982 = distinct !{!3982, !3981, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3983 = distinct !{!3983, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3984 = distinct !{!3984, !3983, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3985 = distinct !{!3985, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3986 = distinct !{!3986, !3985, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3987 = distinct !{!3987, !3985, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3988 = distinct !{!3988, !3985, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3989 = distinct !{!3989, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3990 = distinct !{!3990, !3989, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3991 = distinct !{!3991, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!3992 = distinct !{!3992, !3991, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!3993 = distinct !{!3993, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!3994 = distinct !{!3994, !3993, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!3995 = distinct !{!3995, !3993, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!3996 = distinct !{!3996, !3993, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!3997 = distinct !{!3997, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!3998 = distinct !{!3998, !3997, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!3999 = distinct !{!3999, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4000 = distinct !{!4000, !3999, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4001 = distinct !{!4001, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!4002 = distinct !{!4002, !4001, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!4003 = distinct !{!4003, !4001, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!4004 = distinct !{!4004, !4001, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!4005 = distinct !{!4005, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!4006 = distinct !{!4006, !4005, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!4007 = distinct !{!4007, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4008 = distinct !{!4008, !4007, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4009 = !{!3933}
!4010 = !{!3936, !3935}
!4011 = !{!3938}
!4012 = !{!3940}
!4013 = !{!3942}
!4014 = !{!3944}
!4015 = !{!3946}
!4016 = !{!3946, !3947}
!4017 = !{!3952, !3950, !3948}
!4018 = !{!3946, !3948}
!4019 = !{!3954}
!4020 = !{!3954, !3955}
!4021 = !{!3960, !3958, !3956}
!4022 = !{!3954, !3956}
!4023 = !{!3962}
!4024 = !{!3962, !3963}
!4025 = !{!3968, !3966, !3964}
!4026 = !{!3962, !3964}
!4027 = !{!3970}
!4028 = !{!3970, !3971}
!4029 = !{!3976, !3974, !3972}
!4030 = !{!3970, !3972}
!4031 = !{!3978}
!4032 = !{!3978, !3979}
!4033 = !{!3984, !3982, !3980}
!4034 = !{!3978, !3980}
!4035 = !{!3986}
!4036 = !{!3986, !3987}
!4037 = !{!3992, !3990, !3988}
!4038 = !{!3986, !3988}
!4039 = !{!3994}
!4040 = !{!3994, !3995}
!4041 = !{!4000, !3998, !3996}
!4042 = !{!3994, !3996}
!4043 = !{!4002}
!4044 = !{!4002, !4003}
!4045 = !{!4008, !4006, !4004}
!4046 = !{!4002, !4004}
!4047 = distinct !{!4047, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed"}
!4048 = distinct !{!4048, !4047, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed: argument 0:pre.rot"}
!4049 = distinct !{!4049, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!4050 = distinct !{!4050, !4049, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!4051 = distinct !{!4051, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!4052 = distinct !{!4052, !4051, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!4053 = distinct !{!4053, !4051, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!4054 = distinct !{!4054, !4051, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!4055 = distinct !{!4055, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!4056 = distinct !{!4056, !4055, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!4057 = distinct !{!4057, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4058 = distinct !{!4058, !4057, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4059 = distinct !{!4059, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!4060 = distinct !{!4060, !4059, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!4061 = distinct !{!4061, !4059, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!4062 = distinct !{!4062, !4059, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!4063 = distinct !{!4063, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!4064 = distinct !{!4064, !4063, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!4065 = distinct !{!4065, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4066 = distinct !{!4066, !4065, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4067 = distinct !{!4067, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!4068 = distinct !{!4068, !4067, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!4069 = distinct !{!4069, !4067, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!4070 = distinct !{!4070, !4067, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!4071 = distinct !{!4071, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!4072 = distinct !{!4072, !4071, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!4073 = distinct !{!4073, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4074 = distinct !{!4074, !4073, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4075 = distinct !{!4075, i1 true, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add"}
!4076 = distinct !{!4076, !4075, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 0"}
!4077 = distinct !{!4077, !4075, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 2"}
!4078 = distinct !{!4078, !4075, !"_RNvXs1H_NtCslLGyqsphxMB_10widestring9utfstringNtB6_11Utf32StringINtNtNtCs3oUPovFnLWP_4core3ops5arith3AddRNtNtB8_6utfstr8Utf32StrE3add: argument 1"}
!4079 = distinct !{!4079, i1 true, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish"}
!4080 = distinct !{!4080, !4079, !"_RINvMs1G_NtCslLGyqsphxMB_10widestring9utfstringNtB7_11Utf32String11push_utfstrNtNtB9_6utfstr8Utf32StrECs8frGy5WneL6_4fish: argument 0"}
!4081 = distinct !{!4081, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish"}
!4082 = distinct !{!4082, !4081, !"_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecmE15append_elementsCs8frGy5WneL6_4fish: argument 0"}
!4083 = distinct !{!4083, i1 true, !"_RNvMCskeBJdk8gjxq_17fish_wcstringutilNtB2_16StringFuzzyMatch4rank"}
!4084 = distinct !{!4084, !4083, !"_RNvMCskeBJdk8gjxq_17fish_wcstringutilNtB2_16StringFuzzyMatch4rank: argument 0"}
!4085 = distinct !{!4085, i1 true, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed"}
!4086 = distinct !{!4086, !4085, !"_RNvMs_NtNtCs8frGy5WneL6_4fish8wildcard8expanderNtB4_16WildCardExpander25interrupted_or_overflowed: argument 0:h.rot"}
!4087 = !{!4048}
!4088 = !{!4050}
!4089 = !{!4052}
!4090 = !{!4052, !4053}
!4091 = !{!4058, !4056, !4054}
!4092 = !{!4052, !4054}
!4093 = !{!4060}
!4094 = !{!4060, !4061}
!4095 = !{!4066, !4064, !4062}
!4096 = !{!4060, !4062}
!4097 = !{!4068}
!4098 = !{!4068, !4069}
!4099 = !{!4074, !4072, !4070}
!4100 = !{!4068, !4070}
!4101 = !{!4076}
!4102 = !{!4076, !4077}
!4103 = !{!4082, !4080, !4078}
!4104 = !{!4076, !4078}
!4105 = !{!4084}
!4106 = !{!4086}
!4107 = distinct !{!4107, i1 true, !"_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileE25write_to_buffer_uncheckedCs8frGy5WneL6_4fish"}
!4108 = distinct !{!4108, !4107, !"_RNvMs_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufwriterINtB4_9BufWriterQNtNtCsaL1QbXo9JQH_3std2fs4FileE25write_to_buffer_uncheckedCs8frGy5WneL6_4fish: argument 0"}
!4109 = !{!4108}
!4110 = distinct !{!4110, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!4111 = distinct !{!4111, !4110, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!4112 = !{!4111}
!4113 = distinct !{!4113, i1 true, !"_RNvMs_NtCs8frGy5WneL6_4fish11tty_handoffNtB4_15TtyProtocolsSet12get_commands"}
!4114 = distinct !{!4114, !4113, !"_RNvMs_NtCs8frGy5WneL6_4fish11tty_handoffNtB4_15TtyProtocolsSet12get_commands: argument 0"}
!4115 = distinct !{!4115, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish"}
!4116 = distinct !{!4116, !4115, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs8frGy5WneL6_4fish: argument 0"}
!4117 = !{!4114}
!4118 = !{!4116}
!4119 = distinct !{!4119, i1 true, !"_RNvMNtCs8frGy5WneL6_4fish11tty_handoffNtB2_9TtyQuirks6detect"}
!4120 = distinct !{!4120, !4119, !"_RNvMNtCs8frGy5WneL6_4fish11tty_handoffNtB2_9TtyQuirks6detect: argument 1"}
!4121 = distinct !{!4121, !4119, !"_RNvMNtCs8frGy5WneL6_4fish11tty_handoffNtB2_9TtyQuirks6detect: argument 0"}
!4122 = distinct !{null}
end_hunk_5
