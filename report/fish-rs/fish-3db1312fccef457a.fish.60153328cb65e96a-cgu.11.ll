Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.11?download=true
inline.NumInlined: 2091
inline.NumDeleted: 836
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend11replace_all:bb.a
  %i.k = phi i64 [ %i.d, %bb.a ], [ %i.i, %bb.b ]
  %.sroa.0.020 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.m = sub nuw i64 %i.k, %.sroa.0.020
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.0.020
  %i.o = call { i64, i64 } @_RINvCskr4qsHYS30i_15fish_widestring17subslice_positionhRShBR_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef 1) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.h, i64 noundef %i.i, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2958) #37
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = extractvalue { i64, i64 } %i.o, 1
  %i.s = add i64 %i.r, %.sroa.0.020               ; 6 uses
  %i.t = icmp ult i64 %i.s, %.sroa.0.020
  br i1 %i.t, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  ret void

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = icmp eq i64 %i.s, -1
  br i1 %i.u, label %bb.l, label %bb.i

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2955) #37
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = add nuw i64 %i.s, 1
  call void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE5drainINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejEECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.v)
  store ptr %2, ptr %i.f, align 8, !alias.scope !3029, !noalias !3030
  store ptr %i.e, ptr %i.g, align 8, !alias.scope !3029, !noalias !3030
  invoke void @_RNvXs1_NtNtCs1xwejQucwHj_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtB10_5slice4iter4IterhEEENtNtNtB10_3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainhEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.j
  resume { ptr, i32 } %i.w

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit: ; preds = %bb.i
  call void @_RNvXs5_NtNtCs1xwejQucwHj_5alloc3vec5drainINtB5_5DrainhENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.y = icmp eq i64 %i.s, -2
  br i1 %i.y, label %bb.m, label %bb.b

bb.l:                                             ; preds = %bb.g
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2956) #37
  unreachable

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter8adapters6copied6CopiedINtNtNtB4_5slice4iter4IterhEEEECs8frGy5WneL6_4fish.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2957) #37
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20decode_item_fish_2_0(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [88 x i8], align 8                ; 14 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.7244.sroa.0 = alloca [16 x i8], align 8  ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.7.sroa.0 = alloca [16 x i8], align 8     ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.r = icmp samesign eq i64 %2, 0
  br i1 %i.r, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.sroa.02.07.i.i = phi i64 [ %i.v, %bb.b ], [ 0, %bb.a ] ; 11 uses
  %i.s = phi ptr [ %i.u, %bb.b ], [ %1, %bb.a ]   ; 2 uses
  %.val.i.i = load i8, ptr %i.s, align 1, !alias.scope !3160, !noalias !3161, !noundef !5
  %i.t = icmp eq i8 %.val.i.i, 10
  br i1 %i.t, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.02.07.i.i, 1
  %i.w = icmp eq ptr %i.u, %i.q
  br i1 %i.w, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit: ; preds = %.lr.ph.i.i
  %i.x = icmp samesign ult i64 %.sroa.02.07.i.i, %2
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %.sroa.02.07.i.i, 1      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3162)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.02.07.i.i
  %i.aa = icmp samesign eq i64 %.sroa.02.07.i.i, 0
  br i1 %i.aa, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i = phi i64 [ %i.ae, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 4 uses
  %i.ab = phi ptr [ %i.ad, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ] ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !3163, !noalias !3164, !noundef !5
  switch i8 %i.ac, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i [
    i8 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
    i8 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  ]

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 2 uses
  %i.ae = add nuw nsw i64 %.sroa.01.019.i.i.i.i, 1
  %i.af = icmp eq ptr %i.ad, %i.z
  br i1 %i.af, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.ag = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i, %.sroa.02.07.i.i
  br i1 %i.ag, label %bb.c, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit, !prof !33

bb.c:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2954) #37, !noalias !3162
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit: ; preds = %bb.b, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, %bb.a, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i
  %.sroa.02.07.i.lcssa.sink.i322 = phi i64 [ %.sroa.02.07.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %.sroa.02.07.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %bb.b ] ; 5 uses
  %.sink.i321 = phi ptr [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ %1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ inttoptr (i64 1 to ptr), %bb.a ], [ %1, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 2 uses
  %.sink11.i320 = phi i64 [ %i.y, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 1, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %i.y, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %2, %bb.b ] ; 4 uses
  %.sroa.0.1.i.i4.i = phi i64 [ %.sroa.01.019.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit ], [ 0, %bb.a ], [ %.sroa.02.07.i.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %bb.b ] ; 5 uses
  %i.ah = sub nuw nsw i64 %.sroa.02.07.i.lcssa.sink.i322, %.sroa.0.1.i.i4.i ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i321, i64 %.sroa.0.1.i.i4.i ; 8 uses
  %i.aj = tail call noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2962, i64 noundef 5)
  br i1 %i.aj, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.e:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.0)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sink.i321, i64 %.sroa.02.07.i.lcssa.sink.i322 ; 2 uses
  %i.al = icmp eq i64 %.sroa.02.07.i.lcssa.sink.i322, %.sroa.0.1.i.i4.i
  br i1 %i.al, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %bb.e, %bb.f
  %.sroa.02.07.i.i115 = phi i64 [ %i.ap, %bb.f ], [ 0, %bb.e ] ; 15 uses
  %i.am = phi ptr [ %i.ao, %bb.f ], [ %i.ai, %bb.e ] ; 2 uses
  %.val.i.i116 = load i8, ptr %i.am, align 1, !noalias !3165, !noundef !5
  %i.an = icmp eq i8 %.val.i.i116, 58
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i114
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ap = add nuw i64 %.sroa.02.07.i.i115, 1
  %i.aq = icmp eq ptr %i.ao, %i.ak
  br i1 %i.aq, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, label %.lr.ph.i.i114

bb.g:                                             ; preds = %.lr.ph.i.i114
  %i.ar = icmp ult i64 %.sroa.02.07.i.i115, %i.ah
  tail call void @llvm.assume(i1 %i.ar), !noalias !3166
  %i.as = add nuw i64 %.sroa.02.07.i.i115, 1      ; 3 uses
  %i.at = sub i64 %i.ah, %i.as                    ; 7 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.as ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3168)
  %i.av = icmp samesign eq i64 %.sroa.02.07.i.i115, 0
  br i1 %i.av, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit.thread, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.sroa.02.07.i.i115, 4
  br i1 %min.iters.check, label %.preheader396.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1103 = icmp ult i64 %.sroa.02.07.i.i115, 32
  br i1 %min.iters.check1103, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aw = and i64 %.sroa.02.07.i.i115, 28
  %n.vec = and i64 %.sroa.02.07.i.i115, -32       ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi1104 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %wide.load = load <16 x i8>, ptr %i.ax, align 1, !noalias !3169
  %wide.load1105 = load <16 x i8>, ptr %i.ay, align 1, !noalias !3169
  %i.az = icmp eq <16 x i8> %wide.load, splat (i8 92)
  %i.ba = icmp eq <16 x i8> %wide.load1105, splat (i8 92)
  %i.bb = or <16 x i1> %vec.phi, %i.az            ; 2 uses
  %i.bc = or <16 x i1> %vec.phi1104, %i.ba        ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !3056

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.bc, %i.bb
  %i.be = bitcast <16 x i1> %bin.rdx to i16
  %i.bf = icmp ne i16 %i.be, 0                    ; 3 uses
  %cmp.n = icmp eq i64 %.sroa.02.07.i.i115, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.aw, 0
  br i1 %min.epilog.iters.check, label %.preheader396.preheader, label %vec.epilog.ph, !prof !3170

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.bf, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec1106 = and i64 %.sroa.02.07.i.i115, -4    ; 3 uses
  %i.bg = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1107 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1110, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi1108 = phi <4 x i1> [ %i.bg, %vec.epilog.ph ], [ %i.bj, %vec.epilog.vector.body ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index1107
  %wide.load1109 = load <4 x i8>, ptr %i.bh, align 1, !noalias !3169
  %i.bi = icmp eq <4 x i8> %wide.load1109, splat (i8 92)
  %i.bj = or <4 x i1> %vec.phi1108, %i.bi         ; 2 uses
  %index.next1110 = add nuw i64 %index1107, 4     ; 2 uses
  %i.bk = icmp eq i64 %index.next1110, %n.vec1106
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3057

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bl = bitcast <4 x i1> %i.bj to i4
  %i.bm = icmp ne i4 %i.bl, 0                     ; 2 uses
  %cmp.n1111 = icmp eq i64 %.sroa.02.07.i.i115, %n.vec1106
  br i1 %cmp.n1111, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit, label %.preheader396.preheader

.preheader396.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.04.0.i124.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1106, %vec.epilog.middle.block ]
  %.sroa.02.0.i.ph = phi i1 [ false, %iter.check ], [ %i.bf, %vec.epilog.iter.check ], [ %i.bm, %vec.epilog.middle.block ]
  br label %.preheader396

