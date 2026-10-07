Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_container_tests_common-6650c216428fe7c2.iceoryx2_bb_container_tests_common.e066d4e3b72ad41e-cgu.00?download=true
inline.NumInlined: 1234
inline.NumDeleted: 297
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic61___iox2_test_remove_range_from_start_works_StaticStringFactory:bb.a
  %i.bq = tail call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink93.i = select i1 %i.bq, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink92.i = select i1 %i.bq, i64 4, i64 0
  store ptr %.sink93.i, ptr %i.u, align 8, !captures !4
  %i.br = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink92.i, ptr %i.br, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.48.0..sroa_idx.i, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.bs, align 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.412.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @99, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #16
  unreachable

_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic29remove_range_from_start_worksNtB2_19StaticStringFactoryEB6_.exit: ; preds = %bb.n
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 144, i64 noundef 8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic62___iox2_test_remove_range_from_center_works_StaticStringFactory() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 31 uses
  %i.k = alloca [8 x i8], align 8                 ; 13 uses
  %i.l = alloca [1 x i8], align 1                 ; 49 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !257
  %i.ac = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 4, 391) 144, i64 noundef range(i64 1, 9) 8) #15, !noalias !257 ; 18 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.b, label %_RNvXNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB2_19StaticStringFactoryNtB2_17StringTestFactory10create_sut.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #17, !noalias !257
  unreachable

_RNvXNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB2_19StaticStringFactoryNtB2_17StringTestFactory10create_sut.exit.i: ; preds = %bb.a
  store i8 0, ptr %i.ac, align 8
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 129
  store i8 0, ptr %.sroa.52.0..sroa_idx.i.i, align 1
  %.sroa.63.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 136 ; 2 uses
  store i64 0, ptr %.sroa.63.0..sroa_idx.i.i, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  %i.ae = add nuw nsw i64 %.sroa.05.096.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ae, 129
  br i1 %exitcond.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.af = tail call noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ac, i64 noundef 10, i64 noundef 20) #15 ; 2 uses
  %i.ag = zext i1 %i.af to i8
  store i8 %i.ag, ptr %i.x, align 1
  store ptr %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @33, ptr %i.w, align 8, !captures !4
  br i1 %i.af, label %bb.g, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.c, %_RNvXNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB2_19StaticStringFactoryNtB2_17StringTestFactory10create_sut.exit.i
  %.sroa.05.096.i = phi i64 [ 0, %_RNvXNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB2_19StaticStringFactoryNtB2_17StringTestFactory10create_sut.exit.i ], [ %i.ae, %bb.c ] ; 4 uses
  %.urem.i = add nuw nsw i64 %.sroa.05.096.i, 176
  %.cmp.i = icmp samesign ult i64 %.sroa.05.096.i, 80
  %i.ah = select i1 %.cmp.i, i64 %.sroa.05.096.i, i64 %.urem.i
  %i.ai = trunc i64 %i.ah to i8
  %i.aj = add nuw nsw i8 %i.ai, 20
  %i.ak = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_string12StaticStringKj81_ENtB7_6String4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.ac, i8 noundef %i.aj) #15
  %i.al = icmp eq i8 %i.ak, 2
  br i1 %i.al, label %bb.c, label %bb.ai, !prof !6

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.am = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select.i = select i1 %i.am, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select146.i = select i1 %i.am, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.v, align 8, !captures !4
  %i.an = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %spec.select146.i, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ao = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink112.i = select i1 %i.ao, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink111.i = select i1 %i.ao, i64 4, i64 0
  store ptr %.sink112.i, ptr %i.u, align 8, !captures !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink111.i, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.418.0..sroa_idx.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.y, ptr %i.aq, align 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.422.0..sroa_idx.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.w, ptr %i.ar, align 8
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.426.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.u, ptr %i.as, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.430.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #16
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.val.i = load i64, ptr %.sroa.63.0..sroa_idx.i.i, align 8, !noundef !5 ; 2 uses
  store i64 %.val.i, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 109, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.at = icmp eq i64 %.val.i, 109
  br i1 %i.at, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 20, ptr %i.l, align 1
  %i.au = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1
  %.not.i = icmp eq i64 %i.av, 0
  br i1 %.not.i, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.aw = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select147.i = select i1 %i.aw, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select148.i = select i1 %i.aw, i64 9, i64 0
  store ptr %spec.select147.i, ptr %i.o, align 8, !captures !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select148.i, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ay = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink124.i = select i1 %i.ay, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink123.i = select i1 %i.ay, i64 4, i64 0
  store ptr %.sink124.i, ptr %i.n, align 8, !captures !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sink123.i, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.434.0..sroa_idx.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.s, ptr %i.ba, align 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.438.0..sroa_idx.i, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.q, ptr %i.bb, align 8
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.442.0..sroa_idx.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.bc, align 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.446.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @171, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #16
  unreachable

