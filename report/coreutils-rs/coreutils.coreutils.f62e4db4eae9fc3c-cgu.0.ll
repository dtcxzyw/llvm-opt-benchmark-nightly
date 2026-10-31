Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt7factorsNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils:bb.a
  %i.zj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.861.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.zl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.zm = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.dn

bb.dd:                                            ; preds = %_RINvXs1o_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB7_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjEINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorTB19_jEE9from_iterINtNtNtB22_8adapters3map3MapINtB7_8IntoIteryjENCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB45_14PrimeBufferExt7factorsB19_Es_0EECsl8pJiQOn4hA_9coreutils.exit
  %.not.i150 = icmp eq i64 %.sroa.14.sroa.0.0, -1
  br i1 %.not.i150, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.zn = trunc nuw i64 %.sroa.14.sroa.5.0 to i1
  br i1 %i.zn, label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit, label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread

bb.df:                                            ; preds = %bb.dd
  %i.zo = icmp eq i64 %.sroa.14.sroa.6.0, 1
  br i1 %i.zo, label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exitthread-pre-split, label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread

_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exitthread-pre-split: ; preds = %bb.df
  %i.zp = inttoptr i64 %.sroa.14.sroa.5.0 to ptr
  %.pr = load i64, ptr %i.zp, align 8
  br label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit

_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit: ; preds = %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exitthread-pre-split, %bb.de
  %i.zq = phi i64 [ %.pr, %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exitthread-pre-split ], [ %.sroa.14.sroa.6.0, %bb.de ]
  %i.zr = icmp eq i64 %i.zq, 1
  br i1 %i.zr, label %bb.di, label %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread

_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread: ; preds = %bb.df, %bb.de, %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ei)
  store i64 %.sroa.14.sroa.0.0, ptr %i.ei, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store i64 %.sroa.14.sroa.5.0, ptr %.sroa.628.0..sroa_idx, align 8
  %.sroa.931.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  store i64 %.sroa.14.sroa.6.0, ptr %.sroa.931.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dg)
  call fastcc void @_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE5entryCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %i.dg, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ei) #45
  %i.zs = load i64, ptr %i.dg, align 8, !range !20, !noalias !30787, !noundef !12
  %i.zt = icmp eq i64 %i.zs, -2
  br i1 %i.zt, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread
  %i.zu = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.zu, align 8, !noalias !30787, !nonnull !12, !noundef !12
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %.sroa.45.0.copyload.i = load i64, ptr %.sroa.45.0..sroa_idx.i, align 8, !noalias !30787
  %i.zv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 272
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %i.zv, i64 %.sroa.45.0.copyload.i
  store i64 1, ptr %i.zw, align 8, !noalias !30788
  br label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE6insertCsl8pJiQOn4hA_9coreutils.exit

bb.dh:                                            ; preds = %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.df), !noalias !30787
  call fastcc void @_RNvMs4_NtNtNtNtCs7tKScEop1B6_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE12insert_entryCsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.df, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.dg, i64 noundef 1) #45, !noalias !30788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.df), !noalias !30787
  br label %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE6insertCsl8pJiQOn4hA_9coreutils.exit

_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE6insertCsl8pJiQOn4hA_9coreutils.exit: ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ei)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157

bb.di:                                            ; preds = %_RNvXse_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtNtCs2PbPfIYQJQA_10num_traits10identities3One6is_one.exit
  %.0.val.off.i.i155 = add i64 %.sroa.14.sroa.0.0, -1
  %switch.i.i156 = icmp ult i64 %.0.val.off.i.i155, -2
  br i1 %switch.i.i156, label %bb.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157

bb.dj:                                            ; preds = %bb.di
  %i.zx = inttoptr i64 %.sroa.14.sroa.5.0 to ptr  ; 2 uses
  %i.zy = shl nuw i64 %.sroa.14.sroa.0.0, 3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.zx) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zx, i64 noundef %i.zy, i64 noundef range(i64 1, -9223372036854775807) 8) #45
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157: ; preds = %bb.dj, %bb.di, %_RNvMsi_NtNtNtCs7tKScEop1B6_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintjE6insertCsl8pJiQOn4hA_9coreutils.exit
  %i.zz = load i64, ptr %i.xf, align 8, !noundef !12 ; 2 uses
  %i.aaa = icmp ult i64 %i.zz, 384307168202282326
  call void @llvm.assume(i1 %i.aaa)
  %i.aab = icmp eq i64 %i.zz, 0
  br i1 %i.aab, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.dk