.preheader396:                                    ; preds = %.preheader396.preheader, %.preheader396
  %.sroa.04.0.i124 = phi i64 [ %i.bq, %.preheader396 ], [ %.sroa.04.0.i124.ph, %.preheader396.preheader ] ; 2 uses
  %.sroa.02.0.i = phi i1 [ %i.bp, %.preheader396 ], [ %.sroa.02.0.i.ph, %.preheader396.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.sroa.04.0.i124
  %.val.i = load i8, ptr %i.bn, align 1, !noalias !3169, !noundef !5
  %i.bo = icmp eq i8 %.val.i, 92
  %i.bp = or i1 %.sroa.02.0.i, %i.bo              ; 2 uses
  %i.bq = add nuw i64 %.sroa.04.0.i124, 1         ; 2 uses
  %i.br = icmp eq i64 %i.bq, %.sroa.02.07.i.i115
  br i1 %i.br, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit, label %.preheader396, !llvm.loop !3058

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit: ; preds = %.preheader396, %vec.epilog.middle.block, %middle.block
  %.lcssa1079 = phi i1 [ %i.bm, %vec.epilog.middle.block ], [ %i.bf, %middle.block ], [ %i.bp, %.preheader396 ]
  br i1 %.lcssa1079, label %bb.h, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit.thread

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit.thread: ; preds = %bb.g, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ai, ptr %i.bs, align 8, !alias.scope !3168, !noalias !3171
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.02.07.i.i115, ptr %i.bt, align 8, !alias.scope !3168, !noalias !3171
  store i64 -1, ptr %i.b, align 8, !alias.scope !3168, !noalias !3171
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit
  call fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i115), !noalias !3166
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107: ; preds = %bb.h, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4foldbNCINvNtNtBY_8adapters6copied9copy_foldhbNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_00E0EB2p_.exit.thread
  %i.bu = icmp samesign eq i64 %i.at, 0
  br i1 %i.bu, label %.loopexit395, label %.lr.ph.i.i.i.i127

.lr.ph.i.i.i.i127:                                ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
  %.sroa.01.019.i.i.i.i128 = phi i64 [ %i.by, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129 ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107 ] ; 4 uses
  %i.bv = phi ptr [ %i.bx, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129 ], [ %i.au, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107 ] ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !3172, !noalias !3173, !noundef !5
  switch i8 %i.bw, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i131 [
    i8 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
    i8 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
    i8 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
    i8 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
    i8 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129
  ]

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129: ; preds = %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127, %.lr.ph.i.i.i.i127
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1 ; 2 uses
  %i.by = add nuw nsw i64 %.sroa.01.019.i.i.i.i128, 1
  %i.bz = icmp eq ptr %i.bx, %i.ak
  br i1 %i.bz, label %.loopexit395, label %.lr.ph.i.i.i.i127

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i131: ; preds = %.lr.ph.i.i.i.i127
  %i.ca = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i128, %i.at
  br i1 %i.ca, label %bb.i, label %.loopexit395, !prof !33

bb.i:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i131
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i128, i64 noundef range(i64 0, -9223372036854775808) %i.at, i64 noundef range(i64 0, -9223372036854775808) %i.at, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2954) #37
          to label %.noexc132 unwind label %bb.j

.noexc132:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #35
          to label %common.resume unwind label %bb.l, !noalias !3166

.loopexit395:                                     ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i131, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107
  %.sroa.0.1.i.i4.i130 = phi i64 [ %.sroa.01.019.i.i.i.i128, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i131 ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i107 ], [ %i.at, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i129 ] ; 5 uses
  %i.cc = sub nuw nsw i64 %i.at, %.sroa.0.1.i.i4.i130 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.1.i.i4.i130 ; 6 uses
  %i.ce = add nuw nsw i64 %i.as, %.sroa.0.1.i.i4.i
  %i.cf = add nuw nsw i64 %i.ce, %.sroa.0.1.i.i4.i130
  %i.cg = icmp samesign eq i64 %i.cf, %.sroa.02.07.i.lcssa.sink.i322
  br i1 %i.cg, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113, label %iter.check1130

iter.check1130:                                   ; preds = %.loopexit395
  %.neg = xor i64 %.sroa.02.07.i.i115, -1
  %i.ch = add nsw i64 %.sroa.02.07.i.lcssa.sink.i322, %.neg
  %i.ci = add nuw i64 %.sroa.0.1.i.i4.i, %.sroa.0.1.i.i4.i130
  %gepdiff = sub i64 %i.ch, %i.ci
  %i.cj = sub i64 %i.at, %.sroa.0.1.i.i4.i130     ; 7 uses
  %min.iters.check1113 = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check1113, label %vec.epilog.scalar.ph1131.preheader, label %vector.main.loop.iter.check1114

vector.main.loop.iter.check1114:                  ; preds = %iter.check1130
  %min.iters.check1115 = icmp ult i64 %i.cj, 32
  br i1 %min.iters.check1115, label %vec.epilog.ph1134, label %vector.ph1116

vector.ph1116:                                    ; preds = %vector.main.loop.iter.check1114
  %i.ck = and i64 %i.cj, 28
  %n.vec1117 = and i64 %i.cj, -32                 ; 4 uses
  br label %vector.body1118

vector.body1118:                                  ; preds = %vector.ph1116, %vector.body1118
  %index1119 = phi i64 [ 0, %vector.ph1116 ], [ %index.next1124, %vector.body1118 ] ; 2 uses
  %vec.phi1120 = phi <16 x i1> [ zeroinitializer, %vector.ph1116 ], [ %i.cp, %vector.body1118 ]
  %vec.phi1121 = phi <16 x i1> [ zeroinitializer, %vector.ph1116 ], [ %i.cq, %vector.body1118 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index1119 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %wide.load1122 = load <16 x i8>, ptr %i.cl, align 1, !noalias !3166
  %wide.load1123 = load <16 x i8>, ptr %i.cm, align 1, !noalias !3166
  %i.cn = icmp eq <16 x i8> %wide.load1122, splat (i8 92)
  %i.co = icmp eq <16 x i8> %wide.load1123, splat (i8 92)
  %i.cp = or <16 x i1> %vec.phi1120, %i.cn        ; 2 uses
  %i.cq = or <16 x i1> %vec.phi1121, %i.co        ; 2 uses
  %index.next1124 = add nuw i64 %index1119, 32    ; 2 uses
  %i.cr = icmp eq i64 %index.next1124, %n.vec1117
  br i1 %i.cr, label %middle.block1125, label %vector.body1118, !llvm.loop !3071

middle.block1125:                                 ; preds = %vector.body1118
  %bin.rdx1126 = or <16 x i1> %i.cq, %i.cp
  %i.cs = bitcast <16 x i1> %bin.rdx1126 to i16
  %i.ct = icmp ne i16 %i.cs, 0                    ; 3 uses
  %cmp.n1127 = icmp eq i64 %i.cj, %n.vec1117
  br i1 %cmp.n1127, label %.noexc.i108, label %vec.epilog.iter.check1132

vec.epilog.iter.check1132:                        ; preds = %middle.block1125
  %min.epilog.iters.check1133 = icmp eq i64 %i.ck, 0
  br i1 %min.epilog.iters.check1133, label %vec.epilog.scalar.ph1131.preheader, label %vec.epilog.ph1134, !prof !3170

vec.epilog.ph1134:                                ; preds = %vector.main.loop.iter.check1114, %vec.epilog.iter.check1132
  %vec.epilog.resume.val1128 = phi i64 [ %n.vec1117, %vec.epilog.iter.check1132 ], [ 0, %vector.main.loop.iter.check1114 ]
  %bc.merge.rdx1129 = phi i1 [ %i.ct, %vec.epilog.iter.check1132 ], [ false, %vector.main.loop.iter.check1114 ]
  %n.vec1135 = and i64 %i.cj, -4                  ; 3 uses
  %i.cu = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx1129, i64 0
  br label %vec.epilog.vector.body1136

vec.epilog.vector.body1136:                       ; preds = %vec.epilog.vector.body1136, %vec.epilog.ph1134
  %index1137 = phi i64 [ %vec.epilog.resume.val1128, %vec.epilog.ph1134 ], [ %index.next1140, %vec.epilog.vector.body1136 ] ; 2 uses
  %vec.phi1138 = phi <4 x i1> [ %i.cu, %vec.epilog.ph1134 ], [ %i.cx, %vec.epilog.vector.body1136 ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cd, i64 %index1137
  %wide.load1139 = load <4 x i8>, ptr %i.cv, align 1, !noalias !3166
  %i.cw = icmp eq <4 x i8> %wide.load1139, splat (i8 92)
  %i.cx = or <4 x i1> %vec.phi1138, %i.cw         ; 2 uses
  %index.next1140 = add nuw i64 %index1137, 4     ; 2 uses
  %i.cy = icmp eq i64 %index.next1140, %n.vec1135
  br i1 %i.cy, label %vec.epilog.middle.block1141, label %vec.epilog.vector.body1136, !llvm.loop !3072

vec.epilog.middle.block1141:                      ; preds = %vec.epilog.vector.body1136
  %i.cz = bitcast <4 x i1> %i.cx to i4
  %i.da = icmp ne i4 %i.cz, 0                     ; 2 uses
  %cmp.n1142 = icmp eq i64 %i.cj, %n.vec1135
  br i1 %cmp.n1142, label %.noexc.i108, label %vec.epilog.scalar.ph1131.preheader

vec.epilog.scalar.ph1131.preheader:               ; preds = %iter.check1130, %vec.epilog.iter.check1132, %vec.epilog.middle.block1141
  %.sroa.04.0.i134.ph = phi i64 [ 0, %iter.check1130 ], [ %n.vec1117, %vec.epilog.iter.check1132 ], [ %n.vec1135, %vec.epilog.middle.block1141 ]
  %.sroa.02.0.i135.ph = phi i1 [ false, %iter.check1130 ], [ %i.ct, %vec.epilog.iter.check1132 ], [ %i.da, %vec.epilog.middle.block1141 ]
  br label %vec.epilog.scalar.ph1131

vec.epilog.scalar.ph1131:                         ; preds = %vec.epilog.scalar.ph1131.preheader, %vec.epilog.scalar.ph1131
  %.sroa.04.0.i134 = phi i64 [ %i.de, %vec.epilog.scalar.ph1131 ], [ %.sroa.04.0.i134.ph, %vec.epilog.scalar.ph1131.preheader ] ; 2 uses
  %.sroa.02.0.i135 = phi i1 [ %i.dd, %vec.epilog.scalar.ph1131 ], [ %.sroa.02.0.i135.ph, %vec.epilog.scalar.ph1131.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.04.0.i134
  %.val.i136 = load i8, ptr %i.db, align 1, !noalias !3166, !noundef !5
  %i.dc = icmp eq i8 %.val.i136, 92
  %i.dd = or i1 %.sroa.02.0.i135, %i.dc           ; 2 uses
  %i.de = add nuw i64 %.sroa.04.0.i134, 1         ; 2 uses
  %i.df = icmp eq i64 %i.de, %gepdiff
  br i1 %i.df, label %.noexc.i108, label %vec.epilog.scalar.ph1131, !llvm.loop !3073

.noexc.i108:                                      ; preds = %vec.epilog.scalar.ph1131, %vec.epilog.middle.block1141, %middle.block1125
  %.lcssa1077 = phi i1 [ %i.da, %vec.epilog.middle.block1141 ], [ %i.ct, %middle.block1125 ], [ %i.dd, %vec.epilog.scalar.ph1131 ]
  br i1 %.lcssa1077, label %bb.k, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113

bb.k:                                             ; preds = %.noexc.i108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3174
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef range(i64 0, -9223372036854775808) %i.cc)
          to label %.noexc20.i110 unwind label %bb.j, !noalias !3166

.noexc20.i110:                                    ; preds = %bb.k
  %.sroa.0298.0.copyload299 = load i64, ptr %i.a, align 8, !noalias !3175
  %.sroa.5300.0..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5300.0.copyload302 = load ptr, ptr %.sroa.5300.0..sroa_idx301, align 8, !noalias !3175
  %.sroa.6303.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6303.0.copyload305 = load i64, ptr %.sroa.6303.0..sroa_idx304, align 8, !noalias !3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3174
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113

bb.l:                                             ; preds = %bb.j
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3166
  unreachable

common.resume:                                    ; preds = %.body225, %bb.bq, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.lp, %bb.bq ], [ %i.cb, %bb.j ], [ %.pn90.pn, %.body225 ]
  resume { ptr, i32 } %common.resume.op

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113: ; preds = %.loopexit395, %.noexc20.i110, %.noexc.i108
  %.sroa.0298.0 = phi i64 [ %.sroa.0298.0.copyload299, %.noexc20.i110 ], [ -1, %.noexc.i108 ], [ -1, %.loopexit395 ]
  %.sroa.5300.0 = phi ptr [ %.sroa.5300.0.copyload302, %.noexc20.i110 ], [ %i.cd, %.noexc.i108 ], [ %i.cd, %.loopexit395 ] ; 2 uses
  %.sroa.6303.0 = phi i64 [ %.sroa.6303.0.copyload305, %.noexc20.i110 ], [ %i.cc, %.noexc.i108 ], [ %i.cc, %.loopexit395 ] ; 2 uses
  %.sroa.0313.0.copyload = load i64, ptr %i.b, align 8, !noalias !3167 ; 2 uses
  %.sroa.4314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4314.0..sroa_idx, i64 16, i1 false), !noalias !3176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3167
  %.not = icmp eq i64 %.sroa.0313.0.copyload, -2
  br i1 %.not, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, label %bb.m

