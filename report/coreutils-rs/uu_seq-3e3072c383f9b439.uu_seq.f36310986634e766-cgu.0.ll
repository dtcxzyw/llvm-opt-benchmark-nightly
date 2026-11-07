Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_seq-3e3072c383f9b439.uu_seq.f36310986634e766-cgu.0?download=true
inline.NumInlined: 363
inline.NumDeleted: 198
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCskTxFPE6q5z6_6uu_seq9print_seq:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimal10to_biguint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae) #19
  %i.cc = load i64, ptr %i.ab, align 8, !range !427, !noundef !4 ; 4 uses
  %.not = icmp eq i64 %i.cc, -2
  br i1 %.not, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.5108.0.copyload = load i64, ptr %.sroa.5108.0..sroa_idx, align 8 ; 3 uses
  %.not.i = icmp eq i64 %i.cc, -1
  br i1 %.not.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cd = trunc nuw i64 %.sroa.4.0.copyload to i1
  %spec.select = select i1 %i.cd, i64 %.sroa.5108.0.copyload, i64 0
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit

bb.f:                                             ; preds = %bb.d
  %i.ce = icmp eq i64 %.sroa.5108.0.copyload, 0
  br i1 %i.ce, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit, label %..lr.ph.preheader.i_crit_edge

..lr.ph.preheader.i_crit_edge:                    ; preds = %bb.f
  %i.cf = inttoptr i64 %.sroa.4.0.copyload to ptr
  %.pre = load i64, ptr %i.cf, align 8
  %i.cg = icmp eq i64 %.sroa.5108.0.copyload, 1
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit: ; preds = %..lr.ph.preheader.i_crit_edge, %bb.f
  %.sroa.01.0.lcssa.i = phi i64 [ 0, %bb.f ], [ %.pre, %..lr.ph.preheader.i_crit_edge ] ; 2 uses
  %.lcssa.i = phi i1 [ true, %bb.f ], [ %i.cg, %..lr.ph.preheader.i_crit_edge ] ; 2 uses
  %.not279 = icmp eq i64 %i.cc, 0
  br i1 %.not279, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit
  %i.ch = inttoptr i64 %.sroa.4.0.copyload to ptr ; 2 uses
  %i.ci = shl nuw i64 %i.cc, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ch) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ch, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.e, %bb.g, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit, %bb.c
  %.sroa.3.0 = phi i64 [ undef, %bb.c ], [ %.sroa.01.0.lcssa.i, %bb.g ], [ %.sroa.01.0.lcssa.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit ], [ %spec.select, %bb.e ] ; 3 uses
  %.sroa.01.0 = phi i1 [ false, %bb.c ], [ %.lcssa.i, %bb.g ], [ %.lcssa.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit ], [ true, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvMs1_NtNtCsh036I4OHgIr_6uucore8features18extendedbigdecimalNtB5_18ExtendedBigDecimal10to_biguint(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad) #19
  %.sroa.7.16.copyload = load i64, ptr %i.ac, align 8 ; 5 uses
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.12.16.copyload = load ptr, ptr %.sroa.12.16..sroa_idx, align 8 ; 5 uses
  %.sroa.13.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.13.16.copyload = load i64, ptr %.sroa.13.16..sroa_idx, align 8 ; 2 uses
  %.sroa.1397.40.copyload = load i64, ptr %i.aa, align 8 ; 5 uses
  %.sroa.18.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.18.40.copyload = load ptr, ptr %.sroa.18.40..sroa_idx, align 8 ; 7 uses
  %.sroa.19.40..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.19.40.copyload = load i64, ptr %.sroa.19.40..sroa_idx, align 8 ; 8 uses
  %.not18 = icmp ne i64 %.sroa.7.16.copyload, -2
  %or.cond = select i1 %.not18, i1 %.sroa.01.0, i1 false
  %.not19 = icmp ne i64 %.sroa.1397.40.copyload, -2
  %or.cond27.not = select i1 %or.cond, i1 %.not19, i1 false
  br i1 %or.cond27.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit
  %.sroa.7.16.copyload.off = add i64 %.sroa.7.16.copyload, -1
  %switch = icmp ult i64 %.sroa.7.16.copyload.off, -3
  br i1 %switch, label %bb.bf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit67

bb.i:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %.sroa.7.16.copyload, ptr %i.z, align 8
  %.sroa.12.16..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %.sroa.12.16.copyload, ptr %.sroa.12.16..sroa_idx93, align 8
  %.sroa.13.16..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  store i64 %.sroa.13.16.copyload, ptr %.sroa.13.16..sroa_idx95, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store i64 %.sroa.1397.40.copyload, ptr %i.y, align 8
  %.sroa.18.40..sroa_idx100 = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %.sroa.18.40.copyload, ptr %.sroa.18.40..sroa_idx100, align 8
  %.sroa.19.40..sroa_idx102 = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  store i64 %.sroa.19.40.copyload, ptr %.sroa.19.40..sroa_idx102, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.ag, i64 40, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %.not.i.i = icmp eq i64 %.sroa.1397.40.copyload, -1 ; 2 uses
  %i.cj = ptrtoint ptr %.sroa.18.40.copyload to i64 ; 2 uses
  %i.ck = ptrtoint ptr %.sroa.12.16.copyload to i64 ; 2 uses
  br i1 %.not.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cl = trunc nuw i64 %i.cj to i1
  br i1 %i.cl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.j
  %i.cm = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ %i.cj, %bb.i ]
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.j ], [ 1, %bb.k ], [ %.sroa.19.40.copyload, %bb.i ] ; 5 uses
  %.sroa.0.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %.sroa.19.40..sroa_idx102, %bb.k ], [ %.sroa.18.40.copyload, %bb.i ] ; 2 uses
  %.not3.i.i = icmp eq i64 %.sroa.7.16.copyload, -1 ; 2 uses
  %.sroa.42.0.i.i = select i1 %.not3.i.i, i64 %i.ck, i64 %.sroa.13.16.copyload ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !429)
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.cn = icmp eq i64 %.sroa.4.0.i.i, %.sroa.42.0.i.i
  br i1 %i.cn, label %bb.m, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i

