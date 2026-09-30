Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.12?download=true
inline.NumInlined: 803
inline.NumDeleted: 402
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils12extract_mem0:bb.a

bb.e:                                             ; preds = %bb.a, %bb.c
  %.sroa.3.0 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.m, %bb.c ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.p = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, i64 } %i.p, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils14exec_copy_span(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp ugt i32 %1, %2
  %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des._RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc = select i1 %.not, ptr @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des, ptr @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc
  tail call void %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des._RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc(ptr noundef %0, i32 noundef %1, i32 noundef %2, i16 noundef %3), !callees !1954
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils15update_instance(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, double noundef %1, double noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = bitcast double %2 to i64                 ; 3 uses
  %i.d = bitcast double %1 to i64                 ; 2 uses
  %i.e = icmp ne i64 %i.c, 0
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.d, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.c, %i.d
  br i1 %i.g, label %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils12extract_mem0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.c to ptr                 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i32, ptr %i.i, align 8, !noundef !7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils12extract_mem0.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.l = load i32, ptr %i.h, align 8, !noundef !7
  %.not.i.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.not.i, label %bb.e, label %bb.d, !prof !9

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils12extract_mem0.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsk_NtNtCsefoF4u9kbII_5wasmi8instance6layoutNtB5_10MemoryAddrNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.47.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @58, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @59) #38
  unreachable

_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils12extract_mem0.exit: ; preds = %bb.a, %bb.d, %bb.b
  %.sink4 = phi double [ %2, %bb.d ], [ %2, %bb.b ], [ %1, %bb.a ]
  %.sink2 = phi ptr [ %i.p, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ], [ %3, %bb.a ]
  %.sink = phi i64 [ %i.r, %bb.d ], [ 0, %bb.b ], [ %4, %bb.a ]
  store double %.sink4, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink2, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink, ptr %i.t, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils16return_call_host(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(1688) %1, i32 noundef range(i32 1, 0) %2, i32 noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %4, i32 noundef %5, i16 noundef %6, double noundef %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 12 uses
  %i.h = load i64, ptr %4, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 8, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.l = load i16, ptr %i.k, align 2, !noundef !7
  call void @_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack25return_prepare_host_frame(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, i32 noundef %5, i16 noundef %6, i16 noundef %i.l, double noundef %7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %i.m = load i64, ptr %i.g, align 8, !range !29, !alias.scope !1974, !noalias !1973, !noundef !7 ; 3 uses
  %i.n = icmp eq i64 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = load i8, ptr %i.o, align 8, !range !27, !alias.scope !1974, !noalias !1973, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.p, ptr %i.q, align 1
  store i8 1, ptr %0, align 8
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %.sroa.7.0.copyload = load i64, ptr %i.o, align 8, !alias.scope !1975
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !alias.scope !1975
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.0.copyload = load double, ptr %.sroa.12.0..sroa_idx, align 8, !alias.scope !1975
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.13.sroa.0.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8, !alias.scope !1975 ; 3 uses
  %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.13.sroa.5.0.copyload = load i64, ptr %.sroa.13.sroa.5.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 3 uses
  %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.13.sroa.6.0.copyload = load i64, ptr %.sroa.13.sroa.6.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 2 uses
  %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.13.sroa.7.0.copyload = load i64, ptr %.sroa.13.sroa.7.0..sroa.13.0..sroa_idx.sroa_idx, align 8, !alias.scope !1975 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.r = inttoptr i64 %.sroa.7.0.copyload to ptr  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i = load ptr, ptr %i.s, align 8, !alias.scope !1977, !noalias !1978 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val1.i = load i64, ptr %i.t, align 8, !alias.scope !1977, !noalias !1978
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1979)
  %i.u = or i64 %.sroa.13.sroa.7.0.copyload, %.sroa.13.sroa.6.0.copyload
  %or.cond.i.i = icmp eq i64 %i.u, 0
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.v = icmp ult i64 %.sroa.13.sroa.5.0.copyload, %.sroa.13.sroa.0.0.copyload
  %.not.i.i = icmp ugt i64 %.sroa.13.sroa.5.0.copyload, %.val1.i
  %or.cond3.i.i = select i1 %i.v, i1 true, i1 %.not.i.i, !prof !32
  br i1 %or.cond3.i.i, label %bb.f, label %bb.g, !prof !32

bb.e:                                             ; preds = %bb.c
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !1980, !noalias !1981
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false), !alias.scope !1980, !noalias !1981
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @46, ptr noundef nonnull inttoptr (i64 179 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @47) #38, !noalias !1982
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = sub nuw i64 %.sroa.13.sroa.5.0.copyload, %.sroa.13.sroa.0.0.copyload
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i, i64 %.sroa.13.sroa.0.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1982
  call void @_RNvMNtNtNtCsefoF4u9kbII_5wasmi6engine8executor5inoutNtB2_11InOutParams3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 %i.y, i64 noundef %i.x, i64 noundef %.sroa.13.sroa.6.0.copyload, i64 noundef %.sroa.13.sroa.7.0.copyload), !noalias !1982
  %i.z = load ptr, ptr %i.d, align 8, !noalias !1982, !noundef !7
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.i, !prof !9

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @44, ptr noundef nonnull inttoptr (i64 201 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !noalias !1982
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1981
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1982
  br label %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit

_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit: ; preds = %bb.e, %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1984
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 1648
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !1983, !noalias !1985, !nonnull !7, !noundef !7
  call void %i.ac(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(1688) %1, i64 noundef %i.h, i32 noundef %i.j, i64 noundef 1, double %7, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, i1 noundef zeroext false), !inline_history !2
  %i.ad = load i64, ptr %i.c, align 8, !range !35, !noalias !1984, !noundef !7 ; 2 uses
  switch i64 %i.ad, label %bb.j [
    i64 -2, label %bb.l
    i64 -1, label %bb.k
  ], !prof !36

bb.j:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1984
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1984
  store i64 %i.ad, ptr %i.b, align 8, !noalias !1984
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !1984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1984
  store ptr %i.b, ptr %i.a, align 8, !noalias !1984
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs0_NtNtCsefoF4u9kbII_5wasmi5store5errorNtB5_18InternalStoreErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !1984
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @57) #38, !noalias !1985
  unreachable

