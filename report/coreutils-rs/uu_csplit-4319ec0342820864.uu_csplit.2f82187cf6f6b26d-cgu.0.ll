Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_csplit-4319ec0342820864.uu_csplit.2f82187cf6f6b26d-cgu.0?download=true
inline.NumInlined: 730
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIE9drop_slowCs44SRMMtlaHN_9uu_csplit:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4meta5regex6RegexIECs44SRMMtlaHN_9uu_csplit.exit, %bb.d, %bb.e
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintE9drop_slowCs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync4WeakNtNtNtCsgNwXemyrBWj_12clap_builder7builder10value_hint9ValueHintRNtNtBG_5alloc6GlobalEECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [20 x i8], align 1                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [1 x i8], align 1                 ; 3 uses
  %i.s = alloca [1 x i8], align 1                 ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 3 uses
  %i.u = alloca [24 x i8], align 8                ; 3 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [32 x i8], align 8                ; 7 uses
  %i.aa = alloca [32 x i8], align 8               ; 7 uses
  %i.ab = alloca [72 x i8], align 8               ; 9 uses
  %i.ac = alloca [72 x i8], align 8               ; 7 uses
  %i.ad = alloca [72 x i8], align 8               ; 8 uses
  %i.ae = alloca [72 x i8], align 8               ; 5 uses
  %i.af = alloca [32 x i8], align 8               ; 6 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [32 x i8], align 8               ; 6 uses
  %i.ai = alloca [32 x i8], align 8               ; 7 uses
  %i.aj = alloca [24 x i8], align 8               ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1369
  %i.ak = mul i64 %2, 56                          ; 3 uses
  %or.cond.i.i = icmp samesign ugt i64 %2, 164703072086692425
  br i1 %or.cond.i.i, label %bb.d, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1370
  %i.am = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ak, i64 noundef range(i64 1, 9) 8) #22, !noalias !1370 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %i.ao = ptrtoint ptr %i.am to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.a
  %.sroa.4208.0.ph.i = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.a ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4208.0.ph.i, i64 %i.ak) #25, !noalias !1369
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %bb.c, %bb.b
  %.sroa.10.0.i = phi i64 [ %i.ao, %bb.c ], [ 8, %bb.b ]
  %.sroa.4208.0.i = phi i64 [ %2, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.ap = inttoptr i64 %.sroa.10.0.i to ptr       ; 2 uses
  %i.aq = icmp samesign ule i64 %2, %.sroa.4208.0.i
  tail call void @llvm.assume(i1 %i.aq)
  store i64 %.sroa.4208.0.i, ptr %i.aj, align 8, !noalias !1369
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 6 uses
  store ptr %i.ap, ptr %i.ar, align 8, !noalias !1369
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 4 uses
  store i64 0, ptr %i.as, align 8, !noalias !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1369
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 60) #22, !noalias !1369
  call void @llvm.experimental.noalias.scope.decl(metadata !1371)
  call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.at = load ptr, ptr %i.ah, align 8, !alias.scope !1372, !noalias !1373, !noundef !4
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.e, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i, !prof !19

bb.e:                                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1374
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.av, i64 24, i1 false), !noalias !1373
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @85) #23, !noalias !1375
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 32, i1 false), !alias.scope !1376, !noalias !1377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1369
  call void @_RNvMs3_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @86, i64 noundef 26) #22, !noalias !1369
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  call void @llvm.experimental.noalias.scope.decl(metadata !1379)
  %i.aw = load ptr, ptr %i.af, align 8, !alias.scope !1379, !noalias !1380, !noundef !4
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i, !prof !19

bb.f:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1381
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.ay, i64 24, i1 false), !noalias !1380
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #23, !noalias !1382
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit102.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.af, i64 32, i1 false), !alias.scope !1383, !noalias !1384
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1369
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %2 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 64 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.4265.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.5266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %.sroa.4227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %.sroa.5228.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i
  %i.bs = phi ptr [ %i.ap, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %.be, %.backedge ] ; 2 uses
  %.sroa.15.8.copyload40 = phi i64 [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %.sroa.15.8.copyload40.be, %.backedge ] ; 16 uses
  %i.bt = phi ptr [ %1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cj, %.backedge ] ; 5 uses
  %i.bu = phi i64 [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.ck, %.backedge ] ; 2 uses
  %i.bv = phi ptr [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cl, %.backedge ] ; 2 uses
  %i.bw = phi i1 [ false, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexNtNtBN_5error5ErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ %i.cm, %.backedge ]
  br i1 %i.bw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq ptr %i.bv, null
  br i1 %.not.i, label %bb.cu, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.bx = icmp eq ptr %i.bt, %i.az
  br i1 %i.bx, label %bb.cu, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bz = load ptr, ptr %i.bt, align 8, !alias.scope !1368, !noalias !1385, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !1368, !noalias !1385, !noundef !4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.cc = phi ptr [ %i.bt, %bb.h ], [ %i.by, %bb.j ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ %i.bu, %bb.h ], [ %i.cb, %bb.j ] ; 21 uses
  %.sroa.0.0.i = phi ptr [ %i.bv, %bb.h ], [ %i.bz, %bb.j ] ; 7 uses
  %i.cd = icmp eq ptr %i.cc, %i.az
  br i1 %i.cd, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cf = load ptr, ptr %i.cc, align 8, !alias.scope !1368, !noalias !1386, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !1368, !noalias !1386, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1369
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cf, i64 noundef %i.ch) #24
  %i.ci = load i64, ptr %i.ae, align 8, !range !11, !noalias !1369, !noundef !4
  %.not99.i = icmp eq i64 %i.ci, 2                ; 2 uses
  br i1 %.not99.i, label %bb.m, label %bb.n

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i: ; preds = %bb.m, %bb.k
  %i.cj = phi ptr [ %i.ce, %bb.m ], [ %i.az, %bb.k ]
  %i.ck = phi i64 [ %i.ch, %bb.m ], [ %i.bu, %bb.k ]
  %i.cl = phi ptr [ %i.cf, %bb.m ], [ null, %bb.k ]
  %i.cm = phi i1 [ %.not99.i, %bb.m ], [ true, %bb.k ]
  %.sroa.7.0.i = phi i64 [ %.sroa.7.1.i, %bb.m ], [ 1, %bb.k ] ; 3 uses
  %.sroa.03.0.i = phi i64 [ %.sroa.03.1.i, %bb.m ], [ 1, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1369
  call fastcc void @_RNvMs4_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Regex11captures_at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.8.0.i) #24
  %i.cn = load i64, ptr %i.ac, align 8, !range !11, !noalias !1369, !noundef !4
  %.not100.i = icmp eq i64 %i.cn, 2
  br i1 %.not100.i, label %bb.ae, label %bb.ad

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i, %bb.l
  %.sroa.7.1.i = phi i64 [ %.sroa.7.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i ], [ 1, %bb.l ]
  %.sroa.03.1.i = phi i64 [ %.sroa.03.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit.i ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1369
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionIBw_ReEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1i_8PeekableINtNtB1k_6copied6CopiedINtNtNtB5_5slice4iter4IterBM_EEE4peek0ECs44SRMMtlaHN_9uu_csplit.exit.thread.i

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ad, ptr noundef nonnull align 8 dereferenceable(72) %i.ae, i64 72, i1 false), !noalias !1369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1369
  call void @_RNvMNtNtCs5skpMncfVhl_14regex_automata4util8capturesNtB2_8Captures17get_group_by_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @88, i64 noundef 5) #22, !noalias !1369
  %i.co = load i64, ptr %i.y, align 8, !range !15, !noalias !1369, !noundef !4
  %i.cp = trunc nuw i64 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.z

