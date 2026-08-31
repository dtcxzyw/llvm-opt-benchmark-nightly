Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.01?download=true
inline.NumInlined: 2320
inline.NumDeleted: 1225
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTciEE16extend_desugaredINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapNtNtNtB1b_3str4iter5CharsNCNvNtNtCs2JiOgHzbbc7_10tokenizers11normalizers11precompiled7replace0EEB2n_:bb.a
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.018, i64 4
  %i.ad = load i8, ptr %i.s, align 1, !noalias !55, !noundef !3
  %i.ae = shl nuw nsw i32 %i.h, 18
  %i.af = and i32 %i.ae, 1835008
  %i.ag = shl nuw nsw i32 %i.x, 6
  %i.ah = and i8 %i.ad, 63
  %i.ai = zext nneg i8 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai
  %i.ak = or disjoint i32 %i.aj, %i.af
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i, %bb.c
  %.sroa.0.1.ph = phi ptr [ %i.j, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.s, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ], [ %i.ac, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %.sroa.0.0.i.ph = phi i32 [ %i.o, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i.i ], [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i.i ], [ %i.ak, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i.i ], [ %i.q, %bb.c ]
  %i.al = load i64, ptr %i.a, align 8, !noundef !3 ; 5 uses
  %i.am = icmp ult i64 %i.al, 576460752303423488
  tail call void @llvm.assume(i1 %i.am)
  %i.an = load i64, ptr %0, align 8, !range !13, !noundef !3
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.d
  %i.ap = ptrtoint ptr %.sroa.0.1.ph to i64
  %i.aq = sub nuw i64 %i.b, %i.ap                 ; 2 uses
  %i.ar = lshr i64 %i.aq, 2
  %i.as = and i64 %i.aq, 3
  %.not.i.i10 = icmp ne i64 %i.as, 0
  %i.at = zext i1 %.not.i.i10 to i64
  %.sroa.0.0.i.i = add nuw nsw i64 %i.ar, 1
  %i.au = add nuw nsw i64 %.sroa.0.0.i.i, %i.at
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef %i.au, i64 noundef 8, i64 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTciEE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %i.av = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %i.al ; 2 uses
  store i32 %.sroa.0.0.i.ph, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 0, ptr %i.ax, align 8
  %i.ay = add nuw nsw i64 %i.al, 1
  store i64 %i.ay, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %.sroa.0.1.ph, %2
  br i1 %.not.i.i, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB19_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2m_8Encoding3padsd_0EEB2q_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !62, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !62, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsd_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callTjjENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3V_3VecB3I_E14extend_trustedBN_E0E0EB1y_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtNtB19_5slice4iter4IterBF_EEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterTjjEEENtNtNtB8_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !65, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = trunc nuw i64 %i.f to i1
  br i1 %i.i, label %bb.b, label %bb.d, !prof !66

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !67, !noundef !3 ; 3 uses
  %i.l = load i64, ptr %0, align 8, !range !13, !alias.scope !67, !noundef !3
  %i.m = sub i64 %i.l, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.c, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef %i.h, i64 noundef 8, i64 noundef 16)
  %.pre = load i64, ptr %i.j, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTjjEE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.c
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !70
  store ptr %i.j, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterTjjEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1y_8for_each4callB1s_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB2O_3VecB1s_E14extend_trustedBP_E0E0ECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !70
  ret void

bb.d:                                             ; preds = %bb.a
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterhEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = zext i1 %1 to i64                        ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !73, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !73, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.a, i64 noundef 1, i64 noundef 1)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 3 uses
  br i1 %1, label %.lr.ph.i.i, label %_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 %2, ptr %i.j, align 1, !noalias !76
  %i.k = add i64 %i.g, 1
  br label %_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit

_RINvYINtNtCs4NRVxsYgnAr_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit, %.lr.ph.i.i
  %.val5.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.g, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit ]
  store i64 %.val5.i.i, ptr %i.b, align 8, !noalias !85
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %0, i24 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.0.extract.shift = lshr i24 %1, 8
  %.sroa.2.0.extract.trunc = trunc i24 %.sroa.2.0.extract.shift to i8 ; 9 uses
  %.sroa.3.0.extract.shift = lshr i24 %1, 16
  %.sroa.3.0.extract.trunc = trunc nuw i24 %.sroa.3.0.extract.shift to i8 ; 6 uses
  %i.a = trunc i24 %1 to i1
  %.not.i = icmp ugt i8 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc
  %or.cond = select i1 %i.a, i1 true, i1 %.not.i
  br i1 %or.cond, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit, label %_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers.exit

_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.b = sub nuw i8 %.sroa.3.0.extract.trunc, %.sroa.2.0.extract.trunc
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !86, !noundef !3 ; 2 uses
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !86, !noundef !3
  %i.g = sub i64 %i.f, %i.e
  %.not = icmp ugt i64 %i.g, %i.c
  br i1 %.not, label %.preheader.i.i.i, label %bb.b, !prof !89

bb.b:                                             ; preds = %_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers.exit
  %i.h = add nuw nsw i64 %i.c, 1
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %i.h, i64 noundef 1, i64 noundef 1)
  br label %.preheader.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !3
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1S_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit

.preheader.i.i.i:                                 ; preds = %_RNvXsd_NtNtCs4NRVxsYgnAr_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers.exit, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !3, !noundef !3 ; 11 uses
  %i.m = load i64, ptr %i.d, align 8, !noundef !3 ; 13 uses
  %i.n = icmp ult i8 %.sroa.2.0.extract.trunc, %.sroa.3.0.extract.trunc
  br i1 %i.n, label %iter.check, label %.thread.i.i.i

iter.check:                                       ; preds = %.preheader.i.i.i
  %i.o = xor i8 %.sroa.2.0.extract.trunc, -1
  %i.p = add i8 %i.o, %.sroa.3.0.extract.trunc    ; 3 uses
  %i.q = zext i8 %i.p to i64
  %i.r = add nuw nsw i64 %i.q, 1                  ; 5 uses
  %min.iters.check = icmp ult i8 %i.p, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i8 %i.p, 31
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.s = and i64 %i.r, 24
  %n.vec = and i64 %i.r, 480                      ; 11 uses
  %i.t = add i64 %i.m, %n.vec                     ; 2 uses
  %i.u = trunc i64 %n.vec to i8
  %i.v = add i8 %.sroa.2.0.extract.trunc, %i.u    ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.sroa.2.0.extract.trunc, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 16 uses
  %induction = add nuw <16 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %step.add = add nuw <16 x i8> %broadcast.splat, <i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24, i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31>
  %i.w = getelementptr i8, ptr %i.l, i64 %i.m     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %induction, ptr %i.w, align 1, !noalias !90
  store <16 x i8> %step.add, ptr %i.x, align 1, !noalias !90
  %i.y = icmp eq i64 %n.vec, 32
  br i1 %i.y, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %vec.ind.next = add nuw <16 x i8> %broadcast.splat, <i8 32, i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40, i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47>
  %step.add.1 = add nuw <16 x i8> %broadcast.splat, <i8 48, i8 49, i8 50, i8 51, i8 52, i8 53, i8 54, i8 55, i8 56, i8 57, i8 58, i8 59, i8 60, i8 61, i8 62, i8 63>
  %2 = getelementptr i8, ptr %i.l, i64 %i.m       ; 2 uses
  %3 = getelementptr i8, ptr %2, i64 32
  %4 = getelementptr i8, ptr %2, i64 48
  store <16 x i8> %vec.ind.next, ptr %3, align 1, !noalias !90
  store <16 x i8> %step.add.1, ptr %4, align 1, !noalias !90
  %5 = icmp eq i64 %n.vec, 64
  br i1 %5, label %middle.block, label %vector.body.2.a

