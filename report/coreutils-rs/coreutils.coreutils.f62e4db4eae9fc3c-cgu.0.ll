Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aim, ptr nonnull readonly align 8 %i.aih, i64 %i.ail, i1 false), !noalias !31775
  %i.aio = ptrtoint ptr %i.aim to i64
  br label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i

_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i: ; preds = %bb.fl, %bb.fi, %bb.fh, %bb.fg
  %.sroa.10.0.i.i.i.i = phi i64 [ undef, %bb.fh ], [ %i.aij, %bb.fl ], [ %i.aik, %bb.fi ], [ %i.aij, %bb.fg ]
  %.sroa.7.0.i.i.i.i = phi i64 [ %i.aij, %bb.fh ], [ %i.aio, %bb.fl ], [ 1, %bb.fi ], [ %i.aii, %bb.fg ]
  %.sroa.0.0.i27.i.i.i = phi i64 [ -1, %bb.fh ], [ %i.aij, %bb.fl ], [ -1, %bb.fi ], [ -1, %bb.fg ]
  store i64 %.sroa.0.0.i27.i.i.i, ptr %i.bl, align 8, !alias.scope !31769, !noalias !31778
  store i64 %.sroa.7.0.i.i.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31769, !noalias !31778
  store i64 %.sroa.10.0.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !31769, !noalias !31778
  br label %bb.fn

bb.fm:                                            ; preds = %bb.ff
  call fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4negm(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bn, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #51, !noalias !31713
  br label %bb.fn

bb.fn:                                            ; preds = %bb.fm, %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i.i
  %i.aip = call { i1, i8 } @_RNvXs1_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_14ModularSymbolsRBV_E14checked_jacobi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #45, !noalias !31713 ; 2 uses
  %i.aiq = extractvalue { i1, i8 } %i.aip, 0
  br i1 %i.aiq, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %bb.fo, !prof !11

bb.fo:                                            ; preds = %bb.fn
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1498, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1500) #50, !noalias !31713
  unreachable

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.fn
  %i.air = extractvalue { i1, i8 } %i.aip, 1
  switch i8 %i.air, label %bb.gb [
    i8 0, label %bb.fp
    i8 -1, label %bb.fr
  ]