bb.m:                                             ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  store i64 %.sroa.0313.0.copyload, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %.sroa.0298.0, ptr %i.o, align 8
  %.sroa.2312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.5300.0, ptr %.sroa.2312.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6303.0, ptr %.sroa.3.0..sroa_idx, align 8
  %i.dh = icmp ugt i64 %.sink11.i320, %2
  br i1 %i.dh, label %bb.p, label %bb.o, !prof !7

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread: ; preds = %bb.f, %bb.e, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.0)
  store i64 -1, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.d, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit113.thread, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit231
  ret void

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5300.0, i64 noundef %.sroa.6303.0)
          to label %bb.r unwind label %bb.q

bb.p:                                             ; preds = %bb.m
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sink11.i320, i64 noundef %2, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2965) #36
          to label %bb.az unwind label %bb.q

.critedge:                                        ; preds = %bb.bj, %bb.bt, %bb.q
  %.pn90 = phi { ptr, i32 } [ %i.di, %bb.q ], [ %.pn88.ph, %bb.bt ], [ %i.lh, %bb.bj ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #35
          to label %.body225 unwind label %bb.ay

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %.critedge

bb.r:                                             ; preds = %bb.o
  %i.dj = sub nuw nsw i64 %2, %.sink11.i320       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5270.0..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6273.0..sroa_idx274 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.7244.0..sroa_idx245 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %.sroa.7244.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.7244.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.dr = icmp samesign eq i64 %i.dj, 0
  br i1 %i.dr, label %.loopexit380, label %.lr.ph.i.i140.preheader.lr.ph

.lr.ph.i.i140.preheader.lr.ph:                    ; preds = %bb.r
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 %.sink11.i320
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph.i.i140.preheader

.lr.ph.i.i140.preheader:                          ; preds = %.lr.ph.i.i140.preheader.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222
  %i.du = phi ptr [ %i.dt, %.lr.ph.i.i140.preheader.lr.ph ], [ %i.lc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 2 uses
  %.sroa.0.01090 = phi ptr [ %i.ds, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.0.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 8 uses
  %.sroa.13.01089 = phi i64 [ %i.dj, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.13.2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 4 uses
  %.sroa.021.01088 = phi i64 [ undef, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.021.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 14 uses
  %.sroa.5.01087 = phi i32 [ -1, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.5.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 14 uses
  %.sroa.028.01086 = phi i64 [ undef, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.028.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 14 uses
  %.sroa.6.01085 = phi i32 [ -1, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.6.1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ] ; 15 uses
  %.sroa.0235.01084 = phi i1 [ false, %.lr.ph.i.i140.preheader.lr.ph ], [ true, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ]
  %.sroa.5.03151083 = phi i64 [ undef, %.lr.ph.i.i140.preheader.lr.ph ], [ %.sroa.0.1.i.i4.i150, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit222 ]
  br label %.lr.ph.i.i140

.lr.ph.i.i140:                                    ; preds = %.lr.ph.i.i140.preheader, %bb.s
  %.sroa.02.07.i.i141 = phi i64 [ %i.dy, %bb.s ], [ 0, %.lr.ph.i.i140.preheader ] ; 13 uses
  %i.dv = phi ptr [ %i.dx, %bb.s ], [ %.sroa.0.01090, %.lr.ph.i.i140.preheader ] ; 2 uses
  %.val.i.i142 = load i8, ptr %i.dv, align 1, !alias.scope !3177, !noalias !3178, !noundef !5
  %i.dw = icmp eq i8 %.val.i.i142, 10
  br i1 %i.dw, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit147, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i140
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %i.dy = add nuw nsw i64 %.sroa.02.07.i.i141, 1
  %i.dz = icmp eq ptr %i.dx, %i.du
  br i1 %i.dz, label %.loopexit380, label %.lr.ph.i.i140

.loopexit382:                                     ; preds = %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i218
  %lpad.loopexit384 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

.loopexit.split-lp383:                            ; preds = %bb.t
  %lpad.loopexit.split-lp385 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit147: ; preds = %.lr.ph.i.i140
  %i.ea = add nuw nsw i64 %.sroa.02.07.i.i141, 1  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.01090) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.0.01090, i64 %.sroa.02.07.i.i141
  %i.ec = icmp samesign eq i64 %.sroa.02.07.i.i141, 0
  br i1 %i.ec, label %.loopexit380, label %.lr.ph.i.i.i.i148

.lr.ph.i.i.i.i148:                                ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit147, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i
  %.sroa.01.019.i.i.i.i149 = phi i64 [ %i.eh, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit147 ] ; 4 uses
  %i.ed = phi ptr [ %i.eg, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ], [ %.sroa.0.01090, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit147 ] ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !3179, !noalias !3180, !noundef !5
  %i.ef = icmp eq i8 %i.ee, 32
  br i1 %i.ef, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i148
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ed, i64 1 ; 2 uses
  %i.eh = add nuw nsw i64 %.sroa.01.019.i.i.i.i149, 1
  %i.ei = icmp eq ptr %i.eg, %i.eb
  br i1 %i.ei, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs8frGy5WneL6_4fish.exit, label %.lr.ph.i.i.i.i148

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i: ; preds = %.lr.ph.i.i.i.i148
  %i.ej = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i149, %.sroa.02.07.i.i141
  br i1 %i.ej, label %bb.t, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs8frGy5WneL6_4fish.exit, !prof !3181

bb.t:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i149, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i141, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i141, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2961) #37
          to label %.noexc151 unwind label %.loopexit.split-lp383

.noexc151:                                        ; preds = %bb.t
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs8frGy5WneL6_4fish.exit: ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i
  %.sroa.0.1.i.i4.i150 = phi i64 [ %.sroa.01.019.i.i.i.i149, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i ], [ %.sroa.02.07.i.i141, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i ] ; 7 uses
  %i.ek = sub nsw i64 %.sroa.02.07.i.i141, %.sroa.0.1.i.i4.i150 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.01090, i64 %.sroa.0.1.i.i4.i150 ; 7 uses
  %i.em = icmp eq i64 %.sroa.0.1.i.i4.i150, 0
  %i.en = icmp ne i64 %.sroa.5.03151083, %.sroa.0.1.i.i4.i150
  %i.eo = and i1 %.sroa.0235.01084, %i.en
  %or.cond = or i1 %i.em, %i.eo
  br i1 %or.cond, label %.loopexit380, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECs8frGy5WneL6_4fish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7244.sroa.0)
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.01090, i64 %.sroa.02.07.i.i141 ; 2 uses
  %i.eq = icmp eq i64 %.sroa.02.07.i.i141, %.sroa.0.1.i.i4.i150
  br i1 %i.eq, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit.thread, label %.lr.ph.i.i152

.lr.ph.i.i152:                                    ; preds = %bb.u, %bb.v
  %.sroa.02.07.i.i153 = phi i64 [ %i.eu, %bb.v ], [ 0, %bb.u ] ; 14 uses
  %i.er = phi ptr [ %i.et, %bb.v ], [ %i.el, %bb.u ] ; 2 uses
  %.val.i.i154 = load i8, ptr %i.er, align 1, !noalias !3182, !noundef !5
  %i.es = icmp eq i8 %.val.i.i154, 58
  br i1 %i.es, label %.noexc95, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i152
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 1 ; 2 uses
  %i.eu = add nuw i64 %.sroa.02.07.i.i153, 1
  %i.ev = icmp eq ptr %i.et, %i.ep
  br i1 %i.ev, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit.thread, label %.lr.ph.i.i152

.noexc95:                                         ; preds = %.lr.ph.i.i152
  %i.ew = icmp ult i64 %.sroa.02.07.i.i153, %i.ek
  call void @llvm.assume(i1 %i.ew)
  %i.ex = add nuw i64 %.sroa.02.07.i.i153, 1      ; 3 uses
  %i.ey = sub i64 %i.ek, %i.ex                    ; 5 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ex ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3183
  call void @llvm.experimental.noalias.scope.decl(metadata !3184)
  %i.fa = icmp samesign eq i64 %.sroa.02.07.i.i153, 0
  br i1 %i.fa, label %.noexc98.thread, label %iter.check1226

iter.check1226:                                   ; preds = %.noexc95
  %min.iters.check1209 = icmp ult i64 %.sroa.02.07.i.i153, 4
  br i1 %min.iters.check1209, label %.preheader378.preheader, label %vector.main.loop.iter.check1210

vector.main.loop.iter.check1210:                  ; preds = %iter.check1226
  %min.iters.check1211 = icmp ult i64 %.sroa.02.07.i.i153, 32
  br i1 %min.iters.check1211, label %vec.epilog.ph1230, label %vector.ph1212

vector.ph1212:                                    ; preds = %vector.main.loop.iter.check1210
  %i.fb = and i64 %.sroa.02.07.i.i153, 28
  %n.vec1213 = and i64 %.sroa.02.07.i.i153, -32   ; 4 uses
  br label %vector.body1214

vector.body1214:                                  ; preds = %vector.ph1212, %vector.body1214
  %index1215 = phi i64 [ 0, %vector.ph1212 ], [ %index.next1220, %vector.body1214 ] ; 2 uses
  %vec.phi1216 = phi <16 x i1> [ zeroinitializer, %vector.ph1212 ], [ %i.fg, %vector.body1214 ]
  %vec.phi1217 = phi <16 x i1> [ zeroinitializer, %vector.ph1212 ], [ %i.fh, %vector.body1214 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %i.el, i64 %index1215 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load1218 = load <16 x i8>, ptr %i.fc, align 1
  %wide.load1219 = load <16 x i8>, ptr %i.fd, align 1
  %i.fe = icmp eq <16 x i8> %wide.load1218, splat (i8 92)
  %i.ff = icmp eq <16 x i8> %wide.load1219, splat (i8 92)
  %i.fg = or <16 x i1> %vec.phi1216, %i.fe        ; 2 uses
  %i.fh = or <16 x i1> %vec.phi1217, %i.ff        ; 2 uses
  %index.next1220 = add nuw i64 %index1215, 32    ; 2 uses
  %i.fi = icmp eq i64 %index.next1220, %n.vec1213
  br i1 %i.fi, label %middle.block1221, label %vector.body1214, !llvm.loop !3103

middle.block1221:                                 ; preds = %vector.body1214
  %bin.rdx1222 = or <16 x i1> %i.fh, %i.fg
  %i.fj = bitcast <16 x i1> %bin.rdx1222 to i16
  %i.fk = icmp ne i16 %i.fj, 0                    ; 3 uses
  %cmp.n1223 = icmp eq i64 %.sroa.02.07.i.i153, %n.vec1213
  br i1 %cmp.n1223, label %.noexc98, label %vec.epilog.iter.check1228

vec.epilog.iter.check1228:                        ; preds = %middle.block1221
  %min.epilog.iters.check1229 = icmp eq i64 %i.fb, 0
  br i1 %min.epilog.iters.check1229, label %.preheader378.preheader, label %vec.epilog.ph1230, !prof !3170

vec.epilog.ph1230:                                ; preds = %vector.main.loop.iter.check1210, %vec.epilog.iter.check1228
  %vec.epilog.resume.val1224 = phi i64 [ %n.vec1213, %vec.epilog.iter.check1228 ], [ 0, %vector.main.loop.iter.check1210 ]
  %bc.merge.rdx1225 = phi i1 [ %i.fk, %vec.epilog.iter.check1228 ], [ false, %vector.main.loop.iter.check1210 ]
  %n.vec1231 = and i64 %.sroa.02.07.i.i153, -4    ; 3 uses
  %i.fl = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx1225, i64 0
  br label %vec.epilog.vector.body1232

vec.epilog.vector.body1232:                       ; preds = %vec.epilog.vector.body1232, %vec.epilog.ph1230
  %index1233 = phi i64 [ %vec.epilog.resume.val1224, %vec.epilog.ph1230 ], [ %index.next1236, %vec.epilog.vector.body1232 ] ; 2 uses
  %vec.phi1234 = phi <4 x i1> [ %i.fl, %vec.epilog.ph1230 ], [ %i.fo, %vec.epilog.vector.body1232 ]
  %i.fm = getelementptr inbounds nuw i8, ptr %i.el, i64 %index1233
  %wide.load1235 = load <4 x i8>, ptr %i.fm, align 1
  %i.fn = icmp eq <4 x i8> %wide.load1235, splat (i8 92)
  %i.fo = or <4 x i1> %vec.phi1234, %i.fn         ; 2 uses
  %index.next1236 = add nuw i64 %index1233, 4     ; 2 uses
  %i.fp = icmp eq i64 %index.next1236, %n.vec1231
  br i1 %i.fp, label %vec.epilog.middle.block1237, label %vec.epilog.vector.body1232, !llvm.loop !3104

vec.epilog.middle.block1237:                      ; preds = %vec.epilog.vector.body1232
  %i.fq = bitcast <4 x i1> %i.fo to i4
  %i.fr = icmp ne i4 %i.fq, 0                     ; 2 uses
  %cmp.n1238 = icmp eq i64 %.sroa.02.07.i.i153, %n.vec1231
  br i1 %cmp.n1238, label %.noexc98, label %.preheader378.preheader

.preheader378.preheader:                          ; preds = %iter.check1226, %vec.epilog.iter.check1228, %vec.epilog.middle.block1237
  %.sroa.04.0.i166.ph = phi i64 [ 0, %iter.check1226 ], [ %n.vec1213, %vec.epilog.iter.check1228 ], [ %n.vec1231, %vec.epilog.middle.block1237 ]
  %.sroa.02.0.i167.ph = phi i1 [ false, %iter.check1226 ], [ %i.fk, %vec.epilog.iter.check1228 ], [ %i.fr, %vec.epilog.middle.block1237 ]
  br label %.preheader378

.preheader378:                                    ; preds = %.preheader378.preheader, %.preheader378
  %.sroa.04.0.i166 = phi i64 [ %i.fv, %.preheader378 ], [ %.sroa.04.0.i166.ph, %.preheader378.preheader ] ; 2 uses
  %.sroa.02.0.i167 = phi i1 [ %i.fu, %.preheader378 ], [ %.sroa.02.0.i167.ph, %.preheader378.preheader ]
  %i.fs = getelementptr inbounds nuw i8, ptr %i.el, i64 %.sroa.04.0.i166
  %.val.i168 = load i8, ptr %i.fs, align 1, !noundef !5
  %i.ft = icmp eq i8 %.val.i168, 92
  %i.fu = or i1 %.sroa.02.0.i167, %i.ft           ; 2 uses
  %i.fv = add nuw i64 %.sroa.04.0.i166, 1         ; 2 uses
  %i.fw = icmp eq i64 %i.fv, %.sroa.02.07.i.i153
  br i1 %i.fw, label %.noexc98, label %.preheader378, !llvm.loop !3105

.noexc98:                                         ; preds = %.preheader378, %vec.epilog.middle.block1237, %middle.block1221
  %.lcssa = phi i1 [ %i.fr, %vec.epilog.middle.block1237 ], [ %i.fk, %middle.block1221 ], [ %i.fu, %.preheader378 ]
  br i1 %.lcssa, label %bb.w, label %.noexc98.thread

.noexc98.thread:                                  ; preds = %.noexc95, %.noexc98
  store ptr %i.el, ptr %i.dm, align 8, !alias.scope !3184, !noalias !3185
  store i64 %.sroa.02.07.i.i153, ptr %i.dn, align 8, !alias.scope !3184, !noalias !3185
  store i64 -1, ptr %i.e, align 8, !alias.scope !3184, !noalias !3185
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i

bb.w:                                             ; preds = %.noexc98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3186
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.el, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i153)
          to label %.noexc99 unwind label %.loopexit382

.noexc99:                                         ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3186
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i: ; preds = %.noexc99, %.noexc98.thread
  %i.fx = icmp eq i64 %i.ek, %i.ex
  br i1 %i.fx, label %.loopexit377, label %.lr.ph.i.i.i.i172

.lr.ph.i.i.i.i172:                                ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
  %.sroa.01.019.i.i.i.i173 = phi i64 [ %i.gb, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174 ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i ] ; 4 uses
  %i.fy = phi ptr [ %i.ga, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174 ], [ %i.ez, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i ] ; 2 uses
  %i.fz = load i8, ptr %i.fy, align 1, !alias.scope !3187, !noalias !3188, !noundef !5
  switch i8 %i.fz, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i176 [
    i8 9, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
    i8 10, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
    i8 12, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
    i8 13, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
    i8 32, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
  ]

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174: ; preds = %.lr.ph.i.i.i.i172, %.lr.ph.i.i.i.i172, %.lr.ph.i.i.i.i172, %.lr.ph.i.i.i.i172, %.lr.ph.i.i.i.i172
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  %i.gb = add nuw nsw i64 %.sroa.01.019.i.i.i.i173, 1
  %i.gc = icmp eq ptr %i.ga, %i.ep
  br i1 %i.gc, label %.loopexit377.thread, label %.lr.ph.i.i.i.i172

.loopexit377.thread:                              ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i174
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.0.01090, i64 %.sroa.02.07.i.i141
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i176: ; preds = %.lr.ph.i.i.i.i172
  %i.ge = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i173, %i.ey
  br i1 %i.ge, label %bb.x, label %.loopexit377, !prof !33

bb.x:                                             ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i176
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i173, i64 noundef range(i64 0, -9223372036854775808) %i.ey, i64 noundef range(i64 0, -9223372036854775808) %i.ey, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2954) #37
          to label %.noexc177 unwind label %.loopexit.split-lp388

.noexc177:                                        ; preds = %bb.x
  unreachable

.loopexit387:                                     ; preds = %bb.z
  %lpad.loopexit389 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp388:                            ; preds = %bb.x
  %lpad.loopexit.split-lp390 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp388, %.loopexit387
  %lpad.phi391 = phi { ptr, i32 } [ %lpad.loopexit389, %.loopexit387 ], [ %lpad.loopexit.split-lp390, %.loopexit.split-lp388 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #35
          to label %bb.bs unwind label %bb.aa, !noalias !3189

.loopexit377:                                     ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i176, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i
  %.sroa.0.1.i.i4.i175 = phi i64 [ %.sroa.01.019.i.i.i.i173, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend10trim_start0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2E_5count0EB1L_.exit.i176 ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit21.i ] ; 3 uses
  %i.gf = sub i64 %i.ey, %.sroa.0.1.i.i4.i175     ; 10 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ez, i64 %.sroa.0.1.i.i4.i175 ; 6 uses
  %i.gh = icmp samesign eq i64 %.sroa.0.1.i.i4.i175, %i.ey
  br i1 %i.gh, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit, label %iter.check1194

iter.check1194:                                   ; preds = %.loopexit377
  %min.iters.check1177 = icmp ult i64 %i.gf, 4
  br i1 %min.iters.check1177, label %vec.epilog.scalar.ph1195.preheader, label %vector.main.loop.iter.check1178

vector.main.loop.iter.check1178:                  ; preds = %iter.check1194
  %min.iters.check1179 = icmp ult i64 %i.gf, 32
  br i1 %min.iters.check1179, label %vec.epilog.ph1198, label %vector.ph1180

vector.ph1180:                                    ; preds = %vector.main.loop.iter.check1178
  %i.gi = and i64 %i.gf, 28
  %n.vec1181 = and i64 %i.gf, -32                 ; 4 uses
  br label %vector.body1182

vector.body1182:                                  ; preds = %vector.ph1180, %vector.body1182
  %index1183 = phi i64 [ 0, %vector.ph1180 ], [ %index.next1188, %vector.body1182 ] ; 2 uses
  %vec.phi1184 = phi <16 x i1> [ zeroinitializer, %vector.ph1180 ], [ %i.gn, %vector.body1182 ]
  %vec.phi1185 = phi <16 x i1> [ zeroinitializer, %vector.ph1180 ], [ %i.go, %vector.body1182 ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index1183 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load1186 = load <16 x i8>, ptr %i.gj, align 1, !noalias !3189
  %wide.load1187 = load <16 x i8>, ptr %i.gk, align 1, !noalias !3189
  %i.gl = icmp eq <16 x i8> %wide.load1186, splat (i8 92)
  %i.gm = icmp eq <16 x i8> %wide.load1187, splat (i8 92)
  %i.gn = or <16 x i1> %vec.phi1184, %i.gl        ; 2 uses
  %i.go = or <16 x i1> %vec.phi1185, %i.gm        ; 2 uses
  %index.next1188 = add nuw i64 %index1183, 32    ; 2 uses
  %i.gp = icmp eq i64 %index.next1188, %n.vec1181
  br i1 %i.gp, label %middle.block1189, label %vector.body1182, !llvm.loop !3118

middle.block1189:                                 ; preds = %vector.body1182
  %bin.rdx1190 = or <16 x i1> %i.go, %i.gn
  %i.gq = bitcast <16 x i1> %bin.rdx1190 to i16
  %i.gr = icmp ne i16 %i.gq, 0                    ; 3 uses
  %cmp.n1191 = icmp eq i64 %i.gf, %n.vec1181
  br i1 %cmp.n1191, label %.noexc.i, label %vec.epilog.iter.check1196

vec.epilog.iter.check1196:                        ; preds = %middle.block1189
  %min.epilog.iters.check1197 = icmp eq i64 %i.gi, 0
  br i1 %min.epilog.iters.check1197, label %vec.epilog.scalar.ph1195.preheader, label %vec.epilog.ph1198, !prof !3170

vec.epilog.ph1198:                                ; preds = %vector.main.loop.iter.check1178, %vec.epilog.iter.check1196
  %vec.epilog.resume.val1192 = phi i64 [ %n.vec1181, %vec.epilog.iter.check1196 ], [ 0, %vector.main.loop.iter.check1178 ]
  %bc.merge.rdx1193 = phi i1 [ %i.gr, %vec.epilog.iter.check1196 ], [ false, %vector.main.loop.iter.check1178 ]
  %n.vec1199 = and i64 %i.gf, -4                  ; 3 uses
  %i.gs = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx1193, i64 0
  br label %vec.epilog.vector.body1200

vec.epilog.vector.body1200:                       ; preds = %vec.epilog.vector.body1200, %vec.epilog.ph1198
  %index1201 = phi i64 [ %vec.epilog.resume.val1192, %vec.epilog.ph1198 ], [ %index.next1204, %vec.epilog.vector.body1200 ] ; 2 uses
  %vec.phi1202 = phi <4 x i1> [ %i.gs, %vec.epilog.ph1198 ], [ %i.gv, %vec.epilog.vector.body1200 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gg, i64 %index1201
  %wide.load1203 = load <4 x i8>, ptr %i.gt, align 1, !noalias !3189
  %i.gu = icmp eq <4 x i8> %wide.load1203, splat (i8 92)
  %i.gv = or <4 x i1> %vec.phi1202, %i.gu         ; 2 uses
  %index.next1204 = add nuw i64 %index1201, 4     ; 2 uses
  %i.gw = icmp eq i64 %index.next1204, %n.vec1199
  br i1 %i.gw, label %vec.epilog.middle.block1205, label %vec.epilog.vector.body1200, !llvm.loop !3119

vec.epilog.middle.block1205:                      ; preds = %vec.epilog.vector.body1200
  %i.gx = bitcast <4 x i1> %i.gv to i4
  %i.gy = icmp ne i4 %i.gx, 0                     ; 2 uses
  %cmp.n1206 = icmp eq i64 %i.gf, %n.vec1199
  br i1 %cmp.n1206, label %.noexc.i, label %vec.epilog.scalar.ph1195.preheader

vec.epilog.scalar.ph1195.preheader:               ; preds = %iter.check1194, %vec.epilog.iter.check1196, %vec.epilog.middle.block1205
  %.sroa.04.0.i179.ph = phi i64 [ 0, %iter.check1194 ], [ %n.vec1181, %vec.epilog.iter.check1196 ], [ %n.vec1199, %vec.epilog.middle.block1205 ]
  %.sroa.02.0.i180.ph = phi i1 [ false, %iter.check1194 ], [ %i.gr, %vec.epilog.iter.check1196 ], [ %i.gy, %vec.epilog.middle.block1205 ]
  br label %vec.epilog.scalar.ph1195

vec.epilog.scalar.ph1195:                         ; preds = %vec.epilog.scalar.ph1195.preheader, %vec.epilog.scalar.ph1195
  %.sroa.04.0.i179 = phi i64 [ %i.hc, %vec.epilog.scalar.ph1195 ], [ %.sroa.04.0.i179.ph, %vec.epilog.scalar.ph1195.preheader ] ; 2 uses
  %.sroa.02.0.i180 = phi i1 [ %i.hb, %vec.epilog.scalar.ph1195 ], [ %.sroa.02.0.i180.ph, %vec.epilog.scalar.ph1195.preheader ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gg, i64 %.sroa.04.0.i179
  %.val.i181 = load i8, ptr %i.gz, align 1, !noalias !3189, !noundef !5
  %i.ha = icmp eq i8 %.val.i181, 92
  %i.hb = or i1 %.sroa.02.0.i180, %i.ha           ; 2 uses
  %i.hc = add nuw i64 %.sroa.04.0.i179, 1         ; 2 uses
  %i.hd = icmp eq i64 %i.hc, %i.gf
  br i1 %i.hd, label %.noexc.i, label %vec.epilog.scalar.ph1195, !llvm.loop !3120

.noexc.i:                                         ; preds = %vec.epilog.scalar.ph1195, %vec.epilog.middle.block1205, %middle.block1189
  %.lcssa934 = phi i1 [ %i.gy, %vec.epilog.middle.block1205 ], [ %i.gr, %middle.block1189 ], [ %i.hb, %vec.epilog.scalar.ph1195 ]
  br i1 %.lcssa934, label %bb.z, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit

bb.z:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3190
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.gg, i64 noundef range(i64 0, -9223372036854775808) %i.gf)
          to label %.noexc20.i unwind label %.loopexit387, !noalias !3189

.noexc20.i:                                       ; preds = %bb.z
  %.sroa.0268.0.copyload269 = load i64, ptr %i.d, align 8, !noalias !3191
  %.sroa.5270.0.copyload272 = load ptr, ptr %.sroa.5270.0..sroa_idx271, align 8, !noalias !3191
  %.sroa.6273.0.copyload275 = load i64, ptr %.sroa.6273.0..sroa_idx274, align 8, !noalias !3191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3190
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit

bb.aa:                                            ; preds = %bb.y
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34, !noalias !3189
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit: ; preds = %.loopexit377.thread, %.loopexit377, %.noexc20.i, %.noexc.i
  %.sroa.6273.0 = phi i64 [ %.sroa.6273.0.copyload275, %.noexc20.i ], [ %i.gf, %.noexc.i ], [ 0, %.loopexit377 ], [ 0, %.loopexit377.thread ] ; 3 uses
  %.sroa.5270.0 = phi ptr [ %.sroa.5270.0.copyload272, %.noexc20.i ], [ %i.gg, %.noexc.i ], [ %i.gg, %.loopexit377 ], [ %i.gd, %.loopexit377.thread ] ; 3 uses
  %.sroa.0268.0 = phi i64 [ %.sroa.0268.0.copyload269, %.noexc20.i ], [ -1, %.noexc.i ], [ -1, %.loopexit377 ], [ -1, %.loopexit377.thread ]
  %.sroa.0281.0.copyload = load i64, ptr %i.e, align 8, !noalias !3183 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.dm, i64 16, i1 false), !noalias !3192
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3183
  %.not73 = icmp eq i64 %.sroa.0281.0.copyload, -2
  br i1 %.not73, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.sroa.0281.0.copyload, ptr %i.l, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.0..sroa_idx245, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7244.sroa.0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.0268.0, ptr %i.k, align 8
  store ptr %.sroa.5270.0, ptr %.sroa.7244.sroa.7.16..sroa_idx, align 8
  store i64 %.sroa.6273.0, ptr %.sroa.7244.sroa.8.16..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.sroa.0)
  %.not909 = icmp ult i64 %.sroa.02.07.i.i141, %.sroa.13.01089
  br i1 %.not909, label %bb.ac, label %bb.ad, !prof !8

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit.thread: ; preds = %bb.u, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend32extract_prefix_and_unescape_yaml.exit, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7244.sroa.0)
  br label %.loopexit380

bb.ac:                                            ; preds = %bb.ab
  %i.hf = sub nuw nsw i64 %.sroa.13.01089, %i.ea  ; 8 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0.01090, i64 %i.ea ; 7 uses
  %i.hh = load ptr, ptr %.sroa.7244.0..sroa_idx245, align 8, !nonnull !5 ; 4 uses
  %i.hi = load i64, ptr %i.do, align 8
  switch i64 %i.hi, label %.thread355 [
    i64 4, label %bb.ae
    i64 10, label %bb.ag
    i64 5, label %bb.ai
  ]

bb.ad:                                            ; preds = %bb.ab
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.ea, i64 noundef %.sroa.13.01089, i64 noundef %.sroa.13.01089, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2964) #36
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ac
  %i.hj = load i32, ptr %i.hh, align 1
  %i.hk = icmp ne i32 %i.hj, 1852139639
  %i.hl = zext i1 %i.hk to i32
  %i.hm = icmp eq i32 %i.hl, 0
  br i1 %i.hm, label %bb.af, label %.thread355

bb.af:                                            ; preds = %bb.ae
  %i.hn = invoke fastcc { i64, i32 } @_RNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20decode_item_fish_2_00B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5270.0, i64 noundef %.sroa.6273.0)
          to label %bb.be unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ag:                                            ; preds = %bb.ac
  %i.ho = load i64, ptr %i.hh, align 1
  %i.hp = xor i64 %i.ho, 7527590186975519841
  %i.hq = getelementptr i8, ptr %i.hh, i64 8
  %i.hr = load i16, ptr %i.hq, align 1
  %i.hs = zext i16 %i.hr to i64
  %i.ht = xor i64 %i.hs, 28261
  %i.hu = or i64 %i.hp, %i.ht
  %i.hv = icmp ne i64 %i.hu, 0
  %i.hw = zext i1 %i.hv to i32
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.ah, label %.thread355

bb.ah:                                            ; preds = %bb.ag
  %i.hy = invoke fastcc { i64, i32 } @_RNCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend20decode_item_fish_2_00B7_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5270.0, i64 noundef %.sroa.6273.0)
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ai:                                            ; preds = %bb.ac
  %i.hz = load i40, ptr %i.hh, align 1
  %i.ia = icmp ne i40 %i.hz, 495673696624
  %i.ib = icmp samesign eq i64 %i.hf, 0
  %or.cond556 = select i1 %i.ia, i1 true, i1 %i.ib
  br i1 %or.cond556, label %.thread355, label %.lr.ph.i.i185.preheader