bb.o:                                             ; preds = %bb.n
  %i.cq = load i64, ptr %i.bb, align 8, !noalias !1369, !noundef !4 ; 4 uses
  %i.cr = load ptr, ptr %i.bc, align 8, !noalias !1369, !nonnull !4, !noundef !4 ; 4 uses
  %i.cs = load i64, ptr %i.bd, align 8, !noalias !1369, !noundef !4 ; 7 uses
  %i.ct = load i64, ptr %i.be, align 8, !noalias !1369, !noundef !4 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1369
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  %i.cv = icmp ugt i64 %i.ct, %i.cq
  %or.cond.i.i.i = or i1 %i.cu, %i.cv
  br i1 %or.cond.i.i.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, label %bb.p, !prof !1387

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp eq i64 %i.cs, %i.cq
  br i1 %i.cw, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cx = icmp eq i64 %i.cs, 0
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.q
  %i.cy = icmp eq i64 %i.ct, %i.cq
  br i1 %i.cy, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i

bb.s:                                             ; preds = %bb.q
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !1388, !noalias !1389, !noundef !4
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.r, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, !prof !1390

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i: ; preds = %bb.r
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.ct
  %i.dd = load i8, ptr %i.dc, align 1, !alias.scope !1388, !noalias !1389, !noundef !4
  %i.de = icmp sgt i8 %i.dd, -65
  br i1 %i.de, label %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i, !prof !1391

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i, %bb.s, %bb.o
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef %i.cq, i64 noundef %i.cs, i64 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #23, !noalias !1389
  unreachable

_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i.i, %bb.r, %bb.p
  %i.df = sub nuw i64 %i.ct, %i.cs                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cs ; 3 uses
  switch i64 %i.df, label %thread-pre-split.i.i [
    i64 0, label %.loopexit334.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i
  %i.dh = load i8, ptr %i.dg, align 1, !alias.scope !1392, !noalias !1393, !noundef !4 ; 2 uses
  switch i8 %i.dh, label %bb.u [
    i8 43, label %.loopexit334.i
    i8 45, label %.loopexit334.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i
  %.pr.i.i = load i8, ptr %i.dg, align 1, !alias.scope !1392, !noalias !1393
  br label %bb.u

bb.u:                                             ; preds = %thread-pre-split.i.i, %bb.t
  %i.di = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.dh, %bb.t ]
  %cond.i.i = icmp eq i8 %i.di, 43                ; 2 uses
  %i.dj = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.df, %i.dj      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i107.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.dk = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.dk, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.u
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.x
  %.not52.i.i = icmp eq i64 %i.dm, 0
  br i1 %.not52.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.u, %.preheader56.i.i
  %.sroa.0.1.i.i815 = phi ptr [ %i.dl, %.preheader56.i.i ], [ %.sroa.0.0.i107.i, %bb.u ] ; 2 uses
  %.sroa.15.1.i.i814 = phi i64 [ %i.dm, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.u ]
  %.sroa.042.0.i.i813 = phi i64 [ %i.dx, %.preheader56.i.i ], [ 0, %bb.u ]
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i815, i64 1
  %i.dm = add nsw i64 %.sroa.15.1.i.i814, -1      ; 2 uses
  %i.dn = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i813, i64 10) ; 2 uses
  %i.do = extractvalue { i64, i1 } %i.dn, 0       ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.dn, 1
  %i.dq = load i8, ptr %.sroa.0.1.i.i815, align 1, !alias.scope !1392, !noalias !1393, !noundef !4 ; 2 uses
  br i1 %i.dp, label %bb.w, label %bb.v, !prof !19

bb.v:                                             ; preds = %.preheader56.i.i.preheader
  %i.dr = zext i8 %i.dq to i32
  %i.ds = add nsw i32 %i.dr, -48                  ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %bb.x, label %.loopexit334.i

bb.w:                                             ; preds = %.preheader56.i.i.preheader
  %i.du = add i8 %i.dq, -48
  %i.dv = icmp ult i8 %i.du, 10
  %spec.select.i = select i1 %i.dv, i8 2, i8 1
  br label %.loopexit334.i

bb.x:                                             ; preds = %bb.v
  %i.dw = zext nneg i32 %i.ds to i64
  %i.dx = add i64 %i.do, %i.dw                    ; 3 uses
  %i.dy = icmp ult i64 %i.dx, %i.do
  br i1 %i.dy, label %.loopexit334.i, label %.preheader56.i.i, !prof !19

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.y
  %.sroa.0.269.i.i = phi ptr [ %i.ef, %bb.y ], [ %.sroa.0.0.i107.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.ee, %bb.y ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.eh, %bb.y ], [ 0, %.preheader.i.i ]
  %i.dz = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !1392, !noalias !1393, !noundef !4
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, -48                  ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 10
  br i1 %i.ec, label %bb.y, label %.loopexit334.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.ed = mul i64 %.sroa.042.267.i.i, 10
  %i.ee = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.eg = zext nneg i32 %i.eb to i64
  %i.eh = add i64 %i.ed, %i.eg                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.ee, 0
  br i1 %.not53.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i, label %.lr.ph.i.i