.preheader.i:                                     ; preds = %.preheader.preheader.i, %bb.m
  %.sroa.065.098.i = phi i64 [ %i.bd, %bb.m ], [ 10, %.preheader.preheader.i ] ; 5 uses
  %i.bd = add nuw nsw i64 %.sroa.065.098.i, 1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.be = trunc nuw i64 %.sroa.065.098.i to i8
  %.lhs.trunc.i = add nuw i8 %i.be, 100
  %i.bf = urem i8 %.lhs.trunc.i, 80
  %i.bg = add nuw nsw i8 %i.bf, 20
  store i8 %i.bg, ptr %i.f, align 1
  %i.bh = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 1      ; 2 uses
  %i.bj = icmp ult i64 %.sroa.065.098.i, %i.bi
  br i1 %i.bj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i
  %i.bk = extractvalue { ptr, i64 } %i.bh, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.sroa.065.098.i ; 2 uses
  store ptr %i.bl, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.bm = load i8, ptr %i.bl, align 1, !noundef !5
  %i.bn = load i8, ptr %i.f, align 1, !noundef !5
  %i.bo = icmp eq i8 %i.bm, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.l, !prof !6

bb.k:                                             ; preds = %.preheader.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.065.098.i, i64 noundef %i.bi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #16
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bp = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select149.i = select i1 %i.bp, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select150.i = select i1 %i.bp, i64 9, i64 0
  store ptr %spec.select149.i, ptr %i.c, align 8, !captures !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select150.i, ptr %i.bq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.br = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink118.i = select i1 %i.br, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink117.i = select i1 %i.br, i64 4, i64 0
  store ptr %.sink118.i, ptr %i.b, align 8, !captures !4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink117.i, ptr %i.bs, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.470.0..sroa_idx.i, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.bt, align 8
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.474.0..sroa_idx.i, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.bu, align 8
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.478.0..sroa_idx.i, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.bv, align 8
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.482.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #16
  unreachable

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond109.not.i = icmp eq i64 %i.bd, 109
  br i1 %exitcond109.not.i, label %_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_19StaticStringFactoryEB6_.exit, label %.preheader.i

bb.n:                                             ; preds = %bb.h
  %i.bw = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  store ptr %i.bw, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.bx = load i8, ptr %i.bw, align 1, !noundef !5
  %i.by = icmp eq i8 %i.bx, 20
  br i1 %i.by, label %bb.q, label %bb.p, !prof !6

bb.o:                                             ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.h
  %.sroa.047.097.lcssa.i = phi i64 [ 0, %bb.h ], [ 1, %bb.q ], [ 2, %bb.s ], [ 3, %bb.u ], [ 4, %bb.w ], [ 5, %bb.y ], [ 6, %bb.aa ], [ 7, %bb.ac ], [ 8, %bb.ae ], [ 9, %bb.ag ]
  %.lcssa103.i = phi i64 [ 0, %bb.h ], [ %i.ch, %bb.q ], [ %i.cp, %bb.s ], [ %i.cx, %bb.u ], [ %i.df, %bb.w ], [ %i.dn, %bb.y ], [ %i.dv, %bb.aa ], [ %i.ed, %bb.ac ], [ %i.el, %bb.ae ], [ %i.et, %bb.ag ]
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.047.097.lcssa.i, i64 noundef %.lcssa103.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #16
  unreachable

bb.p:                                             ; preds = %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.r, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bz = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select151.i = select i1 %i.bz, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select152.i = select i1 %i.bz, i64 9, i64 0
  store ptr %spec.select151.i, ptr %i.i, align 8, !captures !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select152.i, ptr %i.ca, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink122.i = select i1 %i.cb, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink121.i = select i1 %i.cb, i64 4, i64 0
  store ptr %.sink122.i, ptr %i.h, align 8, !captures !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink121.i, ptr %i.cc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.452.0..sroa_idx.i, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.cd, align 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.456.0..sroa_idx.i, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.ce, align 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.460.0..sroa_idx.i, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.cf, align 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.464.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #16
  unreachable

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 21, ptr %i.l, align 1
  %i.cg = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 1      ; 2 uses
  %i.ci = icmp ugt i64 %i.ch, 1
  br i1 %i.ci, label %bb.r, label %bb.o