.lr.ph.i.i185.preheader:                          ; preds = %bb.ai, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit
  %i.ic = phi ptr [ %i.km, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %i.du, %bb.ai ]
  %.sroa.0.1545 = phi ptr [ %i.iz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %i.hg, %bb.ai ] ; 11 uses
  %.sroa.13.1544 = phi i64 [ %i.iy, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %i.hf, %bb.ai ] ; 7 uses
  br label %.lr.ph.i.i185

.lr.ph.i.i185:                                    ; preds = %.lr.ph.i.i185.preheader, %bb.aj
  %.sroa.02.07.i.i186 = phi i64 [ %i.ig, %bb.aj ], [ 0, %.lr.ph.i.i185.preheader ] ; 10 uses
  %i.id = phi ptr [ %i.if, %bb.aj ], [ %.sroa.0.1545, %.lr.ph.i.i185.preheader ] ; 2 uses
  %.val.i.i187 = load i8, ptr %i.id, align 1, !alias.scope !3193, !noalias !3194, !noundef !5
  %i.ie = icmp eq i8 %.val.i.i187, 10
  br i1 %i.ie, label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i.i185
  %i.if = getelementptr inbounds nuw i8, ptr %i.id, i64 1 ; 2 uses
  %i.ig = add nuw nsw i64 %.sroa.02.07.i.i186, 1
  %i.ih = icmp eq ptr %i.if, %i.ic
  br i1 %i.ih, label %.thread355, label %.lr.ph.i.i185