bb.m:                                             ; preds = %bb.l
  %i.co = icmp eq i64 %.sroa.4.0.i.i, 0
  br i1 %i.co, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %.idx = shl nuw nsw i64 %.sroa.4.0.i.i, 3
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %.idx
  %i.cq = trunc nuw i64 %i.ck to i1
  %spec.select122 = select i1 %i.cq, ptr %.sroa.13.16..sroa_idx95, ptr inttoptr (i64 8 to ptr)
  %.sroa.01.0.i.i = select i1 %.not3.i.i, ptr %spec.select122, ptr %.sroa.12.16.copyload
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.4.0.i.i
  br label %bb.n

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n
  %i.cs = icmp eq ptr %.sroa.0.0.i.i, %i.cu
  br i1 %i.cs, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i
  %i.ct = phi ptr [ %i.cp, %.lr.ph ], [ %i.cu, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i ]
  %.sroa.3.08.i.i.i.i.i311 = phi ptr [ %i.cr, %.lr.ph ], [ %i.cv, %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i ]
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -8 ; 3 uses
  %.val8.i.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !429, !noalias !431 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.3.08.i.i.i.i.i311, i64 -8 ; 2 uses
  %.val7.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cv, align 8, !alias.scope !432, !noalias !433, !noundef !4 ; 2 uses
  %i.cw = icmp eq i64 %.val8.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cw, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i, label %.split.loop.exit17.i.i.i.i.i.i.i.i

.split.loop.exit17.i.i.i.i.i.i.i.i:               ; preds = %bb.n
  %i.cx = icmp ult i64 %.val8.i.i.i.i.i.i.i.i, %.val7.i.i.i.i.i.i.i.i.i.i
  br i1 %i.cx, label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i: ; preds = %bb.l
  %i.cy = icmp ult i64 %.sroa.4.0.i.i, %.sroa.42.0.i.i
  br i1 %i.cy, label %_RINvCskTxFPE6q5z6_6uu_seq14fast_print_seqINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEEB2_.exit, label %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i

_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i: ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator12try_for_each4callRyINtNtNtBe_3ops12control_flow11ControlFlowIB1n_NtNtBe_3cmp8OrderingB26_EENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevINtNtNtBe_5slice4iter4IteryEEB1k_B26_NCINvNvB6_6cmp_by7compareB1k_B1k_NCINvYB32_B6_3cmpB32_E0E0E0E0CskTxFPE6q5z6_6uu_seq.exit.i.i.i.i.i.i.i.i, %bb.m, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.i, %.split.loop.exit17.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !434
  br i1 %.not.i.i, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i, label %bb.o

bb.o:                                             ; preds = %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i
  call void @llvm.experimental.noalias.scope.decl(metadata !435)
  switch i64 %.sroa.19.40.copyload, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i [
    i64 0, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
    i64 1, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  %i.cz = load i64, ptr %.sroa.18.40.copyload, align 8, !alias.scope !435, !noalias !436, !noundef !4
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.o
  %i.da = shl nuw nsw i64 %.sroa.19.40.copyload, 3 ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !437
  %i.db = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.da, i64 noundef range(i64 1, 9) 8) #19, !noalias !437 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.da) #22, !noalias !438
  unreachable

bb.r:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.db, ptr nonnull readonly align 8 %.sroa.18.40.copyload, i64 %i.da, i1 false), !noalias !439
  %i.dd = ptrtoint ptr %i.db to i64
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i: ; preds = %bb.r, %bb.p, %bb.o, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i
  %.sroa.10100.0.i = phi i64 [ undef, %bb.o ], [ %.sroa.19.40.copyload, %bb.r ], [ %i.cz, %bb.p ], [ %.sroa.19.40.copyload, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  %.sroa.7.0.i = phi i64 [ %.sroa.19.40.copyload, %bb.o ], [ %i.dd, %bb.r ], [ 1, %bb.p ], [ %i.cm, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  %.sroa.097.0.i = phi i64 [ -1, %bb.o ], [ %.sroa.19.40.copyload, %bb.r ], [ -1, %bb.p ], [ -1, %_RNvXs3_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3cmp3Ord3cmp.exit.thread.i ]
  store i64 %.sroa.097.0.i, ptr %i.s, align 8, !noalias !434
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !434
  %.sroa.10100.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.10100.0.i, ptr %.sroa.10100.0..sroa_idx.i, align 8, !noalias !434
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubRBR_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #19, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !434
  %i.de = icmp ne i64 %.sroa.3.0, 0
  %..i = zext i1 %i.de to i64
  store i64 -1, ptr %i.q, align 8, !noalias !434
  %.sroa.5.0..sroa_idx.i55 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %..i, ptr %.sroa.5.0..sroa_idx.i55, align 8, !noalias !434
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.3.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !434
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division7div_rem(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q) #19, !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !434
  %.sroa.0.0.copyload.i = load i64, ptr %i.r, align 8, !noalias !434 ; 3 uses
  %.sroa.5.0..sroa_idx77.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx77.i, align 8, !noalias !434 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !434 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.val42.i = load i64, ptr %i.df, align 8, !range !11, !noalias !434, !noundef !4 ; 2 uses
  %i.dg = icmp sgt i64 %.val42.i, 0
  br i1 %i.dg, label %bb.s, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i

bb.s:                                             ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.val43.i = load ptr, ptr %i.dh, align 8, !noalias !434, !nonnull !4, !noundef !4
  %i.di = shl nuw i64 %.val42.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val43.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !436
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.s, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !434
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
  %.pre.i.a = load i64, ptr %i.dl, align 8, !noalias !436
  %i.dm = icmp eq i64 %.sroa.8.0.copyload.i, 1
  %i.dn = select i1 %i.dm, i64 %.pre.i.a, i64 -1
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %..lr.ph.preheader.i_crit_edge.i, %bb.u
  %.lcssa.i.i = phi i64 [ 0, %bb.u ], [ %i.dn, %..lr.ph.preheader.i_crit_edge.i ] ; 2 uses
  %.not244 = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %.not244, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i, label %bb.v

bb.v:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  %i.do = inttoptr i64 %.sroa.5.0.copyload.i to ptr ; 2 uses
  %i.dp = shl nuw i64 %.sroa.0.0.copyload.i, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.do) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.do, i64 noundef %i.dp, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !436
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i: ; preds = %bb.v, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, %bb.t
  %.sroa.01.0112.i = phi i64 [ %.lcssa.i.i, %bb.v ], [ %.lcssa.i.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i ], [ %spec.select.i, %bb.t ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !440
  store i64 0, ptr %i.o, align 8, !noalias !440
  %.sroa.4.0..sroa_idx.i48.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !440
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !440
  %i.dq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 1610612768, ptr %i.dq, align 8, !noalias !440
  store ptr %i.o, ptr %i.n, align 8, !noalias !440
  %i.dr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @53, ptr %i.dr, align 8, !noalias !440
  %i.ds = call noundef zeroext i1 @_RNvXs6_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #19, !noalias !441
  br i1 %i.ds, label %bb.w, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i, !prof !9

bb.w:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #20, !noalias !441
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECskTxFPE6q5z6_6uu_seq.exit47.i
  %.sroa.079.0.copyload.i = load i64, ptr %i.o, align 8, !noalias !442 ; 3 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i48.i, align 8, !noalias !442 ; 3 uses
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !442 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !443
  store i64 0, ptr %i.m, align 8, !noalias !443
  %.sroa.4.0..sroa_idx.i49.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !noalias !443
  %.sroa.5.0..sroa_idx.i50.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i50.i, align 8, !noalias !443
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !443
  %i.dt = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1610612768, ptr %i.dt, align 8, !noalias !443
  store ptr %i.m, ptr %i.l, align 8, !noalias !443
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @53, ptr %i.du, align 8, !noalias !443
  %i.dv = call noundef zeroext i1 @_RNvXs6_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #19, !noalias !444
  br i1 %i.dv, label %bb.x, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i, !prof !9

bb.x:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) #20, !noalias !444
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.082.0.copyload.i = load i64, ptr %i.m, align 8, !noalias !445 ; 2 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i49.i, align 8, !noalias !445 ; 2 uses
  %.sroa.583.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i50.i, align 8, !noalias !445 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !443
  %i.dw = icmp sgt i64 %.sroa.583.0.copyload.i, -1
  call void @llvm.assume(i1 %i.dw)
  %i.dx = icmp eq i64 %.sroa.082.0.copyload.i, 0
  br i1 %i.dx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.y

bb.y:                                             ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB5_12SpecToString14spec_to_stringCskTxFPE6q5z6_6uu_seq.exit51.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %.sroa.082.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !446
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
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !447
  %i.ea = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.dy, i64 noundef range(i64 1, 9) 1) #19, !noalias !447 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.aa, label %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i