bb.r:                                             ; preds = %bb.q
  %i.cj = extractvalue { ptr, i64 } %i.cg, 0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1 ; 2 uses
  store ptr %i.ck, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cl = load i8, ptr %i.ck, align 1, !noundef !5
  %i.cm = load i8, ptr %i.l, align 1, !noundef !5
  %i.cn = icmp eq i8 %i.cl, %i.cm
  br i1 %i.cn, label %bb.s, label %bb.p, !prof !6

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 22, ptr %i.l, align 1
  %i.co = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.cp = extractvalue { ptr, i64 } %i.co, 1      ; 2 uses
  %i.cq = icmp ugt i64 %i.cp, 2
  br i1 %i.cq, label %bb.t, label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.cr = extractvalue { ptr, i64 } %i.co, 0
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2 ; 2 uses
  store ptr %i.cs, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !5
  %i.cu = load i8, ptr %i.l, align 1, !noundef !5
  %i.cv = icmp eq i8 %i.ct, %i.cu
  br i1 %i.cv, label %bb.u, label %bb.p, !prof !6

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 23, ptr %i.l, align 1
  %i.cw = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.cx = extractvalue { ptr, i64 } %i.cw, 1      ; 2 uses
  %i.cy = icmp ugt i64 %i.cx, 3
  br i1 %i.cy, label %bb.v, label %bb.o

bb.v:                                             ; preds = %bb.u
  %i.cz = extractvalue { ptr, i64 } %i.cw, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 3 ; 2 uses
  store ptr %i.da, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.db = load i8, ptr %i.da, align 1, !noundef !5
  %i.dc = load i8, ptr %i.l, align 1, !noundef !5
  %i.dd = icmp eq i8 %i.db, %i.dc
  br i1 %i.dd, label %bb.w, label %bb.p, !prof !6

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 24, ptr %i.l, align 1
  %i.de = call { ptr, i64 } @_RNvXs6_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string13static_stringINtB5_12StaticStringKj81_ENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %i.ac) #15 ; 2 uses
  %i.df = extractvalue { ptr, i64 } %i.de, 1      ; 2 uses
  %i.dg = icmp ugt i64 %i.df, 4
  br i1 %i.dg, label %bb.x, label %bb.o

bb.x:                                             ; preds = %bb.w
  %i.dh = extractvalue { ptr, i64 } %i.de, 0
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4 ; 2 uses
  store ptr %i.di, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.dj = load i8, ptr %i.di, align 1, !noundef !5
  %i.dk = load i8, ptr %i.l, align 1, !noundef !5
  %i.dl = icmp eq i8 %i.dj, %i.dk
  br i1 %i.dl, label %bb.y, label %bb.p, !prof !6

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_0
begin_hunk_1_@_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic66___iox2_test_remove_range_from_start_works_RelocatableStringFactory:bb.a
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @99, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @173) #16
  unreachable

_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic29remove_range_from_start_worksNtB2_24RelocatableStringFactoryEB6_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic67___iox2_test_remove_range_from_center_works_PolymorphicStringFactory() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 31 uses
  %i.k = alloca [8 x i8], align 8                 ; 13 uses
  %i.l = alloca [1 x i8], align 1                 ; 49 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !403
  %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i = tail call dereferenceable_or_null(390) ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 390, i64 1) ; 2 uses
  %i.ad = icmp eq ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.ad, label %bb.b, label %_RNvXs2_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24PolymorphicStringFactoryNtB5_17StringTestFactory3new.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 390) #17, !noalias !403
  unreachable

