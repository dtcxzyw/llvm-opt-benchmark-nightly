Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_seq-3e3072c383f9b439.uu_seq.f36310986634e766-cgu.0?download=true
inline.NumInlined: 363
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCskTxFPE6q5z6_6uu_seq9print_seq:bb.a
bb.p:                                             ; preds = %bb.o
  %i.cz = load i64, ptr %.sroa.18.40.copyload, align 8, !alias.scope !471, !noalias !472, !noundef !4
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.o
  %i.da = shl nuw nsw i64 %.sroa.19.40.copyload, 3 ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !473
  %i.db = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.da, i64 noundef range(i64 1, 9) 8) #19, !noalias !473 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.da) #22, !noalias !474
  unreachable

bb.r:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull readonly align 8 %.sroa.18.40.copyload, i64 %i.da, i1 false), !noalias !472
  %i.dd = ptrtoint ptr %i.db to i64
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i: ; preds = %bb.r, %bb.p, %bb.o, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.10100.0.i = phi i64 [ undef, %bb.o ], [ %.sroa.19.40.copyload, %bb.r ], [ %i.cz, %bb.p ], [ %.sroa.19.40.copyload, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  %.sroa.7.0.i = phi i64 [ %.sroa.19.40.copyload, %bb.o ], [ %i.dd, %bb.r ], [ 1, %bb.p ], [ %i.cm, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  %.sroa.097.0.i = phi i64 [ -1, %bb.o ], [ %.sroa.19.40.copyload, %bb.r ], [ -1, %bb.p ], [ -1, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  store i64 %.sroa.097.0.i, ptr %i.s, align 8, !noalias !470
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !470
  %.sroa.10100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.10100.0.i, ptr %.sroa.10100.0..sroa_idx.i, align 8, !noalias !470
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubRBR_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #19, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !470
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !470
  %i.de = icmp ne i64 %.sroa.3.0, 0
  %..i = zext i1 %i.de to i64
  store i64 -1, ptr %i.q, align 8, !noalias !470
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i55, align 8, !noalias !470
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !470
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division7div_rem(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #19, !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !470
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !470 ; 3 uses
  %.sroa.5.0..sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx77.i, align 8, !noalias !470 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !470 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val42.i = load i64, ptr %i.df, align 8, !range !11, !noalias !470, !noundef !4 ; 2 uses
  %i.dg = icmp sgt i64 %.val42.i, 0
  br i1 %i.dg, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i

bb.s:                                             ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val43.i = load ptr, ptr %i.dh, align 8, !noalias !470, !nonnull !4, !noundef !4
  %i.di = shl nuw i64 %.val42.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !475
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.s, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !470
  %.not.i44.i = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %.not.i44.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i
  %i.dj = trunc nuw i64 %.sroa.5.0.copyload.i to i1
  %spec.select.i = select i1 %i.dj, i64 %.sroa.8.0.copyload.i, i64 0
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i

bb.u:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i
  %i.dk = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.dk, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %..lr.ph.preheader.i_crit_edge.i

..lr.ph.preheader.i_crit_edge.i:                  ; preds = %bb.u
  %i.dl = inttoptr i64 %.sroa.5.0.copyload.i to ptr
  %.pre.i = load i64, ptr %i.dl, align 8, !noalias !475
  %i.dm = icmp eq i64 %.sroa.8.0.copyload.i, 1
  %i.dn = select i1 %i.dm, i64 %.pre.i, i64 -1
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %..lr.ph.preheader.i_crit_edge.i, %bb.u
  %.lcssa.i.i = phi i64 [ 0, %bb.u ], [ %i.dn, %..lr.ph.preheader.i_crit_edge.i ] ; 2 uses
  %.not244 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not244, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  %i.do = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  %i.dp = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !475
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i: ; preds = %bb.v, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, %bb.t
  %.sroa.01.0112.i = phi i64 [ %.lcssa.i.i, %bb.v ], [ %.lcssa.i.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i ], [ %spec.select.i, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !476
  store i64 0, ptr %i.o, align 8, !noalias !476
  %.sroa.4.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !476
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !476
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1610612768, ptr %i.dq, align 8, !noalias !476
  store ptr %i.o, ptr %i.n, align 8, !noalias !476
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @53, ptr %i.dr, align 8, !noalias !476
  %i.ds = call noundef zeroext i1 @_RNvXs6_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #19, !noalias !477
  br i1 %i.ds, label %bb.w, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i, !prof !9

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #20, !noalias !477
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i
  %.sroa.079.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !478 ; 3 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !478 ; 3 uses
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !478 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !479
  store i64 0, ptr %i.m, align 8, !noalias !479
  %.sroa.4.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !noalias !479
  %.sroa.5.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i50.i, align 8, !noalias !479
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !479
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.dt, align 8, !noalias !479
  store ptr %i.m, ptr %i.l, align 8, !noalias !479
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @53, ptr %i.du, align 8, !noalias !479
  %i.dv = call noundef zeroext i1 @_RNvXs6_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19, !noalias !480
  br i1 %i.dv, label %bb.x, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i, !prof !9

bb.x:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #20, !noalias !480
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.082.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !481 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !noalias !481 ; 2 uses
  %.sroa.583.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i50.i, align 8, !noalias !481 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !479
  %i.dw = icmp sgt i64 %.sroa.583.0.copyload.i, -1
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.dx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.y

bb.y:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.082.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !482
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.y, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i
  %..i.i = call noundef i64 @llvm.umax.i64(i64 %7, i64 %.sroa.583.0.copyload.i) ; 10 uses
  %i.dy = add i64 %..i.i, %2                      ; 24 uses
  %.not.i.i.i.i = icmp slt i64 %i.dy, 0
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z, !prof !15

bb.z:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i
  %i.dz = icmp eq i64 %i.dy, 0                    ; 3 uses
  br i1 %i.dz, label %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.z
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !483
  %i.ea = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dy, i64 noundef range(i64 1, 9) 1) #19, !noalias !483 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aa, label %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i

bb.aa:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dy) #22, !noalias !484
  unreachable

_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.z
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.z ], [ %i.ea, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, i8 48, i64 %i.dy, i1 false), !noalias !484
  %i.ec = icmp sgt i64 %.sroa.9.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub i64 %..i.i, %.sroa.9.0.copyload.i   ; 3 uses
  %i.ee = icmp ult i64 %..i.i, %.sroa.9.0.copyload.i
  %.not31.i = icmp ugt i64 %2, %i.dy
  %or.cond.i = or i1 %i.ee, %.not31.i
  br i1 %or.cond.i, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i, !prof !485

bb.ab:                                            ; preds = %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %..i.i, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !475
  unreachable

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %.sroa.6.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i, i1 false), !alias.scope !486, !noalias !487
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %..i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !488, !noalias !489
  %i.eh = sub nuw i64 %..i.i, %7
  %..i54.i = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.ed) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !470
  %i.ei = call { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.3.0, ptr noalias nofree noundef nonnull %i.p, i64 noundef 20) #19, !noalias !475 ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %i.ei, 0
  %i.ek = extractvalue { ptr, i64 } %i.ei, 1      ; 8 uses
  %.not.i55.i = icmp slt i64 %i.ek, 0
  br i1 %.not.i55.i, label %bb.ad, label %bb.ac, !prof !15

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i
  %i.el = icmp eq i64 %i.ek, 0                    ; 3 uses
  br i1 %i.el, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ac
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !490
  %i.em = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #19, !noalias !490 ; 6 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ad, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i