.loopexit334.i:                                   ; preds = %bb.t, %bb.t, %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i, %bb.x, %bb.v, %.lr.ph.i.i, %bb.w
  %.sroa.4176.0.ph.i = phi i8 [ 2, %bb.x ], [ %spec.select.i, %bb.w ], [ 1, %.lr.ph.i.i ], [ 1, %bb.v ], [ 0, %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit.i ], [ 1, %bb.t ], [ 1, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1394
  store i8 %.sroa.4176.0.ph.i, ptr %i.s, align 1, !noalias !1394
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 43, ptr noundef nonnull %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #23, !noalias !1394
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i: ; preds = %.preheader56.i.i, %bb.y, %.preheader.i.i
  %.sroa.11177.0.i = phi i64 [ %i.eh, %bb.y ], [ 0, %.preheader.i.i ], [ %i.dx, %.preheader56.i.i ]
  %i.ei = add i64 %.sroa.11177.0.i, 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1369
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i
  %.sroa.7.2.i = phi i64 [ %i.ei, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ undef, %bb.z ]
  %.sroa.03.2.i = phi i64 [ 1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultjNtNtNtB4_3num5error13ParseIntErrorE6unwrapCs44SRMMtlaHN_9uu_csplit.exit.i ], [ 0, %bb.z ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  call void @llvm.experimental.noalias.scope.decl(metadata !1396)
  call void @llvm.experimental.noalias.scope.decl(metadata !1397)
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.ej = load ptr, ptr %i.bf, align 8, !alias.scope !1400, !noalias !1369, !nonnull !4, !noundef !4
  %i.ek = atomicrmw sub ptr %i.ej, i64 1 release, align 8, !noalias !1401
  %i.el = icmp eq i64 %i.ek, 1
  br i1 %i.el, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #21, !noalias !1369
end_hunk_0
begin_hunk_1_@_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns:bb.a
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bq) #21, !noalias !1369
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i149.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i149.i: ; preds = %bb.bw, %bb.bv
  %.val.i.i150.i = load i64, ptr %i.bh, align 8, !range !5, !alias.scope !1420, !noalias !1369, !noundef !4 ; 2 uses
  %i.ls = icmp eq i64 %.val.i.i150.i, 0
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i, label %bb.bx

bb.bx:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i149.i
  %.val1.i.i151.i = load ptr, ptr %i.br, align 8, !alias.scope !1420, !noalias !1369, !nonnull !4, !noundef !4
  %i.lt = shl nuw i64 %.val.i.i150.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i151.i, i64 noundef %i.lt, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1369
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i: ; preds = %bb.bx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i149.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1369
  br label %.backedge

bb.by:                                            ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit148.i
  %.sroa.0271.0.copyload.i = load i64, ptr %.sroa.4265.0..sroa_idx.i, align 8, !noalias !1369 ; 2 uses
  %.sroa.4272.0.copyload.i = load ptr, ptr %.sroa.5266.0..sroa_idx.i, align 8, !noalias !1369 ; 2 uses
  %.not.i.i.i = icmp slt i64 %.sroa.8.0.i, 0
  br i1 %.not.i.i.i, label %bb.ca, label %bb.bz, !prof !17

bb.bz:                                            ; preds = %bb.by
  %i.lu = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.lu, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.bz
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1421
  %i.lv = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !1421 ; 3 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i, %bb.by
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i ], [ 0, %bb.by ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %.sroa.8.0.i) #25, !noalias !1422
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i.i: ; preds = %bb.cc, %bb.bz
  %i.lx = phi ptr [ %i.lv, %bb.cc ], [ inttoptr (i64 1 to ptr), %bb.bz ]
  %.0.val.off.i.i = add i64 %.sroa.0271.0.copyload.i, -1
  %switch.i.i = icmp ult i64 %.0.val.off.i.i, -2
  br i1 %switch.i.i, label %bb.cb, label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patternss_0B5_.exit.i

bb.cb:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4272.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4272.0.copyload.i, i64 noundef %.sroa.0271.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1423
  br label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patternss_0B5_.exit.i

bb.cc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.lv, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !1424
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i.i

_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patternss_0B5_.exit.i: ; preds = %bb.cb, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1369
  br label %bb.cf

bb.cd:                                            ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit148.i
  %.sroa.4265.0.copyload.i = load ptr, ptr %.sroa.4265.0..sroa_idx.i, align 8, !noalias !1369
  %i.ly = load <2 x i64>, ptr %.sroa.5266.0..sroa_idx.i, align 8, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1369
  call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.lz = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1425, !noalias !1426, !noundef !4
  %i.ma = icmp eq i64 %.sroa.15.8.copyload40, %i.lz
  br i1 %i.ma, label %bb.ce, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit.i

bb.ce:                                            ; preds = %bb.cd
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #21, !noalias !1426
  %.pre.i = load ptr, ptr %i.ar, align 8, !alias.scope !1425, !noalias !1426
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit.i: ; preds = %bb.ce, %bb.cd
  %i.mb = phi ptr [ %i.bs, %bb.cd ], [ %.pre.i, %bb.ce ] ; 2 uses
  %i.mc = getelementptr inbounds nuw [56 x i8], ptr %i.mb, i64 %.sroa.15.8.copyload40 ; 7 uses
  store i32 2, ptr %i.mc, align 8, !noalias !1427
  %.sroa.4193.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 %.sroa.09.0.i, ptr %.sroa.4193.0..sroa_idx.i, align 4, !noalias !1427
  %.sroa.5194.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store i64 %i.lm, ptr %.sroa.5194.0..sroa_idx.i, align 8, !noalias !1427
  %.sroa.5194.sroa.4.0..sroa.5194.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store ptr %.sroa.4265.0.copyload.i, ptr %.sroa.5194.sroa.4.0..sroa.5194.0..sroa_idx.sroa_idx.i, align 8, !noalias !1427
  %.sroa.5194.sroa.5.0..sroa.5194.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  store <2 x i64> %i.ly, ptr %.sroa.5194.sroa.5.0..sroa.5194.0..sroa_idx.sroa_idx.i, align 8, !noalias !1427
  %.sroa.6195.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  store i64 %.sroa.03.0.i, ptr %.sroa.6195.0..sroa_idx.i, align 8, !noalias !1427
  %.sroa.7196.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 48
  store i64 %.sroa.7.0.i, ptr %.sroa.7196.0..sroa_idx.i, align 8, !noalias !1427
  %i.md = add i64 %.sroa.15.8.copyload40, 1       ; 2 uses
  store i64 %i.md, ptr %i.as, align 8, !alias.scope !1425, !noalias !1426
  br label %bb.bv

bb.cf:                                            ; preds = %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i, %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patternss_0B5_.exit.i
  %.sink.i = phi ptr [ %i.mm, %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i ], [ %i.lx, %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patternss_0B5_.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1429)
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  call void @llvm.experimental.noalias.scope.decl(metadata !1432)
  %i.me = load ptr, ptr %i.bq, align 8, !alias.scope !1433, !noalias !1369, !nonnull !4, !noundef !4
  %i.mf = atomicrmw sub ptr %i.me, i64 1 release, align 8, !noalias !1434
  %i.mg = icmp eq i64 %i.mf, 1
  br i1 %i.mg, label %bb.cg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i154.i

