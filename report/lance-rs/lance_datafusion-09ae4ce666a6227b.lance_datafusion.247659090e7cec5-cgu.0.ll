Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_datafusion-09ae4ce666a6227b.lance_datafusion.247659090e7cec5-cgu.0?download=true
inline.NumInlined: 35549
inline.NumDeleted: 12223
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner10parse_expr:bb.a
  %i.y = load i64, ptr %i.p, align 8, !range !393, !noundef !321
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema5error10ArrowErrorECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.p)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53 unwind label %bb.b

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.480.56..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.480, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.480.56..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  store i64 4, ptr %0, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.480, i64 72, i1 false)
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 0, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx, align 16
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit62

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %2, ptr %i.i, align 8, !noalias !83709
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.aa, align 8, !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !83709
  store ptr %i.i, ptr %i.g, align 8, !noalias !83709
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !83709
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @813, ptr noundef nonnull %i.g)
          to label %.noexc54 unwind label %bb.b

.noexc54:                                         ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultRNtNtCs8SUNSmrkv52_12arrow_schema5field5FieldNtNtB12_5error10ArrowErrorEECsc85D0lJ81Z_16lance_datafusion.exit53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !83709
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !noalias !83709 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !83709, !nonnull !321, !noundef !321 ; 3 uses
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.11.0.copyload.i = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !83709
  invoke fastcc void @_RNvNtCsc85D0lJ81Z_16lance_datafusion3sql15parse_statement(ptr noalias noundef align 8 captures(none) dereferenceable(3400) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i, i64 noundef %.sroa.11.0.copyload.i)
          to label %bb.i unwind label %bb.h, !noalias !83710

bb.f:                                             ; preds = %bb.hg, %bb.hf, %bb.he, %bb.h
  %.pn133.i = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn130.pn.i, %bb.hg ], [ %.pn130.pn.i, %bb.he ], [ %.pn130.pn.i, %bb.hf ] ; 2 uses
  %i.ab = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ab, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83711
  br label %.body

bb.h:                                             ; preds = %bb.hd, %.noexc54
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %.noexc54
  %i.ad = load i64, ptr %i.e, align 8, !range !595, !noalias !83709, !noundef !321 ; 4 uses
  %i.ae = icmp eq i64 %i.ad, -1
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.i.sroa.0.0.copyload130 = load i8, ptr %i.af, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7.0..sroa_idx, i64 7, i1 false), !noalias !83709
  %.sroa.6.i.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.i.sroa.8.0.copyload132 = load ptr, ptr %.sroa.6.i.sroa.8.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.6.i.sroa.9.0.copyload134 = load ptr, ptr %.sroa.6.i.sroa.9.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.6.i.sroa.10.0.copyload136 = load ptr, ptr %.sroa.6.i.sroa.10.0..sroa_idx, align 8, !noalias !83709 ; 3 uses
  %.sroa.6.i.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11.0..sroa_idx, i64 24, i1 false), !noalias !83709
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !83709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, i64 7, i1 false), !noalias !83712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, i64 24, i1 false), !noalias !83712
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !83709
  %i.ag = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.ag, label %.thread, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECsc85D0lJ81Z_16lance_datafusion.exit151.sink.split.i

.thread:                                          ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.hi