bb.dk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit169, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false)
  %i.aac = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aac, ptr noundef nonnull align 8 dereferenceable(24) %i.ej, i64 24, i1 false)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit157, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit169
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.ek, i64 24, i1 false)
  %i.aad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %i.aad, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !30789)
  %.val2.i = load i64, ptr %i.ej, align 8, !range !19, !alias.scope !30789, !noundef !12 ; 2 uses
  %i.aae = icmp eq i64 %.val2.i, 0
  br i1 %i.aae, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit, label %bb.dl

bb.dl:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i
  %.val.i158 = load ptr, ptr %i.xe, align 8, !alias.scope !30789, !nonnull !12, !noundef !12
  %i.aaf = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i158, i64 noundef %i.aaf, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30789
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i166: ; preds = %bb.pk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eg)
  call void @llvm.experimental.noalias.scope.decl(metadata !30790)
  %.val2.i167 = load i64, ptr %i.eh, align 8, !range !19, !alias.scope !30790, !noundef !12 ; 2 uses
  %i.aag = icmp eq i64 %.val2.i167, 0
  br i1 %i.aag, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit169, label %bb.dm

bb.dm:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i166
  %.val.i160 = load ptr, ptr %i.xi, align 8, !alias.scope !30790, !nonnull !12, !noundef !12
  %i.aah = mul nuw i64 %.val2.i167, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i160, i64 noundef %i.aah, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !30790
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit169

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEECsl8pJiQOn4hA_9coreutils.exit169: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i166, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eh)
  %i.aai = load i64, ptr %i.xf, align 8, !noundef !12 ; 2 uses
  %i.aaj = icmp ult i64 %i.aai, 384307168202282326
  call void @llvm.assume(i1 %i.aaj)
  %i.aak = icmp eq i64 %i.aai, 0
  br i1 %i.aak, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i, label %bb.dk

bb.dn:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.pk
  %.sroa.16.0441 = phi i64 [ %.sroa.9.0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.16.3, %bb.pk ] ; 5 uses
  %i.aal = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.pr72, %bb.pk ] ; 2 uses
  %i.aam = add nsw i64 %i.aal, -1                 ; 3 uses
  store i64 %i.aam, ptr %i.xj, align 8
  %i.aan = load i64, ptr %i.eh, align 8, !range !19, !noundef !12
  %i.aao = icmp samesign ult i64 %i.aam, %i.aan
  call void @llvm.assume(i1 %i.aao)
  %i.aap = load ptr, ptr %i.xi, align 8, !nonnull !12, !noundef !12
  %i.aaq = icmp samesign ult i64 %i.aal, 384307168202282327
  call void @llvm.assume(i1 %i.aaq)
  %i.aar = getelementptr inbounds nuw [24 x i8], ptr %i.aap, i64 %i.aam
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 8 dereferenceable(24) %i.aar, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ef)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ef, ptr noundef nonnull align 8 dereferenceable(24) %i.eg, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !30791)
  %i.aas = load i64, ptr %i.ef, align 8, !range !13, !alias.scope !30792, !noundef !12
  %.not.i.i = icmp eq i64 %i.aas, -1
  br i1 %.not.i.i, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aat = load i64, ptr %i.xk, align 8, !range !16, !alias.scope !30792, !noundef !12
  %i.aau = trunc nuw i64 %i.aat to i1
  br i1 %i.aau, label %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.sink.split.i

bb.dp:                                            ; preds = %bb.dn
  %i.aav = load i64, ptr %i.xl, align 8, !alias.scope !30792, !noundef !12 ; 9 uses
  %i.aaw = icmp eq i64 %i.aav, 0
  br i1 %i.aaw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.thread.sink.split.i, label %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.thread12.i

_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.i: ; preds = %bb.do
  %i.aax = load i64, ptr %i.xl, align 8, !alias.scope !30791, !noundef !12 ; 2 uses
  %i.aay = trunc i64 %i.aax to i1
  br i1 %i.aay, label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit, label %.thread43.i

_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.thread12.i: ; preds = %bb.dp
  %i.aaz = load ptr, ptr %i.xk, align 8, !alias.scope !30792, !nonnull !12, !noundef !12 ; 6 uses
  %i.aba = load i64, ptr %i.aaz, align 8, !noalias !30793, !noundef !12 ; 2 uses
  %i.abb = trunc i64 %i.aba to i1
  br i1 %i.abb, label %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i, label %bb.kz

