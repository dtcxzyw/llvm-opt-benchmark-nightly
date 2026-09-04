Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/html5ever-rs/original/markup5ever_rcdom-94565011a5cef294.markup5ever_rcdom.fea42dc744c38c8-cgu.0?download=true
inline.NumInlined: 238
inline.NumDeleted: 156
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write:bb.a
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.cd, align 1, !alias.scope !276, !noalias !271
  %i.ce = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.ce, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.cf = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.cg = icmp samesign ult i64 %i.cf, %i.ag
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.ci, align 1, !alias.scope !276, !noalias !271
  %i.cj = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.ck = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.cl = shl nuw nsw i64 %i.cj, %i.ck
  %i.cm = or i64 %i.cl, %.sroa.0.0.i11.i
  %i.cn = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.cn, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.cm, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.co = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.co, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.cp = add nsw i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.cq = icmp ult i64 %i.cp, 8
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 %i.cp
  %i.cs = load i8, ptr %i.cr, align 1, !alias.scope !276, !noalias !271, !noundef !5
  %i.ct = zext i8 %i.cs to i64
  %i.cu = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cv = shl nuw nsw i64 %i.ct, %i.cu
  %i.cw = or i64 %i.cv, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.cw, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cx, align 8, !alias.scope !271, !noalias !272
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bg, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !271, !noalias !272
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #10 {
switch.lookup:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %0, align 8, !range !8, !noundef !5 ; 2 uses
  %i.e = and i64 %i.d, 3
  %i.f = and i64 %i.d, 3
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom, i64 %i.f
  %switch.load = load ptr, ptr %switch.gep, align 8
  %switch.gep20 = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs6_NtCsgv7xG79AfeB_12string_cache4atomINtB5_4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom.60, i64 %i.e
  %switch.load21 = load i8, ptr %switch.gep20, align 1
  %switch.ext = zext i8 %switch.load21 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %switch.load, ptr %i.b, align 8, !captures !11
  store i64 %switch.ext, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms18NamespaceStaticSetENtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs1mImOlsSUsK_17markup5ever_rcdom, ptr %.sroa.47.0..sroa_idx, align 8
  %i.i = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6, !noundef !5
  %i.l = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.k, ptr noundef nonnull @8, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.l
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsgv7xG79AfeB_12string_cache4atom4AtomNtCsbN1FUDjLgAL_9web_atoms15PrefixStaticSetEENtNtB7_3fmt5Debug3fmtCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #10 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !noundef !5
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtNtCsexYYUdYSQU6_5alloc11collections9vec_deque11spec_extendINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEINtB4_10SpecExtendB1j_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2I_5slice4iter4IterB1j_EEE11spec_extendB1z_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = lshr i64 %i.c, 3                         ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !333, !noundef !5 ; 5 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %0, align 8, !range !10, !alias.scope !333, !noundef !5 ; 7 uses
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 17, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #28, !noalias !333
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.k = sub i64 %i.i, %i.f                       ; 2 uses
  %i.l = icmp ugt i64 %i.d, %i.k
  br i1 %i.l, label %bb.i, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.i, %bb.d
  %.pre-phi.i = phi i64 [ %.pre8.i, %bb.i ], [ %i.k, %bb.d ]
  %i.m = phi i64 [ %.pre7.i, %bb.i ], [ %i.f, %bb.d ]
  %i.n = phi i64 [ %.pre.i, %bb.i ], [ %i.i, %bb.d ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !335, !noundef !5 ; 3 uses
  %.not.i.i = icmp ugt i64 %i.p, %.pre-phi.i
  br i1 %.not.i.i, label %bb.f, label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = sub i64 %i.i, %i.p                       ; 4 uses
  %i.r = sub i64 %i.m, %i.q                       ; 3 uses
  %i.s = icmp ule i64 %i.q, %i.r
  %i.t = sub nsw i64 %i.n, %i.i
  %.not2.i.i = icmp ult i64 %i.t, %i.r
  %or.cond.i.i = select i1 %i.s, i1 true, i1 %.not2.i.i
  br i1 %or.cond.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = sub i64 %i.n, %i.q                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.p
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  %i.z = shl nuw nsw i64 %i.q, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr nonnull align 8 %i.x, i64 %i.z, i1 false), !noalias !334
  store i64 %i.u, ptr %i.o, align 8, !alias.scope !335
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !335, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.i
  %i.ad = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr nonnull align 8 %i.ab, i64 %i.ad, i1 false), !noalias !334
  br label %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit

bb.i:                                             ; preds = %bb.d
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 8)
  %.pre.i = load i64, ptr %0, align 8, !range !10, !alias.scope !335
  %.pre7.i = load i64, ptr %i.e, align 8, !alias.scope !335 ; 2 uses
  %.pre8.i = sub i64 %i.i, %.pre7.i
  br label %bb.e