.body208:                                         ; preds = %.loopexit376, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.aw, %.body206
  %.pn = phi { ptr, i32 } [ %eh.lpad-body207, %.body206 ], [ %i.kk, %bb.aw ], [ %lpad.loopexit, %.loopexit376 ], [ %lpad.loopexit392, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp393, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #35
          to label %.body213 unwind label %bb.ay

.loopexit376:                                     ; preds = %bb.al, %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body208

.loopexit.split-lp.loopexit:                      ; preds = %bb.ah, %bb.af
  %lpad.loopexit392 = landingpad { ptr, i32 }
          cleanup
  br label %.body208

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.ak, %bb.ad
  %lpad.loopexit.split-lp393 = landingpad { ptr, i32 }
          cleanup
  br label %.body208

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192: ; preds = %.lr.ph.i.i185
  %i.ii = icmp samesign ult i64 %.sroa.02.07.i.i186, %.sroa.13.1544
  call void @llvm.assume(i1 %i.ii)
  %i.ij = add nuw nsw i64 %.sroa.02.07.i.i186, 1  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.1545) ]
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.0.1545, i64 %.sroa.02.07.i.i186
  %i.il = icmp samesign eq i64 %.sroa.02.07.i.i186, 0
  br i1 %i.il, label %.thread355, label %.lr.ph.i.i.i.i193