bb.k:                                             ; preds = %bb.i
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3336) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(3336) %.sroa.514.0..sroa_idx.i, i64 3336, i1 false), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !83709
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store i8 %.sroa.6.i.sroa.0.0.copyload130, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !83709
  %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.sroa.7, i64 7, i1 false), !noalias !83709
  %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.6.i.sroa.8.0.copyload132, ptr %.sroa.6.i.sroa.8.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.6.i.sroa.9.0.copyload134, ptr %.sroa.6.i.sroa.9.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %.sroa.6.i.sroa.10.0.copyload136, ptr %.sroa.6.i.sroa.10.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !83709
  %.sroa.6.i.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.sroa.11, i64 24, i1 false), !noalias !83709
  store i64 %i.ad, ptr %i.f, align 8, !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.11)
  %i.ah = icmp ne i64 %i.ad, 23
  call void @llvm.assume(i1 %i.ah)
  %.not310.i = icmp eq i64 %i.ad, 6               ; 2 uses
  br i1 %.not310.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !83709, !nonnull !321, !align !330, !noundef !321 ; 68 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1392 ; 11 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !83710, !nonnull !321, !noundef !321 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !537, !noalias !83710, !noundef !321
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.gt, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !83709
  store ptr %i.i, ptr %i.a, align 8, !noalias !83709
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCscI6d9CVNmLh_4core3fmtReNtB6_7Display3fmtCsc85D0lJ81Z_16lance_datafusion, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !83709
  invoke void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @814, ptr noundef nonnull %i.a)
          to label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs40k4W9msRzi_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.gx, !noalias !83710

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !83710, !nonnull !321, !align !330, !noundef !321 ; 95 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !83709
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !83709
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1704
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1712
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !83710, !nonnull !321, !noundef !321 ; 12 uses
  %i.as = load i64, ptr %i.ap, align 8, !range !328, !noalias !83710, !noundef !321
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 1720
  %i.au = load i64, ptr %i.at, align 8, !noalias !83710, !noundef !321 ; 3 uses
  %i.av = icmp ult i64 %i.au, 11885788707287083
  call void @llvm.assume(i1 %i.av)
  %.idx.i = mul nuw nsw i64 %i.au, 776
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx.i
  store ptr %i.ar, ptr %i.c, align 8, !noalias !83709
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.as, ptr %i.ax, align 8, !noalias !83709
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.ay, align 8, !noalias !83709
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.aw, ptr %i.az, align 8, !noalias !83709
  call void @llvm.experimental.noalias.scope.decl(metadata !83713)
  call void @llvm.experimental.noalias.scope.decl(metadata !83714)
  %i.ba = icmp eq i64 %i.au, 0
  br i1 %i.ba, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i, label %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i: ; preds = %bb.n
  store i64 -2, ptr %i.d, align 8, !alias.scope !83713, !noalias !83709
  br label %.thread.i

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit225.i, %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !range !340, !alias.scope !83715, !noalias !83710, !noundef !321
  %i.bd = icmp eq i64 %i.bc, -1
  br i1 %i.bd, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithECsc85D0lJ81Z_16lance_datafusion.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithECsc85D0lJ81Z_16lance_datafusion.exit.i.i: ; preds = %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.ai, i64 1160
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.be), !noalias !83710, !inline_history !534
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3CteEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.bb)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.fs, !noalias !83710, !inline_history !534

bb.p:                                             ; preds = %bb.cu
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c) #73
          to label %bb.er unwind label %bb.cq, !noalias !83710

_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 776
  store ptr %i.bg, ptr %i.ay, align 8, !alias.scope !83714, !noalias !83709
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.d, ptr noundef nonnull align 8 dereferenceable(776) %i.ar, i64 776, i1 false), !noalias !83716
  %.pr.i = load i64, ptr %i.d, align 8, !noalias !83709 ; 2 uses
  switch i64 %.pr.i, label %bb.cu [
    i64 -2, label %.thread.i
    i64 2, label %bb.q
  ]

bb.q:                                             ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.083.0.copyload = load i64, ptr %i.bh, align 8
  %.sroa.884.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.884.0.copyload = load i8, ptr %.sroa.884.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx, i64 7, i1 false)
  %.sroa.1287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %.sroa.1287.0.copyload = load ptr, ptr %.sroa.1287.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.15.0..sroa_idx, i64 288, i1 false)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !83710

bb.r:                                             ; preds = %.thread.i, %bb.q
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.er

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83709
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 2000
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.bj), !noalias !83710
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ao, i64 1680
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast13OptimizerHintEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk), !noalias !83710
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 1976
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query8DistinctEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %bb.v unwind label %bb.u, !noalias !83710

