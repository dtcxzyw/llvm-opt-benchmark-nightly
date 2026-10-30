Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish_util-c4200b407d9f178c.fish_util.27cf08354dd555c1-cgu.0?download=true
inline.NumInlined: 128
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvCs3pTQYeTDvAj_9fish_util15wcsfilecmp_glob:bb.a
  %.not = icmp eq i32 %i.ac, -1
  br i1 %.not, label %bb.f, label %bb.e, !prof !6

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_lower(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.u)
  %i.ad = load i32, ptr %i.l, align 4, !range !7, !alias.scope !41, !noundef !4
  %i.ae = icmp eq i32 %i.ad, 0
  %i.af = load i32, ptr %i.m, align 4, !range !7, !alias.scope !41
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select.i42 = select i1 %i.ag, i64 1, i64 2
  %.sroa.4.0.i43 = select i1 %i.ae, i64 %spec.select.i42, i64 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.548.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.d, align 8
  store i64 %.sroa.4.0.i43, ptr %.sroa.447.0..sroa_idx, align 8
  %i.ah = call noundef i32 @_RNvXsO_NtCs3oUPovFnLWP_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d) ; 3 uses
  %.not38 = icmp eq i32 %i.ah, -1
  br i1 %.not38, label %bb.h, label %bb.g, !prof !6

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #13
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ai = icmp eq i32 %i.ac, %i.ah
  br i1 %i.ai, label %.backedge.sink.split, label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.aj = call i8 @llvm.ucmp.i8.i32(i32 %i.ac, i32 %i.ah)
  br label %.loopexit

.backedge.sink.split:                             ; preds = %bb.g, %bb.c
  %i.ak = add nuw i64 %.sroa.010.068, 1
  %i.al = add nuw i64 %i.q, 1                     ; 2 uses
  store i64 %i.al, ptr %i.g, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.m
  %.sroa.010.0.be = phi i64 [ %i.at, %bb.m ], [ %i.ak, %.backedge.sink.split ] ; 3 uses
  %.be = phi i64 [ %i.av, %bb.m ], [ %i.al, %.backedge.sink.split ] ; 3 uses
  %i.am = icmp ult i64 %.sroa.010.0.be, %1
  %i.an = icmp ult i64 %.be, %3
  %or.cond3 = and i1 %i.am, %i.an
  br i1 %or.cond3, label %bb.b, label %.loopexit.thread

bb.j:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.ao = sub nuw i64 %1, %.sroa.010.068
  %i.ap = sub nuw i64 %3, %i.q
  call fastcc void @_RNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef %i.ao, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.t, i64 noundef %i.ap)
  %i.aq = load i8, ptr %i.n, align 8, !range !8, !noundef !4 ; 2 uses
  %i.ar = load i64, ptr %i.f, align 8, !noundef !4
  %i.as = load i64, ptr %i.o, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.at = add i64 %i.ar, %.sroa.010.068           ; 4 uses
  %i.au = icmp ult i64 %i.at, %.sroa.010.068
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = add i64 %i.as, %i.q                     ; 5 uses
  %i.aw = icmp ult i64 %i.av, %i.q
  br i1 %i.aw, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14
  unreachable

bb.m:                                             ; preds = %bb.k
  store i64 %i.av, ptr %i.g, align 8
  %i.ax = icmp ne i8 %i.aq, 0
  %i.ay = icmp eq i64 %i.at, %1
  %or.cond5 = or i1 %i.ax, %i.ay
  %i.az = icmp eq i64 %i.av, %3
  %or.cond7 = or i1 %or.cond5, %i.az
  br i1 %or.cond7, label %.loopexit, label %.backedge

bb.n:                                             ; preds = %bb.k
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14
  unreachable

.loopexit.thread:                                 ; preds = %.backedge, %bb.a, %.loopexit
  %i.ba = phi i64 [ %i.p, %.loopexit ], [ 0, %bb.a ], [ %.be, %.backedge ] ; 2 uses
  %.sroa.010.1104 = phi i64 [ %.sroa.010.1, %.loopexit ], [ 0, %bb.a ], [ %.sroa.010.0.be, %.backedge ]
  %i.bb = icmp eq i64 %.sroa.010.1104, %1
  br i1 %i.bb, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.loopexit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %3, ptr %i.c, align 8
  %i.bc = icmp eq i64 %i.ba, %3
  br i1 %i.bc, label %bb.r, label %bb.q, !prof !9