bb.cg:                                            ; preds = %bb.cf
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCs5skpMncfVhl_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bq) #21, !noalias !1369
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i154.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i154.i: ; preds = %bb.cg, %bb.cf
  %.val.i.i155.i = load i64, ptr %i.bh, align 8, !range !5, !alias.scope !1435, !noalias !1369, !noundef !4 ; 2 uses
  %i.mh = icmp eq i64 %.val.i.i155.i, 0
  br i1 %i.mh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i, label %bb.ch

bb.ch:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i154.i
  %.val1.i.i156.i = load ptr, ptr %i.br, align 8, !alias.scope !1435, !noalias !1369, !nonnull !4, !noundef !4
  %i.mi = shl nuw i64 %.val.i.i155.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i156.i, i64 noundef %i.mi, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1369
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i: ; preds = %bb.ch, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs5skpMncfVhl_14regex_automata4util8captures9GroupInfoECs44SRMMtlaHN_9uu_csplit.exit.i.i154.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !1369
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i

bb.ci:                                            ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit144.i
  %.sroa.0233.0.copyload.i = load i64, ptr %.sroa.4227.0..sroa_idx.i, align 8, !noalias !1369 ; 2 uses
  %.sroa.4234.0.copyload.i = load ptr, ptr %.sroa.5228.0..sroa_idx.i, align 8, !noalias !1369 ; 2 uses
  %.not.i.i158.i = icmp slt i64 %.sroa.8.0.i, 0
  br i1 %.not.i.i158.i, label %bb.ck, label %bb.cj, !prof !17

bb.cj:                                            ; preds = %bb.ci
  %i.mj = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.mj, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i: ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1436
  %i.mk = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !1436 ; 3 uses
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i, %bb.ci
  %.sroa.4.0.ph.i165.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i ], [ 0, %bb.ci ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i165.i, i64 %.sroa.8.0.i) #25, !noalias !1437
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i: ; preds = %bb.cm, %bb.cj
  %i.mm = phi ptr [ %i.mk, %bb.cm ], [ inttoptr (i64 1 to ptr), %bb.cj ]
  %.0.val.off.i163.i = add i64 %.sroa.0233.0.copyload.i, -1
  %switch.i164.i = icmp ult i64 %.0.val.off.i163.i, -2
  br i1 %switch.i164.i, label %bb.cl, label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i

bb.cl:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4234.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4234.0.copyload.i, i64 noundef %.sroa.0233.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1438
  br label %_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i

bb.cm:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i159.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mk, ptr nonnull readonly align 1 %.sroa.0.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !1439
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i

_RNCNvNtCs44SRMMtlaHN_9uu_csplit8patterns16extract_patterns0B5_.exit.i: ; preds = %bb.cl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit.thread7.i160.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1369
  br label %bb.cf

bb.cn:                                            ; preds = %_RNvMs6_NtNtCsipSpXIjCLRi_5regex5regex6stringNtB5_5Match6as_str.exit144.i
  %.sroa.4227.0.copyload.i = load ptr, ptr %.sroa.4227.0..sroa_idx.i, align 8, !noalias !1369
  %i.mn = load <2 x i64>, ptr %.sroa.5228.0..sroa_idx.i, align 8, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1369
  call void @llvm.experimental.noalias.scope.decl(metadata !1440)
  %i.mo = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1440, !noalias !1441, !noundef !4
  %i.mp = icmp eq i64 %.sroa.15.8.copyload40, %i.mo
  br i1 %i.mp, label %bb.co, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i

bb.co:                                            ; preds = %bb.cn
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #21, !noalias !1441
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit166.i: ; preds = %bb.co, %bb.cn
  %i.mq = load ptr, ptr %i.ar, align 8, !alias.scope !1440, !noalias !1441, !nonnull !4, !noundef !4 ; 2 uses
  %i.mr = getelementptr inbounds nuw [56 x i8], ptr %i.mq, i64 %.sroa.15.8.copyload40 ; 7 uses
  store i32 1, ptr %i.mr, align 8, !noalias !1442
  %.sroa.4184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 4
  store i32 %.sroa.09.0.i, ptr %.sroa.4184.0..sroa_idx.i, align 4, !noalias !1442
  %.sroa.5185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 8
  store i64 %i.kq, ptr %.sroa.5185.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 16
  store ptr %.sroa.4227.0.copyload.i, ptr %.sroa.5185.sroa.4.0..sroa.5185.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 24
  store <2 x i64> %i.mn, ptr %.sroa.5185.sroa.5.0..sroa.5185.0..sroa_idx.sroa_idx.i, align 8, !noalias !1442
  %.sroa.6186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  store i64 %.sroa.03.0.i, ptr %.sroa.6186.0..sroa_idx.i, align 8, !noalias !1442
  %.sroa.7187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mr, i64 48
  store i64 %.sroa.7.0.i, ptr %.sroa.7187.0..sroa_idx.i, align 8, !noalias !1442
  %i.ms = add i64 %.sroa.15.8.copyload40, 1       ; 2 uses
  store i64 %i.ms, ptr %i.as, align 8, !alias.scope !1440, !noalias !1441
  br label %bb.bv

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i: ; preds = %bb.ae, %.thread.i, %bb.cs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i
  %.sroa.15.0 = phi i64 [ %.sroa.8.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i ], [ %.sroa.8.0.i, %bb.cs ], [ 0, %.thread.i ], [ %.sroa.8.0.i, %bb.ae ] ; 2 uses
  %.sroa.13.0 = phi ptr [ %.sink.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit157.i ], [ %i.nc, %bb.cs ], [ inttoptr (i64 1 to ptr), %.thread.i ], [ inttoptr (i64 1 to ptr), %bb.ae ]
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #22, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1369
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1369
  call void @llvm.experimental.noalias.scope.decl(metadata !1443)
  %.val.i.i = load ptr, ptr %i.ar, align 8, !alias.scope !1443, !noalias !1369, !nonnull !4, !noundef !4 ; 2 uses
  %i.mt = icmp eq i64 %.sroa.15.8.copyload40, 0
  br i1 %i.mt, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.mv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i ], [ 0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i ] ; 2 uses
  %i.mu = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.mv = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1  ; 2 uses
  %i.mw = load i32, ptr %i.mu, align 8, !range !12, !alias.scope !1444, !noalias !1445, !noundef !4
  %cond.i.i.i.i.i = icmp eq i32 %i.mw, 0
  br i1 %cond.i.i.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i, label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.mx) #22, !noalias !1445
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i: ; preds = %.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.my = icmp eq i64 %i.mv, %.sroa.15.8.copyload40
  br i1 %i.my, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i
  %.val2.i.i = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1443, !noalias !1369, !noundef !4 ; 2 uses
  %i.mz = icmp eq i64 %.val2.i.i, 0
  br i1 %i.mz, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i
  %i.na = mul nuw i64 %.val2.i.i, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.na, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1445
  br label %bb.ct