bb.t:                                             ; preds = %bb.u
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.bn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !591

bb.u:                                             ; preds = %bb.s
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !range !381, !alias.scope !83717, !noalias !83710, !noundef !321
  %switch.i.i.i = icmp slt i64 %i.bo, -3
  br i1 %switch.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.t

bb.v:                                             ; preds = %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !range !381, !alias.scope !83718, !noalias !83710, !noundef !321
  %switch.i.i153.i = icmp slt i64 %i.bq, -3
  br i1 %switch.i.i153.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.bp)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i unwind label %bb.y, !noalias !83710, !inline_history !591

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.y, %bb.u, %bb.t
  %.pn83.i = phi { ptr, i32 } [ %i.bt, %bb.y ], [ %i.bm, %bb.t ], [ %i.bm, %bb.u ] ; 2 uses
  %i.br = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83719, !noalias !83710, !noundef !321
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.x

bb.x:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !419

bb.y:                                             ; preds = %bb.w
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i: ; preds = %bb.w, %bb.v
  %i.bu = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83720, !noalias !83710, !noundef !321
  %i.bv = icmp eq i64 %i.bu, -1
  br i1 %i.bv, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i, label %bb.z

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i unwind label %bb.ab, !noalias !83710, !inline_history !419

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ab, %bb.x, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn85.i = phi { ptr, i32 } [ %i.bz, %bb.ab ], [ %.pn83.i, %bb.x ], [ %.pn83.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit.i ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !range !340, !alias.scope !83721, !noalias !83710, !noundef !321
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.bw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !586

bb.ab:                                            ; preds = %bb.z
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i: ; preds = %bb.z, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit155.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 8, !range !340, !alias.scope !83722, !noalias !83710, !noundef !321
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i, label %bb.ac

bb.ac:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.ca)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i unwind label %bb.ad, !noalias !83710, !inline_history !586

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ad, %bb.aa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn87.i = phi { ptr, i32 } [ %i.ce, %bb.ad ], [ %.pn85.i, %bb.aa ], [ %.pn85.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cd) #73
          to label %bb.ae unwind label %bb.cq, !noalias !83710

bb.ad:                                            ; preds = %bb.ac
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i: ; preds = %bb.ac, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit158.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %bb.ag unwind label %bb.af, !noalias !83710

bb.ae:                                            ; preds = %bb.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn89.i = phi { ptr, i32 } [ %i.ch, %bb.af ], [ %.pn87.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cg) #73
          to label %bb.ah unwind label %bb.cq, !noalias !83710

bb.af:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ag:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit161.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ci)
          to label %bb.ak unwind label %bb.aj, !noalias !83710

bb.ah:                                            ; preds = %bb.aj, %bb.ae
  %.pn91.i = phi { ptr, i32 } [ %i.cm, %bb.aj ], [ %.pn89.i, %bb.ae ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !353, !alias.scope !83723, !noalias !83710, !noundef !321
  %i.cl = icmp eq i64 %i.ck, -4
  br i1 %i.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.aj:                                            ; preds = %bb.ag
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !range !353, !alias.scope !83724, !noalias !83710, !noundef !321
  %i.cp = icmp eq i64 %i.co, -4
  br i1 %i.cp, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cn)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i unwind label %bb.an, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.an, %bb.ai, %bb.ah
  %.pn93.i = phi { ptr, i32 } [ %i.ct, %bb.an ], [ %.pn91.i, %bb.ai ], [ %.pn91.i, %bb.ah ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !range !353, !alias.scope !83725, !noalias !83710, !noundef !321
  %i.cs = icmp eq i64 %i.cr, -4
  br i1 %i.cs, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.an:                                            ; preds = %bb.al
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i: ; preds = %bb.al, %bb.ak
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !range !353, !alias.scope !83726, !noalias !83710, !noundef !321
  %i.cw = icmp eq i64 %i.cv, -4
  br i1 %i.cw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit164.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.cu)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit168.i unwind label %bb.ap, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i: ; preds = %bb.ap, %bb.am, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn95.i = phi { ptr, i32 } [ %i.cy, %bb.ap ], [ %.pn93.i, %bb.am ], [ %.pn93.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cx) #73
          to label %bb.aq unwind label %bb.cq, !noalias !83710