.lr.ph.i.i.i.i193:                                ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197
  %.sroa.01.019.i.i.i.i194 = phi i64 [ %i.iq, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197 ], [ 0, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ] ; 4 uses
  %i.im = phi ptr [ %i.ip, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197 ], [ %.sroa.0.1545, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ] ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !alias.scope !3195, !noalias !3196, !noundef !5
  %i.io = icmp eq i8 %i.in, 32
  br i1 %i.io, label %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i195

_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197: ; preds = %.lr.ph.i.i.i.i193
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 1 ; 2 uses
  %i.iq = add nuw nsw i64 %.sroa.01.019.i.i.i.i194, 1
  %i.ir = icmp eq ptr %i.ip, %i.ik
  br i1 %i.ir, label %.loopexit, label %.lr.ph.i.i.i.i193

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i195: ; preds = %.lr.ph.i.i.i.i193
  %i.is = icmp samesign ugt i64 %.sroa.01.019.i.i.i.i194, %.sroa.02.07.i.i186
  br i1 %i.is, label %bb.ak, label %.loopexit, !prof !3181

bb.ak:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i195
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.01.019.i.i.i.i194, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i186, i64 noundef range(i64 0, -9223372036854775808) %.sroa.02.07.i.i186, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2961) #37
          to label %.noexc198 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc198:                                        ; preds = %bb.ak
  unreachable