_RNvXs2_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24PolymorphicStringFactoryNtB5_17StringTestFactory3new.exit.i: ; preds = %bb.a
  store ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = call noundef nonnull align 8 ptr @_RNvXs2_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24PolymorphicStringFactoryNtB5_17StringTestFactory10create_sut(ptr noundef nonnull align 8 %i.ac) #15 ; 15 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  %i.ag = add nuw nsw i64 %.sroa.05.098.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, 129
  br i1 %exitcond.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ah = tail call noundef zeroext i1 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef 10, i64 noundef 20) #15 ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.x, align 1
  store ptr %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @33, ptr %i.w, align 8, !captures !4
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.c, %_RNvXs2_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24PolymorphicStringFactoryNtB5_17StringTestFactory3new.exit.i
  %.sroa.05.098.i = phi i64 [ 0, %_RNvXs2_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24PolymorphicStringFactoryNtB5_17StringTestFactory3new.exit.i ], [ %i.ag, %bb.c ] ; 4 uses
  %.urem.i = add nuw nsw i64 %.sroa.05.098.i, 176
  %.cmp.i = icmp samesign ult i64 %.sroa.05.098.i, 80
  %i.aj = select i1 %.cmp.i, i64 %.sroa.05.098.i, i64 %.urem.i
  %i.ak = trunc i64 %i.aj to i8
  %i.al = add nuw nsw i8 %i.ak, 20
  %i.am = tail call noundef i8 @_RNvYINtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_string17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtB7_6String4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.af, i8 noundef %i.al) #15
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %bb.c, label %bb.ak, !prof !6

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ao = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select.i = select i1 %i.ao, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select147.i = select i1 %i.ao, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.v, align 8, !captures !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %spec.select147.i, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink114.i = select i1 %i.aq, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink113.i = select i1 %i.aq, i64 4, i64 0
  store ptr %.sink114.i, ptr %i.u, align 8, !captures !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink113.i, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.418.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.y, ptr %i.as, align 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.422.0..sroa_idx.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.w, ptr %i.at, align 8
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.426.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.u, ptr %i.au, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.430.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #16
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.av = getelementptr i8, ptr %i.af, i64 16
  %.val.i = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  store i64 %.val.i, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 109, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.aw = icmp eq i64 %.val.i, 109
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 20, ptr %i.l, align 1
  %i.ax = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select148.i = select i1 %i.az, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select149.i = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select148.i, ptr %i.o, align 8, !captures !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select149.i, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink126.i = select i1 %i.bb, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink125.i = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink126.i, ptr %i.n, align 8, !captures !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sink125.i, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.434.0..sroa_idx.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.s, ptr %i.bd, align 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.438.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.q, ptr %i.be, align 8
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.442.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.bf, align 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.446.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @171, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #16
  unreachable

bb.j:                                             ; preds = %bb.o
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 32, i64 noundef 8) #15
  %.val85.i = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %.val86.i = load ptr, ptr %i.ae, align 8        ; 2 uses
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85.i, i64 noundef 390, i64 noundef 1) #15
  %i.bg = icmp eq ptr %.val86.i, null
  br i1 %i.bg, label %_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_24PolymorphicStringFactoryEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val86.i, i64 noundef 16, i64 noundef 8) #15
  br label %_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_24PolymorphicStringFactoryEB6_.exit

.preheader.i:                                     ; preds = %.preheader.preheader.i, %bb.o
  %.sroa.065.0100.i = phi i64 [ %i.bh, %bb.o ], [ 10, %.preheader.preheader.i ] ; 5 uses
  %i.bh = add nuw nsw i64 %.sroa.065.0100.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bi = trunc nuw i64 %.sroa.065.0100.i to i8
  %.lhs.trunc.i = add nuw i8 %i.bi, 100
  %i.bj = urem i8 %.lhs.trunc.i, 80
  %i.bk = add nuw nsw i8 %i.bj, 20
  store i8 %i.bk, ptr %i.f, align 1
  %i.bl = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %i.bn = icmp ult i64 %.sroa.065.0100.i, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.bo = extractvalue { ptr, i64 } %i.bl, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.065.0100.i ; 2 uses
  store ptr %i.bp, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = load i8, ptr %i.f, align 1, !noundef !5
  %i.bs = icmp eq i8 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !6

bb.m:                                             ; preds = %.preheader.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.065.0100.i, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select150.i = select i1 %i.bt, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select151.i = select i1 %i.bt, i64 9, i64 0
  store ptr %spec.select150.i, ptr %i.c, align 8, !captures !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select151.i, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink120.i = select i1 %i.bv, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink119.i = select i1 %i.bv, i64 4, i64 0
  store ptr %.sink120.i, ptr %i.b, align 8, !captures !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink119.i, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.470.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.bx, align 8
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.474.0..sroa_idx.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.by, align 8
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.478.0..sroa_idx.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.bz, align 8
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.482.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #16
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond111.not.i = icmp eq i64 %i.bh, 109
  br i1 %exitcond111.not.i, label %bb.j, label %.preheader.i