bb.aa:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dy) #22, !noalias !448
  unreachable

_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %bb.z
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.z ], [ %i.ea, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 12 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, i8 48, i64 %i.dy, i1 false), !noalias !448
  %i.ec = icmp sgt i64 %.sroa.9.0.copyload.i, -1
  call void @llvm.assume(i1 %i.ec)
  %i.ed = sub i64 %..i.i, %.sroa.9.0.copyload.i   ; 3 uses
  %i.ee = icmp ult i64 %..i.i, %.sroa.9.0.copyload.i
  %.not31.i = icmp ugt i64 %2, %i.dy
  %or.cond.i = or i1 %i.ee, %.not31.i
  br i1 %or.cond.i, label %bb.ab, label %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i, !prof !449

bb.ab:                                            ; preds = %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef %i.ed, i64 noundef %..i.i, i64 noundef %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !436
  unreachable

_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %_RINvXs1_NtNtCs7tKScEop1B6_5alloc3vec14spec_from_elemhNtB6_12SpecFromElem9from_elemNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq.exit.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %i.ed
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr nonnull readonly align 1 %.sroa.6.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.9.0.copyload.i, i1 false), !alias.scope !450, !noalias !436
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i, i64 %..i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eg, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !alias.scope !451, !noalias !452
  %i.eh = sub nuw i64 %..i.i, %7
  %..i54.i = call noundef i64 @llvm.umin.i64(i64 %i.eh, i64 %i.ed) ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !434
  %i.ei = call { ptr, i64 } @_RNvMsf_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impy4__fmt(i64 noundef %.sroa.3.0, ptr noalias nofree noundef nonnull %i.p, i64 noundef 20) #19, !noalias !436
  %.fr154.i = freeze { ptr, i64 } %i.ei           ; 2 uses
  %i.ej = extractvalue { ptr, i64 } %.fr154.i, 0
  %i.ek = extractvalue { ptr, i64 } %.fr154.i, 1  ; 8 uses
  %.not.i55.i = icmp slt i64 %i.ek, 0
  br i1 %.not.i55.i, label %bb.ad, label %bb.ac, !prof !15

bb.ac:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i
  %i.el = icmp eq i64 %i.ek, 0                    ; 3 uses
  br i1 %i.el, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ac
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #19, !noalias !453
  %i.em = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ek, i64 noundef range(i64 1, 9) 1) #19, !noalias !453 ; 6 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %bb.ad, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i

bb.ad:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i
  %.sroa.4103.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core5slice20copy_from_slice_implhECskTxFPE6q5z6_6uu_seq.exit.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4103.0.ph.i, i64 %i.ek) #22, !noalias !436
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i: ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !434
  %.not.i56 = icmp eq i64 %.sroa.01.0112.i, 0
  br i1 %.not.i56, label %._crit_edge.i, label %.lr.ph.split.us.preheader.i

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.em, ptr align 1 %i.ej, i64 %i.ek, i1 false), !noalias !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !434
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
  %.pre192 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !454
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %._crit_edge.thread.i.us.i
  %i.ev = phi i64 [ %i.ff, %._crit_edge.thread.i.us.i ], [ %.pre192, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %.sroa.023.0151.us.i = phi i64 [ %i.ew, %._crit_edge.thread.i.us.i ], [ 0, %.lr.ph.split.us.i.preheader ]
  %i.ew = add nuw i64 %.sroa.023.0151.us.i, 1     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ex = load i64, ptr %i.eq, align 8, !alias.scope !454, !noundef !4 ; 4 uses
  %i.ey = icmp sgt i64 %i.ex, -1
  call void @llvm.assume(i1 %i.ey)
  %i.ez = sub nsw i64 %i.ev, %i.ex
  %i.fa = icmp ult i64 %i.et, %i.ez
  br i1 %i.fa, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i: ; preds = %.lr.ph.split.us.i
  %i.fb = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eu, i64 noundef range(i64 0, -9223372036854775808) %i.et) #18, !noalias !436 ; 2 uses
  %.not36.us.i = icmp eq ptr %i.fb, null
  %.pre191 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !454
  br i1 %.not36.us.i, label %._crit_edge.thread.i.us.i, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write5flushCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i: ; preds = %.lr.ph.split.us.i
  call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.fc = load ptr, ptr %i.er, align 8, !alias.scope !457, !nonnull !4, !noundef !4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fd, ptr nonnull readonly align 1 %i.eu, i64 range(i64 0, -9223372036854775808) %i.et, i1 false), !noalias !458
  %i.fe = add nuw i64 %i.ex, %i.et
  store i64 %i.fe, ptr %i.eq, align 8, !alias.scope !457
  br label %._crit_edge.thread.i.us.i