bb.k:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1984, !nonnull !7, !align !12, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1984
  %8 = shl nuw nsw i64 %i.m, 1
  %. = or disjoint i64 %8, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %., ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 %2, ptr %.sroa.717.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 %3, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %5, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !1986)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !34, !alias.scope !1987, !noalias !1986, !noundef !7
  %.not.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i, label %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit, label %bb.m, !prof !16

bb.l:                                             ; preds = %_RNvMso_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB5_5Stack10host_inout.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1984
  %i.al = trunc nuw i64 %i.m to i1
  br i1 %i.al, label %bb.o, label %bb.q

bb.m:                                             ; preds = %bb.k
  call void @_RINvNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB8_11ExecContext9done_with3errNCNvNtBa_5utils16return_call_host0EBg_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e) #38
  unreachable

_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !1988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.n:                                             ; preds = %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit, %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_host0EBe_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.am, align 1
  store i8 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 3 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !34, !alias.scope !1989, !noundef !7
  %.not.i15 = icmp eq i64 %i.ao, -1
  br i1 %.not.i15, label %_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit, label %bb.p, !prof !16

bb.p:                                             ; preds = %bb.o
  call void @_RINvNvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB8_11ExecContext9done_with3errNCNvNtBa_5utils16return_call_hosts_0EBg_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an, ptr noundef %i.r) #38
  unreachable

_RINvMs1_NtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5stateNtB6_11ExecContext9done_withNCNvNtB8_5utils16return_call_hosts_0EBe_.exit: ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i64 0, ptr %i.an, align 8, !alias.scope !1989
  store ptr %i.r, ptr %i.ap, align 8, !alias.scope !1989
  br label %bb.n

bb.q:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %i.aq, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.11.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.12.0.copyload, ptr %.sroa.5.0..sroa_idx14, align 8
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r