bb.p:                                             ; preds = %bb.h
  %i.ca = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  store ptr %i.ca, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !5
  %i.cc = icmp eq i8 %i.cb, 20
  br i1 %i.cc, label %bb.s, label %bb.r, !prof !6

bb.q:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.h
  %.sroa.047.099.lcssa.i = phi i64 [ 0, %bb.h ], [ 1, %bb.s ], [ 2, %bb.u ], [ 3, %bb.w ], [ 4, %bb.y ], [ 5, %bb.aa ], [ 6, %bb.ac ], [ 7, %bb.ae ], [ 8, %bb.ag ], [ 9, %bb.ai ]
  %.lcssa105.i = phi i64 [ 0, %bb.h ], [ %i.cl, %bb.s ], [ %i.ct, %bb.u ], [ %i.db, %bb.w ], [ %i.dj, %bb.y ], [ %i.dr, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.eh, %bb.ae ], [ %i.ep, %bb.ag ], [ %i.ex, %bb.ai ]
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.047.099.lcssa.i, i64 noundef %.lcssa105.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #16
  unreachable

bb.r:                                             ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select152.i = select i1 %i.cd, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select153.i = select i1 %i.cd, i64 9, i64 0
  store ptr %spec.select152.i, ptr %i.i, align 8, !captures !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select153.i, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cf = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink124.i = select i1 %i.cf, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink123.i = select i1 %i.cf, i64 4, i64 0
  store ptr %.sink124.i, ptr %i.h, align 8, !captures !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink123.i, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.452.0..sroa_idx.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.ch, align 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.456.0..sroa_idx.i, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.ci, align 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.460.0..sroa_idx.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.cj, align 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.464.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #16
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 21, ptr %i.l, align 1
  %i.ck = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 1      ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, 1
  br i1 %i.cm, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.cn = extractvalue { ptr, i64 } %i.ck, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.co, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cp = load i8, ptr %i.co, align 1, !noundef !5
  %i.cq = load i8, ptr %i.l, align 1, !noundef !5
  %i.cr = icmp eq i8 %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.r, !prof !6

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 22, ptr %i.l, align 1
  %i.cs = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 2
  br i1 %i.cu, label %bb.v, label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.cv = extractvalue { ptr, i64 } %i.cs, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2 ; 2 uses
  store ptr %i.cw, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !5
  %i.cy = load i8, ptr %i.l, align 1, !noundef !5
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %bb.w, label %bb.r, !prof !6

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 23, ptr %i.l, align 1
  %i.da = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 1      ; 2 uses
  %i.dc = icmp ugt i64 %i.db, 3
  br i1 %i.dc, label %bb.x, label %bb.q

bb.x:                                             ; preds = %bb.w
  %i.dd = extractvalue { ptr, i64 } %i.da, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 3 ; 2 uses
  store ptr %i.de, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.df = load i8, ptr %i.de, align 1, !noundef !5
  %i.dg = load i8, ptr %i.l, align 1, !noundef !5
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %bb.y, label %bb.r, !prof !6

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 24, ptr %i.l, align 1
  %i.di = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18polymorphic_stringINtB5_17PolymorphicStringNtNtCs3stRo7scs5B_22iceoryx2_bb_elementary14bump_allocator13BumpAllocatorENtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5derefCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.af) #15 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 1      ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 4
  br i1 %i.dk, label %bb.z, label %bb.q

bb.z:                                             ; preds = %bb.y
  %i.dl = extractvalue { ptr, i64 } %i.di, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  store ptr %i.dm, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.dn = load i8, ptr %i.dm, align 1, !noundef !5
  %i.do = load i8, ptr %i.l, align 1, !noundef !5
  %i.dp = icmp eq i8 %i.dn, %i.do
  br i1 %i.dp, label %bb.aa, label %bb.r, !prof !6

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_1
begin_hunk_2_@_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic67___iox2_test_remove_range_from_center_works_PolymorphicStringFactory:bb.a
  unreachable