.loopexit:                                        ; preds = %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i195
  %.sroa.0.1.i.i4.i196 = phi i64 [ %.sroa.01.019.i.i.i.i194, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtNtBc_5slice4iter4IterhENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B2N_5count0EB1L_.exit.i195 ], [ %.sroa.02.07.i.i186, %_RNCINvNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkRhjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend19trim_leading_spaces0NCINvMB2b_B28_10wrap_mut_2jB25_NCNvYIB10_INtNtNtBg_5slice4iter4IterhEB2R_EB1i_5count0E0E0B2Z_.exit.i.i.i.i197 ] ; 3 uses
  %.not78 = icmp samesign ugt i64 %.sroa.0.1.i.i4.i196, %.sroa.0.1.i.i4.i150
  br i1 %.not78, label %bb.al, label %.thread355

bb.al:                                            ; preds = %.loopexit
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0.1545, i64 %.sroa.0.1.i.i4.i196
  %i.iu = sub nuw nsw i64 %.sroa.02.07.i.i186, %.sroa.0.1.i.i4.i196
  %i.iv = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_prefixAhj2_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.it, i64 noundef %i.iu, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) @2963)
          to label %bb.am unwind label %.loopexit376 ; 2 uses

bb.am:                                            ; preds = %bb.al
  %i.iw = extractvalue { ptr, i64 } %i.iv, 0      ; 7 uses
  %i.ix = extractvalue { ptr, i64 } %i.iv, 1      ; 12 uses
  %.not79 = icmp eq ptr %i.iw, null
  br i1 %.not79, label %.thread355, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.iy = sub nuw nsw i64 %.sroa.13.1544, %i.ij   ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.1545, i64 %i.ij ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !3197)
  %i.ja = icmp samesign eq i64 %i.ix, 0
  br i1 %i.ja, label %.noexc.thread, label %iter.check1162

iter.check1162:                                   ; preds = %bb.an
  %min.iters.check1145 = icmp ult i64 %i.ix, 4
  br i1 %min.iters.check1145, label %.preheader.preheader, label %vector.main.loop.iter.check1146

vector.main.loop.iter.check1146:                  ; preds = %iter.check1162
  %min.iters.check1147 = icmp ult i64 %i.ix, 32
  br i1 %min.iters.check1147, label %vec.epilog.ph1166, label %vector.ph1148

vector.ph1148:                                    ; preds = %vector.main.loop.iter.check1146
  %i.jb = and i64 %i.ix, 28
  %n.vec1149 = and i64 %i.ix, -32                 ; 4 uses
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.ph1148, %vector.body1150
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1156, %vector.body1150 ] ; 2 uses
  %vec.phi1152 = phi <16 x i1> [ zeroinitializer, %vector.ph1148 ], [ %i.jg, %vector.body1150 ]
  %vec.phi1153 = phi <16 x i1> [ zeroinitializer, %vector.ph1148 ], [ %i.jh, %vector.body1150 ]
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iw, i64 %index1151 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %wide.load1154 = load <16 x i8>, ptr %i.jc, align 1
  %wide.load1155 = load <16 x i8>, ptr %i.jd, align 1
  %i.je = icmp eq <16 x i8> %wide.load1154, splat (i8 92)
  %i.jf = icmp eq <16 x i8> %wide.load1155, splat (i8 92)
  %i.jg = or <16 x i1> %vec.phi1152, %i.je        ; 2 uses
  %i.jh = or <16 x i1> %vec.phi1153, %i.jf        ; 2 uses
  %index.next1156 = add nuw i64 %index1151, 32    ; 2 uses
  %i.ji = icmp eq i64 %index.next1156, %n.vec1149
  br i1 %i.ji, label %middle.block1157, label %vector.body1150, !llvm.loop !3143

middle.block1157:                                 ; preds = %vector.body1150
  %bin.rdx1158 = or <16 x i1> %i.jh, %i.jg
  %i.jj = bitcast <16 x i1> %bin.rdx1158 to i16
  %i.jk = icmp ne i16 %i.jj, 0                    ; 3 uses
  %cmp.n1159 = icmp eq i64 %i.ix, %n.vec1149
  br i1 %cmp.n1159, label %.noexc, label %vec.epilog.iter.check1164

vec.epilog.iter.check1164:                        ; preds = %middle.block1157
  %min.epilog.iters.check1165 = icmp eq i64 %i.jb, 0
  br i1 %min.epilog.iters.check1165, label %.preheader.preheader, label %vec.epilog.ph1166, !prof !3170

vec.epilog.ph1166:                                ; preds = %vector.main.loop.iter.check1146, %vec.epilog.iter.check1164
  %vec.epilog.resume.val1160 = phi i64 [ %n.vec1149, %vec.epilog.iter.check1164 ], [ 0, %vector.main.loop.iter.check1146 ]
  %bc.merge.rdx1161 = phi i1 [ %i.jk, %vec.epilog.iter.check1164 ], [ false, %vector.main.loop.iter.check1146 ]
  %n.vec1167 = and i64 %i.ix, -4                  ; 3 uses
  %i.jl = insertelement <4 x i1> <i1 poison, i1 false, i1 false, i1 false>, i1 %bc.merge.rdx1161, i64 0
  br label %vec.epilog.vector.body1168

