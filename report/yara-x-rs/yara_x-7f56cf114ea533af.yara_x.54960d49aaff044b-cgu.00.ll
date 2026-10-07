Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.00?download=true
inline.NumInlined: 1589
inline.NumDeleted: 342
begin_hunk_0_@_RNSNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1e_8LazyLockxE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs7gfv9tzbXmh_6yara_x:bb.a
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.c, align 4, !range !5, !noalias !11934, !noundef !6
  %i.d = trunc nuw i8 %.val.i.i to i1
  br i1 %i.d, label %bb.c, label %_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockxE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7gfv9tzbXmh_6yara_x.exit, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsG258MDvU3F_3std4sync9lazy_lock14panic_poisoned() #21, !noalias !11934
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21, !noalias !11934
  unreachable

_RNvYNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1c_8LazyLockxE5force0E0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !noalias !11934, !nonnull !6, !noundef !6
  %i.f = tail call noundef i64 %i.e(), !noalias !11934, !inline_history !11931
  store i64 %i.f, ptr %i.b, align 8, !noalias !11934
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt17___thunk__in_rangeINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextEINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtBa_5types9structure6StructENtNtNtBa_4wasm6string13RuntimeStringEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11941)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !11942
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !noalias !11942
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !11941
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11943)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !11944, !noalias !11945, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 792
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noalias !11946, !noundef !6 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.g
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  %i.l = call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt8in_range(ptr noalias nofree noundef align 8 dereferenceable(2208) %i.k, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !11947
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt21___thunk__permutationsINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextEINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtBa_5types9structure6StructENtNtNtBa_4wasm6string13RuntimeStringxEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.b, align 8, !noalias !11955
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.c, align 8, !noalias !11955
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !11954
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %4, ptr %i.d, align 8, !noalias !11955
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11956)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !11957, !noalias !11958, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 792
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 664
  %i.h = load i64, ptr %i.g, align 8, !range !10, !noalias !11959, !noundef !6 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.h
  %i.l = getelementptr i8, ptr %i.i, i64 %i.k
  %i.m = call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt12permutations(ptr noalias nofree noundef align 8 dereferenceable(2208) %i.l, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %4), !noalias !11960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNSNvYNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt25___thunk__all_permutationsINtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQINtNtNtCsiOkGTpNE17y_8wasmtime7runtime4func6CallerNtNtNtBa_7scanner7context11ScanContextEINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtBa_5types9structure6StructENtNtNtBa_4wasm6string13RuntimeStringEE9call_once6vtableBa_(ptr nofree readnone captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11967)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !11968
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !noalias !11968
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !noalias !11967
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11969)
  %i.d = load ptr, ptr %1, align 8, !alias.scope !11970, !noalias !11971, !nonnull !6, !align !8, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 792
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 664
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noalias !11972, !noundef !6 ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.g
  %i.k = getelementptr i8, ptr %i.h, i64 %i.j
  %i.l = call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt12permutations(ptr noalias nofree noundef nonnull align 8 dereferenceable(2208) %i.k, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, i64 noundef 31), !noalias !11973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt12parse_domain(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11987)
  %i.d = tail call noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh9ends_withCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 1), !noalias !11988
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11989
  store ptr %1, ptr %i.a, align 8, !noalias !11989
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !11989
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 0, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !11989
  %i.e = call fastcc i64 @_RINvNtCsgBG1jZaL7hG_3psl4list6lookupINtNtNtCskKLDkoKarTP_4core5slice4iter6RSplithNCNvYNtB4_4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11989
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = icmp samesign eq i64 %2, 0
  br i1 %i.f, label %_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.h = icmp eq ptr %1, %i.j
  br i1 %i.h, label %_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %.sroa.03.0.i.i.i91 = phi i64 [ %2, %.lr.ph ], [ %i.k, %bb.d ]
  %i.i = phi ptr [ %i.g, %.lr.ph ], [ %i.j, %bb.d ]
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 -1 ; 3 uses
  %i.k = add nsw i64 %.sroa.03.0.i.i.i91, -1      ; 3 uses
  %.val.i.i.i = load i8, ptr %i.j, align 1, !alias.scope !11987, !noalias !11990, !noundef !6
  %i.l = icmp eq i8 %.val.i.i.i, 46
  br i1 %i.l, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ult i64 %i.k, %2
  tail call void @llvm.assume(i1 %i.m)
  br label %_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %bb.d, %bb.c, %bb.f
  %.sroa.10.0.i = phi i8 [ 0, %bb.f ], [ 1, %bb.c ], [ 1, %bb.d ]
  %.sroa.7.0.i = phi i64 [ %i.k, %bb.f ], [ %2, %bb.c ], [ %2, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11989
  store ptr %1, ptr %i.a, align 8, !noalias !11989
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx2.i, align 8, !noalias !11989
  %.sroa.10.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx4.i, align 8, !noalias !11989
  %i.n = call fastcc i64 @_RINvNtCsgBG1jZaL7hG_3psl4list6lookupINtNtNtCskKLDkoKarTP_4core5slice4iter6RSplithNCNvYNtB4_4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0EECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11989
  %i.o = add i64 %i.n, 1
  br label %bb.g

bb.g:                                             ; preds = %_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ %i.o, %_RNvXsg_NtNtCskKLDkoKarTP_4core5slice4iterINtB5_5SplithNCNvYNtCsgBG1jZaL7hG_3psl4ListNtCsb9UCG6fXZnK_9psl_types4List6suffix0ENtNtNtNtB9_4iter6traits12double_ended19DoubleEndedIterator9next_backCs7gfv9tzbXmh_6yara_x.exit.i ], [ %i.e, %bb.b ] ; 7 uses
  %i.p = add i64 %.sroa.01.0.i, -1
  %or.cond.not.i = icmp ult i64 %i.p, %2
  br i1 %or.cond.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = sub i64 %2, %.sroa.01.0.i                ; 2 uses
  %i.r = icmp ugt i64 %.sroa.01.0.i, %2
  br i1 %i.r, label %bb.k, label %bb.j, !prof !9

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %.sroa.01.0.i)
  %i.t = load i64, ptr %i.c, align 8, !range !11, !noundef !6
  %.not60 = icmp eq i64 %i.t, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not60, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.q, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #21
  unreachable

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.m:                                             ; preds = %bb.j
  %i.u = add i64 %.sroa.01.0.i, 1                 ; 2 uses
  %.not61 = icmp ugt i64 %2, %i.u
  br i1 %.not61, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.v = sub nuw i64 %2, %i.u                     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtCs2AhGS15tZfv_4bstr4utf88validate(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.v)
  %i.w = load i64, ptr %i.b, align 8, !range !11, !noundef !6
  %.not63 = icmp eq i64 %i.w, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.not63, label %.preheader, label %bb.p