bb.fp:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  %i.ais = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !31765
  %.cast86.i.i.i = ptrtoint ptr %i.aih to i64     ; 2 uses
  %.sroa.5.0.i.i.i.i.i182 = select i1 %.not.i.i.i.i, i64 %.cast86.i.i.i, i64 %i.ais
  %i.ait = icmp eq i64 %.sroa.5.0.i.i.i.i.i182, %i.aav
  br i1 %i.ait, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.fp
  %i.aiu = trunc nuw i64 %.cast86.i.i.i to i1
  %spec.select75.i.i.i = select i1 %i.aiu, ptr %.sroa.6.0..sroa_idx.i.i.i, ptr inttoptr (i64 8 to ptr)
  %.sroa.01.0.i.i.i68.i.i = select i1 %.not.i.i.i.i, ptr %spec.select75.i.i.i, ptr %i.aih
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i68.i.i, ptr nonnull %i.aaz, i64 %i.ahm), !noalias !31713
  %.not76.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %.not76.i.i.i, label %bb.gb, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.fp, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %.sroa.4.0.i.i.i = phi i64 [ %i.ajn, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ], [ 0, %bb.fp ], [ 0, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %i.aiv = phi i1 [ false, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ], [ true, %bb.fp ], [ true, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %.val16.i.i.i = load i64, ptr %i.bl, align 8, !range !13, !noalias !31765, !noundef !12 ; 2 uses
  %i.aiw = icmp sgt i64 %.val16.i.i.i, 0
  br i1 %i.aiw, label %bb.fq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i

bb.fq:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %.val17.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !31765, !nonnull !12, !noundef !12
  %i.aix = shl nuw i64 %.val16.i.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i.i.i, i64 noundef %i.aix, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31713
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i: ; preds = %bb.fq, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !31765
  br label %.loopexit.i.i.i

bb.fr:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  br i1 %.sroa.01.0.i.i.i, label %bb.fv, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  br i1 %.not.i.i.i.i, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.aiy = trunc nuw i64 %i.aii to i1
  br i1 %i.aiy, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

bb.fu:                                            ; preds = %bb.fs
  %i.aiz = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !31779, !noalias !31765, !noundef !12 ; 2 uses
  %i.aja = shl nuw nsw i64 %i.aiz, 3
  %i.ajb = icmp eq i64 %i.aiz, 0
  br i1 %i.ajb, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i: ; preds = %bb.fu, %bb.ft
  %.sroa.08.024.i.i.i.i.i.i = phi ptr [ %i.aih, %bb.fu ], [ %.sroa.6.0..sroa_idx.i.i.i, %bb.ft ]
  %.sroa.5.023.i.i.i.i.i.i = phi i64 [ %i.aja, %bb.fu ], [ 8, %bb.ft ]
  %i.ajc = load i64, ptr %.sroa.08.024.i.i.i.i.i.i, align 8, !noalias !31713, !noundef !12 ; 2 uses
  %.sroa.5.023.i.fr.i.i.i.i.i = freeze i64 %.sroa.5.023.i.i.i.i.i.i
  %i.ajd = icmp eq i64 %.sroa.5.023.i.fr.i.i.i.i.i, 8
  %i.aje = icmp sgt i64 %i.ajc, -1
  %narrow.i.i.i.i.i = and i1 %i.ajd, %i.aje
  br i1 %narrow.i.i.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i, label %bb.fy, !prof !31780

bb.fv:                                            ; preds = %bb.fr
  br i1 %.not.i.i.i.i, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.ajf = trunc nuw i64 %i.aii to i1
  br i1 %i.ajf, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.ajg = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !31781, !noalias !31765, !noundef !12 ; 2 uses
  %i.ajh = shl nuw nsw i64 %i.ajg, 3
  %i.aji = icmp eq i64 %i.ajg, 0
  br i1 %i.aji, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i: ; preds = %bb.fx, %bb.fw
  %.sroa.08.024.i.i.i37.i.i.i = phi ptr [ %i.aih, %bb.fx ], [ %.sroa.6.0..sroa_idx.i.i.i, %bb.fw ]
  %.sroa.5.023.i.i.i38.i.i.i = phi i64 [ %i.ajh, %bb.fx ], [ 8, %bb.fw ]
  %i.ajj = load i64, ptr %.sroa.08.024.i.i.i37.i.i.i, align 8, !noalias !31713, !noundef !12 ; 2 uses
  %.sroa.5.023.i.fr.i.i39.i.i.i = freeze i64 %.sroa.5.023.i.i.i38.i.i.i
  %i.ajk = icmp eq i64 %.sroa.5.023.i.fr.i.i39.i.i.i, 8
  %i.ajl = icmp sgt i64 %i.ajj, -1
  %narrow.i.i40.i.i.i = and i1 %i.ajk, %i.ajl
  br i1 %narrow.i.i40.i.i.i, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i, label %bb.fz, !prof !31780

bb.fy:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @980) #50, !noalias !31713
  unreachable

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i: ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %bb.fu, %bb.ft
  %.sroa.04.0.i.i.i = phi i64 [ %i.ajo, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i ], [ %i.ajc, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.i.i.i ], [ 0, %bb.fu ], [ 0, %bb.ft ]
  %i.ajm = sub i64 1, %.sroa.04.0.i.i.i
  %i.ajn = sdiv i64 %i.ajm, 4
  br label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.thread.i.i.i: ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i, %bb.fx, %bb.fw
  %.sroa.01.0.lcssa.i610.i.i4174.i.i.i = phi i64 [ %i.ajj, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i ], [ 0, %bb.fx ], [ 0, %bb.fw ]
  %i.ajo = sub nsw i64 0, %.sroa.01.0.lcssa.i610.i.i4174.i.i.i
  br label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i

bb.fz:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive8to_isizeCsl8pJiQOn4hA_9coreutils.exit44.i.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @981) #50, !noalias !31713
  unreachable