_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_24PolymorphicStringFactoryEB6_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RNvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic67___iox2_test_remove_range_from_center_works_RelocatableStringFactory() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 31 uses
  %i.k = alloca [8 x i8], align 8                 ; 13 uses
  %i.l = alloca [1 x i8], align 1                 ; 49 uses
  %i.m = alloca [64 x i8], align 8                ; 10 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [8 x i8], align 8                 ; 4 uses
  %i.r = alloca [8 x i8], align 8                 ; 4 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [1 x i8], align 1                 ; 4 uses
  %i.y = alloca [8 x i8], align 8                 ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 4 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #15, !noalias !406
  %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i = tail call dereferenceable_or_null(390) ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 390, i64 1) ; 2 uses
  %i.ad = icmp eq ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i, null
  br i1 %i.ad, label %bb.b, label %_RNvXs0_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24RelocatableStringFactoryNtB5_17StringTestFactory3new.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 390) #17, !noalias !406
  unreachable

_RNvXs0_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24RelocatableStringFactoryNtB5_17StringTestFactory3new.exit.i: ; preds = %bb.a
  store ptr %_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed.i.i, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr null, ptr %i.ae, align 8
  %i.af = call noundef nonnull align 8 ptr @_RNvXs0_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24RelocatableStringFactoryNtB5_17StringTestFactory10create_sut(ptr noundef nonnull align 8 %i.ac) #15 ; 15 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.e
  %i.ag = add nuw nsw i64 %.sroa.05.098.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, 129
  br i1 %exitcond.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ah = tail call noundef zeroext i1 @_RNvYNtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_string17RelocatableStringNtB6_6String12remove_rangeCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i64 noundef 10, i64 noundef 20) #15 ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.x, align 1
  store ptr %i.x, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr @33, ptr %i.w, align 8, !captures !4
  br i1 %i.ah, label %bb.g, label %bb.f, !prof !6

bb.e:                                             ; preds = %bb.c, %_RNvXs0_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24RelocatableStringFactoryNtB5_17StringTestFactory3new.exit.i
  %.sroa.05.098.i = phi i64 [ 0, %_RNvXs0_NtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7genericNtB5_24RelocatableStringFactoryNtB5_17StringTestFactory3new.exit.i ], [ %i.ag, %bb.c ] ; 4 uses
  %.urem.i = add nuw nsw i64 %.sroa.05.098.i, 176
  %.cmp.i = icmp samesign ult i64 %.sroa.05.098.i, 80
  %i.aj = select i1 %.cmp.i, i64 %.sroa.05.098.i, i64 %.urem.i
  %i.ak = trunc i64 %i.aj to i8
  %i.al = add nuw nsw i8 %i.ak, 20
  %i.am = tail call noundef i8 @_RNvYNtNtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_string17RelocatableStringNtB6_6String4pushCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, i8 noundef %i.al) #15
  %i.an = icmp eq i8 %i.am, 2
  br i1 %i.an, label %bb.c, label %bb.ak, !prof !6

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.ao = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select.i = select i1 %i.ao, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select147.i = select i1 %i.ao, i64 9, i64 0
  store ptr %spec.select.i, ptr %i.v, align 8, !captures !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %spec.select147.i, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.aq = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink114.i = select i1 %i.aq, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink113.i = select i1 %i.aq, i64 4, i64 0
  store ptr %.sink114.i, ptr %i.u, align 8, !captures !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.sink113.i, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.418.0..sroa_idx.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.y, ptr %i.as, align 8
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.422.0..sroa_idx.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.w, ptr %i.at, align 8
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRbNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.426.0..sroa_idx.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.u, ptr %i.au, align 8
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.430.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @174, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @175) #16
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.av = getelementptr i8, ptr %i.af, i64 16
  %.val86.i = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  store i64 %.val86.i, ptr %i.r, align 8
  store ptr %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 109, ptr %i.p, align 8
  store ptr %i.p, ptr %i.q, align 8
  %i.aw = icmp eq i64 %.val86.i, 109
  br i1 %i.aw, label %bb.h, label %bb.i, !prof !6

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 20, ptr %i.l, align 1
  %i.ax = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1
  %.not.i = icmp eq i64 %i.ay, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.az = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select148.i = select i1 %i.az, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select149.i = select i1 %i.az, i64 9, i64 0
  store ptr %spec.select148.i, ptr %i.o, align 8, !captures !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 %spec.select149.i, ptr %i.ba, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.bb = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink126.i = select i1 %i.bb, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink125.i = select i1 %i.bb, i64 4, i64 0
  store ptr %.sink126.i, ptr %i.n, align 8, !captures !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sink125.i, ptr %i.bc, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.o, ptr %i.m, align 8
  %.sroa.434.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.434.0..sroa_idx.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.s, ptr %i.bd, align 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.438.0..sroa_idx.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.q, ptr %i.be, align 8
  %.sroa.442.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRjNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.442.0..sroa_idx.i, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.n, ptr %i.bf, align 8
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.446.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @171, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @180) #16
  unreachable