.loopexit.i:                                      ; preds = %bb.ah, %.preheader56.i113.i.preheader, %.lr.ph.i123.i
  %.not.i167.i = icmp slt i64 %.sroa.8.0.i, 0
  br i1 %.not.i167.i, label %bb.cr, label %.thread.i, !prof !1446

.thread.i:                                        ; preds = %.loopexit.i
  %i.nb = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.nb, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i: ; preds = %bb.af, %bb.af, %.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1447
  %i.nc = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !1447 ; 3 uses
  %i.nd = icmp eq ptr %i.nc, null
  br i1 %i.nd, label %bb.cr, label %bb.cs

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i: ; preds = %.preheader56.i113.i, %bb.ai, %.preheader.i121.i
  %.sroa.11200.0.i = phi i64 [ %i.fo, %bb.ai ], [ 0, %.preheader.i121.i ], [ %i.fe, %.preheader56.i113.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.ne = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1448, !noalias !1449, !noundef !4
  %i.nf = icmp eq i64 %.sroa.15.8.copyload40, %i.ne
  br i1 %i.nf, label %bb.cq, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i

bb.cq:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aj) #21, !noalias !1449
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i: ; preds = %bb.cq, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit130.i
  %i.ng = load ptr, ptr %i.ar, align 8, !alias.scope !1448, !noalias !1449, !nonnull !4, !noundef !4 ; 2 uses
  %i.nh = getelementptr inbounds nuw [56 x i8], ptr %i.ng, i64 %.sroa.15.8.copyload40 ; 4 uses
  store i32 0, ptr %i.nh, align 8, !noalias !1450
  %.sroa.4203.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  store i64 %.sroa.11200.0.i, ptr %.sroa.4203.0..sroa_idx.i, align 8, !noalias !1450
  %.sroa.5204.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  store i64 %.sroa.03.0.i, ptr %.sroa.5204.0..sroa_idx.i, align 8, !noalias !1450
  %.sroa.6205.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nh, i64 24
  store i64 %.sroa.7.0.i, ptr %.sroa.6205.0..sroa_idx.i, align 8, !noalias !1450
  %i.ni = add i64 %.sroa.15.8.copyload40, 1       ; 2 uses
  store i64 %i.ni, ptr %i.as, align 8, !alias.scope !1448, !noalias !1449
  br label %.backedge

.backedge:                                        ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i
  %.be = phi ptr [ %i.ng, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i ], [ %i.ln, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i ]
  %.sroa.15.8.copyload40.be = phi i64 [ %i.ni, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternE8push_mutBJ_.exit172.i ], [ %i.lo, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string8CapturesECs44SRMMtlaHN_9uu_csplit.exit152.i ]
  br label %bb.g

bb.cr:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i, %.loopexit.i
  %.sroa.4291.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i ], [ 0, %.loopexit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4291.0.ph.i, i64 %.sroa.8.0.i) #25, !noalias !1369
  unreachable

bb.cs:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i169.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nc, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.0.0.i, i64 %.sroa.8.0.i, i1 false), !noalias !1369
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs44SRMMtlaHN_9uu_csplit.exit171.thread316.i

bb.ct:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i.i, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1369
  store i64 7, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.15.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.0, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.413.sroa.5.0..sroa.413.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

bb.cu:                                            ; preds = %bb.i, %bb.h
  %.sroa.832.8.copyload34 = load i64, ptr %i.aj, align 8, !noalias !1368 ; 3 uses
  %.sroa.13.8.copyload37 = load ptr, ptr %i.ar, align 8, !noalias !1368 ; 6 uses
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ag) #22, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1369
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ai) #22, !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1369
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.8.copyload37) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %.idx.i = mul nuw nsw i64 %.sroa.15.8.copyload40, 56
  %i.nj = getelementptr inbounds nuw i8, ptr %.sroa.13.8.copyload37, i64 %.idx.i
  %i.nk = icmp eq i64 %.sroa.15.8.copyload40, 0
  br i1 %i.nk, label %.loopexit, label %.lr.ph.i.i16

.lr.ph.i.i16:                                     ; preds = %bb.cu
  %i.nl = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.48.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.np = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.416.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  br label %bb.cv

bb.cv:                                            ; preds = %bb.eo, %.lr.ph.i.i16
  %i.nu = phi ptr [ %.sroa.13.8.copyload37, %.lr.ph.i.i16 ], [ %i.nv, %bb.eo ] ; 3 uses
  %.sroa.0.052.i.i = phi i64 [ 0, %.lr.ph.i.i16 ], [ %.sroa.914.0.ph.i.i, %bb.eo ] ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 56 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1452)
  %i.nw = load i32, ptr %i.nu, align 8, !range !12, !alias.scope !1453, !noalias !1454, !noundef !4
  %.not.i.i.i17 = icmp eq i32 %i.nw, 0
  br i1 %.not.i.i.i17, label %bb.cw, label %bb.eo

bb.cw:                                            ; preds = %bb.cv
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %.val.i.i.i19 = load i64, ptr %i.nx, align 8, !alias.scope !1455, !noalias !1454, !noundef !4 ; 5 uses
  %i.ny = icmp eq i64 %.val.i.i.i19, 0
  br i1 %i.ny, label %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nz = icmp eq i64 %.sroa.0.052.i.i, %.val.i.i.i19
  br i1 %i.nz, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oa = icmp ugt i64 %.sroa.0.052.i.i, %.val.i.i.i19
  br i1 %i.oa, label %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, label %bb.eo

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1456
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.p, align 8, !noalias !1456
  %i.ob = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p) #22, !noalias !1456
  store ptr %i.ob, ptr %i.q, align 8, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1456
  %i.oc = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22, !noalias !1456 ; 2 uses
  %i.od = extractvalue { ptr, i64 } %i.oc, 0
  %i.oe = extractvalue { ptr, i64 } %i.oc, 1
  store ptr %i.od, ptr %i.o, align 8, !noalias !1456
  store i64 %i.oe, ptr %i.nl, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1456
  store ptr %i.o, ptr %i.n, align 8, !noalias !1456
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1457
  store ptr %i.q, ptr %i.f, align 8, !noalias !1457
  store ptr null, ptr %i.nm, align 8, !noalias !1457
  %i.of = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @35, ptr noundef nonnull %i.n) #22, !noalias !1456
  %i.og = load ptr, ptr %i.nm, align 8, !noalias !1457, !noundef !4 ; 7 uses
  %.not.i5.i.i.i.i.i = icmp eq ptr %i.og, null    ; 2 uses
  br i1 %i.of, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  br i1 %.not.i5.i.i.i.i.i, label %bb.df, label %bb.dg, !prof !19