bb.r:                                             ; preds = %bb.b, %bb.n, %bb.q
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_asc(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #16 {
bb.a:
  %i.a = zext i16 %3 to i32
  %i.b = shl nuw nsw i32 %i.a, 3                  ; 3 uses
  %i.c = add i32 %i.b, %1
  %.not6 = icmp eq i16 %3, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = add nsw i32 %i.b, -8                     ; 2 uses
  %i.e = lshr exact i32 %i.d, 3
  %i.f = add nuw nsw i32 %i.e, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.d, 280
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.preheader
  %i.g = add nsw i32 %i.b, -8                     ; 2 uses
  %i.h = xor i32 %1, -1
  %i.i = icmp ugt i32 %i.g, %i.h
  %i.j = xor i32 %2, -1
  %i.k = icmp ugt i32 %i.g, %i.j
  %i.l = or i1 %i.i, %i.k
  %i.m = zext i32 %1 to i64
  %i.n = zext i32 %2 to i64
  %i.o = sub nsw i64 %i.n, %i.m
  %diff.check = icmp ugt i64 %i.o, -32
  %or.cond = select i1 %i.l, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.f, 1073741820               ; 3 uses
  %i.p = shl i32 %n.vec, 3                        ; 2 uses
  %i.q = add i32 %1, %i.p
  %i.r = add i32 %2, %i.p
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.s = shl i32 %index, 3                        ; 2 uses
  %i.t = add i32 %1, %i.s
  %i.u = add i32 %2, %i.s
  %i.v = zext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !noalias !2002
  %wide.load9 = load <2 x i64>, ptr %i.x, align 8, !noalias !2002
  %i.y = zext i32 %i.t to i64
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <2 x i64> %wide.load, ptr %i.z, align 8, !noalias !2003
  store <2 x i64> %wide.load9, ptr %i.aa, align 8, !noalias !2003
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ab = icmp eq i32 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !2000

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %vector.scevcheck, %.lr.ph.preheader, %middle.block
  %.sroa.0.08.ph = phi i32 [ %1, %vector.scevcheck ], [ %1, %.lr.ph.preheader ], [ %i.q, %middle.block ]
  %.sroa.04.07.ph = phi i32 [ %2, %vector.scevcheck ], [ %2, %.lr.ph.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %.lr.ph
  %.sroa.0.08 = phi i32 [ %i.ah, %.lr.ph ], [ %.sroa.0.08.ph, %.lr.ph.preheader13 ] ; 2 uses
  %.sroa.04.07 = phi i32 [ %i.ai, %.lr.ph ], [ %.sroa.04.07.ph, %.lr.ph.preheader13 ] ; 2 uses
  %i.ac = zext i32 %.sroa.04.07 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !noalias !2002, !noundef !7
  %i.af = zext i32 %.sroa.0.08 to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %i.af
  store i64 %i.ae, ptr %i.ag, align 8, !noalias !2003
  %i.ah = add i32 %.sroa.0.08, 8                  ; 2 uses
  %i.ai = add i32 %.sroa.04.07, 8
  %.not = icmp eq i32 %i.ah, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2001
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5utils18exec_copy_span_des(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i16 noundef %3) unnamed_addr #16 {
bb.a:
  %.not5 = icmp eq i16 %3, 0
  br i1 %.not5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i16 %3 to i32
  %i.b = shl nuw nsw i32 %i.a, 3                  ; 3 uses
  %i.c = add i32 %i.b, %2                         ; 2 uses
  %i.d = add i32 %i.b, %1                         ; 2 uses
  %i.e = add nsw i32 %i.b, -8                     ; 2 uses
  %i.f = lshr exact i32 %i.e, 3
  %i.g = add nuw nsw i32 %i.f, 1
  %xtraiter = and i32 %i.g, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.0.07.prol = phi i32 [ %i.h, %.lr.ph.prol ], [ %i.d, %.lr.ph.preheader ]
  %.sroa.03.06.prol = phi i32 [ %i.i, %.lr.ph.prol ], [ %i.c, %.lr.ph.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.h = add i32 %.sroa.0.07.prol, -8             ; 3 uses
  %i.i = add i32 %.sroa.03.06.prol, -8            ; 3 uses
  %i.j = zext i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !noalias !2015, !noundef !7
  %i.m = zext i32 %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %i.m
  store i64 %i.l, ptr %i.n, align 8, !noalias !2016
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !2014

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.0.07.unr = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.h, %.lr.ph.prol ]
  %.sroa.03.06.unr = phi i32 [ %i.c, %.lr.ph.preheader ], [ %i.i, %.lr.ph.prol ]
  %i.o = icmp ult i32 %i.e, 24
  br i1 %i.o, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.0.07 = phi i32 [ %i.ak, %.lr.ph ], [ %.sroa.0.07.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.sroa.03.06 = phi i32 [ %i.al, %.lr.ph ], [ %.sroa.03.06.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.p = add i32 %.sroa.0.07, -8
  %i.q = add i32 %.sroa.03.06, -8
  %i.r = zext i32 %i.q to i64
end_hunk_0