_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i: ; preds = %_RNvXsh_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUintNtCsguEJxRNro1M_11num_integer7Integer7is_even.exit.thread12.i
  %i.abc = icmp eq i64 %i.aav, 1
  br i1 %i.abc, label %_RINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB5_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit, label %bb.dq

bb.dq:                                            ; preds = %_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint7convertNtB7_7BigUintNtNtCs2PbPfIYQJQA_10num_traits4cast11ToPrimitive6to_u64.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dd), !noalias !30794
  store i64 0, ptr %i.dd, align 8, !noalias !30794
  store ptr inttoptr (i64 8 to ptr), ptr %i.xn, align 8, !noalias !30794
  store i64 0, ptr %i.xo, align 8, !noalias !30794
  br i1 %.not.i173, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  br i1 %.not18.i, label %bb.ds, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i: ; preds = %bb.dq, %bb.dr
  %.sroa.08.032.i = phi i64 [ %.sroa.8.sroa.0.0, %bb.dr ], [ 2, %bb.dq ]
  %.sroa.011.030.i = phi i64 [ %.sroa.8.sroa.5.0, %bb.dr ], [ 3, %bb.dq ]
  %.sroa.014.028.i = phi i1 [ %.sroa.8.sroa.6.0, %bb.dr ], [ false, %bb.dq ]
  %.sroa.015.026.i = phi i1 [ %i.xm, %bb.dr ], [ false, %bb.dq ]
  call void @llvm.experimental.noalias.scope.decl(metadata !30795)
  call void @llvm.experimental.noalias.scope.decl(metadata !30796)
  call void @llvm.experimental.noalias.scope.decl(metadata !30797)
  %..i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.08.032.i, i64 %.16.val) ; 7 uses
  br i1 %i.ix, label %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i, !prof !30798

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dd, i64 noundef 0, i64 noundef %..i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8) #45, !noalias !30799
  %i.abd = load i64, ptr %i.xo, align 8, !alias.scope !30800, !noalias !30794, !noundef !12 ; 5 uses
  %i.abe = load ptr, ptr %i.xn, align 8, !alias.scope !30800, !noalias !30794, !nonnull !12, !noundef !12 ; 7 uses
  %min.iters.check = icmp ult i64 %..i.i.i.i.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i
  %i.abf = ptrtoaddr ptr %i.abe to i64
  %3 = sub i64 %i.abf, %.8.val1612
  %i.abg = shl i64 %i.abd, 3
  %i.abh = add i64 %3, %i.abg
  %4 = add i64 %i.abh, -1
  %diff.check = icmp ult i64 %4, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %..i.i.i.i.i.i.i, -4           ; 4 uses
  %i.abi = add i64 %i.abd, %n.vec                 ; 2 uses
  %i.abj = getelementptr [8 x i8], ptr %i.abe, i64 %i.abd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %index ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 16
  %wide.load = load <2 x i64>, ptr %i.abk, align 8, !alias.scope !30801, !noalias !30802
  %wide.load1613 = load <2 x i64>, ptr %i.abl, align 8, !alias.scope !30801, !noalias !30802
  %i.abm = getelementptr [8 x i8], ptr %i.abj, i64 %index ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 16
  store <2 x i64> %wide.load, ptr %i.abm, align 8, !noalias !30803
  store <2 x i64> %wide.load1613, ptr %i.abn, align 8, !noalias !30803
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.abo = icmp eq i64 %index.next, %n.vec
  br i1 %i.abo, label %middle.block, label %vector.body, !llvm.loop !30148

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %..i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %vector.memcheck, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i, %middle.block
  %.ph = phi i64 [ %i.abd, %vector.memcheck ], [ %i.abd, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i ], [ %i.abi, %middle.block ] ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecyE7reserveCsl8pJiQOn4hA_9coreutils.exit.thread20.i.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter1983 = and i64 %..i.i.i.i.i.i.i, 3     ; 2 uses
  %lcmp.mod1984.not = icmp eq i64 %xtraiter1983, 0
  br i1 %lcmp.mod1984.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %i.abp = phi i64 [ %i.abt, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.0.010.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.abq, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.sroa.0.010.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter1985 = phi i64 [ %prol.iter1985.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.abq = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %i.abr = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.sroa.0.010.i.i.i.i.i.i.i.i.prol
  %.val9.i.i.i.i.i.i.i.i.prol = load i64, ptr %i.abr, align 8, !alias.scope !30801, !noalias !30802, !noundef !12
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abp
  store i64 %.val9.i.i.i.i.i.i.i.i.prol, ptr %i.abs, align 8, !noalias !30803
  %i.abt = add i64 %i.abp, 1                      ; 3 uses
  %prol.iter1985.next = add i64 %prol.iter1985, 1 ; 2 uses
  %prol.iter1985.cmp.not = icmp eq i64 %prol.iter1985.next, %xtraiter1983
  br i1 %prol.iter1985.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !30149

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa1627.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.abt, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.010.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.0.010.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.abq, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.abu = sub i64 %.sroa.0.010.i.i.i.i.i.i.i.i.ph, %..i.i.i.i.i.i.i
  %i.abv = icmp ugt i64 %i.abu, -4
  br i1 %i.abv, label %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %i.abw = phi i64 [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.010.i.i.i.i.i.i.i.i = phi i64 [ %i.ach, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.010.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %i.abx = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.sroa.0.010.i.i.i.i.i.i.i.i
  %.val9.i.i.i.i.i.i.i.i = load i64, ptr %i.abx, align 8, !alias.scope !30801, !noalias !30802, !noundef !12
  %i.aby = getelementptr inbounds nuw [8 x i8], ptr %i.abe, i64 %i.abw
  store i64 %.val9.i.i.i.i.i.i.i.i, ptr %i.aby, align 8, !noalias !30803
  %i.abz = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.sroa.0.010.i.i.i.i.i.i.i.i
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 8
  %.val9.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.aca, align 8, !alias.scope !30801, !noalias !30802, !noundef !12
  %i.acb = getelementptr [8 x i8], ptr %i.abe, i64 %i.abw
  %i.acc = getelementptr i8, ptr %i.acb, i64 8
  store i64 %.val9.i.i.i.i.i.i.i.i.1, ptr %i.acc, align 8, !noalias !30803
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.sroa.0.010.i.i.i.i.i.i.i.i
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 16
  %.val9.i.i.i.i.i.i.i.i.2 = load i64, ptr %i.ace, align 8, !alias.scope !30801, !noalias !30802, !noundef !12
  %i.acf = getelementptr [8 x i8], ptr %i.abe, i64 %i.abw
  %i.acg = getelementptr i8, ptr %i.acf, i64 16
  store i64 %.val9.i.i.i.i.i.i.i.i.2, ptr %i.acg, align 8, !noalias !30803
  %i.ach = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %.8.val, i64 %.sroa.0.010.i.i.i.i.i.i.i.i
  %i.acj = getelementptr inbounds nuw i8, ptr %i.aci, i64 24
  %.val9.i.i.i.i.i.i.i.i.3 = load i64, ptr %i.acj, align 8, !alias.scope !30801, !noalias !30802, !noundef !12
  %i.ack = getelementptr [8 x i8], ptr %i.abe, i64 %i.abw
  %i.acl = getelementptr i8, ptr %i.ack, i64 24
  store i64 %.val9.i.i.i.i.i.i.i.i.3, ptr %i.acl, align 8, !noalias !30803
  %i.acm = add i64 %i.abw, 4                      ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i174.3 = icmp eq i64 %i.ach, %..i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i174.3, label %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !30150

_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i
  %.val7.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IteryEEENtNtNtB8_6traits8iterator8Iterator9size_hintCsl8pJiQOn4hA_9coreutils.exit.i.i.i.i ], [ %i.abi, %middle.block ], [ %.lcssa1627.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.acm, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  store i64 %.val7.i.i.i.i.i.i.i.i, ptr %i.xo, align 8, !alias.scope !30800, !noalias !30804
  br label %bb.ds

bb.ds:                                            ; preds = %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i, %bb.dr
  %i.acn = phi i64 [ %.val7.i.i.i.i.i.i.i.i, %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ 0, %bb.dr ]
  %.sroa.011.031.i = phi i64 [ %.sroa.011.030.i, %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.8.sroa.5.0, %bb.dr ] ; 2 uses
  %.sroa.014.029.i = phi i1 [ %.sroa.014.028.i, %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ %.sroa.8.sroa.6.0, %bb.dr ]
  %.sroa.015.027.i = phi i1 [ %.sroa.015.026.i, %_RNvXs1_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VecyEINtB5_10SpecExtendRyINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtNtB1p_5slice4iter4IteryEEE11spec_extendCsl8pJiQOn4hA_9coreutils.exit.i ], [ %i.xm, %bb.dr ]
  %.not19.i = icmp eq i64 %.sroa.011.031.i, 0
  br i1 %.not19.i, label %.loopexit105, label %.preheader.i

.loopexit105:                                     ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i, %bb.ds
  %i.aco = phi i64 [ %i.acn, %bb.ds ], [ %i.ath, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecyE8push_mutCsl8pJiQOn4hA_9coreutils.exit.i ] ; 3 uses
  %i.acp = load ptr, ptr %i.xn, align 8, !noalias !30794, !nonnull !12, !noundef !12 ; 4 uses
  %i.acq = load i64, ptr %i.dd, align 8, !range !19, !noalias !30794, !noundef !12 ; 4 uses
  %i.acr = icmp ult i64 %i.aco, 1152921504606846976
  call void @llvm.assume(i1 %i.acr)
  %.idx1621.a = shl nuw nsw i64 %i.aco, 3
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acp, i64 %.idx1621.a
  %.not.not.not.not.i.not.i1601 = icmp eq i64 %i.aco, 0
  br i1 %.not.not.not.not.i.not.i1601, label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIteryENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_3all5checkyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB2x_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEs_0E0INtNtNtB17_3ops12control_flow11ControlFlowuEECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

bb.dt:                                            ; preds = %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator3all5checkyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB1k_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEs_0E0Csl8pJiQOn4hA_9coreutils.exit.i.i
  %.not.not.not.not.i.not.i = icmp eq ptr %i.acu, %i.acs
  br i1 %.not.not.not.not.i.not.i, label %_RINvXs4_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB6_8IntoIteryENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8try_folduNCINvNvBZ_3all5checkyNCINvYNtNtCs6BhVcHPqRq6_9num_prime6buffer11NaiveBufferNtB2x_14PrimeBufferExt8is_primeNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintEs_0E0INtNtNtB17_3ops12control_flow11ControlFlowuEECsl8pJiQOn4hA_9coreutils.exit.thread.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i: ; preds = %.loopexit105, %bb.dt
  %.sroa.68.0.i1602 = phi ptr [ %i.acu, %bb.dt ], [ %i.acp, %.loopexit105 ] ; 2 uses
  %i.act = load i64, ptr %.sroa.68.0.i1602, align 8, !noalias !30805, !noundef !12 ; 2 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %.sroa.68.0.i1602, i64 8 ; 2 uses
  %i.acv = icmp ne i64 %i.act, 0
  %..i.i.i.i.i = zext i1 %i.acv to i64
  %i.acw = inttoptr i64 %..i.i.i.i.i to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.da), !noalias !30806
  call void @llvm.experimental.noalias.scope.decl(metadata !30807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co), !noalias !30806
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cz), !noalias !30808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cy), !noalias !30808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !30808
  call void @_RNvXs0_NtNtCsioiJd4mgmsb_10num_bigint7biguint11subtractionRNtB7_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3SubBV_E3sub(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.cy) #45, !noalias !30809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cy), !noalias !30808
  %i.acx = call { i64, i64 } @_RNvMsj_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUint14trailing_zeros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cz) #45, !noalias !30809 ; 2 uses
  %i.acy = extractvalue { i64, i64 } %i.acx, 0
  %i.acz = trunc nuw i64 %i.acy to i1
  %i.ada = extractvalue { i64, i64 } %i.acx, 1
  %.sroa.0.0.i.i.i.i.i.i = select i1 %i.acz, i64 %i.ada, i64 0 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cx), !noalias !30808
  call void @llvm.experimental.noalias.scope.decl(metadata !30810)
  call void @llvm.experimental.noalias.scope.decl(metadata !30811)
  call void @llvm.experimental.noalias.scope.decl(metadata !30812)
  %i.adb = load i64, ptr %i.cz, align 8, !range !13, !alias.scope !30811, !noalias !30813, !noundef !12
  %.not27.i.i.i.i.i.i.i = icmp eq i64 %i.adb, -1
  br i1 %.not27.i.i.i.i.i.i.i, label %bb.du, label %.split.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.adc = load i64, ptr %i.xq, align 8, !alias.scope !30811, !noalias !30813, !noundef !12 ; 2 uses
  %i.add = icmp ult i64 %i.adc, 1152921504606846976
  call void @llvm.assume(i1 %i.add)
  %i.ade = icmp eq i64 %i.adc, 0
  br i1 %i.ade, label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i.i.i.i, label %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i.i.i.i