bb.ad:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.4103.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4103.0.ph.i, i64 %i.ek) #22, !noalias !475
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !470
  %.not.i56 = icmp eq i64 %.sroa.01.0112.i, 0
  br i1 %.not.i56, label %._crit_edge.i, label %.lr.ph.split.us.preheader.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ej, i64 %i.ek, i1 false), !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !470
  %.not213.i = icmp eq i64 %.sroa.01.0112.i, 0
  br i1 %.not213.i, label %._crit_edge.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.es = icmp ugt i64 %..i54.i, %i.dy
  %i.et = sub nuw nsw i64 %i.dy, %..i54.i         ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %..i54.i ; 2 uses
  br i1 %i.es, label %.split.us.i, label %.lr.ph.split.us.i.preheader, !prof !9

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.split.us.preheader.i
  %.pre192 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !491, !noalias !492
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %._crit_edge.thread.i.us.i
  %i.ev = phi i64 [ %i.ff, %._crit_edge.thread.i.us.i ], [ %.pre192, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.023.0151.us.i = phi i64 [ %i.ew, %._crit_edge.thread.i.us.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.ew = add nuw i64 %.sroa.023.0151.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !493)
  %i.ex = load i64, ptr %i.eq, align 8, !alias.scope !491, !noalias !492, !noundef !4 ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = sub nsw i64 %i.ev, %i.ex
  %i.fa = icmp ult i64 %i.et, %i.ez
  br i1 %i.fa, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i: ; preds = %.lr.ph.split.us.i
  %i.fb = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef range(i64 0, -9223372036854775808) %i.et) #18, !noalias !475 ; 2 uses
  %.not36.us.i = icmp eq ptr %i.fb, null
  %.pre191 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !491, !noalias !492
  br i1 %.not36.us.i, label %._crit_edge.thread.i.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i: ; preds = %.lr.ph.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %i.fc = load ptr, ptr %i.er, align 8, !alias.scope !495, !noalias !496, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull readonly align 1 %i.eu, i64 range(i64 0, -9223372036854775808) %i.et, i1 false), !noalias !497
  %i.fe = add nuw i64 %i.ex, %i.et
  store i64 %i.fe, ptr %i.eq, align 8, !alias.scope !495, !noalias !496
  br label %._crit_edge.thread.i.us.i