.loopexit.i.i.i:                                  ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i
  %.sroa.4.1.i.i.i = phi i64 [ %.sroa.4.0.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i ], [ 0, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ], [ 0, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.i.i.i ] ; 5 uses
  %.sroa.0.1.i.i.i = phi i1 [ %i.aiv, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit31.i.i.i ], [ true, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.thread.i.i.i ], [ true, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6BhVcHPqRq6_9num_prime6traits10ExactRoots9is_squareCsl8pJiQOn4hA_9coreutils.exit.i.i.i ]
  %.val14.i.i.i = load i64, ptr %i.bn, align 8, !range !13, !noalias !31765, !noundef !12 ; 2 uses
  %i.ajp = icmp sgt i64 %.val14.i.i.i, 0
  br i1 %i.ajp, label %bb.ga, label %_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils12pq_selfridgeCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.ga:                                            ; preds = %.loopexit.i.i.i
  %.val15.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !31765, !nonnull !12, !noundef !12
  %i.ajq = shl nuw i64 %.val14.i.i.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15.i.i.i, i64 noundef %i.ajq, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31713
  br label %_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils12pq_selfridgeCsl8pJiQOn4hA_9coreutils.exit.i.i

bb.gb:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2neCsl8pJiQOn4hA_9coreutils.exit.i.i.i, %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk), !noalias !31765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !31765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !31765
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !31765
  store i64 -1, ptr %i.bi, align 8, !noalias !31765
  store i64 1, ptr %.sink11.i.sroa.gep56.i.i.i, align 8, !noalias !31765
  store i64 2, ptr %.sroa.659.0..sroa_idx.i.i.i, align 8, !noalias !31765
  call void @llvm.experimental.noalias.scope.decl(metadata !31782)
  %i.ajr = load i64, ptr %i.bj, align 8, !range !13, !alias.scope !31782, !noalias !31783, !noundef !12
  %.not3.i77.i.i.i = icmp eq i64 %i.ajr, 0
  br i1 %.not3.i77.i.i.i, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !31784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.bi, i64 24, i1 false), !noalias !31785
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bf, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bj) #45, !noalias !31786
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !31784
  br label %_RNvXs7_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit.i.i.i

bb.gd:                                            ; preds = %bb.gb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !31784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bg, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false), !noalias !31765
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi) #45, !noalias !31787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !31784
  br label %_RNvXs7_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit.i.i.i

_RNvXs7_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit.i.i.i: ; preds = %bb.gd, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !31765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !31765
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false), !noalias !31765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !31765
  %i.ajs = xor i1 %.sroa.01.0.i.i.i, true
  %.val.i.i.i183 = load i64, ptr %i.bl, align 8, !range !13, !noalias !31765, !noundef !12 ; 2 uses
  %i.ajt = icmp sgt i64 %.val.i.i.i183, 0
  br i1 %i.ajt, label %bb.ge, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit52.i.i.i

bb.ge:                                            ; preds = %_RNvXs7_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit.i.i.i
  %.val13.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !31765, !nonnull !12, !noundef !12
  %i.aju = shl nuw i64 %.val.i.i.i183, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i, i64 noundef %i.aju, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !31713
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit52.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit52.i.i.i: ; preds = %bb.ge, %_RNvXs7_NtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB7_7BigUintNtNtNtCs6JMX4GRUq9U_4core3ops5arith3Add3add.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl), !noalias !31765
  %.pre.i.i.i = load i64, ptr %i.bn, align 8, !range !13, !alias.scope !31766, !noalias !31767
  br label %bb.fc

_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils12pq_selfridgeCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.ga, %.loopexit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn), !noalias !31765
  br i1 %.sroa.0.1.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIteryEECsl8pJiQOn4hA_9coreutils.exit.i, label %bb.gf