bb.du:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintECsl8pJiQOn4hA_9coreutils.exit.i.i.i.i.i
  %i.adf = load i64, ptr %i.xr, align 8, !range !16, !alias.scope !30811, !noalias !30813, !noundef !12
  %i.adg = trunc nuw i64 %i.adf to i1
  br i1 %i.adg, label %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i.i.i.i, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.adh = load i64, ptr %i.xq, align 8, !alias.scope !30811, !noalias !30813
  br label %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i.i.i.i

_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i.i.i.i: ; preds = %bb.dv, %.split.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi i64 [ %i.adh, %bb.dv ], [ undef, %.split.i.i.i.i.i.i.i ]
  store i64 -1, ptr %i.cx, align 8, !alias.scope !30814, !noalias !30808
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !30814, !noalias !30808
  store i64 %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !30814, !noalias !30808
  br label %_RNvXs8_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_10ModularPowRBV_B1X_E4powm.exit.i.i.i.i.i

_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i.i.i.i: ; preds = %bb.du, %.split.i.i.i.i.i.i.i
  %i.adi = trunc i64 %.sroa.0.0.i.i.i.i.i.i to i8
  %i.adj = and i8 %i.adi, 63
  %i.adk = lshr i64 %.sroa.0.0.i.i.i.i.i.i, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn), !noalias !30815
  store i64 -2, ptr %i.cn, align 8, !noalias !30816
  store i64 %i.xp, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !30816
  call void @_RNvNtNtCsioiJd4mgmsb_10num_bigint7biguint5shift12biguint_shr2(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.cn, i64 noundef %i.adk, i8 noundef %i.adj) #45, !noalias !30817
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn), !noalias !30815
  br label %_RNvXs8_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_10ModularPowRBV_B1X_E4powm.exit.i.i.i.i.i