bb.o:                                             ; preds = %bb.m
  store ptr %i.s, ptr %0, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.i, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.711.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.711.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.ab

bb.p:                                             ; preds = %bb.n
  store ptr null, ptr %0, align 8
  br label %bb.ab

bb.q:                                             ; preds = %bb.r
  %.not.i.i = icmp ugt i64 %i.ab, %i.v
  br i1 %.not.i.i, label %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.n, %bb.q
  %i.x = phi i64 [ %i.ab, %bb.q ], [ %i.v, %bb.n ] ; 2 uses
  %i.y = call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr15memrchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.x), !noalias !11991 ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.r, label %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread

bb.r:                                             ; preds = %.preheader
  %i.ab = extractvalue { i64, i64 } %i.y, 1       ; 6 uses
  %i.ac = icmp ult i64 %i.ab, %i.x
  call void @llvm.assume(i1 %i.ac)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %lhsc.i = load i8, ptr %i.ad, align 1, !alias.scope !11992, !noalias !11993
  %i.ae = icmp eq i8 %lhsc.i, 46
  br i1 %i.ae, label %bb.s, label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.af = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.ag = sub nuw i64 %i.v, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.af
  br label %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread

_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread: ; preds = %bb.q, %.preheader, %bb.s
  %.sroa.5.082 = phi i64 [ %i.ab, %bb.s ], [ undef, %.preheader ], [ undef, %bb.q ] ; 5 uses
  %.sroa.024.0 = phi ptr [ %1, %bb.s ], [ null, %.preheader ], [ null, %bb.q ] ; 5 uses
  %.sroa.026.0 = phi ptr [ %i.ah, %bb.s ], [ %1, %.preheader ], [ %1, %bb.q ] ; 18 uses
  %.sroa.12.0 = phi i64 [ %i.ag, %bb.s ], [ %i.v, %.preheader ], [ %i.v, %bb.q ] ; 3 uses
  switch i64 %.sroa.12.0, label %.critedge71 [
    i64 3, label %bb.t
    i64 1, label %bb.v
    i64 4, label %bb.w
    i64 7, label %bb.x
  ]