bb.j:                                             ; preds = %bb.o
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 24, i64 noundef 8) #15
  %.val84.i = load ptr, ptr %i.ac, align 8, !nonnull !5, !noundef !5
  %.val85.i = load ptr, ptr %i.ae, align 8        ; 2 uses
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val84.i, i64 noundef 390, i64 noundef 1) #15
  %i.bg = icmp eq ptr %.val85.i, null
  br i1 %i.bg, label %_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_24RelocatableStringFactoryEB6_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85.i, i64 noundef 16, i64 noundef 8) #15
  br label %_RINvNtNtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common12string_tests7generic30remove_range_from_center_worksNtB2_24RelocatableStringFactoryEB6_.exit

.preheader.i:                                     ; preds = %.preheader.preheader.i, %bb.o
  %.sroa.065.0100.i = phi i64 [ %i.bh, %bb.o ], [ 10, %.preheader.preheader.i ] ; 5 uses
  %i.bh = add nuw nsw i64 %.sroa.065.0100.i, 1    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bi = trunc nuw i64 %.sroa.065.0100.i to i8
  %.lhs.trunc.i = add nuw i8 %i.bi, 100
  %i.bj = urem i8 %.lhs.trunc.i, 80
  %i.bk = add nuw nsw i8 %i.bj, 20
  store i8 %i.bk, ptr %i.f, align 1
  %i.bl = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 1      ; 2 uses
  %i.bn = icmp ult i64 %.sroa.065.0100.i, %i.bm
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.preheader.i
  %i.bo = extractvalue { ptr, i64 } %i.bl, 0
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.sroa.065.0100.i ; 2 uses
  store ptr %i.bp, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = load i8, ptr %i.f, align 1, !noundef !5
  %i.bs = icmp eq i8 %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !6

bb.m:                                             ; preds = %.preheader.i
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.065.0100.i, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @176) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bt = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select150.i = select i1 %i.bt, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select151.i = select i1 %i.bt, i64 9, i64 0
  store ptr %spec.select150.i, ptr %i.c, align 8, !captures !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select151.i, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bv = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink120.i = select i1 %i.bv, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink119.i = select i1 %i.bv, i64 4, i64 0
  store ptr %.sink120.i, ptr %i.b, align 8, !captures !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink119.i, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.470.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.470.0..sroa_idx.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.e, ptr %i.bx, align 8
  %.sroa.474.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.474.0..sroa_idx.i, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.d, ptr %i.by, align 8
  %.sroa.478.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.478.0..sroa_idx.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.b, ptr %i.bz, align 8
  %.sroa.482.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.482.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @177) #16
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %exitcond111.not.i = icmp eq i64 %i.bh, 109
  br i1 %exitcond111.not.i, label %bb.j, label %.preheader.i

bb.p:                                             ; preds = %bb.h
  %i.ca = extractvalue { ptr, i64 } %i.ax, 0      ; 2 uses
  store ptr %i.ca, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cb = load i8, ptr %i.ca, align 1, !noundef !5
  %i.cc = icmp eq i8 %i.cb, 20
  br i1 %i.cc, label %bb.s, label %bb.r, !prof !6

bb.q:                                             ; preds = %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.h
  %.sroa.047.099.lcssa.i = phi i64 [ 0, %bb.h ], [ 1, %bb.s ], [ 2, %bb.u ], [ 3, %bb.w ], [ 4, %bb.y ], [ 5, %bb.aa ], [ 6, %bb.ac ], [ 7, %bb.ae ], [ 8, %bb.ag ], [ 9, %bb.ai ]
  %.lcssa105.i = phi i64 [ 0, %bb.h ], [ %i.cl, %bb.s ], [ %i.ct, %bb.u ], [ %i.db, %bb.w ], [ %i.dj, %bb.y ], [ %i.dr, %bb.aa ], [ %i.dz, %bb.ac ], [ %i.eh, %bb.ae ], [ %i.ep, %bb.ag ], [ %i.ex, %bb.ai ]
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %.sroa.047.099.lcssa.i, i64 noundef %.lcssa105.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @178) #16
  unreachable