bb.gf:                                            ; preds = %_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils12pq_selfridgeCsl8pJiQOn4hA_9coreutils.exit.i.i
  %i.ajv = shl nsw i64 %.sroa.4.1.i.i.i, 2        ; 2 uses
  %.neg.i.i = add i64 %i.ajv, -1                  ; 2 uses
  %i.ajw = sub i64 1, %i.ajv                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl), !noalias !31788
  %i.ajx = icmp sgt i64 %i.ajw, 0
  br i1 %i.ajx, label %bb.gk, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck), !noalias !31788
  %i.ajy = icmp sgt i64 %.neg.i.i, -1
  br i1 %i.ajy, label %_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit.i.i, label %bb.gh

_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit.i.i: ; preds = %bb.gg
  store i64 -1, ptr %i.ck, align 8, !noalias !31788
  store i64 1, ptr %.sroa.5182.0..sroa_idx.i.i, align 8, !noalias !31788
  store i64 %.neg.i.i, ptr %.sroa.6183.0..sroa_idx.i.i, align 8, !noalias !31788
  call fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4negm(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #51, !noalias !31713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck), !noalias !31788
  br label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1336) #50, !noalias !31713
  unreachable

bb.gi:                                            ; preds = %bb.gk, %_RNvXsa_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_15ModularUnaryOpsRBV_E4negm.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj), !noalias !31788
  %i.ajz = call { i1, i8 } @_RNvXs1_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_14ModularSymbolsRBV_E14checked_jacobi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #45, !noalias !31713 ; 2 uses
  %i.aka = extractvalue { i1, i8 } %i.ajz, 0
  br i1 %i.aka, label %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i, label %bb.gj, !prof !11

bb.gj:                                            ; preds = %bb.gi
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1498, i64 noundef 63, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1500) #50, !noalias !31713
  unreachable

_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i: ; preds = %bb.gi
  %i.akb = extractvalue { i1, i8 } %i.ajz, 1
  switch i8 %i.akb, label %bb.gl [
    i8 0, label %bb.gm
    i8 -1, label %bb.go
    i8 1, label %bb.gp
  ], !prof !31789

bb.gk:                                            ; preds = %bb.gf
  store i64 -1, ptr %i.cl, align 8, !noalias !31788
  store i64 1, ptr %.sroa.5.0..sroa_idx.i37.i, align 8, !noalias !31788
  store i64 %i.ajw, ptr %.sroa.6.0..sroa_idx.i.i181, align 8, !noalias !31788
  br label %bb.gi

bb.gl:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @241, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1337) #50, !noalias !31713
  unreachable

bb.gm:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !31790)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31791
  %i.akc = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ahm, i64 noundef range(i64 1, 9) 8) #45, !noalias !31791 ; 3 uses
  %i.akd = icmp eq ptr %i.akc, null
  br i1 %i.akd, label %bb.gn, label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

bb.gn:                                            ; preds = %bb.gm
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ahm) #52, !noalias !31792
  unreachable

_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.gm
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.akc, ptr nonnull readonly align 8 %i.aaz, i64 %i.ahm, i1 false), !noalias !31793
  %i.ake = ptrtoint ptr %i.akc to i64
  store i64 %i.aav, ptr %i.cj, align 8, !alias.scope !31790, !noalias !31794
  store i64 %i.ake, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !alias.scope !31790, !noalias !31794
  store i64 %i.aav, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !31790, !noalias !31794
  br label %bb.gq

bb.go:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ci), !noalias !31788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !31788
  call void @_RNvXNtNtCsioiJd4mgmsb_10num_bigint7biguint8additionNtB4_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3AddRBN_E3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ci, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #45, !noalias !31713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci), !noalias !31788
  br label %bb.gq