bb.ap:                                            ; preds = %bb.ao
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i

end_hunk_0
begin_hunk_1_@_RNvMs2_NtCsc85D0lJ81Z_16lance_datafusion7plannerNtB5_7Planner10parse_expr:bb.a
  %i.fk = icmp eq i64 %i.fj, -1
  br i1 %i.fk, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.ch

bb.ca:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit187.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.cb:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit187.i
  call void @llvm.experimental.noalias.scope.decl(metadata !83738)
  %i.fm = load i64, ptr %i.ai, align 8, !range !385, !alias.scope !83738, !noalias !83710, !noundef !321 ; 4 uses
  %i.fn = icmp eq i64 %i.fm, -1
  br i1 %i.fn, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.experimental.noalias.scope.decl(metadata !83739)
  %i.fo = add nsw i64 %i.fm, -4
  %i.fp = icmp samesign ugt i64 %i.fm, 3
  %i.fq = select i1 %i.fp, i64 %i.fo, i64 2
  switch i64 %i.fq, label %bb.cd [
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
    i64 1, label %bb.cg
  ]

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !83740)
  switch i64 %i.fm, label %default.unreachable4.i.i.i.i [
    i64 0, label %bb.cf
    i64 1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
    i64 2, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i
    i64 3, label %bb.ce
  ]

default.unreachable4.i.i.i.i:                     ; preds = %bb.cd
  unreachable

bb.ce:                                            ; preds = %bb.cd
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !range !340, !alias.scope !83741, !noalias !83710, !noundef !321 ; 2 uses
  %i.ft = icmp sgt i64 %i.fs, 0
  br i1 %i.ft, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.fv = load i64, ptr %i.fu, align 8, !range !340, !alias.scope !83742, !noalias !83710, !noundef !321 ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i: ; preds = %bb.cf, %bb.ce
  %.sink.i.i.i.i = phi i64 [ %i.fs, %bb.ce ], [ %i.fv, %bb.cf ]
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.val1.i.i1.i.i.i.i = load ptr, ptr %i.fx, align 8, !alias.scope !83743, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i1.i.i.i.i, i64 noundef %.sink.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83744
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.cg
  %.sink9.i.i.i = phi i64 [ 16, %bb.cg ], [ 40, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %.sink.i.i.i = phi i64 [ %i.ga, %bb.cg ], [ %i.gd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i ]
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sink9.i.i.i
  %.val1.i.i3.i.i.i = load ptr, ptr %i.fy, align 8, !alias.scope !83745, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i3.i.i.i, i64 noundef %.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83746
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cg:                                            ; preds = %bb.cc
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ga = load i64, ptr %i.fz, align 8, !range !340, !alias.scope !83747, !noalias !83710, !noundef !321 ; 2 uses
  %i.gb = icmp sgt i64 %i.ga, 0
  br i1 %i.gb, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i.i, %bb.cf, %bb.ce, %bb.cd, %bb.cd
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.gd = load i64, ptr %i.gc, align 8, !range !340, !alias.scope !83748, !noalias !83710, !noundef !321 ; 2 uses
  %i.ge = icmp sgt i64 %i.gd, 0
  br i1 %i.ge, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.ch:                                            ; preds = %bb.bz
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.fi)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i unwind label %bb.cq, !noalias !83710, !inline_history !515

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query6ForXmlECsc85D0lJ81Z_16lance_datafusion.exit.i.i.i, %bb.cg, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECsc85D0lJ81Z_16lance_datafusion.exit.sink.split.i.i.i, %bb.cc, %bb.cb
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ai, i64 1256 ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !range !340, !alias.scope !83749, !noalias !83710, !noundef !321
  %i.gh = icmp eq i64 %i.gg, -1
  br i1 %i.gh, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(24) %i.gf)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i unwind label %bb.ck, !noalias !83710, !inline_history !515

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.ck, %bb.ch, %bb.bz
  %.pn126.i = phi { ptr, i32 } [ %i.gm, %bb.ck ], [ %.pn122.i, %bb.ch ], [ %.pn122.i, %bb.bz ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ai, i64 1328
  call void @llvm.experimental.noalias.scope.decl(metadata !83750)
  %i.gj = load i64, ptr %i.gi, align 8, !range !359, !alias.scope !83750, !noalias !83710, !noundef !321 ; 2 uses
  %i.gk = icmp sgt i64 %i.gj, 0
  br i1 %i.gk, label %bb.cj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.cj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ai, i64 1336
  %.val1.i191.i = load ptr, ptr %i.gl, align 8, !alias.scope !83750, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i191.i, i64 noundef %i.gj, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83751
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i

bb.ck:                                            ; preds = %bb.ci
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i: ; preds = %bb.ci, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query9ForClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ai, i64 1328
  call void @llvm.experimental.noalias.scope.decl(metadata !83752)
  %i.go = load i64, ptr %i.gn, align 8, !range !359, !alias.scope !83752, !noalias !83710, !noundef !321 ; 2 uses
  %i.gp = icmp sgt i64 %i.go, 0
  br i1 %i.gp, label %bb.cl, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i

bb.cl:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ai, i64 1336
  %.val1.i192.i = load ptr, ptr %i.gq, align 8, !alias.scope !83752, !noalias !83710, !nonnull !321, !noundef !321
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i192.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !83753
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i: ; preds = %bb.cj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ai, i64 1112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12PipeOperatorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.gr) #73
          to label %bb.cm unwind label %bb.cq, !noalias !83710

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i: ; preds = %bb.cl, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SettingEEECsc85D0lJ81Z_16lance_datafusion.exit190.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ai, i64 1112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12PipeOperatorEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(24) %i.gs)
          to label %bb.co unwind label %bb.cn, !noalias !83710