._crit_edge.thread.i.us.i:                        ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i
  %i.ff = phi i64 [ %i.ev, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i ], [ %.pre191, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %exitcond179.not.i = icmp eq i64 %i.ew, %.sroa.01.0112.i
  br i1 %exitcond179.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i

._crit_edge.i:                                    ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i
  %i.fg = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %i.em, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %i.em, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ]
  %.sroa.087.0.lcssa.i = phi i64 [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ] ; 3 uses
  %i.fh = icmp ult i64 %..i.i, %.sroa.087.0.lcssa.i
  br i1 %i.fh, label %bb.ae, label %._crit_edge.thread.i, !prof !500

.lr.ph.split.i:                                   ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %.lr.ph.split.preheader.i
  %.sroa.023.0151.i = phi i64 [ %i.fi, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ 0, %.lr.ph.split.preheader.i ]
  %.sroa.087.0150.i = phi i64 [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ %..i54.i, %.lr.ph.split.preheader.i ] ; 10 uses
  %i.fi = add nuw i64 %.sroa.023.0151.i, 1        ; 2 uses
  %i.fj = icmp ugt i64 %.sroa.087.0150.i, %i.dy
  br i1 %i.fj, label %.split.us.i, label %bb.am, !prof !9

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.us.i, %._crit_edge.i
  %.sroa.087.0.lcssa215.i = phi i64 [ %.sroa.087.0.lcssa.i, %._crit_edge.i ], [ %..i54.i, %._crit_edge.thread.i.us.i ] ; 2 uses
  %i.fk = phi ptr [ %i.fg, %._crit_edge.i ], [ inttoptr (i64 1 to ptr), %._crit_edge.thread.i.us.i ] ; 5 uses
  %i.fl = sub nuw i64 %..i.i, %.sroa.087.0.lcssa215.i ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %.sroa.087.0.lcssa215.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.fn = load i64, ptr %i.x, align 8, !range !5, !alias.scope !502, !noalias !503, !noundef !4
  %i.fo = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  %i.fp = load i64, ptr %i.fo, align 8, !alias.scope !502, !noalias !503, !noundef !4 ; 4 uses
  %i.fq = icmp sgt i64 %i.fp, -1
  call void @llvm.assume(i1 %i.fq)
  %i.fr = sub nsw i64 %i.fn, %i.fp
  %i.fs = icmp ult i64 %i.fl, %i.fr
  br i1 %i.fs, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %._crit_edge.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !504)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !alias.scope !505, !noalias !506, !nonnull !4, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fv, ptr nonnull readonly align 1 %i.fm, i64 range(i64 0, -9223372036854775808) %i.fl, i1 false), !noalias !507
  %i.fw = add nuw i64 %i.fp, %i.fl                ; 2 uses
  store i64 %i.fw, ptr %i.fo, align 8, !alias.scope !505, !noalias !506
  br label %bb.af

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %._crit_edge.thread.i
  %i.fx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef range(i64 0, -9223372036854775808) %i.fl) #18, !noalias !475 ; 2 uses
  %.not33.i = icmp eq ptr %i.fx, null
  br i1 %.not33.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i
  %.pre180.i = load i64, ptr %i.fo, align 8, !alias.scope !508, !noalias !509
  br label %bb.af

bb.ae:                                            ; preds = %._crit_edge.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %.sroa.087.0.lcssa.i, i64 noundef %..i.i, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !475
  unreachable