._crit_edge.thread.i.us.i:                        ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i
  %i.ff = phi i64 [ %i.ev, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.thread.us.i ], [ %.pre191, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit75.us.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %exitcond179.not.i = icmp eq i64 %i.ew, %.sroa.01.0112.i
  br i1 %exitcond179.not.i, label %._crit_edge.thread.i, label %.lr.ph.split.us.i

._crit_edge.i:                                    ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i
  %i.fg = phi ptr [ inttoptr (i64 1 to ptr), %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %i.em, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %i.em, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ]
  %.sroa.087.0.lcssa.i = phi i64 [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.i ], [ %..i54.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskTxFPE6q5z6_6uu_seq.exit.thread118.thread.i ], [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ] ; 3 uses
  %i.fh = icmp ult i64 %..i.i, %.sroa.087.0.lcssa.i
  br i1 %i.fh, label %bb.ae, label %._crit_edge.thread.i, !prof !461

.lr.ph.split.i:                                   ; preds = %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i, %.lr.ph.split.preheader.i
  %.sroa.023.0151.i = phi i64 [ %i.fi, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ 0, %.lr.ph.split.preheader.i ]
  %.sroa.087.0150.i = phi i64 [ %.sroa.087.1.i, %_RNvNtNtCsh036I4OHgIr_6uucore8features8fast_inc8fast_inc.exit.i ], [ %..i54.i, %.lr.ph.split.preheader.i ] ; 10 uses
  %i.fi = add nuw i64 %.sroa.023.0151.i, 1        ; 2 uses
  %i.fj = icmp ugt i64 %.sroa.087.0150.i, %i.dy
end_hunk_0
begin_hunk_1_@_RNvXNtCskTxFPE6q5z6_6uu_seq11numberparseNtNtB4_6number13PreciseNumberNtNtNtCs6JMX4GRUq9U_4core3str6traits7FromStr8from_str:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.dn, align 8, !noalias !610
  store i64 4, ptr %i.a, align 8, !noalias !606
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.dl, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !606
  %.sroa.64.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !606
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  br i1 %.sroa.18.0, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.i, label %.lr.ph.split.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i, %bb.ac
  %i.do = phi ptr [ %i.eq, %bb.ac ], [ %i.dl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ]
  %i.dp = phi i64 [ %i.et, %bb.ac ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 5 uses
  %i.dq = phi i64 [ %i.el, %bb.ac ], [ %.sroa.832.1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 3 uses
  %.lcssa71112.i.i.i.i = phi i64 [ %.lcssa710.i.i.i.i, %bb.ac ], [ %.sroa.028.0, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 5 uses
  %i.dr = icmp ult i64 %.sroa.11.0196.i, %i.dq
  br i1 %i.dr, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i, %bb.aa
  %i.ds = phi i64 [ %i.eh, %bb.aa ], [ %i.dq, %.lr.ph.split.i.i.i.i ] ; 4 uses
  %i.dt = sub nuw i64 %.sroa.11.0196.i, %i.ds     ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0197.i, i64 %i.ds ; 2 uses
  %i.dv = icmp samesign ult i64 %i.dt, 16
  br i1 %i.dv, label %.preheader.i.i.i.i.i.i.i.i, label %bb.x

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i.i
  %i.dw = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 101, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef range(i64 0, -9223372036854775808) %i.dt) #19, !noalias !613
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %bb.y, %.lr.ph.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.dt, %bb.y ]
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.y ]
  %i.dx = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i.i, 0
  %i.dy = insertvalue { i64, i64 } %i.dx, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.y
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.y ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.ea = load i8, ptr %i.dz, align 1, !alias.scope !614, !noalias !613, !noundef !4
  %i.eb = icmp eq i8 %i.ea, 101
  br i1 %i.eb, label %._crit_edge.i.i.i.i.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ec = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ec, %i.dt
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %bb.x
  %.merged.i.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.dy, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.dw, %bb.x ] ; 2 uses
  %i.ed = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 0
  %i.ee = trunc nuw i64 %i.ed to i1
  br i1 %i.ee, label %bb.z, label %select.unfold.i.i.i.i

bb.z:                                             ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i
  %i.ef = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.eg = add i64 %i.ds, 1
  %i.eh = add i64 %i.eg, %i.ef                    ; 5 uses
  %.not12.i.i.i.i.i.i.i = icmp ugt i64 %i.eh, %.sroa.11.0196.i
  %i.ei = add i64 %i.ef, %i.ds                    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.not = icmp ult i64 %i.ei, %.sroa.11.0196.i
  br i1 %or.cond.i.i.i.i.i.i.i.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %bb.z
  br i1 %.not12.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0197.i, i64 %i.ei
  %lhsc = load i8, ptr %i.ej, align 1
  %i.ek = icmp eq i8 %lhsc, 101
  br i1 %i.ek, label %select.unfold.i.i.i.i, label %bb.aa