bb.cm:                                            ; preds = %bb.cn, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i
  %.pn130.i = phi { ptr, i32 } [ %i.gt, %bb.cn ], [ %.pn126.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 1400, i64 noundef 8) #71, !noalias !83710
  br label %.body.i

bb.cn:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.co:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit193.i
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ai, i64 noundef 1400, i64 noundef 8) #71, !noalias !83710
  br label %bb.cp

bb.cp:                                            ; preds = %bb.hb, %bb.co
  %.sroa.14.0 = phi ptr [ @815, %bb.hb ], [ %.sroa.14.0.copyload, %bb.co ] ; 2 uses
  %.sroa.13.0 = phi ptr [ @21, %bb.hb ], [ %.sroa.13.0.copyload, %bb.co ] ; 2 uses
  %.sroa.1287.0 = phi ptr [ %i.op, %bb.hb ], [ %.sroa.1287.0.copyload, %bb.co ] ; 2 uses
  %.sroa.884.0 = phi i8 [ 0, %bb.hb ], [ %.sroa.884.0.copyload, %bb.co ] ; 2 uses
  %.sroa.083.0 = phi i64 [ -4, %bb.hb ], [ %.sroa.083.0.copyload, %bb.co ] ; 2 uses
  %i.gu = load i64, ptr %i.f, align 8, !range !459, !noalias !83709, !noundef !321 ; 2 uses
  %i.gv = icmp ne i64 %i.gu, 23
  call void @llvm.assume(i1 %i.gv)
  %i.gw = icmp eq i64 %i.gu, 6
  br i1 %i.gw, label %bb.hc, label %bb.hd