bb.af:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i
  %i.fy = phi i64 [ %.pre180.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit._crit_edge.i ], [ %i.fw, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !510)
  %i.fz = load i64, ptr %i.x, align 8, !range !5, !alias.scope !508, !noalias !509, !noundef !4
  %i.ga = icmp sgt i64 %i.fy, -1
  call void @llvm.assume(i1 %i.ga)
  %i.gb = sub nsw i64 %i.fz, %i.fy
  %i.gc = icmp ult i64 %4, %i.gb
  br i1 %i.gc, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i: ; preds = %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  %i.gd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ge = load ptr, ptr %i.gd, align 8, !alias.scope !512, !noalias !513, !nonnull !4, !noundef !4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.fy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gf, ptr nonnull readonly align 1 %3, i64 range(i64 0, -9223372036854775808) %4, i1 false), !noalias !514
  %i.gg = add nuw i64 %i.fy, %4
  store i64 %i.gg, ptr %i.fo, align 8, !alias.scope !512, !noalias !513
  br label %bb.ag

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i: ; preds = %bb.af
  %i.gh = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef range(i64 0, -9223372036854775808) %4) #18, !noalias !515 ; 2 uses
  %.not34.i = icmp eq ptr %i.gh, null
  br i1 %.not34.i, label %bb.ag, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.ag:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.thread.i
  %i.gi = call fastcc noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE9flush_bufCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #19, !noalias !515 ; 2 uses
  %.not.i59.i = icmp eq ptr %i.gi, null
  br i1 %.not.i59.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.ag
  %i.gj = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.gk = call noundef ptr @_RNvXsi_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_10StdoutLockNtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flush(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gj) #19, !noalias !515 ; 2 uses
  %.not35.i = icmp eq ptr %i.gk, null
  br i1 %.not35.i, label %bb.ah, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.ah:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fk, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !516
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i: ; preds = %bb.ai, %bb.ah
  br i1 %i.dz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !515
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.aj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit63.i
  %i.gl = icmp eq i64 %.sroa.079.0.copyload.i, 0
  br i1 %i.gl, label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit73.sink.split.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.0.1.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit70.i ], [ null, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload.i, i64 noundef %.sroa.079.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !515
  br label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i, %bb.ag, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i
  %i.gm = phi ptr [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i ], [ %i.fk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.fk, %bb.ag ], [ inttoptr (i64 1 to ptr), %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ], [ %i.em, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i ]
  %.sroa.0.1.i = phi ptr [ %i.gk, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.gh, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit58.i ], [ %i.fx, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i ], [ %i.gi, %bb.ag ], [ %i.fb, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ], [ %i.gy, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.i ] ; 2 uses
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i, label %bb.ak

bb.ak:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gm, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !517
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit69.i: ; preds = %bb.ak, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i
end_hunk_0
begin_hunk_1_@_RNvCskTxFPE6q5z6_6uu_seq9print_seq:bb.a
  %.val51 = load i64, ptr %i.ae, align 8, !range !10, !noundef !4 ; 2 uses
  switch i64 %.val51, label %bb.bd [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
  ]

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val52 = load ptr, ptr %i.ie, align 8, !nonnull !4, !noundef !4
  %i.if = shl nuw i64 %.val51, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val52, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.val49 = load i64, ptr %i.af, align 8, !range !10, !noundef !4 ; 2 uses
  switch i64 %.val49, label %bb.be [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64
  ]

bb.be:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63
  %i.ig = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val50 = load ptr, ptr %i.ig, align 8, !nonnull !4, !noundef !4
  %i.ih = shl nuw i64 %.val49, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val50, i64 noundef %i.ih, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit64: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit63, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.du

bb.bf:                                            ; preds = %bb.h
  %i.ii = shl nuw i64 %.sroa.7.16.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.16.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.12.16.copyload, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67: ; preds = %bb.h, %bb.bf
  %.sroa.1397.40.copyload.off = add i64 %.sroa.1397.40.copyload, -1
  %switch125 = icmp ult i64 %.sroa.1397.40.copyload.off, -3
  br i1 %switch125, label %bb.bg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70

bb.bg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67
  %i.ij = shl nuw i64 %.sroa.1397.40.copyload, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.18.40.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.18.40.copyload, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70

bb.bh:                                            ; preds = %_RNvXs9_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70
  %.sroa.02.0 = phi i1 [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit70 ], [ false, %_RNvXs9_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(32) @52, i64 32, i1 false), !noalias !525
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !526, !noalias !525
  %i.ik = call noundef i8 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.k) #19, !noalias !527
  %i.il = icmp sgt i8 %i.ik, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !525
  %i.im = call noundef i8 @_RNvXs6_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimalNtNtCs6JMX4GRUq9U_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad) #19 ; 3 uses
  br i1 %i.il, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, label %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i: ; preds = %bb.bh
  %i.in = icmp sgt i8 %i.im, 0
  br i1 %i.in, label %bb.bj, label %bb.bi