bb.t:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread
  %i.ai = load i16, ptr %.sroa.026.0, align 1
  %i.aj = xor i16 %i.ai, 30583
  %i.ak = getelementptr i8, ptr %.sroa.026.0, i64 2
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %i.an = xor i16 %i.am, 119
  %i.ao = or i16 %i.aj, %i.an
  %i.ap = icmp ne i16 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load i16, ptr %.sroa.026.0, align 1
  %i.at = xor i16 %i.as, 29798
  %i.au = getelementptr i8, ptr %.sroa.026.0, i64 2
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i16
  %i.ax = xor i16 %i.aw, 112
  %i.ay = or i16 %i.at, %i.ax
  %i.az = icmp ne i16 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.v:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread
  %lhsc = load i8, ptr %.sroa.026.0, align 1
  %i.bc = icmp eq i8 %lhsc, 109
  br i1 %i.bc, label %bb.aa, label %.critedge71

bb.w:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread
  %i.bd = load i32, ptr %.sroa.026.0, align 1
  %i.be = icmp ne i32 %i.bd, 1818845549
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.aa, label %.critedge71

bb.x:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread
  %i.bh = load i32, ptr %.sroa.026.0, align 1
  %i.bi = xor i32 %i.bh, 1835165047
  %i.bj = getelementptr i8, ptr %.sroa.026.0, i64 3
  %i.bk = load i32, ptr %i.bj, align 1
  %i.bl = xor i32 %i.bk, 1818845549
  %i.bm = or i32 %i.bi, %i.bl
  %i.bn = icmp ne i32 %i.bm, 0
  %i.bo = zext i1 %i.bn to i32
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.aa, label %.critedge71

bb.y:                                             ; preds = %bb.u
  %i.bq = load i16, ptr %.sroa.026.0, align 1
  %i.br = xor i16 %i.bq, 29550
  %i.bs = getelementptr i8, ptr %.sroa.026.0, i64 2
  %i.bt = load i8, ptr %i.bs, align 1
  %i.bu = zext i8 %i.bt to i16
  %i.bv = xor i16 %i.bu, 49
  %i.bw = or i16 %i.br, %i.bv
  %i.bx = icmp ne i16 %i.bw, 0
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = load i16, ptr %.sroa.026.0, align 1
  %i.cb = xor i16 %i.ca, 29550
  %i.cc = getelementptr i8, ptr %.sroa.026.0, i64 2
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i16
  %i.cf = xor i16 %i.ce, 50
  %i.cg = or i16 %i.cb, %i.cf
  %i.ch = icmp ne i16 %i.cg, 0
  %i.ci = zext i1 %i.ch to i32
  %i.cj = icmp eq i32 %i.ci, 0
  br i1 %i.cj, label %bb.aa, label %.critedge71