bb.cq:                                            ; preds = %bb.hg, %bb.hf, %bb.gw, %bb.gv, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit279.i, %bb.gm, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit260.i, %bb.ga, %bb.fx, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit251.i, %bb.fp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit247.i, %bb.fn, %bb.fm, %bb.fl, %bb.fj, %bb.fh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit238.i, %bb.ff, %bb.fd, %bb.fc, %bb.fb, %bb.fa, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit236.i, %bb.ez, %bb.ey, %bb.ew, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit232.i, %bb.ev, %bb.eu, %bb.et, %bb.er, %bb.em, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit219.i, %bb.eg, %bb.ec, %bb.dz, %bb.dw, %bb.dt, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i, %bb.dp, %bb.dl, %bb.dh, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i, %bb.dd, %bb.da, %bb.cw, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit223.i, %bb.ct, %bb.cs, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query12FormatClauseEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.ch, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query5FetchEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.bv, %bb.bs, %bb.bj, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit170.i, %bb.bd, %bb.az, %bb.aw, %bb.at, %bb.aq, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit166.i, %bb.am, %bb.ai, %bb.ae, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit.i, %bb.aa, %bb.x, %bb.t, %bb.p
  %i.gx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #70, !noalias !83710
  unreachable

.sink.split.i:                                    ; preds = %bb.ct, %bb.br
  %.pn114.ph.i = phi { ptr, i32 } [ %i.es, %bb.br ], [ %i.eh, %bb.ct ]
  %.val144.pre.i = load ptr, ptr %i.aj, align 8, !noalias !83710
  br label %bb.cr

bb.cr:                                            ; preds = %.sink.split.i, %bb.bn
  %.val144.sink.i = phi ptr [ %i.ei, %bb.bn ], [ %.val144.pre.i, %.sink.split.i ]
  %.pn114.i = phi { ptr, i32 } [ %i.eh, %bb.bn ], [ %.pn114.ph.i, %.sink.split.i ] ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val144.sink.i, i64 noundef 3408, i64 noundef 8) #71, !noalias !83710
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ai, i64 1280 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !range !359, !alias.scope !83754, !noalias !83710, !noundef !321
  %i.ha = icmp eq i64 %i.gz, -2
  br i1 %i.ha, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByEECsc85D0lJ81Z_16lance_datafusion.exit195.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(48) %i.gy)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7OrderByEECsc85D0lJ81Z_16lance_datafusion.exit195.i unwind label %bb.cq, !noalias !83710, !inline_history !529

bb.ct:                                            ; preds = %bb.bn
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query7SetExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(3408) %i.ei) #73
          to label %.sink.split.i unwind label %bb.cq, !noalias !83710

.body.i:                                          ; preds = %bb.ha, %bb.gz, %bb.gx, %bb.gr, %bb.fr, %bb.cm
  %.pn130.pn.i = phi { ptr, i32 } [ %.pn130.i, %bb.cm ], [ %.pn111.pn.i, %bb.fr ], [ %.pn74.i, %bb.gr ], [ %i.oo, %bb.gx ], [ %i.or, %bb.ha ], [ %i.or, %bb.gz ] ; 3 uses
  %i.hb = load i64, ptr %i.f, align 8, !range !459, !noalias !83709, !noundef !321 ; 2 uses
  %i.hc = icmp ne i64 %i.hb, 23
  call void @llvm.assume(i1 %i.hc)
  %i.hd = icmp eq i64 %i.hb, 6
  br i1 %i.hd, label %bb.he, label %bb.hf

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit223.i: ; preds = %bb.fh, %bb.fg, %bb.eq, %bb.em, %bb.el, %bb.bj, %bb.bi
  %.pn111.pn.i = phi { ptr, i32 } [ %.pn77.i, %bb.fh ], [ %.pn54.i, %bb.el ], [ %i.jz, %bb.eq ], [ %.pn54.i, %bb.em ], [ %.pn77.i, %bb.fg ], [ %.pn109.i, %bb.bi ], [ %.pn109.i, %bb.bj ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 2104, i64 noundef 8) #71, !noalias !83710
  %i.he = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query4WithEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(120) %i.he) #73
          to label %bb.fi unwind label %bb.cq, !noalias !83710