bb.gp:                                            ; preds = %_RNvYNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtCs2FZksNATdrv_11num_modular14ModularSymbolsRB2_E6jacobiCsl8pJiQOn4hA_9coreutils.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ch), !noalias !31788
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !31788
  call void @_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionRNtB7_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubBV_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ch) #45, !noalias !31713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch), !noalias !31788
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go, %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i
  %i.akf = call { i64, i64 } @_RNvMsj_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUint14trailing_zeros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cj) #45, !noalias !31713 ; 2 uses
  %i.akg = extractvalue { i64, i64 } %i.akf, 0
  %i.akh = trunc nuw i64 %i.akg to i1
  %i.aki = extractvalue { i64, i64 } %i.akf, 1
  %.sroa.0.0.i79.i.i = select i1 %i.akh, i64 %i.aki, i64 0 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cg), !noalias !31788
  call void @llvm.experimental.noalias.scope.decl(metadata !31795)
  call void @llvm.experimental.noalias.scope.decl(metadata !31796)
  call void @llvm.experimental.noalias.scope.decl(metadata !31797)
  %i.akj = load i64, ptr %i.cj, align 8, !range !13, !alias.scope !31796, !noalias !31798, !noundef !12
  %.not27.i.i.i.i = icmp eq i64 %i.akj, -1
  br i1 %.not27.i.i.i.i, label %bb.gr, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.gq
  %i.akk = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !31796, !noalias !31798, !noundef !12 ; 2 uses
  %i.akl = icmp ult i64 %i.akk, 1152921504606846976
  call void @llvm.assume(i1 %i.akl)
  %i.akm = icmp eq i64 %i.akk, 0
  br i1 %i.akm, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i, label %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i

bb.gr:                                            ; preds = %bb.gq
  %i.akn = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !range !16, !alias.scope !31796, !noalias !31798, !noundef !12
  %i.ako = trunc nuw i64 %i.akn to i1
  br i1 %i.ako, label %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.akp = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i, align 8, !alias.scope !31796, !noalias !31798
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i: ; preds = %bb.gs, %.split.i.i.i.i
  %.sroa.10.0.i.i80.i.i = phi i64 [ %i.akp, %bb.gs ], [ undef, %.split.i.i.i.i ]
  store i64 -1, ptr %i.cg, align 8, !alias.scope !31799, !noalias !31800
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i81.i.i, align 8, !alias.scope !31799, !noalias !31800
  store i64 %.sroa.10.0.i.i80.i.i, ptr %.sroa.10.0..sroa_idx.i.i82.i.i, align 8, !alias.scope !31799, !noalias !31800
  br label %bb.gt

_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i: ; preds = %bb.gr, %.split.i.i.i.i
  %i.akq = trunc i64 %.sroa.0.0.i79.i.i to i8
  %i.akr = and i8 %i.akq, 63
  %i.aks = lshr i64 %.sroa.0.0.i79.i.i, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !31801
  store i64 -2, ptr %i.be, align 8, !noalias !31802
  store i64 %i.yd, ptr %.sroa.6.0..sroa_idx2.i.i.i, align 8, !noalias !31802
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift12biguint_shr2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.be, i64 noundef %i.aks, i8 noundef %i.akr) #45, !noalias !31803
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !31801
  br label %bb.gt

bb.gt:                                            ; preds = %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf), !noalias !31788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce), !noalias !31788
  call void @llvm.experimental.noalias.scope.decl(metadata !31804)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31805
  %i.akt = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ahm, i64 noundef range(i64 1, 9) 8) #45, !noalias !31805 ; 3 uses
  %i.aku = icmp eq ptr %i.akt, null
  br i1 %i.aku, label %bb.gu, label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit89.i.i

bb.gu:                                            ; preds = %bb.gt
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ahm) #52, !noalias !31806
  unreachable

_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit89.i.i: ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.akt, ptr nonnull readonly align 8 %i.aaz, i64 %i.ahm, i1 false), !noalias !31807
  %i.akv = ptrtoint ptr %i.akt to i64
  store i64 %i.aav, ptr %i.ce, align 8, !alias.scope !31804, !noalias !31808
  store i64 %i.akv, ptr %.sroa.7.0..sroa_idx.i87.i.i, align 8, !alias.scope !31804, !noalias !31808
  store i64 %i.aav, ptr %.sroa.10.0..sroa_idx.i88.i.i, align 8, !alias.scope !31804, !noalias !31808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd), !noalias !31788
  call void @llvm.experimental.noalias.scope.decl(metadata !31809)
  call void @llvm.experimental.noalias.scope.decl(metadata !31810)
  call void @llvm.experimental.noalias.scope.decl(metadata !31811)
  %i.akw = load i64, ptr %i.cg, align 8, !range !13, !alias.scope !31812, !noalias !31813, !noundef !12
  %.not.i.i90.i.i = icmp eq i64 %i.akw, -1
  %i.akx = load i64, ptr %.sroa.10.0..sroa_idx.i.i82.i.i, align 8, !alias.scope !31812, !noalias !31813 ; 6 uses
  br i1 %.not.i.i90.i.i, label %bb.ha, label %bb.gv