bb.r:                                             ; preds = %bb.aj, %bb.ah, %bb.af, %bb.ad, %bb.ab, %bb.z, %bb.x, %bb.v, %bb.t, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.cd = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %spec.select152.i = select i1 %i.cd, ptr @1, ptr inttoptr (i64 1 to ptr)
  %spec.select153.i = select i1 %i.cd, i64 9, i64 0
  store ptr %spec.select152.i, ptr %i.i, align 8, !captures !4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %spec.select153.i, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.cf = call noundef zeroext i1 @_RNvCs7iP7wj4erds_20iceoryx2_pal_testing11is_terminal() #15 ; 2 uses
  %.sink124.i = select i1 %i.cf, ptr @2, ptr inttoptr (i64 1 to ptr)
  %.sink123.i = select i1 %i.cf, i64 4, i64 0
  store ptr %.sink124.i, ptr %i.h, align 8, !captures !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sink123.i, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.452.0..sroa_idx.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.k, ptr %i.ch, align 8
  %.sroa.456.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.456.0..sroa_idx.i, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.j, ptr %i.ci, align 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRhNtB6_5Debug3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.460.0..sroa_idx.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.h, ptr %i.cj, align 8
  %.sroa.464.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtReNtB6_7Display3fmtCsjgu3Zj9OQAQ_34iceoryx2_bb_container_tests_common, ptr %.sroa.464.0..sroa_idx.i, align 8
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking9panic_fmt(ptr noundef nonnull @169, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @179) #16
  unreachable

bb.s:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 21, ptr %i.l, align 1
  %i.ck = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.cl = extractvalue { ptr, i64 } %i.ck, 1      ; 2 uses
  %i.cm = icmp ugt i64 %i.cl, 1
  br i1 %i.cm, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  %i.cn = extractvalue { ptr, i64 } %i.ck, 0
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  store ptr %i.co, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cp = load i8, ptr %i.co, align 1, !noundef !5
  %i.cq = load i8, ptr %i.l, align 1, !noundef !5
  %i.cr = icmp eq i8 %i.cp, %i.cq
  br i1 %i.cr, label %bb.u, label %bb.r, !prof !6

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 22, ptr %i.l, align 1
  %i.cs = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.ct = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  %i.cu = icmp ugt i64 %i.ct, 2
  br i1 %i.cu, label %bb.v, label %bb.q

bb.v:                                             ; preds = %bb.u
  %i.cv = extractvalue { ptr, i64 } %i.cs, 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 2 ; 2 uses
  store ptr %i.cw, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.cx = load i8, ptr %i.cw, align 1, !noundef !5
  %i.cy = load i8, ptr %i.l, align 1, !noundef !5
  %i.cz = icmp eq i8 %i.cx, %i.cy
  br i1 %i.cz, label %bb.w, label %bb.r, !prof !6

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 23, ptr %i.l, align 1
  %i.da = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.db = extractvalue { ptr, i64 } %i.da, 1      ; 2 uses
  %i.dc = icmp ugt i64 %i.db, 3
  br i1 %i.dc, label %bb.x, label %bb.q

bb.x:                                             ; preds = %bb.w
  %i.dd = extractvalue { ptr, i64 } %i.da, 0
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 3 ; 2 uses
  store ptr %i.de, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.df = load i8, ptr %i.de, align 1, !noundef !5
  %i.dg = load i8, ptr %i.l, align 1, !noundef !5
  %i.dh = icmp eq i8 %i.df, %i.dg
  br i1 %i.dh, label %bb.y, label %bb.r, !prof !6

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 24, ptr %i.l, align 1
  %i.di = call { ptr, i64 } @_RNvXs4_NtNtCs5kzjBmDVxDj_21iceoryx2_bb_container6string18relocatable_stringNtB5_17RelocatableStringNtNtNtCs8Chj7Szqq0n_4core3ops5deref5Deref5deref(ptr noundef nonnull align 8 %i.af) #15 ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 1      ; 2 uses
  %i.dk = icmp ugt i64 %i.dj, 4
  br i1 %i.dk, label %bb.z, label %bb.q

bb.z:                                             ; preds = %bb.y
  %i.dl = extractvalue { ptr, i64 } %i.di, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4 ; 2 uses
  store ptr %i.dm, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr %i.l, ptr %i.j, align 8
  %i.dn = load i8, ptr %i.dm, align 1, !noundef !5
  %i.do = load i8, ptr %i.l, align 1, !noundef !5
  %i.dp = icmp eq i8 %i.dn, %i.do
  br i1 %i.dp, label %bb.aa, label %bb.r, !prof !6

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
end_hunk_2