vector.body.2.a:                                  ; preds = %vector.body.1
  %vec.ind.next.1.a = add nuw <16 x i8> %broadcast.splat, <i8 64, i8 65, i8 66, i8 67, i8 68, i8 69, i8 70, i8 71, i8 72, i8 73, i8 74, i8 75, i8 76, i8 77, i8 78, i8 79>
  %step.add.2.a = add nuw <16 x i8> %broadcast.splat, <i8 80, i8 81, i8 82, i8 83, i8 84, i8 85, i8 86, i8 87, i8 88, i8 89, i8 90, i8 91, i8 92, i8 93, i8 94, i8 95>
  %i.z = getelementptr i8, ptr %i.l, i64 %i.m     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 64
  %i.ab = getelementptr i8, ptr %i.z, i64 80
  store <16 x i8> %vec.ind.next.1.a, ptr %i.aa, align 1, !noalias !90
  store <16 x i8> %step.add.2.a, ptr %i.ab, align 1, !noalias !90
  %i.ac = icmp eq i64 %n.vec, 96
  br i1 %i.ac, label %middle.block, label %vector.body.3.a

vector.body.3.a:                                  ; preds = %vector.body.2.a
  %vec.ind.next.2.a = add nuw <16 x i8> %broadcast.splat, <i8 96, i8 97, i8 98, i8 99, i8 100, i8 101, i8 102, i8 103, i8 104, i8 105, i8 106, i8 107, i8 108, i8 109, i8 110, i8 111>
  %step.add.3.a = add nuw <16 x i8> %broadcast.splat, <i8 112, i8 113, i8 114, i8 115, i8 116, i8 117, i8 118, i8 119, i8 120, i8 121, i8 122, i8 123, i8 124, i8 125, i8 126, i8 127>
  %i.ad = getelementptr i8, ptr %i.l, i64 %i.m    ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 96
  %i.af = getelementptr i8, ptr %i.ad, i64 112
  store <16 x i8> %vec.ind.next.2.a, ptr %i.ae, align 1, !noalias !90
  store <16 x i8> %step.add.3.a, ptr %i.af, align 1, !noalias !90
  %i.ag = icmp eq i64 %n.vec, 128
  br i1 %i.ag, label %middle.block, label %vector.body.4.a

vector.body.4.a:                                  ; preds = %vector.body.3.a
  %vec.ind.next.3.a = add nuw <16 x i8> %broadcast.splat, <i8 -128, i8 -127, i8 -126, i8 -125, i8 -124, i8 -123, i8 -122, i8 -121, i8 -120, i8 -119, i8 -118, i8 -117, i8 -116, i8 -115, i8 -114, i8 -113>
  %step.add.4.a = add nuw <16 x i8> %broadcast.splat, <i8 -112, i8 -111, i8 -110, i8 -109, i8 -108, i8 -107, i8 -106, i8 -105, i8 -104, i8 -103, i8 -102, i8 -101, i8 -100, i8 -99, i8 -98, i8 -97>
  %i.ah = getelementptr i8, ptr %i.l, i64 %i.m    ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 128
  %i.aj = getelementptr i8, ptr %i.ah, i64 144
  store <16 x i8> %vec.ind.next.3.a, ptr %i.ai, align 1, !noalias !90
  store <16 x i8> %step.add.4.a, ptr %i.aj, align 1, !noalias !90
  %i.ak = icmp eq i64 %n.vec, 160
  br i1 %i.ak, label %middle.block, label %vector.body.5.a

vector.body.5.a:                                  ; preds = %vector.body.4.a
  %vec.ind.next.4.a = add nuw <16 x i8> %broadcast.splat, <i8 -96, i8 -95, i8 -94, i8 -93, i8 -92, i8 -91, i8 -90, i8 -89, i8 -88, i8 -87, i8 -86, i8 -85, i8 -84, i8 -83, i8 -82, i8 -81>
  %step.add.5.a = add nuw <16 x i8> %broadcast.splat, <i8 -80, i8 -79, i8 -78, i8 -77, i8 -76, i8 -75, i8 -74, i8 -73, i8 -72, i8 -71, i8 -70, i8 -69, i8 -68, i8 -67, i8 -66, i8 -65>
  %i.al = getelementptr i8, ptr %i.l, i64 %i.m    ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 160
  %i.an = getelementptr i8, ptr %i.al, i64 176
  store <16 x i8> %vec.ind.next.4.a, ptr %i.am, align 1, !noalias !90
  store <16 x i8> %step.add.5.a, ptr %i.an, align 1, !noalias !90
  %i.ao = icmp eq i64 %n.vec, 192
  br i1 %i.ao, label %middle.block, label %vector.body.6.a