bb.db:                                            ; preds = %bb.cz
  br i1 %.not.i5.i.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1458
  %i.oh = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oi = and i64 %i.oh, 3
  switch i64 %i.oi, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i
    i64 3, label %bb.dd
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i
    i64 1, label %bb.de
  ], !prof !10

default.unreachable:                              ; preds = %bb.ei, %bb.ee, %bb.dg, %bb.dc
  unreachable

bb.dd:                                            ; preds = %bb.dc
  %i.oj = icmp ult ptr %i.og, inttoptr (i64 188978561024 to ptr)
  %i.ok = and i64 %i.oh, 1095216660480
  %i.ol = icmp ne i64 %i.ok, 1095216660480
  call void @llvm.assume(i1 %i.oj)
  call void @llvm.assume(i1 %i.ol)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i

bb.de:                                            ; preds = %bb.dc
  %i.om = getelementptr i8, ptr %i.og, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.om) ]
  store ptr %i.om, ptr %i.nn, align 8, !alias.scope !1459, !noalias !1458
  store i8 3, ptr %i.e, align 8, !alias.scope !1459, !noalias !1458
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nn) #22, !noalias !1460
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i: ; preds = %bb.de, %bb.dd, %bb.dc, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1458
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i

bb.df:                                            ; preds = %bb.da
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !1456
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i.i.i, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1457
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1461
  %i.on = ptrtoint ptr %i.og to i64               ; 2 uses
  %i.oo = and i64 %i.on, 3
  switch i64 %i.oo, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i
    i64 3, label %bb.dh
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i
    i64 1, label %bb.di
  ], !prof !10

bb.dh:                                            ; preds = %bb.dg
  %i.op = icmp ult ptr %i.og, inttoptr (i64 188978561024 to ptr)
  %i.oq = and i64 %i.on, 1095216660480
  %i.or = icmp ne i64 %i.oq, 1095216660480
  call void @llvm.assume(i1 %i.op)
  call void @llvm.assume(i1 %i.or)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i

bb.di:                                            ; preds = %bb.dg
  %i.os = getelementptr i8, ptr %i.og, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.os) ]
  store ptr %i.os, ptr %i.no, align 8, !alias.scope !1462, !noalias !1461
  store i8 3, ptr %i.d, align 8, !alias.scope !1462, !noalias !1461
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.no) #22, !noalias !1461
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i: ; preds = %bb.di, %bb.dh, %bb.dg, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1461
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1456
  store i64 0, ptr %i.l, align 8, !noalias !1456
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i.i.i.i, align 8, !noalias !1456
  store i64 0, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1456
  %i.ot = call { ptr, i64 } @_RNvMsk_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impj4__fmt(i64 noundef %.sroa.0.052.i.i, ptr noalias nofree noundef nonnull %i.g, i64 noundef 20) #22, !noalias !1456 ; 2 uses
  %i.ou = extractvalue { ptr, i64 } %i.ot, 0
  %i.ov = extractvalue { ptr, i64 } %i.ot, 1      ; 14 uses
  %.not.i.i.i.i.i = icmp slt i64 %i.ov, 0
  br i1 %.not.i.i.i.i.i, label %bb.dk, label %bb.dj, !prof !17

bb.dj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  %i.ow = icmp eq i64 %i.ov, 0                    ; 2 uses
  br i1 %i.ow, label %.thread.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1456
  br label %.loopexit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.dj
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1463
  %i.ox = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ov, i64 noundef range(i64 1, 9) 1) #22, !noalias !1463 ; 18 uses
  %i.oy = icmp eq ptr %i.ox, null
  br i1 %i.oy, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ov) #25, !noalias !1456
  unreachable

bb.dl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ox, ptr align 1 %i.ou, i64 %i.ov, i1 false), !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1456
  %cond.i.i.i.i = icmp eq i64 %i.ov, 1
end_hunk_1
begin_hunk_2_@_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns12get_patterns:bb.a
  %.not104.i.i.i.i.i = icmp eq i64 %i.qd, 0
  br i1 %.not104.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.preheader111.i.i.i.i.i