_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit: ; preds = %bb.bh
  %.not.i.i71 = icmp ne i8 %i.im, -2
  %i.io = icmp slt i8 %i.im, 0
  %.sroa.0.0.i.i72 = and i1 %.not.i.i71, %i.io
  br i1 %.sroa.0.0.i.i72, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit
  %.pre190 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8 ; 5 uses
  br i1 %.sroa.02.0, label %bb.bl, label %bb.bk

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit4.i, %_RINvCskTxFPE6q5z6_6uu_seq13done_printingNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalEB2_.exit
  br i1 %.sroa.02.0, label %bb.dn, label %bb.dm

bb.bk:                                            ; preds = %bb.bi
  %i.ip = load i64, ptr %i.ag, align 8, !range !5, !noundef !4
  %i.iq = icmp sgt i64 %.pre190, -1
  call void @llvm.assume(i1 %i.iq)
  %i.ir = sub nsw i64 %i.ip, %.pre190
  %i.is = icmp ult i64 %2, %i.ir
  br i1 %i.is, label %bb.cv, label %bb.cu, !prof !12

bb.bl:                                            ; preds = %._crit_edge, %bb.cv, %bb.bi
  %i.it = phi i64 [ %.pre189, %._crit_edge ], [ %i.la, %bb.cv ], [ %.pre190, %bb.bi ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  call void @llvm.experimental.noalias.scope.decl(metadata !529)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.ag, ptr %i.j, align 8, !noalias !530
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.iu = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !532, !noalias !533, !noundef !4
  %i.iv = icmp sgt i64 %i.it, -1
  call void @llvm.assume(i1 %i.iv)
  %i.iw = sub nsw i64 %i.iu, %i.it
  %i.ix = icmp ult i64 %i.at, %i.iw
  br i1 %i.ix, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, !prof !12

_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  %i.iy = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !536, !nonnull !4, !noundef !4
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.it
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.iz, ptr nonnull readonly align 1 %i.ar, i64 range(i64 0, -9223372036854775808) %i.at, i1 false), !noalias !537
  %i.ja = add nuw i64 %i.it, %i.at
  store i64 %i.ja, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !535, !noalias !536
  br label %bb.bm

_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.bl
  %i.jb = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef range(i64 0, -9223372036854775808) %i.at) #18, !noalias !538 ; 2 uses
  %.not.i73 = icmp eq ptr %i.jb, null
  br i1 %.not.i73, label %bb.bm, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread

bb.bm:                                            ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !530
  %i.jc = load i64, ptr %i.w, align 8, !range !10, !alias.scope !540, !noalias !541, !noundef !4 ; 3 uses
  %i.jd = icmp slt i64 %i.jc, -9223372036854775803
  %i.je = add i64 %i.jc, -9223372036854775807
  %i.jf = select i1 %i.jd, i64 %i.je, i64 0
  switch i64 %i.jf, label %bb.bn [
    i64 0, label %bb.bo
    i64 1, label %bb.bz
    i64 2, label %bb.ca
    i64 3, label %bb.cb
    i64 4, label %bb.cc
    i64 5, label %bb.cd
  ]

default.unreachable:                              ; preds = %bb.ck
  unreachable

bb.bn:                                            ; preds = %bb.bm
  unreachable

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.jg = load i8, ptr %i.au, align 8, !range !461, !alias.scope !543, !noalias !544, !noundef !4 ; 5 uses
  %i.jh = icmp eq i8 %i.jg, 0                     ; 2 uses
  %.not1.i.i.i = icmp eq i64 %i.jc, -1            ; 2 uses
  %i.ji = load i64, ptr %i.aw, align 8, !alias.scope !543, !noalias !544 ; 13 uses
  br i1 %i.jh, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %.not1.i.i.i, label %bb.bt, label %bb.br

bb.bq:                                            ; preds = %bb.bo
  br i1 %.not1.i.i.i, label %bb.by, label %bb.bu

bb.br:                                            ; preds = %bb.bp
  %i.jj = load ptr, ptr %i.av, align 8, !alias.scope !543, !noalias !544, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !545)
  switch i64 %i.ji, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i [
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i
    i64 1, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i
  ]

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i: ; preds = %bb.br
  %i.jk = load i64, ptr %i.jj, align 8, !alias.scope !545, !noalias !546, !noundef !4
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.br
  %i.jl = shl nuw nsw i64 %i.ji, 3                ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !547
  %i.jm = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jl, i64 noundef range(i64 1, 9) 8) #19, !noalias !547 ; 3 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bs, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i

bb.bs:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.jl) #22, !noalias !548
  unreachable