select.unfold.i.i.i.i:                            ; preds = %bb.ab, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i, %bb.aa, %.lr.ph.split.i.i.i.i
  %i.el = phi i64 [ %i.dq, %.lr.ph.split.i.i.i.i ], [ %i.eh, %bb.ab ], [ %i.eh, %bb.aa ], [ %.sroa.11.0196.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ]
  %.lcssa710.i.i.i.i = phi i64 [ %.lcssa71112.i.i.i.i, %.lr.ph.split.i.i.i.i ], [ %i.eh, %bb.ab ], [ %.lcssa71112.i.i.i.i, %bb.aa ], [ %.lcssa71112.i.i.i.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ]
  %i.em = phi i1 [ true, %.lr.ph.split.i.i.i.i ], [ false, %bb.ab ], [ true, %bb.aa ], [ true, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ]
  %.pn.i.i.i.i = phi i64 [ %.sroa.11.0196.i, %.lr.ph.split.i.i.i.i ], [ %i.ei, %bb.ab ], [ %.sroa.11.0196.i, %bb.aa ], [ %.sroa.11.0196.i, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i.i.i.i.i ]
  %i.en = load i64, ptr %i.a, align 8, !noalias !615
  %.sroa.4.1.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i, %.lcssa71112.i.i.i.i
  %.sroa.0.1.i.i.i.i6.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0197.i, i64 %.lcssa71112.i.i.i.i
  %i.eo = icmp samesign ult i64 %i.dp, 576460752303423488
  call void @llvm.assume(i1 %i.eo)
  %i.ep = icmp eq i64 %i.dp, %i.en
  br i1 %i.ep, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i, label %bb.ac

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i: ; preds = %select.unfold.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.dp, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16) #19, !noalias !616
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !617, !noalias !606
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i, %select.unfold.i.i.i.i
  %i.eq = phi ptr [ %.pre.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecReE7reserveCskTxFPE6q5z6_6uu_seq.exit.i.i.i.i ], [ %i.do, %select.unfold.i.i.i.i ] ; 2 uses
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.dp ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i6.i.i, ptr %i.er, align 8, !noalias !618, !captures !13
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i.i, ptr %i.es, align 8, !noalias !618
  %i.et = add nuw nsw i64 %i.dp, 1                ; 3 uses
  store i64 %i.et, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !alias.scope !617, !noalias !606
  br i1 %i.em, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i, label %.lr.ph.split.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i: ; preds = %bb.ac
  %.sroa.0.0.copyload96.pre.i = load i64, ptr %i.a, align 8, !noalias !615
  %.sroa.5.0.copyload97.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !615 ; 3 uses
  %.pre = load ptr, ptr %.sroa.5.0.copyload97.pre.i, align 8, !noalias !602
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload97.pre.i, i64 8
  %.pre73 = load i64, ptr %.phi.trans.insert, align 8, !noalias !602
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i
  %i.eu = phi i64 [ %.pre73, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i ], [ %.sroa.4.1.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 3 uses
  %i.ev = phi ptr [ %.pre, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i ], [ %.sroa.0.0197.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 2 uses
  %.sroa.5.0.copyload101.i = phi ptr [ %.sroa.5.0.copyload97.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i ], [ %i.dl, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 5 uses
  %.sroa.0.0.copyload100.i = phi i64 [ %.sroa.0.0.copyload96.pre.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i ], [ 4, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 2 uses
  %.sroa.12.0.copyload99.i = phi i64 [ %i.et, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.loopexit.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskTxFPE6q5z6_6uu_seq.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !606
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload101.i, i64 8 ; 3 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.split.i.i.i.backedge, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.i
  %i.ex = phi i64 [ 0, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCs6JMX4GRUq9U_4core3str4iter5SplitcEE9from_iterCskTxFPE6q5z6_6uu_seq.exit.thread.i ], [ %i.fm, %.lr.ph.split.i.i.i.backedge ] ; 4 uses
  %i.ey = sub nuw i64 %i.eu, %i.ex                ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ex ; 2 uses
  %i.fa = icmp samesign ult i64 %i.ey, 16
  br i1 %i.fa, label %.preheader.i.i.i.i, label %bb.ad

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i59.i

bb.ad:                                            ; preds = %.lr.ph.split.i.i.i
  %i.fb = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ez, i64 noundef range(i64 0, -9223372036854775808) %i.ey) #19, !noalias !619
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.ae, %.lr.ph.i.i.i59.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i59.i ], [ %i.ey, %bb.ae ]
  %.sroa.0.1.i.i.i60.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i59.i ], [ 0, %bb.ae ]
  %i.fc = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i60.i, 0
  %i.fd = insertvalue { i64, i64 } %i.fc, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i59.i:                                 ; preds = %.preheader.i.i.i.i, %bb.ae
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.fh, %bb.ae ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.01.05.i.i.i.i
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !620, !noalias !619, !noundef !4
  %i.fg = icmp eq i8 %i.ff, 46
  br i1 %i.fg, label %._crit_edge.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i59.i
  %i.fh = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.fh, %i.ey
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i59.i

_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.ad
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.fd, %._crit_edge.i.i.i.i ], [ %i.fb, %bb.ad ] ; 2 uses
  %i.fi = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.fj = trunc nuw i64 %i.fi to i1
  br i1 %i.fj, label %bb.af, label %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.af:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i
  %i.fk = extractvalue { i64, i64 } %.merged.i.i.i.i, 1 ; 2 uses
  %i.fl = add i64 %i.ex, 1
  %i.fm = add i64 %i.fl, %i.fk                    ; 2 uses
  %.not12.i.i.i = icmp ugt i64 %i.fm, %i.eu       ; 2 uses
  %i.fn = add i64 %i.fk, %i.ex                    ; 5 uses
  %or.cond.i.not.i.i = icmp ult i64 %i.fn, %i.eu
  br i1 %or.cond.i.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not12.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i, label %.lr.ph.split.i.i.i.backedge

bb.ah:                                            ; preds = %bb.af
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.fn
  %lhsc.i.i = load i8, ptr %i.fo, align 1, !alias.scope !621, !noalias !602
  %i.fp = icmp eq i8 %lhsc.i.i, 46                ; 2 uses
  %brmerge.i.i = or i1 %.not12.i.i.i, %i.fp
  br i1 %brmerge.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.i, label %.lr.ph.split.i.i.i.backedge

.lr.ph.split.i.i.i.backedge:                      ; preds = %bb.ah, %bb.ag
  br label %.lr.ph.split.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.ah
  br i1 %i.fp, label %bb.ai, label %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i

bb.ai:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.i
  switch i64 %i.fn, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i [
    i64 0, label %bb.ak
    i64 1, label %bb.al
  ]

_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i: ; preds = %bb.ag, %_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr6memchr.exit.i.i.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.i
  %i.fq = load i64, ptr %i.ew, align 8, !noalias !602, !noundef !4
  br label %bb.aj

bb.aj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i, %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i
  %.sroa.024.0.i = phi i64 [ %i.fy, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i ] ; 3 uses
  %.sroa.022.0.i = phi i64 [ %.sroa.022.1.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i ], [ %i.fq, %_RINvMNtCs6JMX4GRUq9U_4core3stre4findcECskTxFPE6q5z6_6uu_seq.exit.thread.i ] ; 2 uses
  %i.fr = icmp ult i64 %.sroa.12.0.copyload99.i, 576460752303423488
  call void @llvm.assume(i1 %i.fr)
  %i.fs = icmp eq i64 %.sroa.12.0.copyload99.i, 2
  br i1 %i.fs, label %bb.am, label %bb.bb

bb.ak:                                            ; preds = %bb.ai
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i

bb.al:                                            ; preds = %bb.ai
  %i.ft = load i64, ptr %i.ew, align 8, !noalias !602, !noundef !4
  %.not.i61.i = icmp eq i64 %i.ft, 0
  br i1 %.not.i61.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.i: ; preds = %bb.al
  %i.fu = load ptr, ptr %.sroa.5.0.copyload101.i, align 8, !noalias !602, !nonnull !4, !noundef !4
  %rhsc117.i = load i8, ptr %i.fu, align 1, !noalias !602
  %rhsc117.fr.i = freeze i8 %rhsc117.i
  %i.fv = icmp eq i8 %rhsc117.fr.i, 45
  %spec.select.i = select i1 %i.fv, i64 2, i64 1
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.i, %bb.al, %bb.ak, %bb.ai
  %.sroa.022.1.i = phi i64 [ %i.fn, %bb.ai ], [ 1, %bb.ak ], [ %spec.select.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit64.i ], [ 1, %bb.al ]
  %i.fw = load i64, ptr %i.ew, align 8, !noalias !602, !noundef !4
  %i.fx = xor i64 %i.fn, -1
  %i.fy = add i64 %i.fw, %i.fx
  br label %bb.aj

bb.am:                                            ; preds = %bb.aj
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload101.i, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8, !noalias !602, !nonnull !4, !noundef !4 ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload101.i, i64 24
  %i.gc = load i64, ptr %i.gb, align 8, !noalias !602, !noundef !4 ; 6 uses
  switch i64 %i.gc, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a
    i64 1, label %bb.an
  ]