bb.p:                                             ; preds = %.loopexit.thread
  %i.bd = icmp eq i64 %i.ba, %3
  br i1 %i.bd, label %bb.s, label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs3pTQYeTDvAj_9fish_util.exit

bb.q:                                             ; preds = %bb.o
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14
  unreachable

bb.r:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs3pTQYeTDvAj_9fish_util.exit

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !42)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  %..i.i = call noundef range(i64 0, 2305843009213693952) i64 @llvm.umin.i64(i64 range(i64 0, 2305843009213693952) %3, i64 range(i64 0, 2305843009213693952) %1) ; 2 uses
  %.not.i = icmp eq i64 %..i.i, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.t:                                             ; preds = %.lr.ph.i
  %i.be = add nuw nsw i64 %.sroa.01.019.i, 1      ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.be, %..i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.t, %bb.s
  %i.bf = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 2305843009213693952) %1, i64 range(i64 0, 2305843009213693952) %3)
  br label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs3pTQYeTDvAj_9fish_util.exit

.loopexit.i:                                      ; preds = %.lr.ph.i
  %i.bg = call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32 %.val15.i, i32 %.val16.i)
  br label %_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs3pTQYeTDvAj_9fish_util.exit

.lr.ph.i:                                         ; preds = %bb.s, %bb.t
  %.sroa.01.019.i = phi i64 [ %i.be, %bb.t ], [ 0, %bb.s ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.019.i
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.sroa.01.019.i
  %.val15.i = load i32, ptr %i.bh, align 4, !alias.scope !42, !noundef !4 ; 2 uses
  %.val16.i = load i32, ptr %i.bi, align 4, !alias.scope !43, !noundef !4 ; 2 uses
  %i.bj = icmp eq i32 %.val15.i, %.val16.i
  br i1 %i.bj, label %bb.t, label %.loopexit.i

_RINvNtNtCs3oUPovFnLWP_4core5slice3cmp13chaining_implmNtNtB6_3cmp8OrderingzNCNvXs7_B2_mNtB2_8SliceOrd7compare0NCB1c_s_0ECs3pTQYeTDvAj_9fish_util.exit: ; preds = %bb.r, %bb.p, %._crit_edge.i, %.loopexit.i, %.loopexit
  %.sroa.0.4 = phi i8 [ %.sroa.0.1, %.loopexit ], [ -1, %bb.p ], [ 1, %bb.r ], [ %i.bf, %._crit_edge.i ], [ %i.bg, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret i8 %.sroa.0.4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 4 captures(address) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl i64 %2, 2                           ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %i.c = add i64 %.idx, -4
  %i.d = lshr exact i64 %i.c, 2
  %i.e = add nuw nsw i64 %i.d, 1
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i
  %.sroa.01.019.i.i.i = phi i64 [ %i.j, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.f = phi ptr [ %i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ], [ %1, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !range !7, !alias.scope !86, !noalias !87, !noundef !4
  %i.h = icmp eq i32 %i.g, 48
  br i1 %i.h, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i, label %.loopexit

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.j = add nuw nsw i64 %.sroa.01.019.i.i.i, 1
  %i.k = icmp eq ptr %i.i, %i.a
  br i1 %i.k, label %.loopexit, label %.lr.ph.i.i.i

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i, %.lr.ph.i.i.i, %bb.a
  %.sroa.0.1.i.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.019.i.i.i, %.lr.ph.i.i.i ], [ %i.e, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digits0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ] ; 4 uses
  %.idx63 = shl i64 %4, 2                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 %.idx63 ; 3 uses
  %i.m = icmp eq i64 %4, 0
  br i1 %i.m, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit, label %.lr.ph.i.i.i37.preheader

.lr.ph.i.i.i37.preheader:                         ; preds = %.loopexit
  %i.n = add i64 %.idx63, -4
  %i.o = lshr exact i64 %i.n, 2
  %i.p = add nuw nsw i64 %i.o, 1
  br label %.lr.ph.i.i.i37

.lr.ph.i.i.i37:                                   ; preds = %.lr.ph.i.i.i37.preheader, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i
  %.sroa.01.019.i.i.i38 = phi i64 [ %i.u, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ], [ 0, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.t, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ], [ %3, %.lr.ph.i.i.i37.preheader ] ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !range !7, !alias.scope !88, !noalias !89, !noundef !4
  %i.s = icmp eq i32 %i.r, 48
  br i1 %i.s, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i: ; preds = %.lr.ph.i.i.i37
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.u = add nuw nsw i64 %.sroa.01.019.i.i.i38, 1
  %i.v = icmp eq ptr %i.t, %i.l
  br i1 %i.v, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit, label %.lr.ph.i.i.i37

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i, %.lr.ph.i.i.i37, %.loopexit
  %.sroa.0.1.i.i39 = phi i64 [ 0, %.loopexit ], [ %.sroa.01.019.i.i.i38, %.lr.ph.i.i.i37 ], [ %i.p, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4ItercEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i ] ; 4 uses
  %i.w = icmp ult i64 %.sroa.0.1.i.i, %2
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.sroa.0.1.i.i
  %.sroa.010.072 = select i1 %i.w, ptr %i.x, ptr @19
  %i.y = icmp ult i64 %.sroa.0.1.i.i39, %4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.sroa.0.1.i.i39
  %.sroa.015.073 = select i1 %i.y, ptr %i.z, ptr @19 ; 2 uses
  %i.aa = load i32, ptr %.sroa.010.072, align 4, !range !7, !noundef !4 ; 2 uses
  %i.ab = add nsw i32 %i.aa, -48
  %or.cond74 = icmp ult i32 %i.ab, 10
  br i1 %or.cond74, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit, %bb.y
  %i.ac = phi i32 [ %i.da, %bb.y ], [ %i.aa, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ]
  %.sroa.015.078 = phi ptr [ %.sroa.015.0, %bb.y ], [ %.sroa.015.073, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ] ; 2 uses
  %.sroa.0.077 = phi i64 [ %i.bn, %bb.y ], [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ] ; 3 uses
  %.sroa.05.076 = phi i64 [ %i.cv, %bb.y ], [ %.sroa.0.1.i.i39, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ] ; 3 uses
  %.sroa.020.075 = phi i8 [ %.sroa.020.3, %bb.y ], [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ] ; 2 uses
  %i.ad = load i32, ptr %.sroa.015.078, align 4, !range !7, !noundef !4 ; 2 uses
  %i.ae = add nsw i32 %i.ad, -48
  %or.cond33 = icmp ult i32 %i.ae, 10
  br i1 %or.cond33, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit
  %.sroa.05.0.lcssa = phi i64 [ %.sroa.0.1.i.i39, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ], [ %.sroa.05.076, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.1.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ], [ %.sroa.0.077, %.lr.ph ] ; 2 uses
  %.sroa.015.0.lcssa = phi ptr [ %.sroa.015.073, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ], [ %.sroa.015.078, %.lr.ph ]
  %.sroa.020.1 = phi i8 [ 0, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4ItercENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2A_5count0EB1H_.exit ], [ 1, %.lr.ph ] ; 2 uses
  %i.af = load i32, ptr %.sroa.015.0.lcssa, align 4, !range !7, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.lcssa, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %bb.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge, %bb.i
  %i.ag = phi i32 [ %i.be, %bb.i ], [ %i.af, %._crit_edge ] ; 5 uses
  %.sroa.020.1108 = phi i8 [ %.sroa.020.1109, %bb.i ], [ %.sroa.020.1, %._crit_edge ] ; 5 uses
  %.sroa.0.0.lcssa105 = phi i64 [ %.sroa.0.0.lcssa106, %bb.i ], [ 0, %._crit_edge ] ; 5 uses
  %.sroa.05.0.lcssa102 = phi i64 [ %.sroa.05.0.lcssa103, %bb.i ], [ %.sroa.05.0.lcssa, %._crit_edge ] ; 5 uses
  %.promoted.i.i.i.i = phi ptr [ %i.bh, %bb.i ], [ %1, %._crit_edge ] ; 2 uses
  %i.ah = icmp eq ptr %.promoted.i.i.i.i, %i.a
  br i1 %i.ah, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.bc, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ 0, %._crit_edge.i.i.i ] ; 5 uses
  %i.ai = phi ptr [ %i.aj, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %.promoted.i.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ak = load i32, ptr %i.ai, align 4, !range !7, !alias.scope !90, !noalias !91, !noundef !4 ; 7 uses
  switch i32 %i.ak, label %bb.b [
    i32 32, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
    i32 13, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
    i32 12, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
    i32 11, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
    i32 10, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
    i32 9, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.al = icmp samesign ult i32 %i.ak, 133
  br i1 %i.al, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = lshr i32 %i.ak, 8
  switch i32 %i.am, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit [
    i32 0, label %bb.f
    i32 22, label %bb.d
    i32 32, label %bb.g
    i32 48, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.an = icmp eq i32 %i.ak, 5760
  %i.ao = zext i1 %i.an to i8
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ap = icmp eq i32 %i.ak, 12288
  %i.aq = zext i1 %i.ap to i8
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.c
  %i.ar = and i32 %i.ak, 255
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !92, !noundef !4
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.av = and i32 %i.ak, 255
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !92, !noundef !4
  %i.az = lshr i8 %i.ay, 1
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i

_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.aq, %bb.e ], [ %i.au, %bb.f ], [ %i.ao, %bb.d ], [ %i.az, %bb.g ]
  %i.ba = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.ba, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit

_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.bb = icmp eq i64 %.sroa.01.019.i.i.i.i, -1
  br i1 %i.bb, label %bb.h, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i

bb.h:                                             ; preds = %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #14, !noalias !92
  unreachable

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i: ; preds = %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.thread.i.i.i.i.i
  %i.bc = add nuw i64 %.sroa.01.019.i.i.i.i, 1    ; 2 uses
  %i.bd = icmp eq ptr %i.aj, %i.a
  br i1 %i.bd, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit, label %.lr.ph.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.be = phi i32 [ %i.dc, %._crit_edge.thread ], [ %i.af, %._crit_edge ] ; 2 uses
  %.sroa.020.1109 = phi i8 [ %.sroa.020.3, %._crit_edge.thread ], [ %.sroa.020.1, %._crit_edge ] ; 2 uses
  %.sroa.0.0.lcssa106 = phi i64 [ %i.bn, %._crit_edge.thread ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.05.0.lcssa103 = phi i64 [ %i.cv, %._crit_edge.thread ], [ %.sroa.05.0.lcssa, %._crit_edge ] ; 2 uses
  %i.bf = add i64 %.sroa.0.0.lcssa106, -1         ; 2 uses
  %.not.i.not.i.i.i = icmp ult i64 %i.bf, %2
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit: ; preds = %bb.b, %bb.c, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i, %._crit_edge.i.i.i, %bb.i
  %i.bi = phi i32 [ %i.ag, %._crit_edge.i.i.i ], [ %i.be, %bb.i ], [ %i.ag, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %i.ag, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i ], [ %i.ag, %bb.c ], [ %i.ag, %bb.b ]
  %.sroa.020.1107 = phi i8 [ %.sroa.020.1108, %._crit_edge.i.i.i ], [ %.sroa.020.1109, %bb.i ], [ %.sroa.020.1108, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %.sroa.020.1108, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i ], [ %.sroa.020.1108, %bb.c ], [ %.sroa.020.1108, %bb.b ]
  %.sroa.0.0.lcssa104 = phi i64 [ %.sroa.0.0.lcssa105, %._crit_edge.i.i.i ], [ %.sroa.0.0.lcssa106, %bb.i ], [ %.sroa.0.0.lcssa105, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %.sroa.0.0.lcssa105, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa105, %bb.c ], [ %.sroa.0.0.lcssa105, %bb.b ] ; 2 uses
  %.sroa.05.0.lcssa101 = phi i64 [ %.sroa.05.0.lcssa102, %._crit_edge.i.i.i ], [ %.sroa.05.0.lcssa103, %bb.i ], [ %.sroa.05.0.lcssa102, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %.sroa.05.0.lcssa102, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i ], [ %.sroa.05.0.lcssa102, %bb.c ], [ %.sroa.05.0.lcssa102, %bb.b ] ; 4 uses
  %.sroa.0.1.i.i40 = phi i64 [ 0, %._crit_edge.i.i.i ], [ 0, %bb.i ], [ %.sroa.01.019.i.i.i.i, %bb.b ], [ %.sroa.01.019.i.i.i.i, %bb.c ], [ %.sroa.01.019.i.i.i.i, %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0B3_.exit.i.i.i.i.i ], [ %i.bc, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ]
  %i.bj = add i64 %.sroa.0.1.i.i40, %.sroa.0.0.lcssa104 ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %.sroa.0.0.lcssa104
  br i1 %i.bk, label %bb.t, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.bl = icmp eq i8 %.sroa.020.075, 0
  %i.bm = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ac, i32 %i.ad)
  %.sroa.020.3 = select i1 %i.bl, i8 %i.bm, i8 %.sroa.020.075 ; 2 uses
  %i.bn = add i64 %.sroa.0.077, 1                 ; 4 uses
  %i.bo = icmp eq i64 %.sroa.0.077, -1
  br i1 %i.bo, label %bb.x, label %bb.w

bb.k:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss0_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit
  %.not.i.i.i41 = icmp eq i64 %.sroa.05.0.lcssa101, 0
  br i1 %.not.i.i.i41, label %._crit_edge.i.i.i48, label %bb.s

._crit_edge.i.i.i48:                              ; preds = %bb.k, %bb.s
  %.promoted.i.i.i.i44 = phi ptr [ %i.co, %bb.s ], [ %3, %bb.k ] ; 2 uses
  %i.bp = icmp eq ptr %.promoted.i.i.i.i44, %i.l
  br i1 %i.bp, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit, label %.lr.ph.i.i.i.i45

.lr.ph.i.i.i.i45:                                 ; preds = %._crit_edge.i.i.i48, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i46 = phi i64 [ %i.ck, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ 0, %._crit_edge.i.i.i48 ] ; 5 uses
  %i.bq = phi ptr [ %i.br, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRcjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_4skip4SkipINtNtNtBg_5slice4iter4ItercEEB2R_EB1i_5count0E0E0B2V_.exit.i.i.i.i ], [ %.promoted.i.i.i.i44, %._crit_edge.i.i.i48 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.bs = load i32, ptr %i.bq, align 4, !range !7, !alias.scope !93, !noalias !94, !noundef !4 ; 7 uses
  switch i32 %i.bs, label %bb.l [
    i32 32, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
    i32 13, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
    i32 12, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
    i32 11, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
    i32 10, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
    i32 9, label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.thread.i.i.i.i.i
  ]

bb.l:                                             ; preds = %.lr.ph.i.i.i.i45
  %i.bt = icmp samesign ult i32 %i.bs, 133
  br i1 %i.bt, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = lshr i32 %i.bs, 8
  switch i32 %i.bu, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4ItercEENCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2U_5count0EB20_.exit [
    i32 0, label %bb.p
    i32 22, label %bb.n
    i32 32, label %bb.q
    i32 48, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.bv = icmp eq i32 %i.bs, 5760
  %i.bw = zext i1 %i.bv to i8
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bx = icmp eq i32 %i.bs, 12288
  %i.by = zext i1 %i.bx to i8
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.i.i.i.i.i

bb.p:                                             ; preds = %bb.m
  %i.bz = and i32 %i.bs, 255
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !noalias !95, !noundef !4
  br label %_RNCNvCs3pTQYeTDvAj_9fish_util25wcsfilecmp_leading_digitss1_0B3_.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.m
  %i.cd = and i32 %i.bs, 255
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !95, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvCs3pTQYeTDvAj_9fish_util6perror:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit15: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i12, %bb.r
  %i.at = invoke noundef ptr @_RNvXss_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 1)
          to label %bb.v unwind label %bb.n       ; 4 uses

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit15
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit19, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = and i64 %i.av, 3
  switch i64 %i.aw, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16
    i64 3, label %bb.x
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16
    i64 1, label %bb.y
  ], !prof !5

bb.x:                                             ; preds = %bb.w
  %i.ax = icmp ult ptr %i.at, inttoptr (i64 188978561024 to ptr)
  %i.ay = and i64 %i.av, 1095216660480
  %i.az = icmp ne i64 %i.ay, 1095216660480
  call void @llvm.assume(i1 %i.ax)
  call void @llvm.assume(i1 %i.az)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16

bb.y:                                             ; preds = %bb.w
  %i.ba = getelementptr i8, ptr %i.at, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ba, ptr %i.bb, align 8, !alias.scope !112
  store i8 3, ptr %i.a, align 8, !alias.scope !112
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16 unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16: ; preds = %bb.y, %bb.x, %bb.w, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit19

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit19: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i16, %bb.v
  %.val7 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val7, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !4
  %i.be = add i32 %i.bd, -1                       ; 2 uses
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockECs3pTQYeTDvAj_9fish_util.exit

bb.z:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit19
  store atomic i64 0, ptr %.val7 monotonic, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.val7, i64 8 ; 2 uses
  %i.bh = atomicrmw xchg ptr %i.bg, i32 0 release, align 4
  %i.bi = icmp eq i32 %i.bh, 2
  br i1 %i.bi, label %bb.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockECs3pTQYeTDvAj_9fish_util.exit, !prof !6

bb.aa:                                            ; preds = %bb.z
  call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bg)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockECs3pTQYeTDvAj_9fish_util.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockECs3pTQYeTDvAj_9fish_util.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit19, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.ab:                                            ; preds = %.body
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.ac:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @_RNvCs3pTQYeTDvAj_9fish_util8get_time() unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call { i64, i32 } @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime3now() ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.b, align 8, !range !113, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !114, !noundef !4
  %i.m = mul i64 %i.j, 1000000
  %i.n = udiv i32 %i.l, 1000
  %i.o = zext nneg i32 %i.n to i64
  %i.p = add i64 %i.m, %i.o                       ; 3 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %i.p, -9223372036854775808
  br i1 %i.q, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi i64 [ %i.r, %bb.d ], [ %i.p, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0

bb.d:                                             ; preds = %bb.b
  %i.r = sub nsw i64 0, %i.p
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #14
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs3pTQYeTDvAj_9fish_util(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !10, !noundef !4
  %i.c = tail call noundef ptr @_RNvXss_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !4 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i
    i64 1, label %bb.e
  ], !prof !5

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !117
  store i8 3, ptr %i.a, align 8, !alias.scope !117
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs3pTQYeTDvAj_9fish_util(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtBb_3fmt5Write10write_charCs3pTQYeTDvAj_9fish_util(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.c, label %6, label %2

2:                                                ; preds = %bb.a
  %3 = icmp samesign ult i32 %1, 2048
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = icmp samesign ult i32 %1, 65536
  %..i = select i1 %5, i64 3, i64 4
  br label %6

6:                                                ; preds = %4, %2, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %2 ], [ %..i, %4 ], [ 1, %bb.a ]
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %6
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %6
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !125
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !125
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !125
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !125
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !125
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !125
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !125
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !125
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !125
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !125
  br label %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !126, !nonnull !4, !align !10, !noundef !4
  %i.ad = call noundef ptr @_RNvXss_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.0.i), !noalias !126 ; 3 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs3pTQYeTDvAj_9fish_util.exit

bb.h:                                             ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !126, !noundef !4 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !127
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i
    i64 1, label %bb.k
  ], !prof !5

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !128, !noalias !127
  store i8 3, ptr %i.a, align 8, !alias.scope !128, !noalias !127
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i unwind label %bb.l, !noalias !126

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !127
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit.i

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !126
  resume { ptr, i32 } %i.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs3pTQYeTDvAj_9fish_util.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !126
  br label %_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs3pTQYeTDvAj_9fish_util.exit

_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtB8_3fmt5Write9write_strCs3pTQYeTDvAj_9fish_util.exit: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs3pTQYeTDvAj_9fish_util.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtNtBb_3fmt5Write9write_fmtCs3pTQYeTDvAj_9fish_util(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterNtNtNtCsaL1QbXo9JQH_3std2io5stdio10StderrLockENtB4_12SpecWriteFmt14spec_write_fmtCs3pTQYeTDvAj_9fish_util.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @0, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !129
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 0, 134) i32 @_RNvMNtCse7JGOylGlDZ_3nix5errnoNtNtB2_6consts5Errno4last() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

; Function Attrs: nofree nounwind nonlazybind uwtable
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64, i64) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_upper(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsu_NtCs3oUPovFnLWP_4core4charNtB5_11ToUppercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.ucmp.i8.i32(i32, i32) #8

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11conversions8to_lower(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvXsO_NtCs3oUPovFnLWP_4core4charNtB5_11ToLowercaseNtNtNtNtB7_4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMsk_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @strerror(i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
declare noundef i64 @strlen(ptr noundef captures(none)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_RNvXss_NtNtCsaL1QbXo9JQH_3std2io5stdioNtB5_10StderrLockNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_all(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime3now() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCsaL1QbXo9JQH_3std4timeNtB5_10SystemTime14duration_since(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_neg_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nofree nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { noreturn }
attributes #14 = { noinline noreturn }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!7 = !{i32 0, i32 1114112}
!8 = !{i8 -1, i8 2}
!9 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!10 = !{i64 8}
!11 = distinct !{!11, i1 true, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs3pTQYeTDvAj_9fish_util"}
!12 = distinct !{!12, !11, !"_RINvNtNtNtCs3oUPovFnLWP_4core2io5error4repr11decode_reprNtB4_11CustomOwnerNCNvXs1_B2_NtB2_4ReprNtNtNtB8_3ops4drop4Drop4drop0ECs3pTQYeTDvAj_9fish_util: argument 0"}
end_hunk_1