.lr.ph150.i.i.i.i.i:                              ; preds = %.lr.ph150.i.i.i.i.i.preheader, %bb.dx
  %.sroa.0.4149.i.i.i.i.i = phi ptr [ %i.qv, %bb.dx ], [ %.sroa.0.4149.i.i.i.i.i.ph, %.lr.ph150.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.26.4148.i.i.i.i.i = phi i64 [ %i.qu, %bb.dx ], [ %.sroa.26.4148.i.i.i.i.i.ph, %.lr.ph150.i.i.i.i.i.preheader ]
  %.sroa.084.4147.i.i.i.i.i = phi i64 [ %i.qx, %bb.dx ], [ 0, %.lr.ph150.i.i.i.i.i.preheader ]
  %i.qp = load i8, ptr %.sroa.0.4149.i.i.i.i.i, align 1, !alias.scope !1464, !noalias !1465, !noundef !4
  %i.qq = zext i8 %i.qp to i32
  %i.qr = add nsw i32 %i.qq, -48                  ; 2 uses
  %i.qs = icmp ult i32 %i.qr, 10
  br i1 %i.qs, label %bb.dx, label %.loopexit.i.i.i.i

bb.dx:                                            ; preds = %.lr.ph150.i.i.i.i.i
  %i.qt = mul i64 %.sroa.084.4147.i.i.i.i.i, 10
  %i.qu = add nsw i64 %.sroa.26.4148.i.i.i.i.i, -1 ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i.i.i, i64 1
  %i.qw = zext nneg i32 %i.qr to i64
  %i.qx = add i64 %i.qt, %i.qw                    ; 2 uses
  %.not105.i.i.i.i.i = icmp eq i64 %i.qu, 0
  br i1 %.not105.i.i.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i, label %.lr.ph150.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.dq, %bb.dp, %.lr.ph.i.i.i.i.i, %.lr.ph141.i.i.i.i.i, %bb.dv, %bb.du, %.preheader111.i.i.i.i.i, %.lr.ph150.i.i.i.i.i, %bb.dm, %bb.dm, %.thread.i.i.i.i
  %.ph.i.i.i.i = phi ptr [ %i.ox, %bb.dv ], [ %i.ox, %.lr.ph141.i.i.i.i.i ], [ %i.ox, %.lr.ph150.i.i.i.i.i ], [ %i.ox, %bb.dm ], [ inttoptr (i64 1 to ptr), %.thread.i.i.i.i ], [ %i.ox, %bb.dm ], [ %i.ox, %.preheader111.i.i.i.i.i ], [ %i.ox, %bb.du ], [ %i.ox, %.lr.ph.i.i.i.i.i ], [ %i.ox, %bb.dp ], [ %i.ox, %bb.dq ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1456
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph.i.i.i.i, i64 noundef %i.ov) #21, !noalias !1456
  %i.qy = load i8, ptr %i.k, align 8, !range !20, !noalias !1456, !noundef !4
  %i.qz = trunc nuw i8 %i.qy to i1
  br i1 %i.qz, label %bb.ea, label %bb.eb

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i: ; preds = %bb.dr, %bb.ds, %bb.dw, %bb.dx
  %.sroa.156.0.i.i.i.i = phi i64 [ %i.qa, %bb.ds ], [ %i.qx, %bb.dx ], [ %i.qo, %bb.dw ], [ %i.pr, %bb.dr ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, i64 noundef %.sroa.156.0.i.i.i.i) #22, !noalias !1456
  br label %bb.dy

bb.dy:                                            ; preds = %bb.eb, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i
  %i.ra = phi ptr [ %.ph.i.i.i.i, %bb.eb ], [ %i.ox, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1456
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #22, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1456
  br i1 %i.ow, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ra, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1466
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.ea:                                            ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1456
  store i64 %i.ov, ptr %i.j, align 8, !noalias !1456
  store ptr %.ph.i.i.i.i, ptr %.sroa.5.0..sroa_idx3.i.i.i.i, align 8, !noalias !1456
  store i64 %i.ov, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !1456
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.j) #22, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1456
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1456
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 43, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i) #22, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1456
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.eb:                                            ; preds = %.loopexit.i.i.i.i
  %i.rb = load double, ptr %i.np, align 8, !noalias !1456, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 11, double noundef %i.rb) #22, !noalias !1456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1456
  br label %bb.dy

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %bb.ea, %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1456
  store ptr %i.m, ptr %i.h, align 8, !noalias !1456
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.416.0..sroa_idx.i.i.i.i, align 8, !noalias !1456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1467
  store ptr %i.q, ptr %i.c, align 8, !noalias !1467
  store ptr null, ptr %i.nq, align 8, !noalias !1467
  %i.rc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @16, ptr noundef nonnull @38, ptr noundef nonnull %i.h) #22, !noalias !1456
  %i.rd = load ptr, ptr %i.nq, align 8, !noalias !1467, !noundef !4 ; 7 uses
  %.not.i5.i25.i.i.i.i = icmp eq ptr %i.rd, null  ; 2 uses
  br i1 %i.rc, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  br i1 %.not.i5.i25.i.i.i.i, label %bb.eh, label %bb.ei, !prof !19

bb.ed:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i
  br i1 %.not.i5.i25.i.i.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1468
  %i.re = ptrtoint ptr %i.rd to i64               ; 2 uses
  %i.rf = and i64 %i.re, 3
  switch i64 %i.rf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i
    i64 3, label %bb.ef
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i
    i64 1, label %bb.eg
  ], !prof !10

bb.ef:                                            ; preds = %bb.ee
  %i.rg = icmp ult ptr %i.rd, inttoptr (i64 188978561024 to ptr)
  %i.rh = and i64 %i.re, 1095216660480
  %i.ri = icmp ne i64 %i.rh, 1095216660480
  call void @llvm.assume(i1 %i.rg)
  call void @llvm.assume(i1 %i.ri)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.rj = getelementptr i8, ptr %i.rd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rj) ]
  store ptr %i.rj, ptr %i.nr, align 8, !alias.scope !1469, !noalias !1468
  store i8 3, ptr %i.b, align 8, !alias.scope !1469, !noalias !1468
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.nr) #22, !noalias !1470
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i: ; preds = %bb.eg, %bb.ef, %bb.ee, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1468
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i

bb.eh:                                            ; preds = %bb.ec
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23, !noalias !1456
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i.i.i26.i.i.i.i, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1467
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i

bb.ei:                                            ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1467
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1471
  %i.rk = ptrtoint ptr %i.rd to i64               ; 2 uses
  %i.rl = and i64 %i.rk, 3
  switch i64 %i.rl, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i
    i64 3, label %bb.ej
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i
    i64 1, label %bb.ek
  ], !prof !10

bb.ej:                                            ; preds = %bb.ei
  %i.rm = icmp ult ptr %i.rd, inttoptr (i64 188978561024 to ptr)
  %i.rn = and i64 %i.rk, 1095216660480
  %i.ro = icmp ne i64 %i.rn, 1095216660480
  call void @llvm.assume(i1 %i.rm)
  call void @llvm.assume(i1 %i.ro)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i

bb.ek:                                            ; preds = %bb.ei
  %i.rp = getelementptr i8, ptr %i.rd, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rp) ]
  store ptr %i.rp, ptr %i.ns, align 8, !alias.scope !1472, !noalias !1471
  store i8 3, ptr %i.a, align 8, !alias.scope !1472, !noalias !1471
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ns) #22, !noalias !1471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i: ; preds = %bb.ek, %bb.ej, %bb.ei, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1471
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs44SRMMtlaHN_9uu_csplit.exit.i32.i.i.i.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i27.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1456
  call void @llvm.experimental.noalias.scope.decl(metadata !1473)
  %.val.i35.i.i.i.i = load i64, ptr %i.m, align 8, !range !5, !alias.scope !1473, !noalias !1456, !noundef !4 ; 2 uses
  %i.rq = icmp eq i64 %.val.i35.i.i.i.i, 0
  br i1 %i.rq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i, label %bb.el

bb.el:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i
  %.val1.i36.i.i.i.i = load ptr, ptr %i.nt, align 8, !alias.scope !1473, !noalias !1456, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i36.i.i.i.i, i64 noundef %.val.i35.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !1474
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i: ; preds = %bb.el, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs44SRMMtlaHN_9uu_csplit.exit34.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1456
  %.val20.i.i.i.i = load ptr, ptr %i.q, align 8, !noalias !1456, !nonnull !4, !align !6, !noundef !4 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i, i64 12 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !noalias !1456, !noundef !4
  %i.rt = add i32 %i.rs, -1                       ; 2 uses
  store i32 %i.rt, ptr %i.rr, align 4, !noalias !1456
  %i.ru = icmp eq i32 %i.rt, 0
  br i1 %i.ru, label %bb.em, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