.critedge71:                                      ; preds = %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread, %bb.x, %bb.v, %bb.w, %bb.aa, %bb.z
  %.sroa.024.1 = phi ptr [ %.sroa.026.0, %bb.aa ], [ %.sroa.024.0, %bb.z ], [ %.sroa.024.0, %bb.w ], [ %.sroa.024.0, %bb.v ], [ %.sroa.024.0, %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread ], [ %.sroa.024.0, %bb.x ]
  %.sroa.425.1 = phi i64 [ %.sroa.12.0, %bb.aa ], [ %.sroa.5.082, %bb.z ], [ %.sroa.5.082, %bb.w ], [ %.sroa.5.082, %bb.v ], [ %.sroa.5.082, %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread ], [ %.sroa.5.082, %bb.x ]
  %.sroa.026.1 = phi ptr [ null, %bb.aa ], [ %.sroa.026.0, %bb.z ], [ %.sroa.026.0, %bb.w ], [ %.sroa.026.0, %bb.v ], [ %.sroa.026.0, %_RINvMNtCskKLDkoKarTP_4core3stre11rsplit_oncecECs7gfv9tzbXmh_6yara_x.exit.thread ], [ %.sroa.026.0, %bb.x ]
  store ptr %i.s, ptr %0, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.01.0.i, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.v, ptr %.sroa.646.0..sroa_idx, align 8
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.024.1, ptr %.sroa.747.0..sroa_idx, align 8
  %.sroa.848.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.425.1, ptr %.sroa.848.0..sroa_idx, align 8
  %.sroa.949.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.026.1, ptr %.sroa.949.0..sroa_idx, align 8
  %.sroa.1050.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.12.0, ptr %.sroa.1050.0..sroa_idx, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z
  br label %.critedge71

bb.ab:                                            ; preds = %bb.o, %bb.p, %bb.i, %bb.l, %.critedge71
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt12permutations(ptr noalias nofree noundef nonnull align 8 dereferenceable(2208) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 12 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  store ptr %1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = invoke noundef align 8 ptr @_RINvMs3_NtCs907JfTDu8Xv_8indexmap3mapINtB6_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtNtCs7gfv9tzbXmh_6yara_x5types9structure11StructFieldE3geteEB1w_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 3)
          to label %bb.c unwind label %bb.b       ; 4 uses

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.j, %bb.k, %bb.b
  %.pn = phi { ptr, i32 } [ %i.k, %bb.b ], [ %i.ab, %bb.k ], [ %i.ab, %bb.j ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs7gfv9tzbXmh_6yara_x4wasm6string13RuntimeStringEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %2) #22
          to label %bb.bk unwind label %bb.bq

bb.b:                                             ; preds = %bb.bi, %bb.p, %bb.i, %bb.g, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEECs7gfv9tzbXmh_6yara_x.exit

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.g, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12029)
  %i.m = load i8, ptr %i.l, align 8, !range !12, !alias.scope !12029, !noundef !6
  %i.n = icmp ne i8 %i.m, 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.p = load i64, ptr %i.o, align 8, !range !11, !alias.scope !12029
  %i.q = icmp eq i64 %i.p, 2
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  br i1 %or.cond.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !12029, !nonnull !6, !noundef !6 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !12029, !noundef !6 ; 2 uses
  %i.u = icmp ne i64 %i.t, 0
  tail call void @llvm.assume(i1 %i.u)
  %i.v = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !12029
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.f, label %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue13try_as_string.exit, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.i, %bb.g
  unreachable

_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue13try_as_string.exit: ; preds = %bb.e
  store ptr %i.s, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !noundef !6
  invoke fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules2vt12parse_domain(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.l unwind label %bb.j

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.h unwind label %bb.b

bb.j:                                             ; preds = %bb.ai, %bb.af, %bb.bg, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ag, %bb.q, %bb.m, %_RNvMs5_NtCs7gfv9tzbXmh_6yara_x5typesNtB5_9TypeValue13try_as_string.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12030)
  call void @llvm.experimental.noalias.scope.decl(metadata !12031)
  %i.ac = load ptr, ptr %i.g, align 8, !alias.scope !12032, !nonnull !6, !noundef !6 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !12032, !noundef !6
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !noalias !12032
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtCs2AhGS15tZfv_4bstr7bstring7BStringEECs7gfv9tzbXmh_6yara_x.exit
end_hunk_0