_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit: ; preds = %bb.b, %bb.e, %bb.g, %bb.h
  %i.ae = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  %i.ah = add i64 %i.ag, %i.ae                    ; 2 uses
  %i.ai = load i64, ptr %0, align 8, !range !10, !noundef !5 ; 3 uses
  %.not = icmp ult i64 %i.ah, %i.ai
  %i.aj = select i1 %.not, i64 0, i64 %i.ai
  %.sroa.02.0 = sub nuw i64 %i.ah, %i.aj          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !336)
  %i.ak = sub i64 %i.ai, %.sroa.02.0              ; 4 uses
  %.not.i = icmp ult i64 %i.ak, %i.d
  br i1 %.not.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !alias.scope !336, !nonnull !5
  %i.ao = getelementptr [8 x i8], ptr %i.an, i64 %.sroa.02.0
  br label %bb.l

bb.l:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, %bb.k
  %.sroa.8.1.i = phi i64 [ 0, %bb.k ], [ %i.aw, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %1, %bb.k ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.ap = phi i64 [ %i.ak, %bb.k ], [ %i.au, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i = icmp eq ptr %.sroa.0.0.i, %2
  br i1 %.not.not.not.i.not.not.not.i.not.not.not.i.not.i.i.i, label %.loopexit.i.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i, align 8, !noalias !337, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338, !noundef !5 ; 2 uses
  %i.aq = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i64 %.val.i.i.i.i.i.i.i.i.i, 1      ; 2 uses
  store i64 %i.ar, ptr %.val.i.i.i.i.i.i, align 8, !noalias !338
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8 ; 2 uses
  %i.au = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.ao, i64 %.sroa.8.1.i
  store ptr %.val.i.i.i.i.i.i, ptr %i.av, align 8, !noalias !339
  %i.aw = add nuw nsw i64 %.sroa.8.1.i, 1
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %.loopexit.i.loopexit, label %bb.l

.loopexit.i.loopexit:                             ; preds = %bb.l, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i
  %.sroa.8.2.i.ph = phi i64 [ %.sroa.8.1.i, %bb.l ], [ %i.ak, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %.sroa.0.1.i.ph = phi ptr [ %.sroa.0.0.i, %bb.l ], [ %i.at, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned14clone_try_foldINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEuINtNtNtBa_3ops12control_flow11ControlFlowINtNtB2k_9try_trait17NeverShortCircuituEENCINvNvXs_NtB6_4takeINtB3J_4TakepENtNtNtB8_6traits8iterator8Iterator8try_fold5checkB14_uB2U_NCINvMB2X_B2U_10wrap_mut_2uB14_NCINvNvXs_NtB6_9enumerateINtB5I_9EnumeratepEB47_4fold9enumerateB14_uNCINvNvB47_8for_each4callTjB14_ENCINvMs2_NtNtB19_11collections9vec_dequeINtB7j_8VecDequeB14_E10write_iterIB3U_INtNtB6_12by_ref_sized10ByRefSizedINtB4_6ClonedINtNtNtBa_5slice4iter4IterB14_EEEEE0E0E0E0E0E0B1B_.exit.i.i.i.i.i.i ]
  %3 = freeze ptr %.sroa.0.1.i.ph
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %bb.j
  %.sroa.8.2.i = phi i64 [ 0, %bb.j ], [ %.sroa.8.2.i.ph, %.loopexit.i.loopexit ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %1, %bb.j ], [ %3, %.loopexit.i.loopexit ] ; 5 uses
  %i.ay = icmp eq ptr %.sroa.0.1.i, %2
  br i1 %i.ay, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.i
  %i.az = ptrtoint ptr %.sroa.0.1.i to i64
  %i.ba = sub i64 %i.a, %i.az                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 3                       ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !336, !nonnull !5 ; 3 uses
  %i.be = add i64 %i.bb, %.sroa.8.2.i             ; 2 uses
  %i.bf = icmp eq i64 %i.bb, 1
  br i1 %i.bf, label %.epil.preheader27, label %.new26

.new26:                                           ; preds = %bb.o
  %unroll_iter31 = and i64 %i.bb, 2305843009213693950
  br label %bb.p

bb.p:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1, %.new26
  %i.bg = phi i64 [ 0, %.new26 ], [ %i.bs, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1 ] ; 4 uses
  %niter32 = phi i64 [ 0, %.new26 ], [ %niter32.next.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1 ]
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %i.bg
  %.val.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.bi = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.bj, ptr %.val.i.i.i, align 8, !noalias !341
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i, !prof !7

.loopexit33:                                      ; preds = %bb.p, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i, %.epil.preheader27
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i: ; preds = %bb.p
  %i.bl = getelementptr [8 x i8], ptr %i.bd, i64 %i.bg
  store ptr %.val.i.i.i, ptr %i.bl, align 8, !noalias !342
  %i.bm = or disjoint i64 %i.bg, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %i.bm
  %.val.i.i.i.1 = load ptr, ptr %i.bn, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.1 = load i64, ptr %.val.i.i.i.1, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.bo = icmp ne i64 %.val.i.i.i.i.i.i.i.1, 0
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %.val.i.i.i.i.i.i.i.1, 1        ; 2 uses
  store i64 %i.bp, ptr %.val.i.i.i.1, align 8, !noalias !341
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i
  %i.br = getelementptr [8 x i8], ptr %i.bd, i64 %i.bm
  store ptr %.val.i.i.i.1, ptr %i.br, align 8, !noalias !342
  %i.bs = add i64 %i.bg, 2                        ; 2 uses
  %niter32.next.1 = add i64 %niter32, 2           ; 2 uses
  %niter32.ncmp.1 = icmp eq i64 %niter32.next.1, %unroll_iter31
  br i1 %niter32.ncmp.1, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, label %bb.p

bb.q:                                             ; preds = %_RNvMs4_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB5_8VecDequeINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE7reserveB1l_.exit
  %i.bt = icmp eq ptr %1, %2
  br i1 %i.bt, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !336, !nonnull !5
  %i.bw = getelementptr [8 x i8], ptr %i.bv, i64 %.sroa.02.0 ; 3 uses
  %i.bx = icmp eq i64 %i.d, 1
  br i1 %i.bx, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.r
  %unroll_iter = and i64 %i.d, 2305843009213693950
  br label %bb.s

bb.s:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1, %.new
  %.sroa.8.5.i = phi i64 [ 0, %.new ], [ %i.cj, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1 ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1 ]
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.8.5.i
  %.val.i.i31.i = load ptr, ptr %i.by, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i = load i64, ptr %.val.i.i31.i, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.bz = icmp ne i64 %.val.i.i.i.i.i.i32.i, 0
  tail call void @llvm.assume(i1 %i.bz)
  %i.ca = add i64 %.val.i.i.i.i.i.i32.i, 1        ; 2 uses
  store i64 %i.ca, ptr %.val.i.i31.i, align 8, !noalias !344
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i, !prof !7

.loopexit:                                        ; preds = %bb.s, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i, %.epil.preheader
  tail call void @llvm.trap()
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i: ; preds = %bb.s
  %i.cc = getelementptr [8 x i8], ptr %i.bw, i64 %.sroa.8.5.i
  store ptr %.val.i.i31.i, ptr %i.cc, align 8, !noalias !345
  %i.cd = or disjoint i64 %.sroa.8.5.i, 1         ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.cd
  %.val.i.i31.i.1 = load ptr, ptr %i.ce, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i.1 = load i64, ptr %.val.i.i31.i.1, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.cf = icmp ne i64 %.val.i.i.i.i.i.i32.i.1, 0
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = add i64 %.val.i.i.i.i.i.i32.i.1, 1      ; 2 uses
  store i64 %i.cg, ptr %.val.i.i31.i.1, align 8, !noalias !344
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i
  %i.ci = getelementptr [8 x i8], ptr %i.bw, i64 %i.cd
  store ptr %.val.i.i31.i.1, ptr %i.ci, align 8, !noalias !345
  %i.cj = add i64 %.sroa.8.5.i, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, label %bb.s

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.1
  %i.ck = and i64 %i.ba, 8
  %lcmp.mod29.not = icmp eq i64 %i.ck, 0
  br i1 %lcmp.mod29.not, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %.epil.preheader27

.epil.preheader27:                                ; preds = %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, %bb.o
  %.epil.init = phi i64 [ 0, %bb.o ], [ %i.bs, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.1.i, i64 %.epil.init
  %.val.i.i.i.epil = load ptr, ptr %i.cl, align 8, !noalias !340, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i.i.epil = load i64, ptr %.val.i.i.i.epil, align 8, !noalias !341, !noundef !5 ; 2 uses
  %i.cm = icmp ne i64 %.val.i.i.i.i.i.i.i.epil, 0
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = add i64 %.val.i.i.i.i.i.i.i.epil, 1     ; 2 uses
  store i64 %i.cn, ptr %.val.i.i.i.epil, align 8, !noalias !341
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.loopexit33, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil: ; preds = %.epil.preheader27
  %i.cp = getelementptr [8 x i8], ptr %i.bd, i64 %.epil.init
  store ptr %.val.i.i.i.epil, ptr %i.cp, align 8, !noalias !342
  br label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.1
  %i.cq = and i64 %i.c, 8
  %lcmp.mod.not = icmp eq i64 %i.cq, 0
  br i1 %lcmp.mod.not, label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, %bb.r
  %.sroa.8.5.i.epil.init = phi i64 [ 0, %bb.r ], [ %i.cj, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa ] ; 2 uses
  %lcmp.mod25 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod25)
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.sroa.8.5.i.epil.init
  %.val.i.i31.i.epil = load ptr, ptr %i.cr, align 8, !noalias !343, !nonnull !5, !noundef !5 ; 3 uses
  %.val.i.i.i.i.i.i32.i.epil = load i64, ptr %.val.i.i31.i.epil, align 8, !noalias !344, !noundef !5 ; 2 uses
  %i.cs = icmp ne i64 %.val.i.i.i.i.i.i32.i.epil, 0
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = add i64 %.val.i.i.i.i.i.i32.i.epil, 1   ; 2 uses
  store i64 %i.ct, ptr %.val.i.i31.i.epil, align 8, !noalias !344
  %i.cu = icmp eq i64 %i.ct, 0
  br i1 %i.cu, label %.loopexit, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil, !prof !7

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil: ; preds = %.epil.preheader
  %i.cv = getelementptr [8 x i8], ptr %i.bw, i64 %.sroa.8.5.i.epil.init
  store ptr %.val.i.i31.i.epil, ptr %i.cv, align 8, !noalias !345
  br label %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit

_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa, %.loopexit.i, %bb.q
  %.sroa.8.0.i = phi i64 [ %i.be, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i.i.epil ], [ %.sroa.8.2.i, %.loopexit.i ], [ 0, %bb.q ], [ %i.be, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit.unr-lcssa ], [ %i.d, %_RINvMs2_NtNtCsexYYUdYSQU6_5alloc11collections9vec_dequeINtB6_8VecDequeINtNtBa_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEE19write_iter_wrappingINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6cloned6ClonedINtNtNtB2u_5slice4iter4IterB16_EEEB1m_.exit.loopexit24.unr-lcssa ], [ %i.d, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvXs_NtB6_9enumerateINtB2O_9EnumeratepENtNtNtB8_6traits8iterator8Iterator4fold9enumerateBV_uNCINvNvB3m_8for_each4callTjBV_ENCINvMs2_NtNtB10_11collections9vec_dequeINtB4R_8VecDequeBV_E10write_iterINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterBV_EEE0E0E0E0B1s_.exit.i.i33.i.epil ]
  %i.cw = add i64 %.sroa.8.0.i, %i.ae
  store i64 %i.cw, ptr %i.e, align 8, !alias.scope !336
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1c_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3                   ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.g unwind label %bb.f

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !359, !nonnull !5, !noundef !5 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !359, !noundef !5
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !359
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.n) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i unwind label %bb.c, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.t = icmp eq i64 %i.o, %i.h
  br i1 %i.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = icmp eq i64 %i.o, %i.h
  br i1 %i.v, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.x = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %i.y = load ptr, ptr %i.w, align 8, !alias.scope !362, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !noalias !362, !noundef !5
  %i.aa = add i64 %i.z, -1                        ; 2 uses
  store i64 %i.aa, ptr %i.y, align 8, !noalias !362
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  invoke void @_RNvMs6_NtCsexYYUdYSQU6_5alloc2rcINtB5_2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeE9drop_slowBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.w) #24
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i unwind label %bb.e, !inline_history !0

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.ac = icmp eq i64 %i.x, %i.h
  br i1 %i.ac, label %.body, label %.lr.ph12.i

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23, !noalias !356
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB19_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEEB18_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ae = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !noundef !5
  store i64 %i.ag, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ae, ptr %i.ah, align 8
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtCs1mImOlsSUsK_17markup5ever_rcdom4NodeEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.g:                                             ; preds = %.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 40                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph

.body:                                            ; preds = %bb.e, %.body.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !5
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i: ; preds = %bb.c
  %i.n = icmp eq i64 %i.p, %i.h
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i
  %.sroa.0.0.i16 = phi i64 [ %i.p, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.0.i16 ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.0.0.i16, 1        ; 4 uses
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface8QualNameECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.r) #25
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsldpiDtalS19_7tendril7tendril7TendrilNtNtBG_3fmt4UTF8EECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(16) %i.s)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.e:                                             ; preds = %.lr.ph18
  %i.u = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.h
  br i1 %i.v, label %.body, label %.lr.ph18

bb.f:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.w, %bb.f ], [ %i.q, %bb.b ]
  %i.x = icmp eq i64 %i.p, %i.h
  br i1 %i.x, label %.body, label %.lr.ph18

.lr.ph18:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i17 = phi i64 [ %i.u, %bb.e ], [ %i.p, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.1.i17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom(ptr noalias nofree noundef align 8 dereferenceable(40) %i.y) #25
          to label %bb.e unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph18
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsa2F6HLACPlS_11markup5ever9interface9AttributeECs1mImOlsSUsK_17markup5ever_rcdom.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aa = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !5
  store i64 %i.ac, ptr %i.a, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_0
