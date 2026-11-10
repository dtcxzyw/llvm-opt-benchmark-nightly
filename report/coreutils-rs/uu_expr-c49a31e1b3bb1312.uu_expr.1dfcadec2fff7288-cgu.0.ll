Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expr-c49a31e1b3bb1312.uu_expr.1dfcadec2fff7288-cgu.0?download=true
inline.NumInlined: 1053
inline.NumDeleted: 538
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_RNvXsc_NtNtCsioiJd4mgmsb_10num_bigint6bigint14multiplicationNtB7_6BigIntNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul:bb.a
  %.sroa.6.0.i = phi i64 [ %i.r, %bb.g ], [ 1, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.p, %bb.g ], [ %i.v, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ] ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !range !15, !alias.scope !2150, !noundef !4 ; 5 uses
  %.not11.i = icmp eq i64 %i.w, -1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2150, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !2150, !noundef !4
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.ab = load i64, ptr %i.x, align 8, !range !11, !alias.scope !2150, !noundef !4 ; 2 uses
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = inttoptr i64 %i.ab to ptr               ; 2 uses
  br i1 %i.ac, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.val16.i = phi ptr [ %i.y, %bb.k ], [ %i.ad, %bb.m ], [ %i.ad, %bb.l ] ; 2 uses
  %.sroa.68.0.i = phi i64 [ %i.aa, %bb.k ], [ 1, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %.sroa.05.0.i = phi ptr [ %i.y, %bb.k ], [ %i.ae, %bb.m ], [ inttoptr (i64 8 to ptr), %bb.l ] ; 2 uses
  %i.af = icmp eq i64 %.sroa.6.0.i, 0
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false), !noalias !2151
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  switch i64 %.sroa.68.0.i, label %bb.t [
    i64 0, label %bb.o
    i64 1, label %bb.s
  ]

bb.q:                                             ; preds = %bb.v, %bb.o
  %i.ag = icmp sgt i64 %i.w, 0
  br i1 %i.ag, label %bb.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ah = shl nuw i64 %i.w, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2152
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i

bb.s:                                             ; preds = %bb.p
  %i.ai = load i64, ptr %.sroa.05.0.i, align 8, !noalias !2153, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplication10scalar_mul(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.ai) #24, !noalias !2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !2151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2154
  %i.aj = icmp sgt i64 %i.w, 0
  br i1 %i.aj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit19.sink.split.i, label %_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit

bb.t:                                             ; preds = %bb.p
  %i.ak = icmp eq i64 %.sroa.6.0.i, 1
  br i1 %i.ak, label %bb.u, label %bb.v

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit19.sink.split.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i, %bb.s
  %.sink26.i = phi i64 [ %i.n, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i ], [ %i.w, %bb.s ]
  %.val12.sink.i = phi ptr [ %.val12.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i ], [ %.val16.i, %bb.s ]
  %i.al = shl nuw i64 %.sink26.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.sink.i, i64 noundef %i.al, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2152
  br label %_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit

bb.u:                                             ; preds = %bb.t
  %i.am = load i64, ptr %.sroa.0.0.i, align 8, !noalias !2155, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplication10scalar_mul(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.am) #24, !noalias !2154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !2151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2154
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i

bb.v:                                             ; preds = %bb.t
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplication4mul3(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %.sroa.6.0.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.68.0.i) #24
  br label %bb.q

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i: ; preds = %bb.u, %bb.r, %bb.q
  %i.an = icmp sgt i64 %i.n, 0
  br i1 %i.an, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit19.sink.split.i, label %_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit

_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit: ; preds = %bb.s, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit19.sink.split.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECs2zCsf9UsIrc_7uu_expr.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %i.ao = load i64, ptr %i.c, align 8, !range !15, !alias.scope !2157, !noundef !4 ; 3 uses
  %.not4.i = icmp eq i64 %i.ao, -1                ; 2 uses
  br i1 %i.m, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit
  br i1 %.not4.i, label %bb.z, label %bb.y

bb.x:                                             ; preds = %_RNvXs5_NtNtCsioiJd4mgmsb_10num_bigint7biguint14multiplicationNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Mul3mul.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %.not4.i, label %bb.ac, label %bb.ab

bb.y:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2157, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 1152921504606846976
  call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.av = load i64, ptr %i.au, align 8, !range !11, !alias.scope !2157, !noundef !4
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = xor i1 %i.aw, true
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.02.0.i = phi i1 [ %i.at, %bb.y ], [ %i.ax, %bb.z ]
  %spec.select.i = select i1 %.sroa.02.0.i, i8 1, i8 %.sroa.0.0
  br label %_RNvMso_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigInt12from_biguint.exit