bb.an:                                            ; preds = %bb.am
  %i.gd = load i8, ptr %i.ga, align 1, !alias.scope !622, !noalias !602, !noundef !4 ; 2 uses
  switch i8 %i.gd, label %bb.ao [
    i8 43, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a
    i8 45, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a
  ]

thread-pre-split.i.i:                             ; preds = %bb.am
  %.pr.i.i = load i8, ptr %i.ga, align 1, !alias.scope !622, !noalias !602
  br label %bb.ao

bb.ao:                                            ; preds = %thread-pre-split.i.i, %bb.an
  %i.ge = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.gd, %bb.an ]
  switch i8 %i.ge, label %bb.av [
    i8 43, label %bb.ap
    i8 45, label %bb.aq
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  %i.gg = add nsw i64 %i.gc, -1
  br label %bb.av

bb.aq:                                            ; preds = %bb.ao
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.gi = add nsw i64 %i.gc, -1                   ; 3 uses
  %i.gj = icmp samesign ult i64 %i.gc, 17
  br i1 %i.gj, label %.preheader114.i.i, label %.lr.ph.i.i

.preheader114.i.i:                                ; preds = %bb.aq
  %.not103137.i.i = icmp eq i64 %i.gi, 0
  br i1 %.not103137.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.lr.ph141.i.i

.lr.ph.i.i:                                       ; preds = %bb.aq, %bb.at
  %.sroa.0.1136.i.i = phi ptr [ %i.gk, %bb.at ], [ %i.gh, %bb.aq ] ; 2 uses
  %.sroa.26.1135.i.i = phi i64 [ %i.gl, %bb.at ], [ %i.gi, %bb.aq ]
  %.sroa.084.0134.i.i = phi i64 [ %i.gw, %bb.at ], [ 0, %bb.aq ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i.i, i64 1
  %i.gl = add nsw i64 %.sroa.26.1135.i.i, -1      ; 2 uses
  %i.gm = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i.i, i64 10) ; 2 uses
  %i.gn = extractvalue { i64, i1 } %i.gm, 0
  %i.go = extractvalue { i64, i1 } %i.gm, 1
  br i1 %i.go, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %bb.ar, !prof !9

bb.ar:                                            ; preds = %.lr.ph.i.i
  %i.gp = load i8, ptr %.sroa.0.1136.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.gq = zext i8 %i.gp to i32
  %i.gr = add nsw i32 %i.gq, -48                  ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 10
  br i1 %i.gs, label %bb.as, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a

bb.as:                                            ; preds = %bb.ar
  %i.gt = zext nneg i32 %i.gr to i64
  %i.gu = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.gn, i64 %i.gt) ; 2 uses
  %i.gv = extractvalue { i64, i1 } %i.gu, 1
  br i1 %i.gv, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %bb.at, !prof !9

bb.at:                                            ; preds = %bb.as
  %i.gw = extractvalue { i64, i1 } %i.gu, 0       ; 2 uses
  %.not102.i.i = icmp eq i64 %i.gl, 0
  br i1 %.not102.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.lr.ph.i.i

.lr.ph141.i.i:                                    ; preds = %.preheader114.i.i, %bb.au
  %.sroa.0.2140.i.i = phi ptr [ %i.hd, %bb.au ], [ %i.gh, %.preheader114.i.i ] ; 2 uses
  %.sroa.26.2139.i.i = phi i64 [ %i.hc, %bb.au ], [ %i.gi, %.preheader114.i.i ]
  %.sroa.084.2138.i.i = phi i64 [ %i.hf, %bb.au ], [ 0, %.preheader114.i.i ]
  %i.gx = load i8, ptr %.sroa.0.2140.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.gy = zext i8 %i.gx to i32
  %i.gz = add nsw i32 %i.gy, -48                  ; 2 uses
  %i.ha = icmp ult i32 %i.gz, 10
  br i1 %i.ha, label %bb.au, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a