bb.bt:                                            ; preds = %bb.bp
  %i.jo = load i64, ptr %i.av, align 8, !range !14, !alias.scope !543, !noalias !544, !noundef !4
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr nonnull readonly align 8 %i.jj, i64 %i.jl, i1 false), !noalias !546
  %i.jp = ptrtoint ptr %i.jm to i64               ; 2 uses
  %.not2.i.i.i = icmp eq i64 %i.ji, -1
  br i1 %.not2.i.i.i, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i
  %i.jq = icmp ult i64 %i.ji, 1152921504606846976
  call void @llvm.assume(i1 %i.jq)
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i: ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i, %bb.bt
  %.sroa.7.029.i.i.i = phi i64 [ %i.jp, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i ], [ %i.jo, %bb.bt ]
  %i.jr = trunc nuw i64 %.sroa.7.029.i.i.i to i1
  br i1 %i.jr, label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i: ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i, %bb.br
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

bb.bu:                                            ; preds = %bb.bq
  %i.js = load ptr, ptr %i.av, align 8, !alias.scope !543, !noalias !544, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !549)
  switch i64 %i.ji, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i4.i.i.i [
    i64 0, label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i
    i64 1, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.jt = load i64, ptr %i.js, align 8, !alias.scope !549, !noalias !550, !noundef !4
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i4.i.i.i: ; preds = %bb.bu
  %i.ju = shl nuw nsw i64 %i.ji, 3                ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !551
  %i.jv = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ju, i64 noundef range(i64 1, 9) 8) #19, !noalias !551 ; 3 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i4.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ju) #22, !noalias !552
  unreachable

bb.bx:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i4.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr nonnull readonly align 8 %i.js, i64 %i.ju, i1 false), !noalias !550
  %i.jx = ptrtoint ptr %i.jv to i64
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

bb.by:                                            ; preds = %bb.bq
  %i.jy = load i64, ptr %i.av, align 8, !range !14, !alias.scope !543, !noalias !544, !noundef !4
  br label %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i

_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i: ; preds = %bb.by, %bb.bx, %bb.bv, %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i, %.split.i.i.i, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i
  %.sroa.10.0.i.i = phi i8 [ 2, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i ], [ 2, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i ], [ 2, %.split.i.i.i ], [ %i.jg, %bb.by ], [ %i.jg, %bb.bx ], [ %i.jg, %bb.bv ], [ %i.jg, %bb.bu ]
  %.sroa.8.0.i.i = phi i64 [ %i.jk, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i ], [ undef, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i ], [ %i.ji, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i ], [ %i.ji, %.split.i.i.i ], [ %i.ji, %bb.by ], [ %i.ji, %bb.bx ], [ %i.jt, %bb.bv ], [ undef, %bb.bu ]
  %.sroa.6.0.i.i = phi i64 [ 1, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i ], [ 1, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i ], [ %i.jp, %.split.i.i.i ], [ %i.jy, %bb.by ], [ %i.jx, %bb.bx ], [ 1, %bb.bv ], [ %i.ji, %bb.bu ]
  %.sroa.0.019.i.i = phi i64 [ -1, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.thread43.i.i.i ], [ -1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i.i.i ], [ -1, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.thread.i.i.i ], [ %i.ji, %.split.i.i.i ], [ -1, %bb.by ], [ %i.ji, %bb.bx ], [ -1, %bb.bv ], [ -1, %bb.bu ]
  %i.jz = load i64, ptr %i.ax, align 8, !alias.scope !540, !noalias !541, !noundef !4
  store i64 %.sroa.0.019.i.i, ptr %i.h, align 8, !noalias !553
  store i64 %.sroa.6.0.i.i, ptr %.sroa.02.sroa.4.0..sroa_idx.i.i, align 8, !noalias !553
  store i64 %.sroa.8.0.i.i, ptr %.sroa.02.sroa.5.0..sroa_idx.i.i, align 8, !noalias !553
  store i8 %.sroa.10.0.i.i, ptr %.sroa.02.sroa.6.0..sroa_idx.i.i, align 8, !noalias !553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.02.sroa.7.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) getelementptr inbounds nuw (i8, ptr @52, i64 25), i64 7, i1 false), !noalias !553
  store i64 %i.jz, ptr %.sroa.4.0..sroa_idx.i.i76, align 8, !noalias !553
  br label %bb.ce

bb.bz:                                            ; preds = %bb.bm
  store i64 -9223372036854775808, ptr %i.h, align 8, !noalias !553
  br label %bb.ce