bb.ab:                                            ; preds = %bb.x
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.ay, align 8, !alias.scope !2158, !noalias !2159
  call void @llvm.experimental.noalias.scope.decl(metadata !2160)
  %.not.i1 = icmp samesign ult i64 %i.ao, 2
  br i1 %.not.i1, label %_RNvMso_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigInt12from_biguint.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint9big_digit9BigDigitsECs2zCsf9UsIrc_7uu_expr.exit.i.i

bb.ac:                                            ; preds = %bb.x
  store i64 0, ptr %i.ap, align 8, !alias.scope !2157
  br label %_RNvMso_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigInt12from_biguint.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint9big_digit9BigDigitsECs2zCsf9UsIrc_7uu_expr.exit.i.i: ; preds = %bb.ab
  %.val8.i.i = load ptr, ptr %i.ap, align 8, !alias.scope !2161, !nonnull !4, !noundef !4
  %i.az = shl nuw i64 %i.ao, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i, i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) @49, i64 24, i1 false), !noalias !2156
  br label %_RNvMso_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigInt12from_biguint.exit

_RNvMso_NtCsioiJd4mgmsb_10num_bigint6bigintNtB5_6BigInt12from_biguint.exit: ; preds = %bb.aa, %bb.ac, %bb.ab, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint9big_digit9BigDigitsECs2zCsf9UsIrc_7uu_expr.exit.i.i
  %.sroa.0.1.i = phi i8 [ %spec.select.i, %bb.aa ], [ 1, %bb.ac ], [ 1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint9big_digit9BigDigitsECs2zCsf9UsIrc_7uu_expr.exit.i.i ], [ 1, %bb.ab ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !alias.scope !2163
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.0.1.i, ptr %i.ba, align 8, !alias.scope !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtNtCsioiJd4mgmsb_10num_bigint6bigint8divisionRNtB7_6BigIntNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Rem3rem(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i8, ptr %i.d, align 8, !range !20, !noundef !4 ; 2 uses
  switch i8 %i.e, label %default.unreachable50 [
    i8 0, label %.critedge.thread
    i8 1, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread
    i8 2, label %bb.b
  ]

.critedge.thread:                                 ; preds = %bb.a
  %i.f = load i64, ptr %2, align 8, !range !15, !alias.scope !2218, !noundef !4
  %.not.i.i = icmp eq i64 %i.f, -1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %bb.f

default.unreachable50:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %2, align 8, !range !15, !alias.scope !2219, !noundef !4
  %.not.i = icmp eq i64 %i.h, -1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !11, !alias.scope !2219, !noundef !4
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %.thread20.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit

.thread20.i:                                      ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %.lr.ph.preheader.i

bb.d:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !alias.scope !2219, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !2219, !noundef !4 ; 2 uses
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.d, %.thread20.i
  %.sroa.08.024.i = phi ptr [ %i.l, %.thread20.i ], [ %i.m, %bb.d ]
  %.sroa.5.023.i = phi i64 [ 8, %.thread20.i ], [ %i.p, %bb.d ]
  %i.r = load i64, ptr %.sroa.08.024.i, align 8, !noundef !4
  %i.s = icmp eq i64 %.sroa.5.023.i, 8
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit: ; preds = %.lr.ph.preheader.i, %bb.d, %bb.c
  %.sroa.7.0 = phi i64 [ 0, %bb.c ], [ 0, %bb.d ], [ %i.r, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.03.0 = phi i1 [ true, %bb.c ], [ true, %bb.d ], [ %i.s, %.lr.ph.preheader.i ]
  %i.t = icmp ult i64 %.sroa.7.0, 4294967296
  %or.cond7 = and i1 %.sroa.03.0, %i.t
  br i1 %or.cond7, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread, label %.critedge

.critedge:                                        ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit
  %i.u = icmp eq i8 %i.e, 2
  br i1 %i.u, label %bb.g, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit

bb.e:                                             ; preds = %.critedge.thread
  %i.v = load i64, ptr %i.g, align 8, !range !11, !alias.scope !2218, !noundef !4
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread19.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread19.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i

bb.f:                                             ; preds = %.critedge.thread
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !2218, !noundef !4 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %bb.f
  %i.ab = load ptr, ptr %i.g, align 8, !alias.scope !2218, !nonnull !4, !noundef !4
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit.thread

bb.g:                                             ; preds = %.critedge
  %i.ad = load i64, ptr %2, align 8, !range !15, !alias.scope !2220, !noundef !4
  %.not.i8.i = icmp eq i64 %i.ad, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i8.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = load i64, ptr %i.ae, align 8, !range !11, !alias.scope !2220, !noundef !4
  %i.ag = trunc nuw i64 %i.af to i1
  br i1 %i.ag, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.thread25.i, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.thread25.i: ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !2220, !noundef !4 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.i

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.i: ; preds = %bb.i
  %i.al = load ptr, ptr %i.ae, align 8, !alias.scope !2220, !nonnull !4, !noundef !4
  %i.am = icmp eq i64 %i.aj, 1
  br i1 %i.am, label %bb.j, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit.thread

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i: ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread19.i
  %.sroa.01.0.lcssa.i18.i.in = phi ptr [ %i.x, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread19.i ], [ %i.ab, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i ]
  %.sroa.01.0.lcssa.i18.i = load i64, ptr %.sroa.01.0.lcssa.i18.i.in, align 8, !noundef !4 ; 2 uses
  %i.an = icmp sgt i64 %.sroa.01.0.lcssa.i18.i, -1
  br i1 %i.an, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit.thread

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread: ; preds = %bb.e, %bb.f, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i
  %.sroa.01.0.lcssa.i18.i57 = phi i64 [ %.sroa.01.0.lcssa.i18.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.ao = sub nsw i64 0, %.sroa.01.0.lcssa.i18.i57
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit

bb.j:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.thread25.i
  %.sroa.01.0.lcssa.i1224.in.i = phi ptr [ %i.ah, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.thread25.i ], [ %i.al, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit15.i ]
  %.sroa.01.0.lcssa.i1224.i = load i64, ptr %.sroa.01.0.lcssa.i1224.in.i, align 8, !noundef !4 ; 2 uses
  %i.ap = icmp sgt i64 %.sroa.01.0.lcssa.i1224.i, -1
  br label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit: ; preds = %.critedge, %bb.h, %bb.i, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread, %bb.j
  %.sroa.9.0.i = phi i64 [ %i.ao, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread ], [ 0, %bb.h ], [ %.sroa.01.0.lcssa.i1224.i, %bb.j ], [ 0, %.critedge ], [ 0, %bb.i ] ; 3 uses
  %.sroa.0.0.i = phi i1 [ true, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread.i.thread ], [ true, %bb.h ], [ %i.ap, %bb.j ], [ true, %.critedge ], [ true, %bb.i ]
  %i.aq = add i64 %.sroa.9.0.i, 2147483648
  %or.cond = icmp ult i64 %i.aq, 4294967296
  %or.cond8 = select i1 %.sroa.0.0.i, i1 %or.cond, i1 false
  br i1 %or.cond8, label %bb.ah, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint6bigint7convertNtB7_6BigIntNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_i64.exit.thread

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread: ; preds = %bb.a, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit
  %.sroa.7.054 = phi i64 [ %.sroa.7.0, %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit ], [ 0, %bb.a ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2221)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2222)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i8, ptr %i.ar, align 8, !range !20, !alias.scope !2222, !noundef !4 ; 2 uses
  %i.at = load i64, ptr %1, align 8, !range !15, !alias.scope !2222, !noundef !4
  %.not.i10 = icmp eq i64 %i.at, -1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !2222 ; 6 uses
  br i1 %.not.i10, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread
  %i.ax = load ptr, ptr %i.au, align 8, !alias.scope !2222, !nonnull !4, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2223)
  switch i64 %i.aw, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i [
    i64 0, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  %i.ay = load i64, ptr %i.ax, align 8, !alias.scope !2223, !noalias !2224, !noundef !4
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.k
  %i.az = shl nuw nsw i64 %i.aw, 3                ; 3 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !2225
  %i.ba = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.az, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2225 ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.az) #26, !noalias !2226
  unreachable

bb.n:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr nonnull readonly align 8 %i.ax, i64 %i.az, i1 false), !noalias !2227
  %i.bc = ptrtoint ptr %i.ba to i64
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

bb.o:                                             ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.thread
  %i.bd = load i64, ptr %i.au, align 8, !range !11, !alias.scope !2222, !noundef !4
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i: ; preds = %bb.o, %bb.n, %bb.l, %bb.k
  %.sroa.10.0.i = phi i64 [ %i.aw, %bb.o ], [ %i.aw, %bb.n ], [ %i.ay, %bb.l ], [ undef, %bb.k ] ; 3 uses
  %.sroa.7.0.i = phi i64 [ %i.bd, %bb.o ], [ %i.bc, %bb.n ], [ 1, %bb.l ], [ %i.aw, %bb.k ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ -1, %bb.o ], [ %i.aw, %bb.n ], [ -1, %bb.l ], [ -1, %bb.k ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2229
  store i64 %.sroa.01.0.i, ptr %i.c, align 8, !noalias !2230
  %.sroa.0.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.7.0.i, ptr %.sroa.0.sroa.4.0..sroa_idx.i, align 8, !noalias !2230
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 %.sroa.10.0.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8, !noalias !2230
  %i.be = icmp eq i64 %.sroa.7.054, 0
  %i.bf = inttoptr i64 %.sroa.7.0.i to ptr        ; 3 uses
  br i1 %i.be, label %bb.p, label %bb.q, !prof !6

bb.p:                                             ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @74, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #25, !noalias !2231
  unreachable

bb.q:                                             ; preds = %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.i, -1
  br i1 %.not.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bg = trunc nuw i64 %.sroa.7.0.i to i1
  br i1 %i.bg, label %.lr.ph.preheader.i.i.i, label %_RNvXs39_NtNtCsioiJd4mgmsb_10num_bigint6bigint8divisionRNtB8_6BigIntINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemmE3rem.exit

bb.s:                                             ; preds = %bb.q
  %i.bh = shl nuw nsw i64 %.sroa.10.0.i, 3
  %i.bi = icmp eq i64 %.sroa.10.0.i, 0
  br i1 %i.bi, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.s, %bb.r
  %.val417.i.i = phi ptr [ %i.bf, %bb.s ], [ inttoptr (i64 1 to ptr), %bb.r ]
  %.sroa.02.021.i.i.i = phi ptr [ %i.bf, %bb.s ], [ %.sroa.0.sroa.5.0..sroa_idx.i, %bb.r ] ; 2 uses
  %.sroa.5.020.i.i.i = phi i64 [ %i.bh, %bb.s ], [ 8, %bb.r ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.02.021.i.i.i, i64 %.sroa.5.020.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.014.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ]
  %.sroa.4.013.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i ], [ %i.bj, %.lr.ph.preheader.i.i.i ]
  %i.bk = getelementptr inbounds i8, ptr %.sroa.4.013.i.i.i, i64 -8 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !2229, !noundef !4
  %i.bm = call { i64, i64 } asm inteldialect "div ${2:q}", "=&{dx},=&{ax},r,0,1,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 0, 4294967296) %.sroa.7.054, i64 %.sroa.0.014.i.i.i, i64 %i.bl) #28, !srcloc !2232
  %i.bn = extractvalue { i64, i64 } %i.bm, 0      ; 2 uses
  %i.bo = icmp eq ptr %.sroa.02.021.i.i.i, %i.bk
  br i1 %i.bo, label %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i, label %.lr.ph.i.i.i

_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.s
  %.val4.i.i = phi ptr [ %i.bf, %bb.s ], [ %.val417.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ 0, %bb.s ], [ %i.bn, %.lr.ph.i.i.i ] ; 3 uses
  %i.bp = icmp ne i64 %.sroa.0.0.lcssa.i.i.i, 0   ; 2 uses
  %i.bq = icmp sgt i64 %.sroa.01.0.i, 0
  br i1 %i.bq, label %bb.t, label %_RNvXs39_NtNtCsioiJd4mgmsb_10num_bigint6bigint8divisionRNtB8_6BigIntINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemmE3rem.exit

bb.t:                                             ; preds = %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i
  %i.br = shl nuw i64 %.sroa.01.0.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2229
  br label %_RNvXs39_NtNtCsioiJd4mgmsb_10num_bigint6bigint8divisionRNtB8_6BigIntINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemmE3rem.exit

_RNvXs39_NtNtCsioiJd4mgmsb_10num_bigint6bigint8divisionRNtB8_6BigIntINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemmE3rem.exit: ; preds = %bb.r, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i, %bb.t
  %.16.shrunk.i.i = phi i1 [ %i.bp, %bb.t ], [ %i.bp, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i ], [ false, %bb.r ]
  %.sroa.0.0.lcssa.i15.i.i = phi i64 [ %.sroa.0.0.lcssa.i.i.i, %bb.t ], [ %.sroa.0.0.lcssa.i.i.i, %_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint8division9rem_digit.exit.i.i ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2229
  call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  %i.bs = icmp ne i8 %i.as, 1
  %narrow.i.i = select i1 %i.bs, i1 %.16.shrunk.i.i, i1 false ; 2 uses
  %.sroa.6.0.i.i = zext i1 %narrow.i.i to i64
  %.sroa.0.1.i.i.i = select i1 %narrow.i.i, i8 %i.as, i8 1
  store i64 -1, ptr %0, align 8, !alias.scope !2234
end_hunk_0
