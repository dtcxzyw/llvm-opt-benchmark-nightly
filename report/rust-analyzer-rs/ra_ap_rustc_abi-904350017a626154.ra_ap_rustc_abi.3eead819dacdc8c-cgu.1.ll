inline.NumInlined: 90
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB2_9ExternAbiNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp:bb.a
bb.ab:                                            ; preds = %bb.a
  %i.k = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.18.i = select i1 %i.k, i64 12, i64 5
  %.19.i = select i1 %i.k, ptr @54, ptr @53
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.39.0.i = phi i64 [ %.16.i, %bb.aa ], [ %.18.i, %bb.ab ], [ %.12.i, %bb.y ], [ %.14.i, %bb.z ], [ %.2.i, %bb.c ], [ 9, %bb.d ], [ 9, %bb.e ], [ 12, %bb.f ], [ 18, %bb.g ], [ 10, %bb.h ], [ 6, %bb.i ], [ 6, %bb.j ], [ %.8.i, %bb.w ], [ %.10.i, %bb.x ], [ 19, %bb.l ], [ 20, %bb.m ], [ 10, %bb.n ], [ 10, %bb.o ], [ 13, %bb.p ], [ 26, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 17, %bb.t ], [ 13, %bb.u ], [ %.4.i, %bb.k ], [ %.6.i, %bb.v ], [ %..i, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %.17.i, %bb.aa ], [ %.19.i, %bb.ab ], [ %.13.i, %bb.y ], [ %.15.i, %bb.z ], [ %.3.i, %bb.c ], [ @22, %bb.d ], [ @23, %bb.e ], [ @24, %bb.f ], [ @25, %bb.g ], [ @26, %bb.h ], [ @27, %bb.i ], [ @28, %bb.j ], [ %.9.i, %bb.w ], [ %.11.i, %bb.x ], [ @31, %bb.l ], [ @32, %bb.m ], [ @33, %bb.n ], [ @34, %bb.o ], [ @35, %bb.p ], [ @36, %bb.q ], [ @37, %bb.r ], [ @38, %bb.s ], [ @39, %bb.t ], [ @40, %bb.u ], [ %.5.i, %bb.k ], [ %.7.i, %bb.v ], [ %.1.i, %bb.b ], [ @21, %bb.a ]
  %.val = load i8, ptr %1, align 1, !range !31, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val5 = load i8, ptr %i.l, align 1             ; 10 uses
  switch i8 %.val, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.ai
    i8 8, label %bb.aj
    i8 9, label %bb.ak
    i8 10, label %bb.al
    i8 11, label %bb.am
    i8 12, label %bb.an
    i8 13, label %bb.ao
    i8 14, label %bb.ap
    i8 15, label %bb.aq
    i8 16, label %bb.ar
    i8 17, label %bb.as
    i8 18, label %bb.at
    i8 19, label %bb.au
    i8 20, label %bb.av
    i8 21, label %bb.aw
    i8 22, label %bb.ax
    i8 23, label %bb.ay
    i8 24, label %bb.az
    i8 25, label %bb.ba
    i8 26, label %bb.bb
    i8 27, label %bb.bc
  ]

bb.ac:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.m = trunc nuw i8 %.val5 to i1                ; 2 uses
  %..i28 = select i1 %i.m, i64 8, i64 1
  %.1.i29 = select i1 %i.m, ptr @18, ptr @17
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ad:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.n = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.2.i26 = select i1 %i.n, i64 13, i64 6
  %.3.i27 = select i1 %i.n, ptr @20, ptr @19
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ae:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.af:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ag:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ah:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ai:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.aj:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ak:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.al:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.o = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.4.i24 = select i1 %i.o, i64 12, i64 5
  %.5.i25 = select i1 %i.o, ptr @30, ptr @29
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.am:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.an:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ao:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ap:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.aq:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ar:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.as:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.at:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.au:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.av:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.aw:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.p = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.6.i22 = select i1 %i.p, i64 12, i64 5
  %.7.i23 = select i1 %i.p, ptr @42, ptr @41
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ax:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.q = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.8.i20 = select i1 %i.q, i64 14, i64 7
  %.9.i21 = select i1 %i.q, ptr @44, ptr @43
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ay:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.r = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.10.i18 = select i1 %i.r, i64 15, i64 8
  %.11.i19 = select i1 %i.r, ptr @46, ptr @45
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.az:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.s = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.12.i16 = select i1 %i.s, i64 15, i64 8
  %.13.i17 = select i1 %i.s, ptr @48, ptr @47
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.ba:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.t = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.14.i14 = select i1 %i.t, i64 17, i64 10
  %.15.i15 = select i1 %i.t, ptr @50, ptr @49
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.bb:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.u = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.16.i12 = select i1 %i.u, i64 13, i64 6
  %.17.i13 = select i1 %i.u, ptr @52, ptr @51
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