bb.cu:                                            ; preds = %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i
  %4 = icmp ne i64 %.pr.i, 5
  call void @llvm.assume(i1 %4)
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(776) %i.d)
          to label %.thread.i unwind label %bb.p, !noalias !83710

.thread.i:                                        ; preds = %bb.cu, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.i, %_RNvXs4_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCsc85D0lJ81Z_16lance_datafusion.exit.thread.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectItemEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef align 8 dereferenceable(32) %i.c)
          to label %bb.cv unwind label %bb.r, !noalias !83710

bb.cv:                                            ; preds = %.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !83709
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !83709
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ao, i64 2000
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser9tokenizer5TokenECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(88) %i.hf), !noalias !83710
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ao, i64 1680
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast13OptimizerHintEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hg), !noalias !83710
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ao, i64 1976
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query8DistinctEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hh)
          to label %bb.cy unwind label %bb.cx, !noalias !83710

bb.cw:                                            ; preds = %bb.cx
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.hj)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i unwind label %bb.cq, !noalias !83710, !inline_history !591

bb.cx:                                            ; preds = %bb.cv
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !range !381, !alias.scope !83755, !noalias !83710, !noundef !321
  %switch.i.i196.i = icmp slt i64 %i.hk, -3
  br i1 %switch.i.i196.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i, label %bb.cw

bb.cy:                                            ; preds = %bb.cv
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ao, i64 1344 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !range !381, !alias.scope !83756, !noalias !83710, !noundef !321
  %switch.i.i199.i = icmp slt i64 %i.hm, -3
  br i1 %switch.i.i199.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.hl)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i unwind label %bb.db, !noalias !83710, !inline_history !591

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i: ; preds = %bb.db, %bb.cx, %bb.cw
  %.pn28.i = phi { ptr, i32 } [ %i.hp, %bb.db ], [ %i.hi, %bb.cw ], [ %i.hi, %bb.cx ] ; 2 uses
  %i.hn = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83757, !noalias !83710, !noundef !321
  %i.ho = icmp eq i64 %i.hn, -1
  br i1 %i.ho, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i, label %bb.da

bb.da:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i unwind label %bb.cq, !noalias !83710, !inline_history !419

bb.db:                                            ; preds = %bb.cz
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i: ; preds = %bb.cz, %bb.cy
  %i.hq = load i64, ptr %i.ao, align 8, !range !350, !alias.scope !83758, !noalias !83710, !noundef !321
  %i.hr = icmp eq i64 %i.hq, -1
  br i1 %i.hr, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i unwind label %bb.de, !noalias !83710, !inline_history !419

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i: ; preds = %bb.de, %bb.da, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i
  %.pn30.i = phi { ptr, i32 } [ %i.hv, %bb.de ], [ %.pn28.i, %bb.da ], [ %.pn28.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit198.i ] ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !range !340, !alias.scope !83759, !noalias !83710, !noundef !321
  %i.hu = icmp eq i64 %i.ht, -1
  br i1 %i.hu, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i, label %bb.dd

bb.dd:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.hs)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i unwind label %bb.cq, !noalias !83710, !inline_history !586

bb.de:                                            ; preds = %bb.dc
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i: ; preds = %bb.dc, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query3TopEECsc85D0lJ81Z_16lance_datafusion.exit201.i
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1896 ; 2 uses
  %i.hx = load i64, ptr %i.hw, align 8, !range !340, !alias.scope !83760, !noalias !83710, !noundef !321
  %i.hy = icmp eq i64 %i.hx, -1
  br i1 %i.hy, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i, label %bb.df

bb.df:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCs40MM8ukkVQd_9sqlparser3ast14ObjectNamePartEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.hw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i unwind label %bb.dg, !noalias !83710, !inline_history !586

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i: ; preds = %bb.dg, %bb.dd, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i
  %.pn32.i = phi { ptr, i32 } [ %i.ia, %bb.dg ], [ %.pn30.i, %bb.dd ], [ %.pn30.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit203.i ]
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hz) #73
          to label %bb.dh unwind label %bb.cq, !noalias !83710