_RNvXs8_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_10ModularPowRBV_B1X_E4powm.exit.i.i.i.i.i: ; preds = %_RNvXs46_NtNtCs6JMX4GRUq9U_4core3ops5arithjNtB6_3Rem3rem.exit.i.i.i.i.i.i.i, %_RNvMNtCsioiJd4mgmsb_10num_bigint9big_digitNtB2_9BigDigits10from_slice.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cw), !noalias !30808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cv), !noalias !30808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) @1418, i64 24, i1 false), !noalias !30808
  call fastcc void @_RNvXs1b_NtNtCsioiJd4mgmsb_10num_bigint7biguint8divisionNtB8_7BigUintINtNtNtCs6JMX4GRUq9U_4core3ops5arith3RemRBR_E3rem(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #51, !noalias !30809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv), !noalias !30808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cu), !noalias !30808
  call fastcc void @_RNvXs_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintRNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintNtB8_15ModularUnaryOps4negm(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #51, !noalias !30809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ct), !noalias !30808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs), !noalias !30808
  store i64 -1, ptr %i.cs, align 8, !noalias !30818
  store ptr %i.acw, ptr %.sroa.5.0..sroa_idx2.i.i.i.i, align 8, !noalias !30818
  store i64 %i.act, ptr %.sroa.6.0..sroa_idx4.i.i.i.i, align 8, !noalias !30818
  call void @_RNvMsj_NtCsioiJd4mgmsb_10num_bigint7biguintNtB5_7BigUint6modpow(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ct, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cs, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef) #45, !noalias !30809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs), !noalias !30808
  call void @llvm.experimental.noalias.scope.decl(metadata !30819)
  call void @llvm.experimental.noalias.scope.decl(metadata !30820)
  %i.adl = load i64, ptr %i.ct, align 8, !range !13, !alias.scope !30819, !noalias !30808, !noundef !12 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.adl, -1      ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %_RNvXs8_NtNtCs2FZksNATdrv_11num_modular6bigint11__num_bigintNtNtCsioiJd4mgmsb_10num_bigint7biguint7BigUintINtB9_10ModularPowRBV_B1X_E4powm.exit.i.i.i.i.i
  %i.adm = load ptr, ptr %i.xs, align 8, !alias.scope !30819, !noalias !30808, !nonnull !12, !noundef !12 ; 2 uses
  %i.adn = load i64, ptr %i.xt, align 8, !alias.scope !30819, !noalias !30808, !noundef !12
  br label %bb.dz
end_hunk_0