bb.bc:                                            ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
  %i.v = trunc nuw i8 %.val5 to i1                ; 2 uses
  %.18.i8 = select i1 %i.v, i64 12, i64 5
  %.19.i9 = select i1 %i.v, ptr @54, ptr @53
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31

_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31: ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc
  %.sroa.39.0.i10 = phi i64 [ %.16.i12, %bb.bb ], [ %.18.i8, %bb.bc ], [ %.12.i16, %bb.az ], [ %.14.i14, %bb.ba ], [ %.2.i26, %bb.ad ], [ 9, %bb.ae ], [ 9, %bb.af ], [ 12, %bb.ag ], [ 18, %bb.ah ], [ 10, %bb.ai ], [ 6, %bb.aj ], [ 6, %bb.ak ], [ %.8.i20, %bb.ax ], [ %.10.i18, %bb.ay ], [ 19, %bb.am ], [ 20, %bb.an ], [ 10, %bb.ao ], [ 10, %bb.ap ], [ 13, %bb.aq ], [ 26, %bb.ar ], [ 16, %bb.as ], [ 17, %bb.at ], [ 17, %bb.au ], [ 13, %bb.av ], [ %.4.i24, %bb.al ], [ %.6.i22, %bb.aw ], [ %..i28, %bb.ac ], [ 4, %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit ] ; 2 uses
  %.sroa.0.0.i11 = phi ptr [ %.17.i13, %bb.bb ], [ %.19.i9, %bb.bc ], [ %.13.i17, %bb.az ], [ %.15.i15, %bb.ba ], [ %.3.i27, %bb.ad ], [ @22, %bb.ae ], [ @23, %bb.af ], [ @24, %bb.ag ], [ @25, %bb.ah ], [ @26, %bb.ai ], [ @27, %bb.aj ], [ @28, %bb.ak ], [ %.9.i21, %bb.ax ], [ %.11.i19, %bb.ay ], [ @31, %bb.am ], [ @32, %bb.an ], [ @33, %bb.ao ], [ @34, %bb.ap ], [ @35, %bb.aq ], [ @36, %bb.ar ], [ @37, %bb.as ], [ @38, %bb.at ], [ @39, %bb.au ], [ @40, %bb.av ], [ %.5.i25, %bb.al ], [ %.7.i23, %bb.aw ], [ %.1.i29, %bb.ac ], [ @21, %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit ]
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %.sroa.39.0.i, i64 %.sroa.39.0.i10)
  %i.w = tail call i32 @memcmp(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.i, ptr noundef nonnull dereferenceable(1) %.sroa.0.0.i11, i64 %spec.store.select) ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub nsw i64 %.sroa.39.0.i, %.sroa.39.0.i10
  %spec.select = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = tail call i8 @llvm.scmp.i8.i64(i64 %spec.select, i64 0)
  ret i8 %i.aa
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE9from_iterCskVLyBV5N46_15ra_ap_rustc_abi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !range !32, !alias.scope !67, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !67, !nonnull !9, !noundef !9 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i = load i64, ptr %i.g, align 8, !alias.scope !67, !noundef !9 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !71, !noalias !72, !noundef !9 ; 5 uses
  %.not.i.i.i = icmp ugt i64 %i.j, %.val1.i.i
  %.promoted.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !71, !noalias !72 ; 2 uses
  %i.k = icmp ult i64 %i.j, %.promoted.i.i.i
  %or.cond20.i.i.i = or i1 %.not.i.i.i, %i.k
  br i1 %or.cond20.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = load i8, ptr %i.m, align 8, !alias.scope !71, !noalias !72, !noundef !9 ; 2 uses
  %i.o = zext nneg i8 %i.n to i64                 ; 4 uses
  %2 = add i8 %i.n, -1
  %i.p = icmp ult i8 %2, 4
  tail call void @llvm.assume(i1 %i.p)
  %i.q = getelementptr i8, ptr %i.l, i64 %i.o
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %.pre.i.i.i = load i8, ptr %i.r, align 1, !alias.scope !71, !noalias !72 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.f, %.lr.ph.split.preheader.i.i.i
  %i.s = phi i64 [ %i.ah, %bb.f ], [ %.promoted.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %i.t = sub nuw i64 %i.j, %i.s                   ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.s ; 2 uses
  %i.v = icmp samesign ult i64 %i.t, 16
  br i1 %i.v, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.w = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef range(i64 0, -9223372036854775808) %i.t), !noalias !74
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %.lr.ph.i.i.i.i, %.preheader.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.t, %bb.d ]
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ], [ 0, %bb.d ]
  %i.x = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i, 0
  %i.y = insertvalue { i64, i64 } %i.x, i64 %.sroa.01.0.lcssa.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.ac, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.01.05.i.i.i.i
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !75, !noalias !74, !noundef !9
  %i.ab = icmp eq i8 %i.aa, %.pre.i.i.i
  br i1 %i.ab, label %._crit_edge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = add nuw nsw i64 %.sroa.01.05.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ac, %i.t
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i: ; preds = %._crit_edge.i.i.i.i, %bb.c
  %.merged.i.i.i.i = phi { i64, i64 } [ %i.y, %._crit_edge.i.i.i.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.ad = extractvalue { i64, i64 } %.merged.i.i.i.i, 0
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.e, label %.split.us.i.i.i

bb.e:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  %i.af = extractvalue { i64, i64 } %.merged.i.i.i.i, 1
  %i.ag = add i64 %i.s, 1
  %i.ah = add i64 %i.ag, %i.af                    ; 7 uses
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !71, !noalias !72
  %.not11.i.i.i = icmp ult i64 %i.ah, %i.o
  %.not12.i.i.i = icmp ugt i64 %i.ah, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

.split.us.i.i.i:                                  ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !71, !noalias !72
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ai = icmp ult i64 %i.j, %i.ah
  br i1 %i.ai, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, label %.lr.ph.split.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aj = sub nuw i64 %i.ah, %i.o                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.aj
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.l, i64 %i.o), !noalias !72
  %i.al = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.al, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.f

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.g
  %i.am = load i64, ptr %1, align 8, !alias.scope !67, !noundef !9 ; 2 uses
  %i.an = sub nuw i64 %i.aj, %i.am
  store i64 %i.ah, ptr %1, align 8, !alias.scope !67
  br label %select.unfold

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i: ; preds = %bb.f, %.split.us.i.i.i, %bb.b
  store i8 1, ptr %i.c, align 1, !alias.scope !78
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i8, ptr %i.ao, align 8, !range !32, !alias.scope !78, !noundef !9
  %i.aq = trunc nuw i8 %i.ap to i1
  %.pre.i2.i.i = load i64, ptr %1, align 8, !alias.scope !78 ; 3 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !alias.scope !78 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.aq, i1 true, i1 %.not.i3.i.i
  %i.ar = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %bb.n