bb.dg:                                            ; preds = %bb.df
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i: ; preds = %bb.df, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query17ExcludeSelectItemEECsc85D0lJ81Z_16lance_datafusion.exit205.i
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ao, i64 1728
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query14TableWithJoinsEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ib)
          to label %bb.dj unwind label %bb.di, !noalias !83710

bb.dh:                                            ; preds = %bb.di, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i
  %.pn34.i = phi { ptr, i32 } [ %i.id, %bb.di ], [ %.pn32.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit207.i ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ic) #73
          to label %bb.dk unwind label %bb.cq, !noalias !83710

bb.di:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i
  %i.id = landingpad { ptr, i32 }
          cleanup
  br label %bb.dh

bb.dj:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query10SelectIntoEECsc85D0lJ81Z_16lance_datafusion.exit209.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ao, i64 1752
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11LateralViewEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ie)
          to label %bb.dn unwind label %bb.dm, !noalias !83710

bb.dk:                                            ; preds = %bb.dm, %bb.dh
  %.pn36.i = phi { ptr, i32 } [ %i.ii, %bb.dm ], [ %.pn34.i, %bb.dh ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !range !353, !alias.scope !83761, !noalias !83710, !noundef !321
  %i.ih = icmp eq i64 %i.ig, -4
  br i1 %i.ih, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.if)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.dm:                                            ; preds = %bb.dj
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dn:                                            ; preds = %bb.dj
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !range !353, !alias.scope !83762, !noalias !83710, !noundef !321
  %i.il = icmp eq i64 %i.ik, -4
  br i1 %i.il, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.ij)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i unwind label %bb.dq, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i: ; preds = %bb.dq, %bb.dl, %bb.dk
  %.pn38.i = phi { ptr, i32 } [ %i.ip, %bb.dq ], [ %.pn36.i, %bb.dl ], [ %.pn36.i, %bb.dk ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !range !353, !alias.scope !83763, !noalias !83710, !noundef !321
  %i.io = icmp eq i64 %i.in, -4
  br i1 %i.io, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i, label %bb.dp

bb.dp:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.im)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i unwind label %bb.cq, !noalias !83710, !inline_history !438

bb.dq:                                            ; preds = %bb.do
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i: ; preds = %bb.do, %bb.dn
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ao, i64 360 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !range !353, !alias.scope !83764, !noalias !83710, !noundef !321
  %i.is = icmp eq i64 %i.ir, -4
  br i1 %i.is, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i, label %bb.dr

bb.dr:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.iq)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i unwind label %bb.ds, !noalias !83710, !inline_history !438

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i: ; preds = %bb.ds, %bb.dp, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i
  %.pn40.i = phi { ptr, i32 } [ %i.iu, %bb.ds ], [ %.pn38.i, %bb.dp ], [ %.pn38.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit211.i ]
  %i.it = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.it) #73
          to label %bb.dt unwind label %bb.cq, !noalias !83710

bb.ds:                                            ; preds = %bb.dr
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i: ; preds = %bb.dr, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit213.i
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ao, i64 1776
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query13ConnectByKindEECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.iv)
          to label %bb.dv unwind label %bb.du, !noalias !83710

bb.dt:                                            ; preds = %bb.du, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i
  %.pn42.i = phi { ptr, i32 } [ %i.ix, %bb.du ], [ %.pn40.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit215.i ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ao, i64 1928
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtCs40MM8ukkVQd_9sqlparser3ast5query11GroupByExprECsc85D0lJ81Z_16lance_datafusion(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.iw) #73
          to label %bb.dw unwind label %bb.cq, !noalias !83710

bb.du:                                            ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40MM8ukkVQd_9sqlparser3ast4ExprEECsc85D0lJ81Z_16lance_datafusion.exit217.i
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt
end_hunk_1