bb.em:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i
  store atomic i64 0, ptr %.val20.i.i.i.i monotonic, align 8, !noalias !1456
  %i.rv = getelementptr inbounds nuw i8, ptr %.val20.i.i.i.i, i64 8 ; 2 uses
  %i.rw = atomicrmw xchg ptr %i.rv, i32 0 release, align 4, !noalias !1456
  %i.rx = icmp eq i32 %i.rw, 2
  br i1 %i.rx, label %bb.en, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, !prof !19

bb.en:                                            ; preds = %bb.em
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.rv) #22, !noalias !1456
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i: ; preds = %bb.en, %bb.em, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs44SRMMtlaHN_9uu_csplit.exit37.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1456
  br label %bb.eo

bb.eo:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i, %bb.cy, %bb.cv
  %.sroa.914.0.ph.i.i = phi i64 [ %.sroa.0.052.i.i, %bb.cv ], [ %.sroa.0.052.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs44SRMMtlaHN_9uu_csplit.exit.i.i.i.i ], [ %.val.i.i.i19, %bb.cy ]
  %i.ry = icmp eq ptr %i.nv, %i.nj
  br i1 %i.ry, label %.loopexit, label %bb.cv

_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit: ; preds = %bb.cy, %bb.cw
  %.sroa.049.0 = phi i64 [ 5, %bb.cw ], [ 6, %bb.cy ]
  %.sroa.850.0 = phi i64 [ undef, %bb.cw ], [ %.sroa.0.052.i.i, %bb.cy ]
  store i64 %.sroa.049.0, ptr %0, align 8
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val.i.i.i19, ptr %.sroa.472.0..sroa_idx, align 8
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.850.0, ptr %.sroa.573.0..sroa_idx, align 8
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.sa, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i ], [ 0, %_RNvNtCs44SRMMtlaHN_9uu_csplit8patterns21validate_line_numbers.exit ] ; 2 uses
  %i.rz = getelementptr inbounds nuw [56 x i8], ptr %.sroa.13.8.copyload37, i64 %.sroa.0.03.i.i.i ; 2 uses
  %i.sa = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  %i.sb = load i32, ptr %i.rz, align 8, !range !12, !alias.scope !1475, !noalias !1476, !noundef !4
  %cond.i.i.i.i22 = icmp eq i32 %i.sb, 0
  br i1 %cond.i.i.i.i22, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i, label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %.lr.ph.i.i.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECs44SRMMtlaHN_9uu_csplit(ptr noalias nofree noundef align 8 dereferenceable(32) %i.sc) #22, !noalias !1476
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %.lr.ph.i.i.i
  %i.sd = icmp eq i64 %i.sa, %.sroa.15.8.copyload40
  br i1 %i.sd, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEBF_.exit.i.i.i
  %i.se = icmp eq i64 %.sroa.832.8.copyload34, 0
  br i1 %i.se, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit, label %bb.ep

bb.ep:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i
  %i.sf = mul nuw i64 %.sroa.832.8.copyload34, 56
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.13.8.copyload37, i64 noundef %i.sf, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !1476
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

.loopexit:                                        ; preds = %bb.eo, %bb.cu
  %i.sg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.832.8.copyload34, ptr %i.sg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.13.8.copyload37, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.15.8.copyload40, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternEEB1c_.exit: ; preds = %bb.ct, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs44SRMMtlaHN_9uu_csplit8patterns7PatternENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit.i, %bb.ep, %.loopexit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvNvXs0_Cs44SRMMtlaHN_9uu_csplitINtB7_17LinesWithNewlinespENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4next3ret(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1482
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !1481, !noalias !1480, !nonnull !4, !noundef !4 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1481, !noalias !1480, !noundef !4 ; 3 uses
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f) #22, !noalias !1482
  %i.g = load i64, ptr %i.a, align 8, !range !15, !noalias !1482, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit, label %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread: ; preds = %bb.a
  %i.i = ptrtoint ptr %i.d to i64
  %.sroa.6.sroa.0.0.copyload12 = load ptr, ptr %1, align 8, !alias.scope !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1482
  br label %bb.d

_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noalias !1482
  %.sroa.015.0.copyload = load i64, ptr %1, align 8, !noalias !1480 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1482
  %.not = icmp eq i64 %.sroa.015.0.copyload, -1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef 22) #22
  %i.l = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newNtNtB7_6string6StringECsh036I4OHgIr_6uucore(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = icmp eq i64 %.sroa.015.0.copyload, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.sroa.015.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit: ; preds = %bb.b, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.n, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

bb.d:                                             ; preds = %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit
  %.sroa.6.sroa.6.sroa.0.0 = phi i64 [ %i.f, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %i.i, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  %.sroa.6.sroa.6.sroa.5.0 = phi i64 [ %i.k, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %i.f, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  %.sroa.6.sroa.0.021 = phi ptr [ %i.d, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit ], [ %.sroa.6.sroa.0.0.copyload12, %_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String9from_utf8.exit.thread ]
  store ptr %.sroa.6.sroa.0.021, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.sroa.6.sroa.0.0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.sroa.6.sroa.5.0, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs44SRMMtlaHN_9uu_csplit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs44SRMMtlaHN_9uu_csplit8patternsNtB2_7PatternNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = load i32, ptr %0, align 8, !range !12, !noundef !4
  switch i32 %i.m, label %default.unreachable87 [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

default.unreachable87:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.l, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRjNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.43.0..sroa_idx, align 8
  %i.o = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !6, !noundef !4
  %i.r = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.q, ptr noundef nonnull @28, ptr noundef nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !noundef !4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !noundef !4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.b
  %.sroa.0.1.in = phi i1 [ %i.r, %bb.b ], [ %i.ah, %bb.f ], [ %i.as, %bb.g ], [ %i.bc, %bb.h ], [ %i.bn, %bb.i ]
  ret i1 %.sroa.0.1.in

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.ac, ptr %i.j, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.ab, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs44SRMMtlaHN_9uu_csplit, ptr %.sroa.418.0..sroa_idx, align 8
  %i.ae = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !align !6, !noundef !4
  %i.ah = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ag, ptr noundef nonnull @97, ptr noundef nonnull %i.i) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.e

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.s, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !4, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.am, ptr %i.g, align 8
end_hunk_2