bb.au:                                            ; preds = %.lr.ph141.i.i
  %i.hb = mul i64 %.sroa.084.2138.i.i, 10
  %i.hc = add nsw i64 %.sroa.26.2139.i.i, -1      ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i, i64 1
  %i.he = zext nneg i32 %i.gz to i64
  %i.hf = sub i64 %i.hb, %i.he                    ; 2 uses
  %.not103.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not103.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.lr.ph141.i.i

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.26.0.i.i = phi i64 [ %i.gg, %bb.ap ], [ %i.gc, %bb.ao ] ; 4 uses
  %.sroa.0.0.i65.i = phi ptr [ %i.gf, %bb.ap ], [ %i.ga, %bb.ao ] ; 2 uses
  %i.hg = icmp samesign ult i64 %.sroa.26.0.i.i, 16
  br i1 %i.hg, label %.preheader.i.i, label %.preheader111.i.i

.preheader.i.i:                                   ; preds = %bb.av
  %.not105146.i.i = icmp eq i64 %.sroa.26.0.i.i, 0
  br i1 %.not105146.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.lr.ph150.i.i

.preheader111.i.i:                                ; preds = %bb.av, %bb.ay
  %.sroa.0.3145.i.i = phi ptr [ %i.hh, %bb.ay ], [ %.sroa.0.0.i65.i, %bb.av ] ; 2 uses
  %.sroa.26.3144.i.i = phi i64 [ %i.hi, %bb.ay ], [ %.sroa.26.0.i.i, %bb.av ]
  %.sroa.084.3143.i.i = phi i64 [ %i.ht, %bb.ay ], [ 0, %bb.av ]
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i, i64 1
  %i.hi = add nsw i64 %.sroa.26.3144.i.i, -1      ; 2 uses
  %i.hj = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i, i64 10) ; 2 uses
  %i.hk = extractvalue { i64, i1 } %i.hj, 0
  %i.hl = extractvalue { i64, i1 } %i.hj, 1
  br i1 %i.hl, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %bb.aw, !prof !9

bb.aw:                                            ; preds = %.preheader111.i.i
  %i.hm = load i8, ptr %.sroa.0.3145.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add nsw i32 %i.hn, -48                  ; 2 uses
  %i.hp = icmp ult i32 %i.ho, 10
  br i1 %i.hp, label %bb.ax, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a

bb.ax:                                            ; preds = %bb.aw
  %i.hq = zext nneg i32 %i.ho to i64
  %i.hr = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.hk, i64 %i.hq) ; 2 uses
  %i.hs = extractvalue { i64, i1 } %i.hr, 1
  br i1 %i.hs, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %bb.ay, !prof !9

bb.ay:                                            ; preds = %bb.ax
  %i.ht = extractvalue { i64, i1 } %i.hr, 0       ; 2 uses
  %.not104.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not104.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.preheader111.i.i

.lr.ph150.i.i:                                    ; preds = %.preheader.i.i, %bb.az
  %.sroa.0.4149.i.i = phi ptr [ %i.ia, %bb.az ], [ %.sroa.0.0.i65.i, %.preheader.i.i ] ; 2 uses
  %.sroa.26.4148.i.i = phi i64 [ %i.hz, %bb.az ], [ %.sroa.26.0.i.i, %.preheader.i.i ]
  %.sroa.084.4147.i.i = phi i64 [ %i.ic, %bb.az ], [ 0, %.preheader.i.i ]
  %i.hu = load i8, ptr %.sroa.0.4149.i.i, align 1, !alias.scope !622, !noalias !602, !noundef !4
  %i.hv = zext i8 %i.hu to i32
  %i.hw = add nsw i32 %i.hv, -48                  ; 2 uses
  %i.hx = icmp ult i32 %i.hw, 10
  br i1 %i.hx, label %bb.az, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a

bb.az:                                            ; preds = %.lr.ph150.i.i
  %i.hy = mul i64 %.sroa.084.4147.i.i, 10
  %i.hz = add nsw i64 %.sroa.26.4148.i.i, -1      ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i, i64 1
  %i.ib = zext nneg i32 %i.hw to i64
  %i.ic = add i64 %i.hy, %i.ib                    ; 2 uses
  %.not105.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not105.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, label %.lr.ph150.i.i

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a: ; preds = %bb.at, %bb.as, %bb.ar, %.lr.ph.i.i, %bb.au, %.lr.ph141.i.i, %bb.ay, %bb.ax, %bb.aw, %.preheader111.i.i, %bb.az, %.lr.ph150.i.i, %.preheader.i.i, %.preheader114.i.i, %bb.an, %bb.an, %bb.am
  %.sink.i.i = phi i64 [ 0, %bb.an ], [ %i.hf, %bb.au ], [ 0, %.lr.ph150.i.i ], [ 0, %.preheader.i.i ], [ 0, %bb.ax ], [ 0, %.preheader114.i.i ], [ %i.gc, %bb.am ], [ 0, %bb.an ], [ %i.ic, %bb.az ], [ 0, %bb.aw ], [ 0, %.preheader111.i.i ], [ %i.ht, %bb.ay ], [ 0, %.lr.ph141.i.i ], [ %i.gw, %bb.at ], [ 0, %bb.ar ], [ 0, %.lr.ph.i.i ], [ 0, %bb.as ] ; 3 uses
  %3 = call i64 @llvm.smax.i64(i64 %.sink.i.i, i64 0)
  %.sroa.022.2.i = add i64 %3, %.sroa.022.0.i     ; 2 uses
  %i.id = icmp slt i64 %.sink.i.i, %.sroa.024.0.i
  br i1 %i.id, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a
  %i.ie = zext i64 %.sroa.024.0.i to i128
  %i.if = sext i64 %.sink.i.i to i128
  %i.ig = sub nsw i128 %i.ie, %i.if               ; 2 uses
  %or.cond.i = icmp ugt i128 %i.ig, 18446744073709551615
  %i.ih = trunc nuw i128 %i.ig to i64
  %.sroa.024.1.i = select i1 %or.cond.i, i64 0, i64 %i.ih
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a, %bb.aj
  %.sroa.024.2.i = phi i64 [ %.sroa.024.1.i, %bb.ba ], [ %.sroa.024.0.i, %bb.aj ], [ 0, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a ] ; 2 uses
  %.sroa.022.3.i = phi i64 [ %.sroa.022.2.i, %bb.ba ], [ %.sroa.022.0.i, %bb.aj ], [ %.sroa.022.2.i, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.a ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !alias.scope !602
  %i.ii = icmp eq i64 %.sroa.0.0.copyload100.i, 0
  br i1 %i.ii, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ij = shl nuw i64 %.sroa.0.0.copyload100.i, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload101.i, i64 noundef %i.ij, i64 noundef range(i64 1, -9223372036854775807) 8) #19, !noalias !602
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  %.val.i.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !623, !noalias !601, !noundef !4 ; 2 uses
  %i.ik = icmp eq i64 %.val.i.i, 0
  br i1 %i.ik, label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i
  %.val1.i.i = load ptr, ptr %i.n, align 8, !alias.scope !623, !noalias !601, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !624
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit

bb.be:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit57.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCskTxFPE6q5z6_6uu_seq.exit53.i
  %i.il = icmp samesign ult i64 %.sroa.11.0.i, 16
  br i1 %i.il, label %.lr.ph.i.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.be, %bb.bf
  %.sroa.01.05.i.i.i = phi i64 [ %i.ip, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.01.05.i.i.i
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !625, !noalias !602, !noundef !4
  %i.io = icmp eq i8 %i.in, 46
  br i1 %i.io, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i
  %i.ip = add nuw nsw i64 %.sroa.01.05.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ip, %.sroa.11.0.i
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i69.i, label %.lr.ph.i.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i: ; preds = %bb.be
  %i.iq = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i) #19, !noalias !602
  %i.ir = extractvalue { i64, i64 } %i.iq, 0
  %i.is = icmp eq i64 %i.ir, 1
  br i1 %i.is, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i

.lr.ph.i.i69.i:                                   ; preds = %bb.bf, %bb.bg
  %.sroa.01.05.i.i70.i = phi i64 [ %i.iw, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 %.sroa.01.05.i.i70.i
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !626, !noalias !602, !noundef !4
  %i.iv = icmp eq i8 %i.iu, 112
  br i1 %i.iv, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %bb.bg

bb.bg:                                            ; preds = %.lr.ph.i.i69.i
  %i.iw = add nuw nsw i64 %.sroa.01.05.i.i70.i, 1 ; 2 uses
  %exitcond.not.i.i71.i = icmp eq i64 %i.iw, %.sroa.11.0.i
  br i1 %exitcond.not.i.i71.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i, label %.lr.ph.i.i69.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  %i.ix = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 112, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.11.0.i) #19, !noalias !602
  %i.iy = extractvalue { i64, i64 } %i.ix, 0
  %i.iz = icmp eq i64 %i.iy, 1
  br i1 %i.iz, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i: ; preds = %bb.bg, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i
  %.sroa.018.0.i = phi i64 [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i ], [ 1, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i ], [ 1, %bb.bg ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false), !alias.scope !602
  call void @llvm.experimental.noalias.scope.decl(metadata !627)
  %.val.i73.i = load i64, ptr %i.b, align 8, !range !5, !alias.scope !627, !noalias !601, !noundef !4 ; 2 uses
  %i.ja = icmp eq i64 %.val.i73.i, 0
  br i1 %i.ja, label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit, label %bb.bh

bb.bh:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef %.val.i73.i, i64 noundef range(i64 1, -9223372036854775807) 1) #19, !noalias !628
  br label %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i69.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.i
  br label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i

_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i, %bb.bd, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i, %bb.bh
  %.sroa.13.0 = phi i64 [ %.sroa.022.3.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.022.3.i, %bb.bd ], [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ 0, %bb.bh ]
  %.sroa.526.0 = phi i64 [ %.sroa.024.2.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ %.sroa.024.2.i, %bb.bd ], [ 0, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ 0, %bb.bh ]
  %.sroa.025.0 = phi i64 [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECskTxFPE6q5z6_6uu_seq.exit.i ], [ 1, %bb.bd ], [ %.sroa.018.0.i, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit72.thread114.i ], [ %.sroa.018.0.i, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !601
  store i64 %.sroa.025.0, ptr %0, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.526.0, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.014.038, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.927.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.417.037, ptr %.sroa.927.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11, i64 24, i1 false)
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %.thread39

.thread39:                                        ; preds = %bb.bi, %bb.e, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.g, %_RNvNtCskTxFPE6q5z6_6uu_seq11numberparse18compute_num_digits.exit
  ret void

bb.bi:                                            ; preds = %bb.b
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.jb, align 8
  store i64 2, ptr %0, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCsh036I4OHgIr_6uucore8features6parser10num_parser19ExtendedParserErrorNtNtBI_18extendedbigdecimal18ExtendedBigDecimalEECskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 dereferenceable(64) %i.c) #19
  br label %.thread39
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtINtB2_7AdapterINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriter9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockEENtNtB8_3fmt5Write9write_strCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.c = load i64, ptr %i.b, align 8, !range !5, !alias.scope !635, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !635, !noundef !4 ; 4 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %i.g = sub nsw i64 %i.c, %i.e
  %i.h = icmp ult i64 %2, %i.g
  br i1 %i.h, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread, label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit, !prof !12

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !637, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !637
  %i.l = add nuw i64 %i.e, %2
  store i64 %i.l, ptr %i.d, align 8, !alias.scope !637
  br label %bb.f

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.a
  %i.m = tail call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockE14write_all_coldCskTxFPE6q5z6_6uu_seq(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #18 ; 2 uses
  %.not.not = icmp eq ptr %i.m, null
  br i1 %.not.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.n, align 8, !noundef !4 ; 4 uses
  %i.o = icmp eq ptr %.val, null
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = ptrtoint ptr %.val to i64                ; 2 uses
  %i.q = and i64 %i.p, 3
  switch i64 %i.q, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.s = and i64 %i.p, 1095216660480
  %i.t = icmp ne i64 %i.s, 1095216660480
  tail call void @llvm.assume(i1 %i.r)
  tail call void @llvm.assume(i1 %i.t)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !alias.scope !638
  store i8 3, ptr %i.a, align 8, !alias.scope !638
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #19
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskTxFPE6q5z6_6uu_seq.exit.i
  store ptr %i.m, ptr %i.n, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit
  %.not6 = phi i1 [ false, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit.thread ], [ false, %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StdoutLockENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCskTxFPE6q5z6_6uu_seq.exit ], [ true, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskTxFPE6q5z6_6uu_seq.exit ]
  ret i1 %.not6
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCskTxFPE6q5z6_6uu_seq5errorNtB5_8SeqErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
end_hunk_1