select.unfold:                                    ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %.sroa.4.1.i.i = phi i64 [ %i.an, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.ar, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i ]
  %.pn = phi i64 [ %i.am, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre.i2.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !81
  %i.as = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !81 ; 7 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.h, label %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVLyBV5N46_15ra_ap_rustc_abi.exit

bb.h:                                             ; preds = %select.unfold
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #23
  unreachable

_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVLyBV5N46_15ra_ap_rustc_abi.exit: ; preds = %select.unfold
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn
  store ptr %.sroa.0.1.i.i, ptr %i.as, align 8, !captures !59
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i64 %.sroa.4.1.i.i, ptr %i.au, align 8
  store i64 4, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !84)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 65 ; 2 uses
  %.promoted.i.i = load i8, ptr %i.av, align 1, !alias.scope !94, !noalias !99
  %.promoted9.i.i = load i64, ptr %i.a, align 8, !alias.scope !100, !noalias !99 ; 4 uses
  %i.aw = trunc nuw i8 %.promoted.i.i to i1
  br i1 %i.aw, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVLyBV5N46_15ra_ap_rustc_abi.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !94, !noalias !99, !nonnull !9, !noundef !9 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ay, align 8, !alias.scope !94, !noalias !99, !noundef !9 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !101, !noalias !104, !noundef !9 ; 5 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.ba, %.val1.i.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.bd = load i8, ptr %i.bc, align 8, !alias.scope !100, !noalias !99 ; 2 uses
  %i.be = zext nneg i8 %i.bd to i64               ; 4 uses
  %3 = add i8 %i.bd, -1
  %i.bf = icmp ult i8 %3, 4
  %i.bg = getelementptr i8, ptr %i.bb, i64 %i.be
  %i.bh = getelementptr i8, ptr %i.bg, i64 -1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.bj = load i8, ptr %i.bi, align 8, !range !32, !alias.scope !100, !noalias !99
  %i.bk = trunc nuw i8 %i.bj to i1                ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre2.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !alias.scope !100, !noalias !99 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.lr.ph.split.us.i.i, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %.lr.ph.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.promoted13.i.i = load i64, ptr %i.bl, align 8, !alias.scope !101, !noalias !104
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i
  %.not.i3.i.i.us.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.promoted9.i.i
  %or.cond.not.i.i.i.us.i.i = select i1 %i.bk, i1 true, i1 %.not.i3.i.i.us.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  br i1 %or.cond.not.i.i.i.us.i.i, label %._crit_edge.split.us.split.us.i.i, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit

._crit_edge.split.us.split.us.i.i:                ; preds = %.lr.ph.split.us.i.i
  %.sroa.0.1.i.i.us.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.promoted9.i.i
  %i.bm = sub nuw i64 %.pre2.i.i.i.i.i, %.promoted9.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i, ptr %i.bn, align 8, !noalias !109, !captures !59
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 %i.bm, ptr %i.bo, align 8, !noalias !109
  store i64 2, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !99, !noalias !100
  br label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit

.lr.ph.split.i.i:                                 ; preds = %.noexc12, %.lr.ph.split.preheader.i.i
  %i.bp = phi ptr [ %i.ct, %.noexc12 ], [ %i.as, %.lr.ph.split.preheader.i.i ]
  %i.bq = phi i64 [ %i.cw, %.noexc12 ], [ 1, %.lr.ph.split.preheader.i.i ] ; 5 uses
  %i.br = phi i64 [ %i.co, %.noexc12 ], [ %.promoted13.i.i, %.lr.ph.split.preheader.i.i ] ; 3 uses
  %.lcssa71112.i.i = phi i64 [ %.lcssa710.i.i, %.noexc12 ], [ %.promoted9.i.i, %.lr.ph.split.preheader.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.bs = icmp ult i64 %i.ba, %i.br
  br i1 %i.bs, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %.lr.ph.split.i.i
  tail call void @llvm.assume(i1 %i.bf)
  %.pre.i.i.i.i.i = load i8, ptr %i.bh, align 1, !alias.scope !101, !noalias !104 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.l, %.lr.ph.split.preheader.i.i.i.i.i
  %i.bt = phi i64 [ %i.ci, %bb.l ], [ %i.br, %.lr.ph.split.preheader.i.i.i.i.i ] ; 3 uses
  %i.bu = sub nuw i64 %i.ba, %i.bt                ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.bt ; 2 uses
  %i.bw = icmp samesign ult i64 %i.bu, 16
  br i1 %i.bw, label %.preheader.i.i.i.i.i.i, label %bb.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.i:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.bx = invoke { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bv, i64 noundef range(i64 0, -9223372036854775808) %i.bu)
          to label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i unwind label %.loopexit

._crit_edge.i.i.i.i.i.i:                          ; preds = %bb.j, %.lr.ph.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bu, %bb.j ]
  %.sroa.0.1.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.j ]
  %i.by = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i, 0
  %i.bz = insertvalue { i64, i64 } %i.by, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.j
  %.sroa.01.05.i.i.i.i.i.i = phi i64 [ %i.cd, %bb.j ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.01.05.i.i.i.i.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !alias.scope !110, !noalias !113, !noundef !9
  %i.cc = icmp eq i8 %i.cb, %.pre.i.i.i.i.i
  br i1 %i.cc, label %._crit_edge.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cd = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.cd, %i.bu
  br i1 %exitcond.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i: ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i
  %.merged.i.i.i.i.i.i = phi { i64, i64 } [ %i.bz, %._crit_edge.i.i.i.i.i.i ], [ %i.bx, %bb.i ] ; 2 uses
  %i.ce = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 0
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.k, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i

bb.k:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i
  %i.cg = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i, 1
  %i.ch = add i64 %i.bt, 1
  %i.ci = add i64 %i.ch, %i.cg                    ; 8 uses
  %.not11.i.i.i.i.i = icmp ult i64 %i.ci, %i.be
  %.not12.i.i.i.i.i = icmp ugt i64 %i.ci, %.val1.i.i.i.i
  %or.cond.i.i.i.i.i = or i1 %.not11.i.i.i.i.i, %.not12.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k
  %i.cj = icmp ult i64 %i.ba, %i.ci
  br i1 %i.cj, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i, label %.lr.ph.split.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ck = sub nuw i64 %i.ci, %i.be                ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ck
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cl, ptr nonnull %i.bb, i64 %i.be), !noalias !104
  %i.cm = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cm, label %select.unfold.i.i, label %bb.l

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i, %.lr.ph.split.i.i
  %i.cn = phi i64 [ %i.br, %.lr.ph.split.i.i ], [ %i.ba, %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i ], [ %i.ci, %bb.l ]
  store i8 1, ptr %i.av, align 1, !alias.scope !114, !noalias !99
  %.not.i3.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i, %.lcssa71112.i.i
  %or.cond.not.i.i.i.i.i = select i1 %i.bk, i1 true, i1 %.not.i3.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i, label %select.unfold.i.i, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit

select.unfold.i.i:                                ; preds = %bb.m, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i
  %i.co = phi i64 [ %i.cn, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i ], [ %i.ci, %bb.m ]
  %.lcssa710.i.i = phi i64 [ %.lcssa71112.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i ], [ %i.ci, %bb.m ]
  %i.cp = phi i1 [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i ], [ false, %bb.m ]
  %.pn.i.i = phi i64 [ %.pre2.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i ], [ %i.ck, %bb.m ]
  %.sroa.4.1.i.i.i.i = sub nuw i64 %.pn.i.i, %.lcssa71112.i.i
  %.sroa.0.1.i.i.i.i10 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.lcssa71112.i.i
  %i.cq = icmp samesign ult i64 %i.bq, 576460752303423488
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = load i64, ptr %i.b, align 8, !range !20, !alias.scope !99, !noalias !100, !noundef !9
  %i.cs = icmp eq i64 %i.bq, %i.cr
  br i1 %i.cs, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i, label %.noexc12

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i: ; preds = %select.unfold.i.i
  invoke fastcc void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bq, i64 noundef 1)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i..noexc12_crit_edge unwind label %.loopexit.split-lp

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i..noexc12_crit_edge: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !99, !noalias !100
  br label %.noexc12

.noexc12:                                         ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i..noexc12_crit_edge, %select.unfold.i.i
  %i.ct = phi ptr [ %.pre, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i..noexc12_crit_edge ], [ %i.bp, %select.unfold.i.i ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.bq ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i10, ptr %i.cu, align 8, !noalias !109, !captures !59
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %.sroa.4.1.i.i.i.i, ptr %i.cv, align 8, !noalias !109
  %i.cw = add nuw nsw i64 %i.bq, 1                ; 2 uses
  store i64 %i.cw, ptr %.sroa.64.0..sroa_idx, align 8, !alias.scope !99, !noalias !100
  br i1 %i.cp, label %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit, label %.lr.ph.split.i.i

bb.n:                                             ; preds = %bb.a, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i
  store i64 0, ptr %0, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.cy, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.loopexit:                                        ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val = load i64, ptr %i.b, align 8             ; 2 uses
  %i.cz = icmp eq i64 %.val, 0
  br i1 %i.cz, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val9 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !9, !noundef !9
  %i.da = shl nuw i64 %.val, 4
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !117
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit

_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCshzWfHUSfYae_4core3str4iter5SplitcEE11spec_extendCskVLyBV5N46_15ra_ap_rustc_abi.exit: ; preds = %.noexc12, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i.i, %._crit_edge.split.us.split.us.i.i, %.lr.ph.split.us.i.i, %_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskVLyBV5N46_15ra_ap_rustc_abi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.o

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecReEECskVLyBV5N46_15ra_ap_rustc_abi.exit: ; preds = %bb.q, %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_RNvXs0_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbiNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noundef i8 @_RNvXNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB2_9ExternAbiNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %1)
  %i.b = icmp eq i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecReENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCskVLyBV5N46_15ra_ap_rustc_abi(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #7 {
bb.a:
end_hunk_0