bb.ca:                                            ; preds = %bb.bm
  store i64 -9223372036854775808, ptr %i.h, align 8, !noalias !553
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bm
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimal4zero(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.h) #19, !noalias !554
  br label %bb.ce

bb.cc:                                            ; preds = %bb.bm
  store i64 -9223372036854775805, ptr %i.h, align 8, !noalias !553
  br label %bb.ce

bb.cd:                                            ; preds = %bb.bm
  store i64 -9223372036854775805, ptr %i.h, align 8, !noalias !553
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i
  %.sroa.03.0.i.i = phi i1 [ %i.jh, %_RNvXsi_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4sign6Signed3abs.exit.i.i ], [ false, %bb.bz ], [ true, %bb.ca ], [ true, %bb.cb ], [ false, %bb.cc ], [ true, %bb.cd ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !553
  %i.ka = load i64, ptr %i.i, align 8, !range !10, !noalias !553, !noundef !4 ; 3 uses
  %i.kb = icmp sgt i64 %i.ka, -9223372036854775804
  br i1 %i.kb, label %bb.cf, label %bb.cl

bb.cf:                                            ; preds = %bb.ce
  %i.kc = load i64, ptr %i.be, align 8, !noalias !553, !noundef !4 ; 2 uses
  %i.kd = add i64 %i.kc, -2147483648
  %or.cond.i.i = icmp ult i64 %i.kd, -4294967296
  br i1 %or.cond.i.i, label %bb.cg, label %bb.ck

bb.cg:                                            ; preds = %bb.cf
  %i.ke = icmp slt i64 %i.kc, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !553
  br i1 %i.ke, label %.thread, label %bb.ch

.thread:                                          ; preds = %bb.cg
  store i64 -9223372036854775808, ptr %i.g, align 8, !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !553
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format23format_float_non_finite(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, i1 noundef zeroext %i.bd) #19, !noalias !554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !553
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format18get_sign_indicator(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i8 noundef %i.bp, i1 noundef zeroext %.sroa.03.0.i.i) #19, !noalias !554
  %i.kf = call fastcc noundef ptr @_RINvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format12write_outputQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.br, i8 noundef %spec.store.select1.i.i) #19, !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !553
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimal4zero(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.g) #19, !noalias !554
  %.val12.pre.i.i = load i64, ptr %i.g, align 8, !range !10, !noalias !553 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !553
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format23format_float_non_finite(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.g, i1 noundef zeroext %i.bd) #19, !noalias !554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !553
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format18get_sign_indicator(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i8 noundef %i.bp, i1 noundef zeroext %.sroa.03.0.i.i) #19, !noalias !554
  %i.kg = call fastcc noundef ptr @_RINvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format12write_outputQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, i64 noundef %i.br, i8 noundef %spec.store.select1.i.i) #19, !noalias !555 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !553
  switch i64 %.val12.pre.i.i, label %bb.ci [
    i64 -1, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 -9223372036854775804, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 -9223372036854775805, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 -9223372036854775806, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 -9223372036854775807, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 -9223372036854775808, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %.val13.i.i = load ptr, ptr %i.bs, align 8, !noalias !553, !nonnull !4, !noundef !4
  %i.kh = shl nuw i64 %.val12.pre.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %i.kh, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !554
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i: ; preds = %.thread, %bb.ci, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch, %bb.ch
  %i.ki = phi ptr [ %i.kf, %.thread ], [ %i.kg, %bb.ci ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ], [ %i.kg, %bb.ch ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !553
  %i.kj = icmp sgt i64 %i.ka, 0
  br i1 %i.kj, label %bb.cj, label %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i

bb.cj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
  %.val11.i.i = load ptr, ptr %i.bt, align 8, !noalias !553, !nonnull !4, !noundef !4
  %i.kk = shl nuw i64 %i.ka, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %i.kk, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !554
  br label %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !553
  switch i8 %i.bg, label %default.unreachable [
    i8 0, label %bb.cm
    i8 1, label %bb.cn
    i8 2, label %bb.co
    i8 3, label %bb.cp
  ]

bb.cl:                                            ; preds = %bb.ce
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format23format_float_non_finite(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i, i1 noundef zeroext %i.bd) #19, !noalias !554
  br label %bb.cs

bb.cm:                                            ; preds = %bb.ck
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format20format_float_decimal(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, i64 noundef %i.bh, i64 %i.bj, i1 noundef zeroext %i.bm) #19, !noalias !554
  br label %bb.cq

bb.cn:                                            ; preds = %bb.ck
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format23format_float_scientific(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, i64 noundef %i.bh, i64 %i.bj, i1 noundef zeroext %i.bd, i1 noundef zeroext %i.bm) #19, !noalias !554
  br label %bb.cq

bb.co:                                            ; preds = %bb.ck
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format21format_float_shortest(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, i64 noundef %i.bh, i64 %i.bj, i1 noundef zeroext %i.bd, i1 noundef zeroext %i.bm) #19, !noalias !554
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ck
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format24format_float_hexadecimal(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c, i64 noundef %i.bh, i64 %i.bj, i1 noundef zeroext %i.bd, i1 noundef zeroext %i.bm) #19, !noalias !554
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.val.i.i = load i64, ptr %i.c, align 8, !range !11, !noalias !553, !noundef !4 ; 2 uses
  %i.kl = icmp sgt i64 %.val.i.i, 0
  br i1 %i.kl, label %bb.cr, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i

bb.cr:                                            ; preds = %bb.cq
  %.val9.i.i = load ptr, ptr %i.bn, align 8, !noalias !553, !nonnull !4, !noundef !4
  %i.km = shl nuw i64 %.val.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %i.km, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !554
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i: ; preds = %bb.cr, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !553
  br label %bb.cs

bb.cs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i, %bb.cl
  %.sroa.05.0.i.i = phi i8 [ %i.az, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs50dz3u0MOxO_10bigdecimal10BigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i ], [ %spec.store.select1.i.i, %bb.cl ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !553
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format18get_sign_indicator(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i8 noundef %i.bp, i1 noundef zeroext %.sroa.03.0.i.i) #19, !noalias !554
  %i.kn = call fastcc noundef ptr @_RINvNtNtNtCsh036I4OHgIr_6uucore8features6format10num_format12write_outputQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.br, i8 noundef %.sroa.05.0.i.i) #19, !noalias !555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !553
  br label %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i

_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.cs, %bb.cj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i
  %.sroa.0.0.i.i75 = phi ptr [ %i.kn, %bb.cs ], [ %i.ki, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimal18ExtendedBigDecimalECskTxFPE6q5z6_6uu_seq.exit.i.i ], [ %i.ki, %bb.cj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !530
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !530
  %.not10.i = icmp eq ptr %.sroa.0.0.i.i75, null
  br i1 %.not10.i, label %bb.ct, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread

bb.ct:                                            ; preds = %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  %i.ko = load i64, ptr %i.ag, align 8, !range !5, !alias.scope !557, !noalias !558, !noundef !4
  %i.kp = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !557, !noalias !558, !noundef !4 ; 4 uses
  %i.kq = icmp sgt i64 %i.kp, -1
  call void @llvm.assume(i1 %i.kq)
  %i.kr = sub nsw i64 %i.ko, %i.kp
  %i.ks = icmp ult i64 %i.bx, %i.kr
  br i1 %i.ks, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread117, label %_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit, !prof !12

_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread117: ; preds = %bb.ct
  call void @llvm.experimental.noalias.scope.decl(metadata !559)
  %i.kt = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561, !nonnull !4, !noundef !4
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ku, ptr nonnull readonly align 1 %i.bv, i64 range(i64 0, -9223372036854775808) %i.bx, i1 false), !noalias !562
  %i.kv = add nuw i64 %i.kp, %i.bx
  store i64 %i.kv, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !560, !noalias !561
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cw

_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.thread: ; preds = %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.0.0.i74.ph = phi ptr [ %i.jb, %_RNvXs_NtNtCs6JMX4GRUq9U_4core2io5implsQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtB6_5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.0.0.i.i75, %_RINvXs1_NtNtNtCsh036I4OHgIr_6uucore8features6format10num_formatNtB6_5FloatINtB6_9FormatterRNtNtBa_18extendedbigdecimal18ExtendedBigDecimalE3fmtQQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread

_RINvMs6_NtNtCsh036I4OHgIr_6uucore8features6formatINtB6_6FormatNtNtB6_10num_format5FloatRNtNtB8_18extendedbigdecimal18ExtendedBigDecimalE3fmtQINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEECskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.ct
  %i.kw = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef range(i64 0, -9223372036854775808) %i.bx) #18, !noalias !538 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not23 = icmp eq ptr %i.kw, null
  br i1 %.not23, label %bb.cw, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread

bb.cu:                                            ; preds = %bb.bk
  %i.kx = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #18 ; 2 uses
  %.not22 = icmp eq ptr %i.kx, null
  br i1 %.not22, label %._crit_edge, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread

._crit_edge:                                      ; preds = %bb.cu
  %.pre189 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !532, !noalias !533
  br label %bb.bl

end_hunk_1