vec.epilog.vector.body1168:                       ; preds = %vec.epilog.vector.body1168, %vec.epilog.ph1166
  %index1169 = phi i64 [ %vec.epilog.resume.val1160, %vec.epilog.ph1166 ], [ %index.next1172, %vec.epilog.vector.body1168 ] ; 2 uses
  %vec.phi1170 = phi <4 x i1> [ %i.jl, %vec.epilog.ph1166 ], [ %i.jo, %vec.epilog.vector.body1168 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iw, i64 %index1169
  %wide.load1171 = load <4 x i8>, ptr %i.jm, align 1
  %i.jn = icmp eq <4 x i8> %wide.load1171, splat (i8 92)
  %i.jo = or <4 x i1> %vec.phi1170, %i.jn         ; 2 uses
  %index.next1172 = add nuw i64 %index1169, 4     ; 2 uses
  %i.jp = icmp eq i64 %index.next1172, %n.vec1167
  br i1 %i.jp, label %vec.epilog.middle.block1173, label %vec.epilog.vector.body1168, !llvm.loop !3144

vec.epilog.middle.block1173:                      ; preds = %vec.epilog.vector.body1168
  %i.jq = bitcast <4 x i1> %i.jo to i4
  %i.jr = icmp ne i4 %i.jq, 0                     ; 2 uses
  %cmp.n1174 = icmp eq i64 %i.ix, %n.vec1167
  br i1 %cmp.n1174, label %.noexc, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check1162, %vec.epilog.iter.check1164, %vec.epilog.middle.block1173
  %.sroa.04.0.i200.ph = phi i64 [ 0, %iter.check1162 ], [ %n.vec1149, %vec.epilog.iter.check1164 ], [ %n.vec1167, %vec.epilog.middle.block1173 ]
  %.sroa.02.0.i201.ph = phi i1 [ false, %iter.check1162 ], [ %i.jk, %vec.epilog.iter.check1164 ], [ %i.jr, %vec.epilog.middle.block1173 ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.sroa.04.0.i200 = phi i64 [ %i.jv, %.preheader ], [ %.sroa.04.0.i200.ph, %.preheader.preheader ] ; 2 uses
  %.sroa.02.0.i201 = phi i1 [ %i.ju, %.preheader ], [ %.sroa.02.0.i201.ph, %.preheader.preheader ]
  %i.js = getelementptr inbounds nuw i8, ptr %i.iw, i64 %.sroa.04.0.i200
  %.val.i202 = load i8, ptr %i.js, align 1, !noundef !5
  %i.jt = icmp eq i8 %.val.i202, 92
  %i.ju = or i1 %.sroa.02.0.i201, %i.jt           ; 2 uses
  %i.jv = add nuw i64 %.sroa.04.0.i200, 1         ; 2 uses
  %i.jw = icmp eq i64 %i.jv, %i.ix
  br i1 %i.jw, label %.noexc, label %.preheader, !llvm.loop !3145

.noexc:                                           ; preds = %.preheader, %vec.epilog.middle.block1173, %middle.block1157
  %.lcssa942 = phi i1 [ %i.jr, %vec.epilog.middle.block1173 ], [ %i.jk, %middle.block1157 ], [ %i.ju, %.preheader ]
  br i1 %.lcssa942, label %bb.ao, label %.noexc.thread

.noexc.thread:                                    ; preds = %bb.an, %.noexc
  store ptr %i.iw, ptr %i.dp, align 8, !alias.scope !3197, !noalias !3198
  store i64 %i.ix, ptr %i.dq, align 8, !alias.scope !3197, !noalias !3198
  store i64 -1, ptr %i.j, align 8, !alias.scope !3197, !noalias !3198
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit

bb.ao:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3199
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend22unescape_yaml_fish_2_0(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.iw, i64 noundef range(i64 0, -9223372036854775808) %i.ix)
          to label %.noexc94 unwind label %.loopexit376

.noexc94:                                         ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3199
  %.pre = load ptr, ptr %i.dp, align 8
  %.pre708 = load i64, ptr %i.dq, align 8
  br label %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit

_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit: ; preds = %.noexc94, %.noexc.thread
  %i.jx = phi i64 [ %.pre708, %.noexc94 ], [ %i.ix, %.noexc.thread ]
  %i.jy = phi ptr [ %.pre, %.noexc94 ], [ %i.iw, %.noexc.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jy, i64 noundef %i.jx)
          to label %bb.aq unwind label %bb.ap

bb.ap:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.body206

.body206:                                         ; preds = %bb.as, %bb.ap
  %eh.lpad-body207 = phi { ptr, i32 } [ %i.jz, %bb.ap ], [ %i.kd, %bb.as ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #35
          to label %.body208 unwind label %bb.ay

bb.aq:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend28maybe_unescape_yaml_fish_2_0.exit
  %i.ka = load i64, ptr %i.dl, align 8, !alias.scope !3200, !noalias !3201, !noundef !5 ; 3 uses
  %i.kb = load i64, ptr %i.m, align 8, !range !6, !alias.scope !3200, !noalias !3201, !noundef !5
  %i.kc = icmp eq i64 %i.ka, %i.kb
  br i1 %i.kc, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringE8grow_oneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.au unwind label %bb.as, !noalias !3201

bb.as:                                            ; preds = %bb.ar
  %i.kd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #35
          to label %.body206 unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ke = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.au:                                            ; preds = %bb.ar, %bb.aq
  %i.kf = load ptr, ptr %i.dk, align 8, !alias.scope !3200, !noalias !3201, !nonnull !5, !noundef !5
  %i.kg = getelementptr inbounds nuw [24 x i8], ptr %i.kf, i64 %i.ka
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kg, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.kh = add i64 %i.ka, 1
  store i64 %i.kh, ptr %i.dl, align 8, !alias.scope !3200, !noalias !3201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ki = load i64, ptr %i.j, align 8, !range !4, !alias.scope !3202, !noundef !5
  %i.kj = icmp eq i64 %i.ki, -1
  br i1 %i.kj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body208 unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.av
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit unwind label %.loopexit376

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit: ; preds = %bb.au, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.km = getelementptr inbounds nuw i8, ptr %.sroa.0.1545, i64 %.sroa.13.1544
  %i.kn = icmp samesign eq i64 %i.iy, 0
  br i1 %i.kn, label %.thread355, label %.lr.ph.i.i185.preheader

bb.ay:                                            ; preds = %bb.bt, %bb.bs, %.body225, %bb.bj, %.body213, %.body206, %.body208, %.critedge
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.az:                                            ; preds = %bb.ad, %bb.p
  unreachable

bb.ba:                                            ; preds = %bb.ah
  %i.kp = extractvalue { i64, i32 } %i.hy, 0
  %i.kq = extractvalue { i64, i32 } %i.hy, 1
  br label %.thread355

.thread355:                                       ; preds = %.loopexit, %bb.am, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit, %bb.aj, %bb.ac, %bb.ae, %bb.ag, %bb.be, %bb.ba, %bb.ai
  %.sroa.6.1 = phi i32 [ %spec.select, %bb.be ], [ %.sroa.6.01085, %bb.ag ], [ %i.kq, %bb.ba ], [ %.sroa.6.01085, %bb.aj ], [ %.sroa.6.01085, %bb.ac ], [ %.sroa.6.01085, %bb.ai ], [ %.sroa.6.01085, %bb.ae ], [ %.sroa.6.01085, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.6.01085, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ %.sroa.6.01085, %bb.am ], [ %.sroa.6.01085, %.loopexit ] ; 2 uses
  %.sroa.028.1 = phi i64 [ %spec.select93, %bb.be ], [ %.sroa.028.01086, %bb.ag ], [ %i.kp, %bb.ba ], [ %.sroa.028.01086, %bb.aj ], [ %.sroa.028.01086, %bb.ac ], [ %.sroa.028.01086, %bb.ai ], [ %.sroa.028.01086, %bb.ae ], [ %.sroa.028.01086, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.028.01086, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ %.sroa.028.01086, %bb.am ], [ %.sroa.028.01086, %.loopexit ] ; 2 uses
  %.sroa.5.1 = phi i32 [ %i.kw, %bb.be ], [ %.sroa.5.01087, %bb.ag ], [ %.sroa.5.01087, %bb.ba ], [ %.sroa.5.01087, %bb.aj ], [ %.sroa.5.01087, %bb.ac ], [ %.sroa.5.01087, %bb.ai ], [ %.sroa.5.01087, %bb.ae ], [ %.sroa.5.01087, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.5.01087, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ %.sroa.5.01087, %bb.am ], [ %.sroa.5.01087, %.loopexit ] ; 2 uses
  %.sroa.021.1 = phi i64 [ %i.kv, %bb.be ], [ %.sroa.021.01088, %bb.ag ], [ %.sroa.021.01088, %bb.ba ], [ %.sroa.021.01088, %bb.aj ], [ %.sroa.021.01088, %bb.ac ], [ %.sroa.021.01088, %bb.ai ], [ %.sroa.021.01088, %bb.ae ], [ %.sroa.021.01088, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.021.01088, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ %.sroa.021.01088, %bb.am ], [ %.sroa.021.01088, %.loopexit ] ; 2 uses
  %.sroa.13.2 = phi i64 [ %i.hf, %bb.be ], [ %i.hf, %bb.ag ], [ %i.hf, %bb.ba ], [ %.sroa.13.1544, %bb.aj ], [ %i.hf, %bb.ac ], [ %i.hf, %bb.ai ], [ %i.hf, %bb.ae ], [ %.sroa.13.1544, %bb.am ], [ %.sroa.13.1544, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.13.1544, %.loopexit ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.hg, %bb.be ], [ %i.hg, %bb.ag ], [ %i.hg, %bb.ba ], [ %.sroa.0.1545, %bb.aj ], [ %i.hg, %bb.ac ], [ %i.hg, %bb.ai ], [ %i.hg, %bb.ae ], [ %.sroa.0.1545, %bb.am ], [ %.sroa.0.1545, %_RNvNtNtCs8frGy5WneL6_4fish7history12yaml_backend9read_line.exit192 ], [ %i.iz, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit ], [ %.sroa.0.1545, %.loopexit ] ; 2 uses
  %i.kr = load i64, ptr %i.k, align 8, !range !4, !alias.scope !3203, !noundef !5
  %i.ks = icmp eq i64 %i.kr, -1
  br i1 %i.ks, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowShEECs8frGy5WneL6_4fish.exit216, label %bb.bb

bb.bb:                                            ; preds = %.thread355
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs8frGy5WneL6_4fish.exit.i212 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body213 unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
end_hunk_0