vector.body.6.a:                                  ; preds = %vector.body.5.a
  %vec.ind.next.5.a = add nuw <16 x i8> %broadcast.splat, <i8 -64, i8 -63, i8 -62, i8 -61, i8 -60, i8 -59, i8 -58, i8 -57, i8 -56, i8 -55, i8 -54, i8 -53, i8 -52, i8 -51, i8 -50, i8 -49>
  %step.add.6.a = add nuw <16 x i8> %broadcast.splat, <i8 -48, i8 -47, i8 -46, i8 -45, i8 -44, i8 -43, i8 -42, i8 -41, i8 -40, i8 -39, i8 -38, i8 -37, i8 -36, i8 -35, i8 -34, i8 -33>
  %i.ap = getelementptr i8, ptr %i.l, i64 %i.m    ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 192
  %i.ar = getelementptr i8, ptr %i.ap, i64 208
  store <16 x i8> %vec.ind.next.5.a, ptr %i.aq, align 1, !noalias !90
  store <16 x i8> %step.add.6.a, ptr %i.ar, align 1, !noalias !90
  %i.as = icmp eq i64 %n.vec, 224
  br i1 %i.as, label %middle.block, label %vector.body.7

vector.body.7:                                    ; preds = %vector.body.6.a
  %vec.ind.next.6 = add nuw <16 x i8> %broadcast.splat, <i8 -32, i8 -31, i8 -30, i8 -29, i8 -28, i8 -27, i8 -26, i8 -25, i8 -24, i8 -23, i8 -22, i8 -21, i8 -20, i8 -19, i8 -18, i8 -17>
  %step.add.7 = add nuw <16 x i8> %broadcast.splat, <i8 -16, i8 -15, i8 -14, i8 -13, i8 -12, i8 -11, i8 -10, i8 -9, i8 -8, i8 -7, i8 -6, i8 -5, i8 -4, i8 -3, i8 -2, i8 -1>
  %i.at = getelementptr i8, ptr %i.l, i64 %i.m    ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 224
  %i.av = getelementptr i8, ptr %i.at, i64 240
  store <16 x i8> %vec.ind.next.6, ptr %i.au, align 1, !noalias !90
  store <16 x i8> %step.add.7, ptr %i.av, align 1, !noalias !90
  br label %middle.block