bb.gv:                                            ; preds = %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit89.i.i
  %i.aky = load ptr, ptr %.sroa.7.0..sroa_idx.i.i81.i.i, align 8, !alias.scope !31812, !noalias !31813, !nonnull !12, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31814)
  switch i64 %i.akx, label %bb.gx [
    i64 0, label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit96.i.i
    i64 1, label %bb.gw
  ]

bb.gw:                                            ; preds = %bb.gv
  %i.akz = load i64, ptr %i.aky, align 8, !alias.scope !31814, !noalias !31815, !noundef !12
  br label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit96.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.ala = shl nuw nsw i64 %i.akx, 3              ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !31816
  %i.alb = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ala, i64 noundef range(i64 1, 9) 8) #45, !noalias !31816 ; 3 uses
  %i.alc = icmp eq ptr %i.alb, null
  br i1 %i.alc, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.ala) #52, !noalias !31817
  unreachable

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.alb, ptr nonnull readonly align 8 %i.aky, i64 %i.ala, i1 false), !noalias !31815
  %i.ald = ptrtoint ptr %i.alb to i64
  br label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit96.i.i

bb.ha:                                            ; preds = %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit89.i.i
  %i.ale = load i64, ptr %.sroa.7.0..sroa_idx.i.i81.i.i, align 8, !range !16, !alias.scope !31812, !noalias !31813, !noundef !12
  br label %_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit96.i.i

_RNvXNtCsioiJd4mgmsb_10num_bigint7biguintNtB2_7BigUintNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit96.i.i: ; preds = %bb.ha, %bb.gz, %bb.gw, %bb.gv
  %.sroa.10.0.i91.i.i = phi i64 [ %i.akx, %bb.ha ], [ %i.akx, %bb.gz ], [ %i.akz, %bb.gw ], [ undef, %bb.gv ]
  %.sroa.7.0.i92.i.i = phi i64 [ %i.ale, %bb.ha ], [ %i.ald, %bb.gz ], [ 1, %bb.gw ], [ %i.akx, %bb.gv ]
  %.sroa.0.0.i93.i.i = phi i64 [ -1, %bb.ha ], [ %i.akx, %bb.gz ], [ -1, %bb.gw ], [ -1, %bb.gv ]
  store i64 %.sroa.0.0.i93.i.i, ptr %i.cd, align 8, !alias.scope !31809, !noalias !31818
  store i64 %.sroa.7.0.i92.i.i, ptr %.sroa.7.0..sroa_idx.i94.i.i, align 8, !alias.scope !31809, !noalias !31818
  store i64 %.sroa.10.0.i91.i.i, ptr %.sroa.10.0..sroa_idx.i95.i.i, align 8, !alias.scope !31809, !noalias !31818
  call fastcc void @_RNvXNtCs6BhVcHPqRq6_9num_prime9primalityNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB2_10LucasUtils6lucasmCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.cf, i64 noundef 1, i64 noundef %.sroa.4.1.i.i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ce, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cd) #45, !noalias !31713
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !31788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce), !noalias !31788
  %.sroa.0184.0.copyload.i.i = load i64, ptr %i.cf, align 8, !noalias !31788 ; 5 uses
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i177, align 8, !noalias !31788 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i178, align 8, !noalias !31788 ; 2 uses
  %.sroa.0185.0.copyload.i.i = load i64, ptr %i.ye, align 8, !noalias !31788 ; 5 uses
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !31788 ; 4 uses
end_hunk_0