middle.block:                                     ; preds = %vector.body.7, %vector.body.6.a, %vector.body.5.a, %vector.body.4.a, %vector.body.3.a, %vector.body.2.a, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.thread.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.s, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !104

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val15 = phi i8 [ %i.v, %vec.epilog.iter.check ], [ %.sroa.2.0.extract.trunc, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.r, 504                    ; 4 uses
  %i.aw = add i64 %i.m, %n.vec16                  ; 2 uses
  %i.ax = trunc i64 %n.vec16 to i8
  %i.ay = add i8 %.sroa.2.0.extract.trunc, %i.ax
  %broadcast.splatinsert17 = insertelement <8 x i8> poison, i8 %bc.resume.val15, i64 0
  %broadcast.splat18 = shufflevector <8 x i8> %broadcast.splatinsert17, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction19 = add nuw <8 x i8> %broadcast.splat18, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  %i.az = getelementptr i8, ptr %i.l, i64 %i.m
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index20 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind21 = phi <8 x i8> [ %induction19, %vec.epilog.ph ], [ %vec.ind.next23, %vec.epilog.vector.body ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 %index20
  store <8 x i8> %vec.ind21, ptr %i.ba, align 1, !noalias !90
  %index.next22 = add nuw i64 %index20, 8         ; 2 uses
  %vec.ind.next23 = add nuw <8 x i8> %vec.ind21, splat (i8 8)
  %i.bb = icmp eq i64 %index.next22, %n.vec16
  br i1 %i.bb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %i.r, %n.vec16
  br i1 %cmp.n24, label %.thread.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i64 [ %i.m, %iter.check ], [ %i.t, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.ph27 = phi i8 [ %.sroa.2.0.extract.trunc, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.ay, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.thread.i.i.i:                                    ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i.i
  %.sroa.5.0.i.i = phi i64 [ %i.m, %.preheader.i.i.i ], [ %i.aw, %vec.epilog.middle.block ], [ %i.t, %middle.block ], [ %i.bi, %.lr.ph.i.i.i ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sroa.5.0.i.i
  store i8 %.sroa.3.0.extract.trunc, ptr %i.bc, align 1, !noalias !108
  %i.bd = add i64 %.sroa.5.0.i.i, 1
  br label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1S_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.be = phi i64 [ %i.bi, %.lr.ph.i.i.i ], [ %.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bf = phi i8 [ %i.bg, %.lr.ph.i.i.i ], [ %.ph27, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.bg = add nuw i8 %i.bf, 1                     ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  store i8 %i.bf, ptr %i.bh, align 1, !noalias !90
  %i.bi = add i64 %i.be, 1                        ; 2 uses
  %exitcond.not.i.i.i = icmp eq i8 %i.bg, %.sroa.3.0.extract.trunc
  br i1 %exitcond.not.i.i.i, label %.thread.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !115

_RINvYINtNtNtCs4NRVxsYgnAr_4core3ops5range14RangeInclusivehENtNtNtNtBa_4iter6traits8iterator8Iterator8for_eachNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB1S_3VechE14extend_trustedB3_E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit, %.thread.i.i.i
  %i.bj = phi ptr [ %i.d, %.thread.i.i.i ], [ %i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit ]
  %storemerge.i.i = phi i64 [ %i.bd, %.thread.i.i.i ], [ %i.j, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers.exit ]
  store i64 %storemerge.i.i, ptr %i.bj, align 8, !noalias !116
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads7_0EEB2n_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 8, !alias.scope !14, !noalias !17, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.c, align 8, !alias.scope !17, !noalias !14, !noundef !3
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val5, i64 %.val) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !117, !noundef !3 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !117, !noundef !3
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %spec.select.i.i, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %spec.select.i.i, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.d, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.m, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads8_0EEB2n_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load i64, ptr %i.b, align 8, !alias.scope !14, !noalias !17, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val5 = load i64, ptr %i.c, align 8, !alias.scope !17, !noalias !14, !noundef !3
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.val5, i64 %.val) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !120, !noundef !3 ; 3 uses
  %i.f = load i64, ptr %0, align 8, !range !13, !alias.scope !120, !noundef !3
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %spec.select.i.i, %i.g
  br i1 %i.h, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.e, i64 noundef %spec.select.i.i, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.d, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.i = phi i64 [ %i.e, %bb.a ], [ %.pre, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.d, ptr %i.a, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.m, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3pads8_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsb_0EEB2n_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !123, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !123, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsb_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsc_0EEB2n_(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !126, !noundef !3 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !13, !alias.scope !126, !noundef !3
  %i.e = sub i64 %i.d, %i.c
  %i.f = icmp ugt i64 %spec.select.i.i, %i.e
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %spec.select.i.i, i64 noundef 4, i64 noundef 4)
  %.pre = load i64, ptr %i.b, align 8
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecmE7reserveCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.i, ptr %i.j, align 8
  store ptr %i.b, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.g, ptr %i.k, align 8
  call void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB1u_8Encoding3padsc_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2F_8for_each4callmNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB3S_3VecmE14extend_trustedBN_E0E0EB1y_(i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
