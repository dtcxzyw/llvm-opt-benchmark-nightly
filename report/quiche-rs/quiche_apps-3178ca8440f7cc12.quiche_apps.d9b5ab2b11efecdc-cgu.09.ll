Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/quiche_apps-3178ca8440f7cc12.quiche_apps.d9b5ab2b11efecdc-cgu.09?download=true
inline.NumInlined: 280
inline.NumDeleted: 125
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNB11_EE9from_iterCsiGRwBGCeC5s_11quiche_apps:bb.a
    #dbg_value(i64 16, !1866, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5972)
    #dbg_value(i64 0, !1865, !DIExpression(), !5972)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6128
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !6128
  %i.f = load i64, ptr %i.a, align 8, !dbg !6128, !range !1868, !noundef !593
  %i.g = trunc nuw i64 %i.f to i1, !dbg !6129
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !6130
  %i.i = load i64, ptr %i.h, align 8, !dbg !6130, !range !1869, !noundef !593 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !6130 ; 2 uses
  br i1 %i.g, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !6129, !prof !1744

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !dbg !6131
    #dbg_value(i64 %i.i, !1849, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5974)
    #dbg_value(i64 %i.k, !1849, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5974)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #19, !dbg !6132
  unreachable, !dbg !6132

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.d, 1, !dbg !6125
    #dbg_value(i64 %i.l, !6051, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6073)
  %i.m = load ptr, ptr %i.j, align 8, !dbg !6133, !nonnull !593, !noundef !593 ; 3 uses
    #dbg_value(i64 %i.i, !1848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !5975)
    #dbg_value(ptr %i.m, !1848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !5975)
    #dbg_value(ptr poison, !1864, !DIExpression(), !5976)
  %i.n = icmp ugt i64 %i.i, 3, !dbg !6134
    #dbg_value(i1 true, !1872, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !5978)
  tail call void @llvm.assume(i1 %i.n), !dbg !6135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6136
    #dbg_value(i64 %i.i, !6054, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6079)
    #dbg_value(ptr %i.m, !6054, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6079)
    #dbg_value(i64 0, !6054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6079)
    #dbg_value(ptr %i.m, !6080, !DIExpression(), !6084)
    #dbg_value(ptr %i.e, !6081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6084)
    #dbg_value(i64 %i.l, !6081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6084)
  store ptr %i.e, ptr %i.m, align 8, !dbg !6137, !captures !2063
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !6137
  store i64 %i.l, ptr %i.o, align 8, !dbg !6137
    #dbg_value(i64 1, !6054, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !6079)
  store i64 %i.i, ptr %i.c, align 8, !dbg !6138
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !6138 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6138
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !6138 ; 3 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.b, ptr noundef nonnull align 8 dereferenceable(136) %1, i64 136, i1 false), !dbg !6139
    #dbg_value(ptr %i.c, !6085, !DIExpression(), !5982)
    #dbg_declare(ptr %i.b, !6088, !DIExpression(), !5983)
    #dbg_value(ptr %i.c, !6091, !DIExpression(), !5989)
    #dbg_value(ptr %i.c, !6099, !DIExpression(), !5992)
    #dbg_value(ptr %i.c, !6101, !DIExpression(), !5995)
    #dbg_value(ptr %i.c, !6103, !DIExpression(), !5998)
    #dbg_value(ptr %i.c, !6105, !DIExpression(), !6001)
    #dbg_value(ptr %i.c, !6101, !DIExpression(), !6003)
    #dbg_declare(ptr %i.b, !6094, !DIExpression(), !6004)
    #dbg_value(i64 16, !6108, !DIExpression(), !6009)
    #dbg_value(i64 16, !6108, !DIExpression(), !6012)
  %i.p = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6140 ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  %i.q = extractvalue { ptr, i64 } %i.p, 0, !dbg !6140 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.q, null, !dbg !6141
  br i1 %.not17.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.i.i, !dbg !6142

.lr.ph.i.i:                                       ; preds = %.noexc, %.noexc21
  %.pn.i.i = phi { ptr, i64 } [ %i.ab, %.noexc21 ], [ %i.p, %.noexc ]
  %i.r = phi ptr [ %i.ac, %.noexc21 ], [ %i.q, %.noexc ]
  %i.s = extractvalue { ptr, i64 } %.pn.i.i, 1, !dbg !6140
    #dbg_value(ptr %i.r, !6095, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6013)
    #dbg_value(i64 %i.s, !6095, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6013)
  %i.t = load i64, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6143, !alias.scope !6115, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.t, !6096, !DIExpression(), !6018)
    #dbg_value(i64 %i.t, !6116, !DIExpression(), !6021)
  %i.u = icmp ult i64 %i.t, 576460752303423488, !dbg !6144
  call void @llvm.assume(i1 %i.u), !dbg !6145
    #dbg_value(ptr %i.c, !6111, !DIExpression(), !6022)
  %i.v = load i64, ptr %i.c, align 8, !dbg !6146, !range !1743, !alias.scope !6115, !noundef !593
  %i.w = icmp eq i64 %i.t, %i.v, !dbg !6147
  br i1 %i.w, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, label %.noexc20, !dbg !6147

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i: ; preds = %.lr.ph.i.i
    #dbg_value(i64 0, !6097, !DIExpression(), !6023)
    #dbg_value(ptr %i.c, !2083, !DIExpression(), !6025)
    #dbg_value(i64 1, !2085, !DIExpression(), !6025)
    #dbg_value(i64 1, !2087, !DIExpression(), !6027)
    #dbg_value(i64 1, !2095, !DIExpression(), !6029)
    #dbg_value(ptr %i.c, !2092, !DIExpression(), !6030)
    #dbg_value(i64 %i.t, !2093, !DIExpression(), !6027)
    #dbg_value(i64 %i.t, !2097, !DIExpression(), !6029)
    #dbg_value(ptr %i.c, !2096, !DIExpression(), !6029)
    #dbg_value(i64 8, !2098, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6029)
    #dbg_value(i64 16, !2098, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6029)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.t, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6148

.noexc20:                                         ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %.lr.ph.i.i
  %i.x = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !6149, !alias.scope !6115, !nonnull !593, !noundef !593
    #dbg_value(ptr %i.x, !6117, !DIExpression(), !6021)
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.t, !dbg !6150 ; 2 uses
    #dbg_value(ptr %i.y, !6119, !DIExpression(), !6039)
    #dbg_value(ptr %i.r, !6120, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6039)
    #dbg_value(i64 %i.s, !6120, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6039)
  store ptr %i.r, ptr %i.y, align 8, !dbg !6151, !noalias !6122, !captures !2063
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !6151
  store i64 %i.s, ptr %i.z, align 8, !dbg !6151, !noalias !6122
  %i.aa = add nuw nsw i64 %i.t, 1, !dbg !6152
    #dbg_value(i64 %i.aa, !6106, !DIExpression(), !6001)
  store i64 %i.aa, ptr %.sroa.64.0..sroa_idx, align 8, !dbg !6153, !alias.scope !6115
  %i.ab = invoke fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.b) #20
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6140 ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  %i.ac = extractvalue { ptr, i64 } %i.ab, 0, !dbg !6140 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null, !dbg !6141
  br i1 %.not.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, label %.lr.ph.i.i, !dbg !6142

bb.d:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !dbg !6154
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6154
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8, !dbg !6154
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6154
  store i64 0, ptr %i.ae, align 8, !dbg !6154
  br label %bb.e, !dbg !6155

bb.e:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6155
  ret void, !dbg !6156

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc20, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecReE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiGRwBGCeC5s_11quiche_apps.exit
  %lpad.loopexit.split-lp27 = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !2116, !DIExpression(), !6044)
    #dbg_value(ptr %i.c, !2122, !DIExpression(), !6046)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecReENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsiGRwBGCeC5s_11quiche_apps.exit unwind label %bb.f, !dbg !6157

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecReEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core3str4iter6SplitNBR_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.noexc21, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6158
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !6159
  br label %bb.e, !dbg !6155

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !6160
  unreachable, !dbg !6160

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecReEECsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp27, !dbg !6160
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(136) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !6161 {
bb.a:
    #dbg_value(ptr %0, !6585, !DIExpression(), !6587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6588), !dbg !7017
    #dbg_value(ptr %0, !6590, !DIExpression(), !6166)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !7018 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !7018, !alias.scope !6588, !noundef !593 ; 2 uses
  switch i64 %i.b, label %bb.b [
    i64 0, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit
    i64 1, label %bb.ao
  ], !dbg !7018

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %i.b, -1, !dbg !7019
  store i64 %i.c, ptr %i.a, align 8, !dbg !7019, !alias.scope !6588
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6595), !dbg !7020
    #dbg_value(ptr %0, !6597, !DIExpression(), !6174)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121, !dbg !7021 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !dbg !7021, !range !1982, !alias.scope !6606, !noundef !593
  %i.f = trunc nuw i8 %i.e to i1, !dbg !7021
  br i1 %i.f, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.c, !dbg !7021

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7022
  %.val.i.i = load ptr, ptr %i.g, align 8, !dbg !7022, !alias.scope !6606, !nonnull !593, !noundef !593 ; 16 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !7022
  %.val13.i.i = load i64, ptr %i.h, align 8, !dbg !7022, !alias.scope !6606, !noundef !593 ; 33 uses
    #dbg_value(ptr poison, !6601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6175)
    #dbg_value(ptr poison, !6607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(ptr poison, !6610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 poison, !6601, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6175)
    #dbg_value(i64 poison, !6607, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6178)
    #dbg_value(i64 poison, !6610, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6615), !dbg !7023
    #dbg_value(ptr %0, !6617, !DIExpression(), !6195)
  %i.i = load i64, ptr %0, align 8, !dbg !7024, !range !1719, !alias.scope !6632, !noundef !593
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %.preheader.i.i.i
    i64 1, label %bb.r
    i64 2, label %bb.s
  ], !dbg !7025

.preheader.i.i.i:                                 ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.l = load i8, ptr %i.k, align 2, !range !1982, !alias.scope !6632
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  br i1 %i.m, label %bb.al, label %.lr.ph.preheader.i.i.i, !dbg !7026

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i.i.i
  %.promoted226.i.i.i = load i8, ptr %i.n, align 8, !alias.scope !6632 ; 4 uses
  %.promoted177.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !6632 ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6664), !dbg !7027
  %i.o = trunc nuw i8 %.promoted226.i.i.i to i1, !dbg !7028 ; 2 uses
    #dbg_value(i1 %i.o, !6650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6218)
    #dbg_value(i64 %.promoted177.i.i.i, !6651, !DIExpression(), !6219)
    #dbg_value(i64 %.promoted177.i.i.i, !6665, !DIExpression(), !6227)
    #dbg_value(ptr %.val.i.i, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6228)
    #dbg_value(ptr %.val.i.i, !6672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6229)
    #dbg_value(i64 %.val13.i.i, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6228)
    #dbg_value(i64 %.val13.i.i, !6672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6229)
    #dbg_value(i64 %.promoted177.i.i.i, !6680, !DIExpression(), !6228)
    #dbg_value(i64 %.promoted177.i.i.i, !6671, !DIExpression(), !6229)
    #dbg_value(i64 %.val13.i.i, !6673, !DIExpression(), !6227)
    #dbg_value(i64 %.promoted177.i.i.i, !6684, !DIExpression(), !6232)
    #dbg_value(ptr %.val.i.i, !6687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6232)
    #dbg_value(ptr %.val.i.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr %.val.i.i, !6694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6239)
    #dbg_value(ptr %.val.i.i, !6700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(i64 %.val13.i.i, !6687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6232)
    #dbg_value(i64 %.val13.i.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6235)
    #dbg_value(i64 %.val13.i.i, !6694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6239)
    #dbg_value(i64 %.val13.i.i, !6700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6244)
    #dbg_value(i64 %.promoted177.i.i.i, !6692, !DIExpression(), !6235)
    #dbg_value(i64 %.promoted177.i.i.i, !6697, !DIExpression(), !6239)
    #dbg_value(i64 %.promoted177.i.i.i, !6701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(i64 %.promoted177.i.i.i, !6705, !DIExpression(), !6247)
  %i.p = icmp eq i64 %.promoted177.i.i.i, 0, !dbg !7029
  br i1 %i.p, label %bb.f, label %bb.d, !dbg !7029

bb.d:                                             ; preds = %.lr.ph.preheader.i.i.i
  %.not.i.i.us.i.peel.i.i = icmp ult i64 %.promoted177.i.i.i, %.val13.i.i, !dbg !7030
  br i1 %.not.i.i.us.i.peel.i.i, label %bb.e, label %.split.i.i.us.i.peel.i.i, !dbg !7030

.split.i.i.us.i.peel.i.i:                         ; preds = %bb.d
  %i.q = icmp eq i64 %.promoted177.i.i.i, %.val13.i.i, !dbg !7031
  br i1 %i.q, label %bb.f, label %.split.us181.i.i.i, !dbg !7032

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted177.i.i.i, !dbg !7033
  %i.s = load i8, ptr %i.r, align 1, !dbg !7033, !alias.scope !6710, !noalias !6711, !noundef !593
    #dbg_value(i8 %i.s, !6713, !DIExpression(), !6255)
  %i.t = icmp sgt i8 %i.s, -65, !dbg !7034
  br i1 %i.t, label %bb.f, label %.split.us181.i.i.i, !dbg !7032

bb.f:                                             ; preds = %bb.e, %.split.i.i.us.i.peel.i.i, %.lr.ph.preheader.i.i.i
    #dbg_value(ptr %.val.i.i, !6702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6256)
    #dbg_value(i64 %.val13.i.i, !6702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6256)
    #dbg_value(i64 %.val13.i.i, !6698, !DIExpression(), !6257)
    #dbg_value(i64 %.val13.i.i, !6701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6244)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %.promoted177.i.i.i), !6703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6258)
    #dbg_value(ptr %.val.i.i, !6708, !DIExpression(), !6247)
  %i.u = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted177.i.i.i, !dbg !7035 ; 4 uses
    #dbg_value(ptr undef, !6719, !DIExpression(), !6266)
    #dbg_value(ptr undef, !6737, !DIExpression(), !6278)
    #dbg_value(i32 2, !6752, !DIExpression(), !6281)
    #dbg_value(ptr undef, !6757, !DIExpression(), !6291)
    #dbg_value(i64 1, !6771, !DIExpression(), !6294)
    #dbg_value(ptr %i.u, !6767, !DIExpression(), !6295)
    #dbg_value(ptr %i.u, !6775, !DIExpression(), !6294)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6296)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6299)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6300)
  %i.v = icmp samesign eq i64 %.promoted177.i.i.i, %.val13.i.i, !dbg !7036
  br i1 %i.v, label %.split186.us.i.i.i, label %bb.g, !dbg !7037

bb.g:                                             ; preds = %bb.f
  %i.w = load i8, ptr %i.u, align 1, !dbg !7038, !noalias !6785, !noundef !593 ; 5 uses
    #dbg_value(i8 %i.w, !6741, !DIExpression(), !6303)
    #dbg_value(i8 %i.w, !6755, !DIExpression(), !6281)
  %i.x = icmp sgt i8 %i.w, -1, !dbg !7039
  br i1 %i.x, label %bb.h, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.peel.i.i, !dbg !7039

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.peel.i.i: ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 1, !dbg !7040
  %i.z = and i8 %i.w, 31, !dbg !7041
  %i.aa = zext nneg i8 %i.z to i32, !dbg !7041    ; 3 uses
    #dbg_value(i32 %i.aa, !6744, !DIExpression(), !6304)
    #dbg_value(i32 %i.aa, !6786, !DIExpression(), !6307)
    #dbg_value(ptr undef, !6757, !DIExpression(), !6309)
    #dbg_value(i64 1, !6771, !DIExpression(), !6311)
    #dbg_value(ptr %i.y, !6767, !DIExpression(), !6312)
    #dbg_value(ptr %i.y, !6775, !DIExpression(), !6311)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6313)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6315)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6316)
  %i.ab = add nuw nsw i64 %.promoted177.i.i.i, 1, !dbg !7042
  %i.ac = icmp samesign ne i64 %i.ab, %.val13.i.i, !dbg !7042
  tail call void @llvm.assume(i1 %i.ac), !dbg !7043
  %i.ad = load i8, ptr %i.y, align 1, !dbg !7044, !noalias !6785, !noundef !593
    #dbg_value(i8 %i.ad, !6745, !DIExpression(), !6317)
    #dbg_value(i8 %i.ad, !6789, !DIExpression(), !6307)
  %i.ae = shl nuw nsw i32 %i.aa, 6, !dbg !7045
  %i.af = and i8 %i.ad, 63, !dbg !7046
  %i.ag = zext nneg i8 %i.af to i32, !dbg !7046   ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag, !dbg !7045
    #dbg_value(i32 %i.ah, !6746, !DIExpression(), !6318)
  %i.ai = icmp samesign ugt i8 %i.w, -33, !dbg !7047
  br i1 %i.ai, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.peel.i.i, label %bb.i, !dbg !7047

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.peel.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 2, !dbg !7048
    #dbg_value(ptr undef, !6757, !DIExpression(), !6320)
    #dbg_value(i64 1, !6771, !DIExpression(), !6322)
    #dbg_value(ptr %i.aj, !6767, !DIExpression(), !6323)
    #dbg_value(ptr %i.aj, !6775, !DIExpression(), !6322)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6324)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6326)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6327)
  %i.ak = add nuw nsw i64 %.promoted177.i.i.i, 2, !dbg !7049
  %i.al = icmp samesign ne i64 %i.ak, %.val13.i.i, !dbg !7049
  tail call void @llvm.assume(i1 %i.al), !dbg !7050
  %i.am = load i8, ptr %i.aj, align 1, !dbg !7051, !noalias !6785, !noundef !593
    #dbg_value(i8 %i.am, !6747, !DIExpression(), !6328)
    #dbg_value(i8 %i.am, !6789, !DIExpression(), !6330)
    #dbg_value(i32 %i.ag, !6786, !DIExpression(), !6330)
  %i.an = shl nuw nsw i32 %i.ag, 6, !dbg !7052
  %i.ao = and i8 %i.am, 63, !dbg !7053
  %i.ap = zext nneg i8 %i.ao to i32, !dbg !7053
  %i.aq = or disjoint i32 %i.an, %i.ap, !dbg !7052 ; 2 uses
    #dbg_value(i32 %i.aq, !6748, !DIExpression(), !6331)
    #dbg_value(i32 %i.aq, !6786, !DIExpression(), !6333)
  %i.ar = shl nuw nsw i32 %i.aa, 12, !dbg !7054
  %i.as = or disjoint i32 %i.aq, %i.ar, !dbg !7055
    #dbg_value(i32 %i.as, !6746, !DIExpression(), !6318)
  %i.at = icmp samesign ugt i8 %i.w, -17, !dbg !7056
  br i1 %i.at, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.peel.i.i, label %bb.i, !dbg !7056

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.peel.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.peel.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 3, !dbg !7057
    #dbg_value(ptr undef, !6757, !DIExpression(), !6335)
    #dbg_value(i64 1, !6771, !DIExpression(), !6337)
    #dbg_value(ptr %i.au, !6767, !DIExpression(), !6338)
    #dbg_value(ptr %i.au, !6775, !DIExpression(), !6337)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6339)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6341)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6342)
  %i.av = add nuw nsw i64 %.promoted177.i.i.i, 3, !dbg !7058
  %i.aw = icmp samesign ne i64 %i.av, %.val13.i.i, !dbg !7058
  tail call void @llvm.assume(i1 %i.aw), !dbg !7059
  %i.ax = load i8, ptr %i.au, align 1, !dbg !7060, !noalias !6785, !noundef !593
    #dbg_value(i8 %i.ax, !6749, !DIExpression(), !6343)
    #dbg_value(i8 %i.ax, !6789, !DIExpression(), !6333)
  %i.ay = shl nuw nsw i32 %i.aa, 18, !dbg !7061
  %i.az = and i32 %i.ay, 1835008, !dbg !7061
  %i.ba = shl nuw nsw i32 %i.aq, 6, !dbg !7062
  %i.bb = and i8 %i.ax, 63, !dbg !7063
  %i.bc = zext nneg i8 %i.bb to i32, !dbg !7063
  %i.bd = or disjoint i32 %i.ba, %i.bc, !dbg !7062
  %i.be = or disjoint i32 %i.bd, %i.az, !dbg !7064
    #dbg_value(i32 %i.be, !6746, !DIExpression(), !6318)
  br label %bb.i, !dbg !7065

bb.h:                                             ; preds = %bb.g
  %i.bf = zext nneg i8 %i.w to i32, !dbg !7066
  br label %bb.i, !dbg !7067

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.peel.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.peel.i.i
  %.sroa.4.0.i.ph.i.us.i.peel.i.i = phi i32 [ %i.as, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.peel.i.i ], [ %i.be, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.peel.i.i ], [ %i.ah, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.peel.i.i ], [ %i.bf, %bb.h ] ; 4 uses
    #dbg_value(i32 1, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6348)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6795, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6348)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6804, !DIExpression(), !6349)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6807, !DIExpression(), !6352)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6812, !DIExpression(), !6355)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6820, !DIExpression(), !6358)
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 1114112, !dbg !7068
  tail call void @llvm.assume(i1 %i.bg), !dbg !7068
  br i1 %i.o, label %.loopexit62.split.us.i.i.i, label %bb.j, !dbg !7069

bb.j:                                             ; preds = %bb.i
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6652, !DIExpression(), !6359)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6825, !DIExpression(), !6362)
    #dbg_value(i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, !6829, !DIExpression(), !6365)
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 128, !dbg !7070
  br i1 %i.bh, label %.lr.ph.i.i.i, label %bb.k, !dbg !7070

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 2048, !dbg !7071
  br i1 %i.bi, label %.lr.ph.i.i.i, label %bb.l, !dbg !7071

bb.l:                                             ; preds = %bb.k
  %i.bj = icmp samesign ult i32 %.sroa.4.0.i.ph.i.us.i.peel.i.i, 65536, !dbg !7072
  %..i.us.i.peel.i.i = select i1 %i.bj, i64 3, i64 4, !dbg !7073
  br label %.lr.ph.i.i.i, !dbg !7073

.lr.ph.i.i.i:                                     ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.us.i.peel.i.i = phi i64 [ 2, %bb.k ], [ %..i.us.i.peel.i.i, %bb.l ], [ 1, %bb.j ], !dbg !7073
  %i.bk = add i64 %.sroa.01.0.i.us.i.peel.i.i, %.promoted177.i.i.i, !dbg !7074 ; 16 uses
  store i64 %i.bk, ptr %i.j, align 8, !dbg !7074, !alias.scope !6833
    #dbg_value(ptr poison, !6757, !DIExpression(), !6335)
    #dbg_value(ptr poison, !6757, !DIExpression(), !6320)
    #dbg_value(ptr poison, !6757, !DIExpression(), !6309)
    #dbg_value(ptr poison, !6757, !DIExpression(), !6291)
    #dbg_value(ptr poison, !6737, !DIExpression(), !6278)
    #dbg_value(ptr poison, !6719, !DIExpression(), !6266)
    #dbg_value(ptr %0, !6647, !DIExpression(), !6366)
    #dbg_declare(ptr poison, !6803, !DIExpression(), !6367)
    #dbg_value(ptr %0, !6649, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6835), !dbg !7027
    #dbg_value(i1 true, !6650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6218)
    #dbg_value(i64 %i.bk, !6651, !DIExpression(), !6219)
    #dbg_value(i64 %i.bk, !6665, !DIExpression(), !6227)
    #dbg_value(ptr %.val.i.i, !6679, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6228)
    #dbg_value(ptr %.val.i.i, !6672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6229)
    #dbg_value(i64 %.val13.i.i, !6679, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6228)
    #dbg_value(i64 %.val13.i.i, !6672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6229)
    #dbg_value(i64 %i.bk, !6680, !DIExpression(), !6228)
    #dbg_value(i64 %i.bk, !6671, !DIExpression(), !6229)
    #dbg_value(i64 %.val13.i.i, !6673, !DIExpression(), !6227)
    #dbg_value(i64 %i.bk, !6684, !DIExpression(), !6232)
    #dbg_value(ptr %.val.i.i, !6687, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6232)
    #dbg_value(ptr %.val.i.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6235)
    #dbg_value(ptr %.val.i.i, !6694, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6239)
    #dbg_value(ptr %.val.i.i, !6700, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(i64 %.val13.i.i, !6687, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6232)
    #dbg_value(i64 %.val13.i.i, !6689, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6235)
    #dbg_value(i64 %.val13.i.i, !6694, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6239)
    #dbg_value(i64 %.val13.i.i, !6700, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6244)
    #dbg_value(i64 %i.bk, !6692, !DIExpression(), !6235)
    #dbg_value(i64 %i.bk, !6697, !DIExpression(), !6239)
    #dbg_value(i64 %i.bk, !6701, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6244)
    #dbg_value(i64 %i.bk, !6705, !DIExpression(), !6247)
  %i.bl = icmp eq i64 %i.bk, 0, !dbg !7029
  br i1 %i.bl, label %bb.o, label %bb.m, !dbg !7029

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.us.i.i.i = icmp ult i64 %i.bk, %.val13.i.i, !dbg !7030
  br i1 %.not.i.i.us.i.i.i, label %bb.n, label %.split.i.i.us.i.i.i, !dbg !7030

.split.i.i.us.i.i.i:                              ; preds = %bb.m
  %i.bm = icmp eq i64 %i.bk, %.val13.i.i, !dbg !7031
  br i1 %i.bm, label %bb.o, label %.split.us181.i.i.i, !dbg !7032

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk, !dbg !7033
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !7033, !alias.scope !6710, !noalias !6836, !noundef !593
    #dbg_value(i8 %i.bo, !6713, !DIExpression(), !6255)
  %i.bp = icmp sgt i8 %i.bo, -65, !dbg !7034
  br i1 %i.bp, label %bb.o, label %.split.us181.i.i.i, !dbg !7032

bb.o:                                             ; preds = %bb.n, %.split.i.i.us.i.i.i, %.lr.ph.i.i.i
    #dbg_value(ptr %.val.i.i, !6702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6256)
    #dbg_value(i64 %.val13.i.i, !6702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6256)
    #dbg_value(i64 %.val13.i.i, !6698, !DIExpression(), !6257)
    #dbg_value(i64 %.val13.i.i, !6701, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6244)
    #dbg_value(!DIArgList(i64 %.val13.i.i, i64 %i.bk), !6703, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6258)
    #dbg_value(ptr %.val.i.i, !6708, !DIExpression(), !6247)
    #dbg_value(ptr undef, !6719, !DIExpression(), !6266)
    #dbg_value(ptr undef, !6737, !DIExpression(), !6278)
    #dbg_value(i32 2, !6752, !DIExpression(), !6281)
    #dbg_value(ptr undef, !6757, !DIExpression(), !6291)
    #dbg_value(i64 1, !6771, !DIExpression(), !6294)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6767, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6295)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6294)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6296)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6299)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6300)
  %i.bq = icmp samesign eq i64 %i.bk, %.val13.i.i, !dbg !7036
  br i1 %i.bq, label %.split186.us.i.thread.i.i, label %bb.p, !dbg !7037

.split186.us.i.thread.i.i:                        ; preds = %bb.o
  store i8 0, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
    #dbg_value(i32 0, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6348)
    #dbg_value(i32 undef, !6795, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6348)
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7069

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bk, !dbg !7035
    #dbg_value(ptr %i.br, !6767, !DIExpression(), !6295)
    #dbg_value(ptr %i.br, !6775, !DIExpression(), !6294)
  %i.bs = load i8, ptr %i.br, align 1, !dbg !7038, !noalias !6838, !noundef !593 ; 3 uses
    #dbg_value(i8 %i.bs, !6741, !DIExpression(), !6303)
    #dbg_value(i8 %i.bs, !6755, !DIExpression(), !6281)
  %i.bt = icmp sgt i8 %i.bs, -1, !dbg !7039
  br i1 %i.bt, label %.loopexit62.split.us.i.i.i, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i, !dbg !7039

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i: ; preds = %bb.p
    #dbg_value(i8 %i.bs, !6744, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6304)
    #dbg_value(i8 %i.bs, !6786, !DIExpression(DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6307)
    #dbg_value(ptr undef, !6757, !DIExpression(), !6309)
    #dbg_value(i64 1, !6771, !DIExpression(), !6311)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6767, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !6312)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 1, DW_OP_stack_value), !6311)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6313)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6315)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6316)
  %i.bu = add nuw nsw i64 %i.bk, 1, !dbg !7042
  %i.bv = icmp samesign ne i64 %i.bu, %.val13.i.i, !dbg !7042
  tail call void @llvm.assume(i1 %i.bv), !dbg !7043
    #dbg_value(i8 poison, !6745, !DIExpression(), !6317)
    #dbg_value(i8 poison, !6789, !DIExpression(), !6307)
    #dbg_value(!DIArgList(i8 poison, i8 poison), !6746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 6, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6318)
  %i.bw = icmp samesign ugt i8 %i.bs, -33, !dbg !7047
  br i1 %i.bw, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i, label %.loopexit62.split.us.i.i.i, !dbg !7047

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i
    #dbg_value(ptr undef, !6757, !DIExpression(), !6320)
    #dbg_value(i64 1, !6771, !DIExpression(), !6322)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6767, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6323)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 2, DW_OP_stack_value), !6322)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6324)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6326)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6327)
  %i.bx = add nuw nsw i64 %i.bk, 2, !dbg !7049
  %i.by = icmp samesign ne i64 %i.bx, %.val13.i.i, !dbg !7049
  tail call void @llvm.assume(i1 %i.by), !dbg !7050
    #dbg_value(i8 poison, !6747, !DIExpression(), !6328)
    #dbg_value(i8 poison, !6789, !DIExpression(), !6330)
    #dbg_value(i8 poison, !6786, !DIExpression(DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value), !6330)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !6748, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6331)
    #dbg_value(!DIArgList(i32 poison, i8 poison), !6786, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_stack_value), !6333)
    #dbg_value(!DIArgList(i32 poison, i8 poison, i8 poison), !6746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 31, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 12, DW_OP_shl, DW_OP_or, DW_OP_stack_value), !6318)
  %i.bz = icmp samesign ugt i8 %i.bs, -17, !dbg !7056
  br i1 %i.bz, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i, label %.loopexit62.split.us.i.i.i, !dbg !7056

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i: ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i
    #dbg_value(ptr undef, !6757, !DIExpression(), !6335)
    #dbg_value(i64 1, !6771, !DIExpression(), !6337)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6767, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !6338)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %i.bk), !6775, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 3, DW_OP_stack_value), !6337)
    #dbg_value(!DIArgList(ptr %.val.i.i, i64 %.val13.i.i), !6768, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !6339)
    #dbg_value(ptr poison, !6779, !DIExpression(), !6341)
    #dbg_value(ptr poison, !6783, !DIExpression(), !6342)
  %i.ca = add nuw nsw i64 %i.bk, 3, !dbg !7058
  %i.cb = icmp samesign ne i64 %i.ca, %.val13.i.i, !dbg !7058
  tail call void @llvm.assume(i1 %i.cb), !dbg !7059
    #dbg_value(i8 poison, !6749, !DIExpression(), !6343)
    #dbg_value(i8 poison, !6789, !DIExpression(), !6333)
    #dbg_value(!DIArgList(i32 poison, i32 poison, i8 poison), !6746, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 63, DW_OP_and, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_constu, 18, DW_OP_shl, DW_OP_constu, 1835008, DW_OP_and, DW_OP_or, DW_OP_stack_value), !6318)
  br label %.loopexit62.split.us.i.i.i, !dbg !7065

.split.us181.i.i.i:                               ; preds = %bb.n, %.split.i.i.us.i.i.i, %bb.e, %.split.i.i.us.i.peel.i.i
  %.lcssa43.i.i = phi i64 [ %.promoted177.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted177.i.i.i, %bb.e ], [ %i.bk, %.split.i.i.us.i.i.i ], [ %i.bk, %bb.n ]
  %.lcssa40.i.i = phi i8 [ %.promoted226.i.i.i, %.split.i.i.us.i.peel.i.i ], [ %.promoted226.i.i.i, %bb.e ], [ 1, %.split.i.i.us.i.i.i ], [ 1, %bb.n ]
  %i.cc = xor i8 %.lcssa40.i.i, 1
  store i8 %i.cc, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
  tail call void @_RNvNtCskKLDkoKarTP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val13.i.i, i64 noundef %.lcssa43.i.i, i64 noundef %.val13.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #21, !dbg !7076, !noalias !6836
  unreachable, !dbg !7076

.split186.us.i.i.i:                               ; preds = %bb.f
  %i.cd = xor i8 %.promoted226.i.i.i, 1
  store i8 %i.cd, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
    #dbg_value(i32 0, !6795, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !6348)
    #dbg_value(i32 undef, !6795, !DIExpression(DW_OP_LLVM_fragment, 32, 32), !6348)
  br i1 %i.o, label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, label %bb.q, !dbg !7069

.loopexit62.split.us.i.i.i:                       ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i, %bb.p, %bb.i
  %.lcssa45.i.i = phi i64 [ %.promoted177.i.i.i, %bb.i ], [ %i.bk, %bb.p ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit30.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit28.i.i.us.i.i.i ], [ %i.bk, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps.exit26.i.i.us.i.i.i ] ; 2 uses
  store i8 0, ptr %i.n, align 8, !dbg !7075, !alias.scope !6837
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7077

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.q:                                             ; preds = %.split186.us.i.i.i
  store i8 1, ptr %i.k, align 2, !dbg !7078, !alias.scope !6837
  br label %bb.al, !dbg !7079

bb.r:                                             ; preds = %bb.c
    #dbg_value(ptr %0, !6624, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6370)
    #dbg_value(ptr poison, !6625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6371)
    #dbg_value(ptr poison, !6848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6374)
    #dbg_value(ptr poison, !6854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6378)
    #dbg_value(ptr poison, !6861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6381)
    #dbg_value(i64 %.val13.i.i, !6625, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6371)
    #dbg_value(i64 %.val13.i.i, !6848, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6374)
    #dbg_value(i64 %.val13.i.i, !6854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6378)
    #dbg_value(i64 %.val13.i.i, !6861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6381)
  %i.ce = load i64, ptr %i.j, align 8, !dbg !7080, !alias.scope !6632, !noundef !593 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.ce, %.val13.i.i, !dbg !7080
  br i1 %.not.i.i.i, label %bb.t, label %bb.al, !dbg !7080

bb.s:                                             ; preds = %bb.c
    #dbg_value(ptr %i.j, !6629, !DIExpression(), !6382)
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !7081 ; 3 uses
  %i.cg = load i64, ptr %i.cf, align 8, !dbg !7081, !alias.scope !6632, !noundef !593 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1, !dbg !7081
    #dbg_value(i1 %i.ch, !6630, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6383)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !7082
  %i.cj = load ptr, ptr %i.ci, align 8, !dbg !7082, !alias.scope !6632, !nonnull !593, !noundef !593 ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !7082
  %i.cl = load i64, ptr %i.ck, align 8, !dbg !7082, !alias.scope !6632, !noundef !593 ; 16 uses
    #dbg_value(ptr poison, !6865, !DIExpression(), !6408)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6414)
    #dbg_value(ptr poison, !6877, !DIExpression(), !6415)
    #dbg_value(ptr poison, !6877, !DIExpression(), !6416)
    #dbg_value(ptr poison, !6880, !DIExpression(), !6417)
    #dbg_value(ptr poison, !6880, !DIExpression(), !6418)
    #dbg_value(ptr poison, !6894, !DIExpression(), !6419)
    #dbg_value(ptr poison, !6894, !DIExpression(), !6420)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6427)
    #dbg_value(ptr poison, !6865, !DIExpression(), !6431)
    #dbg_value(ptr poison, !6919, !DIExpression(), !6432)
    #dbg_value(ptr poison, !6919, !DIExpression(), !6433)
    #dbg_value(ptr poison, !6923, !DIExpression(), !6434)
    #dbg_value(ptr poison, !6923, !DIExpression(), !6435)
    #dbg_value(ptr %i.j, !6903, !DIExpression(), !6436)
    #dbg_value(ptr %i.j, !6903, !DIExpression(), !6437)
    #dbg_value(ptr %i.j, !6926, !DIExpression(), !6440)
    #dbg_value(ptr %i.j, !6926, !DIExpression(), !6442)
    #dbg_value(ptr %.val.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6436)
    #dbg_value(ptr %.val.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(ptr %.val.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6445)
    #dbg_value(ptr %.val.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6447)
    #dbg_value(ptr %.val.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6450)
    #dbg_value(ptr %.val.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6452)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6455)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6457)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6460)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6462)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6464)
    #dbg_value(ptr %.val.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6466)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6468)
    #dbg_value(ptr %.val.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6470)
    #dbg_value(i64 %.val13.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6436)
    #dbg_value(i64 %.val13.i.i, !6904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 %.val13.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6445)
    #dbg_value(i64 %.val13.i.i, !6933, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6447)
    #dbg_value(i64 %.val13.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6450)
    #dbg_value(i64 %.val13.i.i, !6940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6452)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6455)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6457)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6460)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6462)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6464)
    #dbg_value(i64 %.val13.i.i, !6946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6466)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6468)
    #dbg_value(i64 %.val13.i.i, !6951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6470)
    #dbg_value(ptr %i.cj, !6905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6436)
    #dbg_value(ptr %i.cj, !6905, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(i64 %i.cl, !6905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6436)
    #dbg_value(i64 %i.cl, !6905, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(i64 1, !6957, !DIExpression(), !6473)
    #dbg_value(i64 1, !6957, !DIExpression(), !6475)
    #dbg_value(i64 1, !6961, !DIExpression(), !6478)
    #dbg_value(i64 1, !6961, !DIExpression(), !6480)
    #dbg_value(i64 1, !6966, !DIExpression(), !6483)
    #dbg_value(i64 1, !6966, !DIExpression(), !6485)
    #dbg_value(i64 1, !6969, !DIExpression(), !6488)
    #dbg_value(i64 1, !6969, !DIExpression(), !6490)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !7083 ; 9 uses
    #dbg_value(i64 poison, !6907, !DIExpression(), !6492)
    #dbg_value(i64 poison, !6907, !DIExpression(), !6493)
  %i.cn = add nsw i64 %i.cl, -1, !dbg !7084       ; 5 uses
  br i1 %i.ch, label %bb.ae, label %bb.w, !dbg !7085

bb.t:                                             ; preds = %bb.r
    #dbg_value(ptr %.val.i.i, !6625, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6371)
    #dbg_value(ptr %.val.i.i, !6848, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6374)
    #dbg_value(ptr %.val.i.i, !6854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6378)
    #dbg_value(ptr %.val.i.i, !6861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6381)
    #dbg_value(i64 %i.ce, !6851, !DIExpression(), !6374)
    #dbg_value(i64 %i.ce, !6858, !DIExpression(), !6378)
    #dbg_value(i64 %i.ce, !6862, !DIExpression(), !6381)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !7086
  %i.cp = load i8, ptr %i.co, align 8, !dbg !7086, !alias.scope !6632, !noundef !593 ; 2 uses
  %i.cq = sub nuw i64 %.val13.i.i, %i.ce, !dbg !7087 ; 4 uses
    #dbg_value(i64 %i.cq, !6859, !DIExpression(), !6494)
    #dbg_value(i64 %i.cq, !6863, !DIExpression(), !6381)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.ce, !dbg !7088 ; 2 uses
    #dbg_value(i8 %i.cp, !2042, !DIExpression(), !6496)
    #dbg_value(i8 %i.cp, !2047, !DIExpression(), !6498)
    #dbg_value(ptr %i.cr, !2043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6496)
    #dbg_value(ptr %i.cr, !2048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6498)
    #dbg_value(i64 %i.cq, !2043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6496)
    #dbg_value(i64 %i.cq, !2048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6498)
  %i.cs = icmp samesign ult i64 %i.cq, 16, !dbg !7089
  br i1 %i.cs, label %.lr.ph.i.i.i.i, label %bb.u, !dbg !7089

bb.u:                                             ; preds = %bb.t
  %i.ct = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %i.cp, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cr, i64 noundef range(i64 0, -9223372036854775808) %i.cq), !dbg !7090, !noalias !6972 ; 2 uses
  %i.cu = extractvalue { i64, i64 } %i.ct, 0, !dbg !7090
  %i.cv = extractvalue { i64, i64 } %i.ct, 1, !dbg !7090
    #dbg_value(i64 %i.cu, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %i.cv, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
  %i.cw = trunc nuw i64 %i.cu to i1, !dbg !7091
  br i1 %i.cw, label %.loopexit63.i.i.i, label %.loopexit64.i.i.i, !dbg !7091

.lr.ph.i.i.i.i:                                   ; preds = %bb.t, %bb.v
  %.sroa.04.015.i.i.i.i = phi i64 [ %i.da, %bb.v ], [ 0, %bb.t ] ; 3 uses
    #dbg_value(i64 %.sroa.04.015.i.i.i.i, !2049, !DIExpression(), !6500)
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.04.015.i.i.i.i, !dbg !7092
  %i.cy = load i8, ptr %i.cx, align 1, !dbg !7092, !alias.scope !6973, !noalias !6972, !noundef !593
  %i.cz = icmp eq i8 %i.cy, %i.cp, !dbg !7092
  br i1 %i.cz, label %.loopexit63.i.i.i, label %bb.v, !dbg !7092

bb.v:                                             ; preds = %.lr.ph.i.i.i.i
  %i.da = add nuw nsw i64 %.sroa.04.015.i.i.i.i, 1, !dbg !7093 ; 2 uses
    #dbg_value(i64 %i.da, !2049, !DIExpression(), !6500)
  %exitcond.not.i27.i.i.i = icmp eq i64 %i.da, %i.cq, !dbg !7094
  br i1 %exitcond.not.i27.i.i.i, label %.loopexit64.i.i.i, label %.lr.ph.i.i.i.i, !dbg !7094

.loopexit63.i.i.i:                                ; preds = %.lr.ph.i.i.i.i, %bb.u
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.cv, %bb.u ], [ %.sroa.04.015.i.i.i.i, %.lr.ph.i.i.i.i ], !dbg !7095 ; 2 uses
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2045, !DIExpression(), !6503)
  %i.db = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.cq, !dbg !7096
    #dbg_value(i1 true, !2052, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6505)
  tail call void @llvm.assume(i1 %i.db), !dbg !7097
    #dbg_value(i64 1, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
    #dbg_value(i64 %.sroa.5.0.i.i.i.i, !6626, !DIExpression(), !6506)
  %i.dc = add i64 %.sroa.5.0.i.i.i.i, %i.ce, !dbg !7098 ; 2 uses
    #dbg_value(i64 %i.dc, !6627, !DIExpression(), !6507)
  %i.dd = add i64 %i.dc, 1, !dbg !7099            ; 2 uses
  store i64 %i.dd, ptr %i.j, align 8, !dbg !7099, !alias.scope !6632
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7100

.loopexit64.i.i.i:                                ; preds = %bb.v, %bb.u
    #dbg_value(i64 0, !2044, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6499)
    #dbg_value(i64 poison, !2044, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6499)
  store i64 %.val13.i.i, ptr %i.j, align 8, !dbg !7101, !alias.scope !6632
  br label %bb.al, !dbg !7102

bb.w:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6974), !dbg !7103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6975), !dbg !7103
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6976), !dbg !7103
    #dbg_value(i1 false, !6906, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !6437)
    #dbg_value(i64 %i.cn, !6908, !DIExpression(), !6512)
  %.promoted.i.i.i.i = load i64, ptr %i.cm, align 8, !alias.scope !6977 ; 2 uses
  %i.de = add i64 %.promoted.i.i.i.i, %i.cn, !dbg !7104 ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val13.i.i, !dbg !7105
  br i1 %i.df, label %.lr.ph.i28.i.i.i, label %._crit_edge.i.i.i.i, !dbg !7105

.lr.ph.i28.i.i.i:                                 ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !6977, !noundef !593
  %i.di = load i64, ptr %i.j, align 8, !alias.scope !6977 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !6977 ; 2 uses
  %i.dl = sub i64 %i.cl, %i.dk
  %invariant.op = sub i64 1, %i.di, !dbg !7106
  br label %.lr.ph.split.i.i.i.i, !dbg !7106

._crit_edge.i.i.i.i:                              ; preds = %bb.z, %bb.w
  store i64 %.val13.i.i, ptr %i.cm, align 8, !dbg !7107, !alias.scope !6977
  br label %bb.al, !dbg !7108

.lr.ph.split.i.i.i.i:                             ; preds = %bb.z, %.lr.ph.i28.i.i.i
  %i.dm = phi i64 [ %.sink94.i.i.i.i, %bb.z ], [ %i.cg, %.lr.ph.i28.i.i.i ] ; 3 uses
  %i.dn = phi i64 [ %i.dx, %bb.z ], [ %i.de, %.lr.ph.i28.i.i.i ]
  %i.do = phi i64 [ %.sink95.i.i.i.i, %bb.z ], [ %.promoted.i.i.i.i, %.lr.ph.i28.i.i.i ] ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dn, !dbg !7109
  %i.dq = load i8, ptr %i.dp, align 1, !dbg !7110, !alias.scope !6975, !noalias !6972, !noundef !593
    #dbg_value(i8 %i.dq, !6909, !DIExpression(), !6513)
    #dbg_value(i8 %i.dq, !6931, !DIExpression(), !6442)
  %i.dr = and i8 %i.dq, 63, !dbg !7111
  %i.ds = zext nneg i8 %i.dr to i64, !dbg !7112
  %i.dt = shl nuw i64 1, %i.ds, !dbg !7113
  %i.du = and i64 %i.dt, %i.dh, !dbg !7113
  %.not.i29.i.i.i = icmp eq i64 %i.du, 0, !dbg !7113
  br i1 %.not.i29.i.i.i, label %bb.x, label %bb.y, !dbg !7106

bb.x:                                             ; preds = %.lr.ph.split.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs1i_NtNtCskKLDkoKarTP_4core3str4iterINtB6_6SplitNReENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsiGRwBGCeC5s_11quiche_apps:bb.a

.preheader59.i.i.i.us.i.preheader:                ; preds = %.lr.ph.split.us.i.i.i.us.i
    #dbg_value(i64 %.fr235.i.i.i, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  br i1 %exitcond.not.i37.i.i.us.i86.not, label %.lr.ph88, label %.preheader.i39.us.i.i.us.i.preheader, !dbg !7152

.preheader59.i.i.i.us.i:                          ; preds = %.lr.ph88
  %i.fk = add i64 %.sroa.04.0.us.i.i.i.us.i87, 1, !dbg !7153 ; 2 uses
    #dbg_value(i64 %i.fk, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %i.fk, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  %exitcond.not.i37.i.i.us.i = icmp eq i64 %i.fk, %umax.i.i.i.i, !dbg !7154
  br i1 %exitcond.not.i37.i.i.us.i, label %.preheader.i39.us.i.i.us.i.preheader, label %.lr.ph88, !dbg !7152

.preheader.i39.us.i.i.us.i.preheader:             ; preds = %.preheader59.i.i.i.us.i, %.preheader59.i.i.i.us.i.preheader
    #dbg_value(i64 %.fr235.i.i.i, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  br i1 %.not58.i.us.i.i.us.i89, label %.split.us.i41.i.i.i, label %.lr.ph91, !dbg !7155

.lr.ph88:                                         ; preds = %.preheader59.i.i.i.us.i.preheader, %.preheader59.i.i.i.us.i
  %.sroa.04.0.us.i.i.i.us.i87 = phi i64 [ %i.fk, %.preheader59.i.i.i.us.i ], [ %.fr235.i.i.i, %.preheader59.i.i.i.us.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6920, !DIExpression(), !6539)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6959, !DIExpression(), !6473)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6964, !DIExpression(), !6478)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.us.i87, !6913, !DIExpression(), !6540)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.us.i87, !dbg !7156
  %i.fm = load i8, ptr %i.fl, align 1, !dbg !7156, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.fn = add i64 %.sroa.04.0.us.i.i.i.us.i87, %i.fd, !dbg !7157 ; 2 uses
    #dbg_value(i64 %i.fn, !6949, !DIExpression(), !6455)
    #dbg_value(i64 %i.fn, !6954, !DIExpression(), !6460)
  %i.fo = icmp ult i64 %i.fn, %.val13.i.i, !dbg !7158
  tail call void @llvm.assume(i1 %i.fo), !dbg !7159
  %i.fp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fn, !dbg !7160
  %i.fq = load i8, ptr %i.fp, align 1, !dbg !7161, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not45.us.i.i.i.us.i = icmp eq i8 %i.fm, %i.fq, !dbg !7156
  br i1 %.not45.us.i.i.i.us.i, label %.preheader59.i.i.i.us.i, label %bb.af, !dbg !7156

bb.af:                                            ; preds = %.lr.ph88
  %.reass302.i.reass.i.us.i = add i64 %i.fd, %reass.sub91.i.i
  %i.fr = add i64 %.reass302.i.reass.i.us.i, %.sroa.04.0.us.i.i.i.us.i87, !dbg !7162
  br label %bb.ah, !dbg !7163

.preheader.i39.us.i.i.us.i:                       ; preds = %.lr.ph91
    #dbg_value(i64 %i.fs, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  %.not58.i.us.i.i.us.i = icmp eq i64 %i.fs, 0, !dbg !7164
  br i1 %.not58.i.us.i.i.us.i, label %.split.us.i41.i.i.i, label %.lr.ph91, !dbg !7155

.lr.ph91:                                         ; preds = %.preheader.i39.us.i.i.us.i.preheader, %.preheader.i39.us.i.i.us.i
  %.sroa.2.0.us.i.us.i.i.us.i90 = phi i64 [ %i.fs, %.preheader.i39.us.i.i.us.i ], [ %.fr235.i.i.i, %.preheader.i39.us.i.i.us.i.preheader ]
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6967, !DIExpression(), !6483)
    #dbg_value(i64 %.sroa.2.0.us.i.us.i.i.us.i90, !6970, !DIExpression(), !6488)
  %i.fs = add i64 %.sroa.2.0.us.i.us.i.i.us.i90, -1, !dbg !7165 ; 4 uses
    #dbg_value(i64 %i.fs, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(i64 %i.fs, !6916, !DIExpression(), !6541)
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.fs, !dbg !7166
  %i.fu = load i8, ptr %i.ft, align 1, !dbg !7166, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.fv = add i64 %i.fs, %i.fd, !dbg !7167        ; 2 uses
    #dbg_value(i64 %i.fv, !6949, !DIExpression(), !6464)
    #dbg_value(i64 %i.fv, !6954, !DIExpression(), !6468)
  %i.fw = icmp ult i64 %i.fv, %.val13.i.i, !dbg !7168
  tail call void @llvm.assume(i1 %i.fw), !dbg !7169
  %i.fx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.fv, !dbg !7170
  %i.fy = load i8, ptr %i.fx, align 1, !dbg !7171, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not44.us.i.us.i.i.us.i = icmp eq i8 %i.fu, %i.fy, !dbg !7166
  br i1 %.not44.us.i.us.i.i.us.i, label %.preheader.i39.us.i.i.us.i, label %.split.us.i.i.us.i, !dbg !7166

.split.us.i.i.us.i:                               ; preds = %.lr.ph91
  %i.fz = add i64 %i.fd, %i.fa, !dbg !7172
  br label %bb.ah, !dbg !7173

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i.us.i
  %i.ga = add i64 %i.fd, %i.cl, !dbg !7174
  br label %bb.ah, !dbg !7175

bb.ah:                                            ; preds = %bb.ag, %.split.us.i.i.us.i, %bb.af
  %.sink.i38.i.i.us.i = phi i64 [ %i.ga, %bb.ag ], [ %i.fr, %bb.af ], [ %i.fz, %.split.us.i.i.us.i ] ; 3 uses
  store i64 %.sink.i38.i.i.us.i, ptr %i.cm, align 8, !dbg !7176, !alias.scope !6995
  %i.gb = add i64 %.sink.i38.i.i.us.i, %i.cn, !dbg !7144 ; 2 uses
    #dbg_value(i64 %i.gb, !6936, !DIExpression(), !6445)
    #dbg_value(i64 %i.gb, !6944, !DIExpression(), !6450)
  %i.gc = icmp ult i64 %i.gb, %.val13.i.i, !dbg !7145
  br i1 %i.gc, label %.lr.ph.split.us.i.i.i.us.i, label %._crit_edge.i33.i.i.i, !dbg !7145

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.split.us.i.i.i.i.preheader, %bb.ak
  %i.gd = phi i64 [ %i.gu, %bb.ak ], [ %i.eu, %.lr.ph.split.us.i.i.i.i.preheader ]
  %i.ge = phi i64 [ %.sink.i38.i.i.i, %bb.ak ], [ %.promoted.i32.i.i.i, %.lr.ph.split.us.i.i.i.i.preheader ] ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gd, !dbg !7147
  %i.gg = load i8, ptr %i.gf, align 1, !dbg !7148, !alias.scope !6993, !noalias !6972, !noundef !593
    #dbg_value(i8 %i.gg, !6909, !DIExpression(), !6534)
    #dbg_value(i8 %i.gg, !6931, !DIExpression(), !6440)
  %i.gh = and i8 %i.gg, 63, !dbg !7149
  %i.gi = zext nneg i8 %i.gh to i64, !dbg !7150
  %i.gj = shl nuw i64 1, %i.gi, !dbg !7151
  %i.gk = and i64 %i.gj, %i.ex, !dbg !7151
  %.not.us.i.i.i.i = icmp eq i64 %i.gk, 0, !dbg !7151
  br i1 %.not.us.i.i.i.i, label %bb.aj, label %.preheader59.i.i.i.i.preheader, !dbg !7146

.preheader59.i.i.i.i.preheader:                   ; preds = %.lr.ph.split.us.i.i.i.i
    #dbg_value(i64 %.fr235.i.i.i, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  br i1 %exitcond.not.i37.i.i.i81.not, label %.lr.ph83, label %.preheader.i39.i.i.i, !dbg !7152

.preheader59.i.i.i.i:                             ; preds = %.lr.ph83
  %i.gl = add i64 %.sroa.04.0.us.i.i.i.i82, 1, !dbg !7153 ; 2 uses
    #dbg_value(i64 %i.gl, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %i.gl, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(ptr undef, !6923, !DIExpression(), !6434)
    #dbg_value(ptr undef, !6919, !DIExpression(), !6432)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6427)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6536)
  %exitcond.not.i37.i.i.i = icmp eq i64 %i.gl, %umax.i.i.i.i, !dbg !7154
  br i1 %exitcond.not.i37.i.i.i, label %.preheader.i39.i.i.i, label %.lr.ph83, !dbg !7152

.lr.ph83:                                         ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
  %.sroa.04.0.us.i.i.i.i82 = phi i64 [ %i.gl, %.preheader59.i.i.i.i ], [ %.fr235.i.i.i, %.preheader59.i.i.i.i.preheader ] ; 4 uses
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6912, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6920, !DIExpression(), !6539)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6959, !DIExpression(), !6473)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6964, !DIExpression(), !6478)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6912, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !6535)
    #dbg_value(i64 %.sroa.04.0.us.i.i.i.i82, !6913, !DIExpression(), !6540)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.sroa.04.0.us.i.i.i.i82, !dbg !7156
  %i.gn = load i8, ptr %i.gm, align 1, !dbg !7156, !alias.scope !6994, !noalias !6972, !noundef !593
  %i.go = add i64 %.sroa.04.0.us.i.i.i.i82, %i.ge, !dbg !7157 ; 2 uses
    #dbg_value(i64 %i.go, !6949, !DIExpression(), !6455)
    #dbg_value(i64 %i.go, !6954, !DIExpression(), !6460)
  %i.gp = icmp ult i64 %i.go, %.val13.i.i, !dbg !7158
  tail call void @llvm.assume(i1 %i.gp), !dbg !7159
  %i.gq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.go, !dbg !7160
  %i.gr = load i8, ptr %i.gq, align 1, !dbg !7161, !alias.scope !6993, !noalias !6972, !noundef !593
  %.not45.us.i.i.i.i = icmp eq i8 %i.gn, %i.gr, !dbg !7156
  br i1 %.not45.us.i.i.i.i, label %.preheader59.i.i.i.i, label %bb.ai, !dbg !7156

.preheader.i39.i.i.i:                             ; preds = %.preheader59.i.i.i.i.preheader, %.preheader59.i.i.i.i
    #dbg_value(i64 %i.ey, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(ptr undef, !6894, !DIExpression(), !6419)
    #dbg_value(ptr undef, !6880, !DIExpression(), !6417)
    #dbg_value(ptr undef, !6877, !DIExpression(), !6415)
    #dbg_value(ptr undef, !6865, !DIExpression(), !6408)
    #dbg_value(ptr undef, !6869, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !6538)
  %.not58.i.i.i.i = icmp eq i64 %.fr235.i.i.i, 0, !dbg !7164
  br i1 %.not58.i.i.i.i, label %.split.us.i41.i.i.i, label %.split56.us.i40.i.i.i, !dbg !7155

.split56.us.i40.i.i.i:                            ; preds = %.preheader.i39.i.i.i
    #dbg_value(i64 %i.ey, !6967, !DIExpression(), !6483)
    #dbg_value(i64 %i.ey, !6970, !DIExpression(), !6488)
    #dbg_value(i64 %i.fb, !6915, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6537)
    #dbg_value(i64 %i.fb, !6916, !DIExpression(), !6541)
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.fb, i64 noundef range(i64 0, -9223372036854775808) %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !dbg !7166, !noalias !6996
  unreachable, !dbg !7166

bb.ai:                                            ; preds = %.lr.ph83
  %.reass302.i.reass.i.i = add i64 %i.ge, %reass.sub91.i.i
  %i.gs = add i64 %.reass302.i.reass.i.i, %.sroa.04.0.us.i.i.i.i82, !dbg !7162
  br label %bb.ak, !dbg !7163

bb.aj:                                            ; preds = %.lr.ph.split.us.i.i.i.i
  %i.gt = add i64 %i.ge, %i.cl, !dbg !7174
  br label %bb.ak, !dbg !7175

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sink.i38.i.i.i = phi i64 [ %i.gt, %bb.aj ], [ %i.gs, %bb.ai ] ; 3 uses
  store i64 %.sink.i38.i.i.i, ptr %i.cm, align 8, !dbg !7176, !alias.scope !6995
  %i.gu = add i64 %.sink.i38.i.i.i, %i.cn, !dbg !7144 ; 2 uses
    #dbg_value(i64 %i.gu, !6936, !DIExpression(), !6445)
    #dbg_value(i64 %i.gu, !6944, !DIExpression(), !6450)
  %i.gv = icmp ult i64 %i.gu, %.val13.i.i, !dbg !7145
  br i1 %i.gv, label %.lr.ph.split.us.i.i.i.i, label %._crit_edge.i33.i.i.i, !dbg !7145

._crit_edge.i33.i.i.i:                            ; preds = %bb.ak, %bb.ah, %bb.ae
  store i64 %.val13.i.i, ptr %i.cm, align 8, !dbg !7177, !alias.scope !6995
  br label %bb.al, !dbg !7178

.split.us.i41.i.i.i:                              ; preds = %.preheader.i39.us.i.i.us.i.preheader, %.preheader.i39.us.i.i.us.i, %.preheader.i39.i.i.i
  %i.gw = phi i64 [ %i.ge, %.preheader.i39.i.i.i ], [ %i.fd, %.preheader.i39.us.i.i.us.i ], [ %i.fd, %.preheader.i39.us.i.i.us.i.preheader ] ; 2 uses
  %i.gx = add i64 %i.gw, %i.cl, !dbg !7179        ; 2 uses
  store i64 %i.gx, ptr %i.cm, align 8, !dbg !7179, !alias.scope !6995
  br label %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, !dbg !7180

_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i: ; preds = %.split.us.i41.i.i.i, %.split.us.i31.i.i.i, %.loopexit63.i.i.i, %.loopexit62.split.us.i.i.i, %.split186.us.i.i.i, %.split186.us.i.thread.i.i
  %.sroa.9.0.i.i = phi i64 [ %.val13.i.i, %.split186.us.i.i.i ], [ %i.ej, %.split.us.i31.i.i.i ], [ %.lcssa45.i.i, %.loopexit62.split.us.i.i.i ], [ %i.dd, %.loopexit63.i.i.i ], [ %i.gx, %.split.us.i41.i.i.i ], [ %.val13.i.i, %.split186.us.i.thread.i.i ], !dbg !7181
  %.sroa.4.015.i.i = phi i64 [ %.val13.i.i, %.split186.us.i.i.i ], [ %i.do, %.split.us.i31.i.i.i ], [ %.lcssa45.i.i, %.loopexit62.split.us.i.i.i ], [ %i.dc, %.loopexit63.i.i.i ], [ %i.gw, %.split.us.i41.i.i.i ], [ %.val13.i.i, %.split186.us.i.thread.i.i ], !dbg !7181
    #dbg_value(ptr %.val.i.i, !6601, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6175)
    #dbg_value(ptr %.val.i.i, !6607, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(ptr %.val.i.i, !6610, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 %.sroa.4.015.i.i, !6602, !DIExpression(), !6543)
    #dbg_value(i64 %.sroa.4.015.i.i, !6608, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6178)
    #dbg_value(i64 %.sroa.4.015.i.i, !6611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6183)
    #dbg_value(i64 %.sroa.9.0.i.i, !6603, !DIExpression(), !6543)
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7182 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !dbg !7182, !alias.scope !6606, !noundef !593 ; 2 uses
    #dbg_value(i64 %i.gz, !6608, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6178)
    #dbg_value(i64 %i.gz, !6611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6183)
    #dbg_value(i64 %i.gz, !6997, !DIExpression(), !6546)
    #dbg_value(ptr %.val.i.i, !6612, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6547)
    #dbg_value(i64 poison, !6612, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6547)
  %i.ha = sub nuw i64 %.sroa.4.015.i.i, %i.gz, !dbg !7183
    #dbg_value(i64 %i.ha, !6613, !DIExpression(), !6548)
    #dbg_value(ptr %.val.i.i, !6998, !DIExpression(), !6546)
  %i.hb = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.gz, !dbg !7184
    #dbg_value(ptr %i.hb, !6604, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6549)
    #dbg_value(i64 %i.ha, !6604, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6549)
  store i64 %.sroa.9.0.i.i, ptr %i.gy, align 8, !dbg !7185, !alias.scope !6606
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7186

bb.al:                                            ; preds = %._crit_edge.i33.i.i.i, %._crit_edge.i.i.i.i, %.loopexit64.i.i.i, %bb.r, %bb.q, %.preheader.i.i.i
    #dbg_value(ptr %0, !7000, !DIExpression(), !6553)
  store i8 1, ptr %i.d, align 1, !dbg !7187, !alias.scope !7004
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7188
  %i.hd = load i8, ptr %i.hc, align 8, !dbg !7188, !range !1982, !alias.scope !7004, !noundef !593
  %i.he = trunc nuw i8 %i.hd to i1, !dbg !7188
  br i1 %i.he, label %._crit_edge.i.i.i, label %bb.am, !dbg !7188

._crit_edge.i.i.i:                                ; preds = %bb.al
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !dbg !7189, !alias.scope !7004
  %.phi.trans.insert13.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i.i.i = load i64, ptr %.phi.trans.insert13.i.i.i, align 8, !dbg !7190, !alias.scope !7004
  br label %bb.an, !dbg !7188

bb.am:                                            ; preds = %bb.al
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7191
  %i.hg = load i64, ptr %i.hf, align 8, !dbg !7191, !alias.scope !7004, !noundef !593 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7192
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !7192, !alias.scope !7004, !noundef !593 ; 2 uses
  %.not.i14.i.i = icmp eq i64 %i.hg, %i.hi, !dbg !7191
  br i1 %.not.i14.i.i, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.an, !dbg !7191

bb.an:                                            ; preds = %bb.am, %._crit_edge.i.i.i
  %i.hj = phi i64 [ %.pre14.i.i.i, %._crit_edge.i.i.i ], [ %i.hg, %bb.am ], !dbg !7190
  %i.hk = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.hi, %bb.am ], !dbg !7189 ; 2 uses
    #dbg_value(ptr %.val.i.i, !7005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6558)
    #dbg_value(ptr %.val.i.i, !7008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6563)
    #dbg_value(i64 poison, !7005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6558)
    #dbg_value(i64 poison, !7008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6563)
    #dbg_value(i64 %i.hk, !7006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6558)
    #dbg_value(i64 %i.hk, !7009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6563)
    #dbg_value(i64 %i.hk, !7013, !DIExpression(), !6566)
    #dbg_value(i64 %i.hj, !7006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6558)
    #dbg_value(i64 %i.hj, !7009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6563)
    #dbg_value(ptr %.val.i.i, !7010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6567)
    #dbg_value(i64 poison, !7010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6567)
  %i.hl = sub nuw i64 %i.hj, %i.hk, !dbg !7193
    #dbg_value(i64 %i.hl, !7011, !DIExpression(), !6568)
    #dbg_value(ptr %.val.i.i, !7014, !DIExpression(), !6566)
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.hk, !dbg !7194
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7195

bb.ao:                                            ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !dbg !7196, !alias.scope !6588
    #dbg_value(ptr %0, !7000, !DIExpression(), !6570)
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 121, !dbg !7197 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !dbg !7197, !range !1982, !alias.scope !7016, !noundef !593
  %i.hp = trunc nuw i8 %i.ho to i1, !dbg !7197
  br i1 %i.hp, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.ap, !dbg !7197

bb.ap:                                            ; preds = %bb.ao
  store i8 1, ptr %i.hn, align 1, !dbg !7198, !alias.scope !7016
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !7199
  %i.hr = load i8, ptr %i.hq, align 8, !dbg !7199, !range !1982, !alias.scope !7016, !noundef !593
  %i.hs = trunc nuw i8 %i.hr to i1, !dbg !7199
  br i1 %i.hs, label %._crit_edge.i.i, label %bb.aq, !dbg !7199

._crit_edge.i.i:                                  ; preds = %bb.ap
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !dbg !7200, !alias.scope !7016
  %.phi.trans.insert13.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre14.i.i = load i64, ptr %.phi.trans.insert13.i.i, align 8, !dbg !7201, !alias.scope !7016
  br label %bb.ar, !dbg !7199

bb.aq:                                            ; preds = %bb.ap
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !7202
  %i.hu = load i64, ptr %i.ht, align 8, !dbg !7202, !alias.scope !7016, !noundef !593 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !7203
  %i.hw = load i64, ptr %i.hv, align 8, !dbg !7203, !alias.scope !7016, !noundef !593 ; 2 uses
  %.not.i.i = icmp eq i64 %i.hu, %i.hw, !dbg !7202
  br i1 %.not.i.i, label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, label %bb.ar, !dbg !7202

bb.ar:                                            ; preds = %bb.aq, %._crit_edge.i.i
  %i.hx = phi i64 [ %.pre14.i.i, %._crit_edge.i.i ], [ %i.hu, %bb.aq ], !dbg !7201
  %i.hy = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.hw, %bb.aq ], !dbg !7200 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 72, !dbg !7204
  %.val.i2.i = load ptr, ptr %i.hz, align 8, !dbg !7204, !alias.scope !7016, !nonnull !593, !noundef !593
    #dbg_value(ptr %.val.i2.i, !7005, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6574)
    #dbg_value(ptr %.val.i2.i, !7008, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(i64 poison, !7005, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6574)
    #dbg_value(i64 poison, !7008, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(i64 %i.hy, !7006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6574)
    #dbg_value(i64 %i.hy, !7009, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6576)
    #dbg_value(i64 %i.hy, !7013, !DIExpression(), !6578)
    #dbg_value(i64 %i.hx, !7006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6574)
    #dbg_value(i64 %i.hx, !7009, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6576)
    #dbg_value(ptr %.val.i2.i, !7010, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6579)
    #dbg_value(i64 poison, !7010, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6579)
  %i.ia = sub nuw i64 %i.hx, %i.hy, !dbg !7205
    #dbg_value(i64 %i.ia, !7011, !DIExpression(), !6580)
    #dbg_value(ptr %.val.i2.i, !7014, !DIExpression(), !6578)
  %i.ib = getelementptr inbounds nuw i8, ptr %.val.i2.i, i64 %i.hy, !dbg !7206
  br label %_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit, !dbg !7207

_RNvMsl_NtNtCskKLDkoKarTP_4core3str4iterINtB5_14SplitNInternalReE4nextCsiGRwBGCeC5s_11quiche_apps.exit: ; preds = %bb.a, %bb.b, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.ar
  %.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ undef, %bb.am ], [ undef, %bb.b ], [ %i.ha, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hl, %bb.an ], [ %i.ia, %bb.ar ], [ undef, %bb.aq ], [ undef, %bb.ao ], !dbg !7208
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ null, %bb.am ], [ null, %bb.b ], [ %i.hb, %_RNvXsv_NtNtCskKLDkoKarTP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i.i ], [ %i.hm, %bb.an ], [ %i.ib, %bb.ar ], [ null, %bb.aq ], [ null, %bb.ao ], !dbg !7208
  %i.ic = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0, !dbg !7209
  %i.id = insertvalue { ptr, i64 } %i.ic, i64 %.sroa.4.0.i, 1, !dbg !7209
  ret { ptr, i64 } %i.id, !dbg !7210
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecRShEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 !dbg !7216 {
bb.a:
    #dbg_value(ptr poison, !7308, !DIExpression(), !7222)
    #dbg_value(ptr poison, !7317, !DIExpression(), !7320)
    #dbg_value(ptr %1, !7300, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7321)
    #dbg_value(ptr %2, !7300, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7321)
    #dbg_value(ptr %0, !7299, !DIExpression(), !7321)
    #dbg_value(ptr undef, !7317, !DIExpression(), !7320)
    #dbg_value(ptr undef, !7308, !DIExpression(), !7222)
    #dbg_value(i64 16, !7322, !DIExpression(), !7230)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !7313, !DIExpression(), !7231)
    #dbg_value(ptr %2, !7337, !DIExpression(), !7232)
    #dbg_value(ptr %1, !7338, !DIExpression(), !7232)
    #dbg_value(ptr %2, !7331, !DIExpression(), !7233)
    #dbg_value(ptr %1, !7332, !DIExpression(), !7233)
    #dbg_value(ptr %1, !7326, !DIExpression(), !7234)
    #dbg_value(ptr %2, !7325, !DIExpression(), !7234)
  %i.a = ptrtoint ptr %2 to i64, !dbg !7421
  %i.b = ptrtoint ptr %1 to i64, !dbg !7421
  %i.c = sub nuw i64 %i.a, %i.b, !dbg !7421       ; 2 uses
  %i.d = lshr exact i64 %i.c, 4, !dbg !7421       ; 3 uses
    #dbg_value(ptr %1, !7301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7340)
    #dbg_value(i64 %i.d, !7301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7340)
    #dbg_value(ptr %0, !7341, !DIExpression(), !7238)
    #dbg_value(ptr %0, !7350, !DIExpression(), !7243)
    #dbg_value(ptr %0, !7356, !DIExpression(), !7246)
    #dbg_value(ptr %0, !7362, !DIExpression(), !7249)
    #dbg_value(ptr %1, !7348, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7238)
    #dbg_value(ptr %1, !7352, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7243)
    #dbg_value(i64 %i.d, !7348, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7238)
    #dbg_value(i64 %i.d, !7352, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7243)
    #dbg_value(i64 %i.d, !7353, !DIExpression(), !7250)
    #dbg_value(i64 %i.d, !7367, !DIExpression(), !7253)
    #dbg_value(ptr %0, !7373, !DIExpression(), !7256)
    #dbg_value(i64 %i.d, !7377, !DIExpression(), !7256)
    #dbg_value(i64 %i.d, !7379, !DIExpression(), !7259)
    #dbg_value(i64 %i.d, !7387, !DIExpression(), !7262)
    #dbg_value(i64 %i.d, !7392, !DIExpression(), !7265)
    #dbg_value(ptr %0, !7384, !DIExpression(), !7266)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !7422 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !7422, !alias.scope !7397, !noundef !593 ; 5 uses
    #dbg_value(i64 %i.f, !7385, !DIExpression(), !7259)
    #dbg_value(i64 %i.f, !7389, !DIExpression(), !7262)
    #dbg_value(i64 %i.f, !7394, !DIExpression(), !7265)
    #dbg_value(i64 %i.f, !7398, !DIExpression(), !7273)
    #dbg_value(ptr %0, !7388, !DIExpression(), !7262)
    #dbg_value(ptr %0, !7393, !DIExpression(), !7265)
    #dbg_value(ptr %0, !7401, !DIExpression(), !7276)
    #dbg_value(i64 8, !7390, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7262)
    #dbg_value(i64 8, !7395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !7265)
    #dbg_value(i64 16, !7390, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7262)
    #dbg_value(i64 16, !7395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !7265)
    #dbg_value(i64 16, !7402, !DIExpression(), !7276)
  %i.g = load i64, ptr %0, align 8, !dbg !7423, !range !1743, !alias.scope !7397, !noundef !593
    #dbg_value(i64 %i.g, !7399, !DIExpression(), !7273)
  %i.h = sub i64 %i.g, %i.f, !dbg !7424
  %i.i = icmp ugt i64 %i.d, %i.h, !dbg !7425
  br i1 %i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.thread.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i, !dbg !7426, !prof !1744

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.thread.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsiGRwBGCeC5s_11quiche_apps(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef range(i64 0, 1152921504606846976) %i.d, i64 noundef 8, i64 noundef 16), !dbg !7427
  %i.j = load i64, ptr %i.e, align 8, !dbg !7428, !alias.scope !7404, !noundef !593 ; 2 uses
    #dbg_value(i64 %i.j, !7354, !DIExpression(), !7277)
    #dbg_value(i64 %i.j, !7405, !DIExpression(), !7280)
  %i.k = icmp ult i64 %i.j, 576460752303423488, !dbg !7429
  tail call void @llvm.assume(i1 %i.k), !dbg !7430
  br label %bb.b, !dbg !7431

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRShE7reserveCsiGRwBGCeC5s_11quiche_apps.exit.i: ; preds = %bb.a
    #dbg_value(i64 %i.f, !7354, !DIExpression(), !7277)
    #dbg_value(i64 %i.f, !7405, !DIExpression(), !7280)
  %i.l = icmp ult i64 %i.f, 576460752303423488, !dbg !7429
end_hunk_1
begin_hunk_2_@llvm.umax.i64
!6633 = !{!6200, !6616}
!6634 = !DISubroutineType(types: !6633)
!6635 = !{!6199}
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "Match", scope: !6199, file: !428, baseType: !6198, size: 192, align: 64, extraData: i64 0)
!6637 = !DIDerivedType(tag: DW_TAG_member, name: "Reject", scope: !6199, file: !428, baseType: !6197, size: 192, align: 64, extraData: i64 1)
!6638 = !DIDerivedType(tag: DW_TAG_member, name: "Done", scope: !6199, file: !428, baseType: !6196, size: 192, align: 64, extraData: i64 2)
!6639 = !{!6636, !6637, !6638}
!6640 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6197, file: !428, baseType: !601, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!6641 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !6197, file: !428, baseType: !601, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!6642 = !{!6640, !6641}
!6643 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6198, file: !428, baseType: !601, size: 64, align: 64, offset: 64, flags: DIFlagPublic)
!6644 = !DIDerivedType(tag: DW_TAG_member, name: "__1", scope: !6198, file: !428, baseType: !601, size: 64, align: 64, offset: 128, flags: DIFlagPublic)
!6645 = !{!6643, !6644}
!6646 = !DIDerivedType(tag: DW_TAG_member, scope: !6200, file: !428, baseType: !493, size: 64, align: 64, flags: DIFlagArtificial)
!6647 = !DILocalVariable(name: "self", arg: 1, scope: !6213, file: !2004, line: 1138, type: !6616)
!6648 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::pattern::EmptyNeedle", baseType: !386, size: 64, align: 64, dwarfAddressSpace: 0)
!6649 = !DILocalVariable(name: "searcher", scope: !6214, file: !2004, line: 1140, type: !6648, align: 64)
!6650 = !DILocalVariable(name: "is_match", scope: !6212, file: !2004, line: 1145, type: !690, align: 8)
!6651 = !DILocalVariable(name: "pos", scope: !6211, file: !2004, line: 1147, type: !601, align: 64)
!6652 = !DILocalVariable(name: "ch", scope: !6210, file: !2004, line: 1154, type: !1957, align: 32)
!6653 = !DILocalVariable(name: "searcher", scope: !6209, file: !2004, line: 1160, type: !6623, align: 64)
!6654 = !DILocalVariable(name: "bytes", scope: !6208, file: !2004, line: 1161, type: !369, align: 64)
!6655 = !DILocalVariable(name: "pos", scope: !6207, file: !2004, line: 1162, type: !601, align: 64)
!6656 = !DILocalVariable(name: "end", scope: !6206, file: !2004, line: 1172, type: !601, align: 64)
!6657 = !DILocalVariable(name: "searcher", scope: !6205, file: !2004, line: 1177, type: !6628, align: 64)
!6658 = !DILocalVariable(name: "is_long", scope: !6204, file: !2004, line: 1186, type: !690, align: 8)
!6659 = !DILocalVariable(name: "a", scope: !6203, file: !2004, line: 1192, type: !601, align: 64)
!6660 = !DILocalVariable(name: "b", scope: !6203, file: !2004, line: 1192, type: !601, align: 64)
!6661 = !DILocalVariable(name: "b", scope: !6202, file: !2004, line: 1194, type: !601, align: 64)
!6662 = !DILocalVariable(name: "otherwise", scope: !6201, file: !2004, line: 1198, type: !6200, align: 64)
!6663 = !{!6647, !6649, !6650, !6651, !6652, !6653, !6654, !6655, !6656, !6657, !6658, !6659, !6660, !6661, !6662}
!6664 = !{!6217}
!6665 = !DILocalVariable(name: "start", scope: !6223, file: !1996, line: 525, type: !601, align: 64)
!6666 = !DINamespace(name: "{impl#11}", scope: !1997)
!6667 = !{!315, !6220, !315, !1804}
!6668 = !DISubroutineType(types: !6667)
!6669 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !6220, file: !428, baseType: !601, size: 64, align: 64, flags: DIFlagPublic)
!6670 = !{!6669}
!6671 = !DILocalVariable(name: "self", arg: 1, scope: !6222, file: !1996, line: 524, type: !6220)
!6672 = !DILocalVariable(name: "slice", arg: 2, scope: !6222, file: !1996, line: 524, type: !315)
!6673 = !DILocalVariable(name: "end", scope: !6223, file: !1996, line: 525, type: !601, align: 64)
!6674 = !DILocalVariable(name: "s", scope: !6221, file: !1996, line: 527, type: !315, align: 64)
!6675 = !{!6671, !6672, !6665, !6673, !6674}
!6676 = !DINamespace(name: "{impl#4}", scope: !1997)
!6677 = !{!315, !315, !6220, !1804}
!6678 = !DISubroutineType(types: !6677)
!6679 = !DILocalVariable(name: "self", arg: 1, scope: !6224, file: !1996, line: 62, type: !315)
!6680 = !DILocalVariable(name: "index", arg: 2, scope: !6224, file: !1996, line: 62, type: !6220)
!6681 = !{!6679, !6680}
!6682 = !DITemplateTypeParameter(name: "I", type: !6220)
!6683 = !{!6682}
!6684 = !DILocalVariable(name: "self", arg: 1, scope: !6230, file: !1996, line: 492, type: !6220)
!6685 = !{!357, !6220, !315}
!6686 = !DISubroutineType(types: !6685)
!6687 = !DILocalVariable(name: "slice", arg: 2, scope: !6230, file: !1996, line: 492, type: !315)
!6688 = !{!6684, !6687}
!6689 = !DILocalVariable(name: "self", arg: 1, scope: !6233, file: !1983, line: 375, type: !315)
!6690 = !{!690, !315, !601}
!6691 = !DISubroutineType(types: !6690)
!6692 = !DILocalVariable(name: "index", arg: 2, scope: !6233, file: !1983, line: 375, type: !601)
!6693 = !{!6689, !6692}
!6694 = !DILocalVariable(name: "slice", arg: 2, scope: !6237, file: !1996, line: 512, type: !315)
!6695 = !{!317, !6220, !317}
!6696 = !DISubroutineType(types: !6695)
!6697 = !DILocalVariable(name: "self", scope: !6237, file: !1996, line: 512, type: !6220, align: 64)
!6698 = !DILocalVariable(name: "len", scope: !6236, file: !1996, line: 513, type: !601, align: 64)
!6699 = !{!6697, !6694, !6698}
!6700 = !DILocalVariable(name: "slice", arg: 2, scope: !6242, file: !1996, line: 199, type: !315)
!6701 = !DILocalVariable(name: "self", scope: !6242, file: !1996, line: 199, type: !358, align: 64)
!6702 = !DILocalVariable(name: "slice", scope: !6241, file: !1996, line: 200, type: !359, align: 64)
!6703 = !DILocalVariable(name: "new_len", scope: !6240, file: !1996, line: 221, type: !601, align: 64)
!6704 = !{!6701, !6700, !6702, !6703}
!6705 = !DILocalVariable(name: "count", arg: 2, scope: !6245, file: !1800, line: 838, type: !601)
!6706 = !{!627, !627, !601, !1804}
!6707 = !DISubroutineType(types: !6706)
!6708 = !DILocalVariable(name: "self", arg: 1, scope: !6245, file: !1800, line: 838, type: !627)
!6709 = !{!6708, !6705}
!6710 = !{!6249}
!6711 = !{!6252, !6217, !6250, !6185, !6168, !6163}
!6712 = !DIFile(filename: "library/core/src/num/mod.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "ecb2f290941f286067e076e0d471735a")
!6713 = !DILocalVariable(name: "self", arg: 1, scope: !6253, file: !6712, line: 1229, type: !431)
!6714 = !DINamespace(name: "{impl#6}", scope: !616)
!6715 = !{!690, !431}
!6716 = !DISubroutineType(types: !6715)
!6717 = !{!6713}
!6718 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::str::iter::Chars", baseType: !6259, size: 64, align: 64, dwarfAddressSpace: 0)
!6719 = !DILocalVariable(name: "self", arg: 1, scope: !6264, file: !1974, line: 39, type: !6718)
!6720 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !6259, file: !428, baseType: !395, size: 128, align: 64, flags: DIFlagProtected)
!6721 = !{!6720}
!6722 = !DINamespace(name: "{impl#0}", scope: !1955)
!6723 = !{!6263, !6718}
!6724 = !DISubroutineType(types: !6723)
!6725 = !{!6262}
!6726 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6262, file: !428, baseType: !6261, size: 32, align: 32, extraData: i32 -1)
!6727 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6262, file: !428, baseType: !6260, size: 32, align: 32)
!6728 = !{!6726, !6727}
!6729 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6260, file: !428, baseType: !1957, size: 32, align: 32, flags: DIFlagPublic)
!6730 = !{!6729}
!6731 = !DITemplateTypeParameter(name: "T", type: !1957)
!6732 = !{!6731}
!6733 = !DIDerivedType(tag: DW_TAG_member, scope: !6263, file: !428, baseType: !1069, size: 32, align: 32, flags: DIFlagArtificial)
!6734 = !{!6719}
!6735 = !DIFile(filename: "library/core/src/str/validations.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "3ff4baf6e4458f1a7f4e35f76384ccd7")
!6736 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::slice::iter::Iter<u8>", baseType: !395, size: 64, align: 64, dwarfAddressSpace: 0)
!6737 = !DILocalVariable(name: "bytes", arg: 1, scope: !6276, file: !6735, line: 35, type: !6736)
!6738 = !DINamespace(name: "validations", scope: !1954)
!6739 = !{!124, !6736}
!6740 = !DISubroutineType(types: !6739)
!6741 = !DILocalVariable(name: "x", scope: !6275, file: !6735, line: 37, type: !431, align: 8)
!6742 = !DILocalVariable(name: "residual", scope: !6274, file: !6735, line: 37, type: !368, align: 8)
!6743 = !DILocalVariable(name: "val", scope: !6273, file: !6735, line: 37, type: !2180, align: 64)
!6744 = !DILocalVariable(name: "init", scope: !6272, file: !6735, line: 45, type: !1069, align: 32)
!6745 = !DILocalVariable(name: "y", scope: !6271, file: !6735, line: 48, type: !431, align: 8)
!6746 = !DILocalVariable(name: "ch", scope: !6270, file: !6735, line: 49, type: !1069, align: 32)
!6747 = !DILocalVariable(name: "z", scope: !6269, file: !6735, line: 55, type: !431, align: 8)
!6748 = !DILocalVariable(name: "y_z", scope: !6268, file: !6735, line: 56, type: !1069, align: 32)
!6749 = !DILocalVariable(name: "w", scope: !6267, file: !6735, line: 63, type: !431, align: 8)
!6750 = !{!6737, !6741, !6742, !6743, !6744, !6745, !6746, !6747, !6748, !6749}
!6751 = !{!2183}
!6752 = !DILocalVariable(name: "width", scope: !6279, file: !6735, line: 10, type: !1069, align: 32)
!6753 = !{!1069, !431, !1069}
!6754 = !DISubroutineType(types: !6753)
!6755 = !DILocalVariable(name: "byte", arg: 1, scope: !6279, file: !6735, line: 10, type: !431)
!6756 = !{!6755, !6752}
!6757 = !DILocalVariable(name: "self", arg: 1, scope: !6289, file: !1790, line: 157, type: !6736)
!6758 = !{!6285, !6736}
!6759 = !DISubroutineType(types: !6758)
!6760 = !{!6284}
!6761 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !6284, file: !428, baseType: !6283, size: 64, align: 64, extraData: i64 0)
!6762 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !6284, file: !428, baseType: !6282, size: 64, align: 64)
!6763 = !{!6761, !6762}
!6764 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !6282, file: !428, baseType: !2180, size: 64, align: 64, flags: DIFlagPublic)
!6765 = !{!6764}
!6766 = !DIDerivedType(tag: DW_TAG_member, scope: !6285, file: !428, baseType: !493, size: 64, align: 64, flags: DIFlagArtificial)
!6767 = !DILocalVariable(name: "ptr", scope: !6288, file: !1790, line: 161, type: !6, align: 64)
!6768 = !DILocalVariable(name: "end_or_len", scope: !6287, file: !1790, line: 162, type: !627, align: 64)
!6769 = !DILocalVariable(name: "len", scope: !6286, file: !1790, line: 167, type: !601, align: 64)
!6770 = !{!6757, !6767, !6768, !6769}
!6771 = !DILocalVariable(name: "count", scope: !6292, file: !1835, line: 619, type: !601, align: 64)
!6772 = !{!6, !6, !601}
!6773 = !DISubroutineType(types: !6772)
!6774 = !DISubprogram(name: "add<u8>", linkageName: "_RNvMs1_NtNtCskKLDkoKarTP_4core3ptr8non_nullINtB5_7NonNullhE3addCsiGRwBGCeC5s_11quiche_apps", scope: !6, file: !1835, line: 619, type: !6773, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !625)
!6775 = !DILocalVariable(name: "self", arg: 1, scope: !6292, file: !1835, line: 619, type: !6)
!6776 = !{!6775, !6771}
!6778 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::ptr::non_null::NonNull<u8>", baseType: !6, size: 64, align: 64, dwarfAddressSpace: 0)
!6779 = !DILocalVariable(name: "self", arg: 1, scope: !6297, file: !1835, line: 1662, type: !6778)
!6780 = !DINamespace(name: "{impl#15}", scope: !626)
!6781 = !{!690, !6778, !6778}
!6782 = !DISubroutineType(types: !6781)
!6783 = !DILocalVariable(name: "other", arg: 2, scope: !6297, file: !1835, line: 1662, type: !6778)
!6784 = !{!6779, !6783}
!6785 = !{!6302, !6252, !6217, !6250, !6185, !6168, !6163}
!6786 = !DILocalVariable(name: "ch", arg: 1, scope: !6305, file: !6735, line: 16, type: !1069)
!6787 = !{!1069, !1069, !431}
!6788 = !DISubroutineType(types: !6787)
!6789 = !DILocalVariable(name: "byte", arg: 2, scope: !6305, file: !6735, line: 16, type: !431)
!6790 = !{!6786, !6789}
!6791 = !DIFile(filename: "apps/src/lib.rs", directory: "/opt-bench/work/quiche-rs/quiche", checksumkind: CSK_MD5, checksum: "c0ecb90932d5acd5c482d200ccbee533")
!6792 = !DILexicalBlockFile(scope: !6275, file: !6791, discriminator: 0)
!6794 = !DIFile(filename: "library/core/src/option.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "19e5872d6fa0fdc09fc7d1b5fc5e7fd1")
!6795 = !DILocalVariable(name: "self", arg: 1, scope: !6346, file: !6794, line: 1160, type: !124)
!6796 = !{!6263, !124, !6344}
!6797 = !DISubroutineType(types: !6796)
!6798 = !DINamespace(name: "next", scope: !6722)
!6799 = !DITemplateTypeParameter(name: "U", type: !1957)
!6800 = !DITemplateTypeParameter(name: "F", type: !6344)
!6801 = !{!1086, !6799, !6800}
!6802 = !DISubprogram(name: "map<u32, char, core::str::iter::{impl#0}::next::{closure_env#0}>", linkageName: "_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionmE3mapcNCNvXNtNtB5_3str4iterNtBU_5CharsNtNtNtNtB5_4iter6traits8iterator8Iterator4next0ECsiGRwBGCeC5s_11quiche_apps", scope: !124, file: !6794, line: 1160, type: !6797, scopeLine: 1160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6801)
!6803 = !DILocalVariable(name: "f", scope: !6346, file: !6794, line: 1160, type: !6344, align: 8)
!6804 = !DILocalVariable(name: "x", scope: !6345, file: !6794, line: 1165, type: !1069, align: 32)
!6805 = !{!6795, !6803, !6804}
!6807 = !DILocalVariable(name: "ch", arg: 2, scope: !6350, file: !1974, line: 42, type: !1069)
!6808 = !{!1957, !6344, !1069}
!6809 = !DISubroutineType(types: !6808)
!6810 = !{!6807}
!6811 = !DIFile(filename: "library/core/src/char/methods.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "1840c9c224abdf76ae16ee490ed67bf6")
!6812 = !DILocalVariable(name: "i", arg: 1, scope: !6353, file: !6811, line: 243, type: !1069)
!6813 = !DINamespace(name: "char", scope: !429)
!6814 = !DINamespace(name: "methods", scope: !6813)
!6815 = !DINamespace(name: "{impl#0}", scope: !6814)
!6816 = !{!1957, !1069}
!6817 = !DISubroutineType(types: !6816)
!6818 = !{!6812}
!6819 = !DIFile(filename: "library/core/src/char/convert.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "06f18dc36f52feefd195ff986dbdcce9")
!6820 = !DILocalVariable(name: "i", arg: 1, scope: !6356, file: !6819, line: 26, type: !1069)
!6821 = !DINamespace(name: "convert", scope: !6813)
!6822 = !{!1957, !1069, !1804}
!6823 = !DISubroutineType(types: !6822)
!6824 = !{!6820}
!6825 = !DILocalVariable(name: "self", arg: 1, scope: !6360, file: !6811, line: 667, type: !1957)
!6826 = !{!601, !1957}
!6827 = !DISubroutineType(types: !6826)
!6828 = !{!6825}
!6829 = !DILocalVariable(name: "code", arg: 1, scope: !6363, file: !6811, line: 2488, type: !1069)
!6830 = !{!601, !1069}
!6831 = !DISubroutineType(types: !6830)
!6832 = !{!6829}
!6833 = !{!6217, !6185, !6168, !6163}
!6835 = !{!6369}
!6836 = !{!6252, !6369, !6250, !6185, !6168, !6163}
!6837 = !{!6369, !6185, !6168, !6163}
!6838 = !{!6302, !6252, !6369, !6250, !6185, !6168, !6163}
!6848 = !DILocalVariable(name: "self", arg: 1, scope: !6372, file: !2029, line: 18, type: !369)
!6849 = !{!369, !369, !6220, !1804}
!6850 = !DISubroutineType(types: !6849)
!6851 = !DILocalVariable(name: "index", scope: !6372, file: !2029, line: 18, type: !6220, align: 64)
!6852 = !{!6848, !6851}
!6853 = !{!624, !6682}
!6854 = !DILocalVariable(name: "slice", arg: 2, scope: !6376, file: !2029, line: 543, type: !369)
!6855 = !DINamespace(name: "{impl#7}", scope: !2030)
!6856 = !{!369, !6220, !369, !1804}
!6857 = !DISubroutineType(types: !6856)
!6858 = !DILocalVariable(name: "self", scope: !6376, file: !2029, line: 543, type: !6220, align: 64)
!6859 = !DILocalVariable(name: "new_len", scope: !6375, file: !2029, line: 549, type: !601, align: 64)
!6860 = !{!6858, !6854, !6859}
!6861 = !DILocalVariable(name: "ptr", arg: 1, scope: !6379, file: !2029, line: 84, type: !369)
!6862 = !DILocalVariable(name: "offset", arg: 2, scope: !6379, file: !2029, line: 85, type: !601)
!6863 = !DILocalVariable(name: "len", arg: 3, scope: !6379, file: !2029, line: 86, type: !601)
!6864 = !{!6861, !6862, !6863}
!6865 = !DILocalVariable(name: "self", arg: 1, scope: !6384, file: !2054, line: 2192, type: !1880)
!6866 = !DINamespace(name: "{impl#58}", scope: !2056)
!6867 = !{!690, !1880, !1880}
!6868 = !DISubroutineType(types: !6867)
!6869 = !DILocalVariable(name: "other", arg: 2, scope: !6384, file: !2054, line: 2192, type: !1880)
!6870 = !{!6865, !6869}
!6871 = !DIFile(filename: "library/core/src/iter/range.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "6038fbd2305f6e8ce8c79c7d50b4046d")
!6872 = !DINamespace(name: "range", scope: !1751)
!6873 = !DINamespace(name: "{impl#5}", scope: !6872)
!6874 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::ops::range::Range<usize>", baseType: !358, size: 64, align: 64, dwarfAddressSpace: 0)
!6875 = !{!309, !6874}
!6876 = !DISubroutineType(types: !6875)
!6877 = !DILocalVariable(name: "self", arg: 1, scope: !6385, file: !6871, line: 1141, type: !6874)
!6878 = !{!6877}
!6879 = !DINamespace(name: "{impl#7}", scope: !6872)
!6880 = !DILocalVariable(name: "self", arg: 1, scope: !6386, file: !6871, line: 1315, type: !6874)
!6881 = !{!6880}
!6882 = !DITemplateTypeParameter(name: "A", type: !601)
!6883 = !{!6882}
!6884 = !DIFile(filename: "library/core/src/iter/adapters/rev.rs", directory: "/rustc/bff8e12ff5e6bcd53dfb1dbccdcec80a60a856ed", checksumkind: CSK_MD5, checksum: "97bbf16646f958a86a45b6ba280b14d9")
!6885 = !DINamespace(name: "rev", scope: !1752)
!6886 = !DINamespace(name: "{impl#1}", scope: !6885)
!6887 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::iter::adapters::rev::Rev<core::ops::range::Range<usize>>", baseType: !6387, size: 64, align: 64, dwarfAddressSpace: 0)
!6888 = !{!309, !6887}
!6889 = !DISubroutineType(types: !6888)
!6890 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !6387, file: !428, baseType: !358, size: 128, align: 64, flags: DIFlagPrivate)
!6891 = !{!6890}
!6892 = !DITemplateTypeParameter(name: "T", type: !358)
!6893 = !{!6892}
!6894 = !DILocalVariable(name: "self", arg: 1, scope: !6388, file: !6884, line: 52, type: !6887)
!6895 = !{!6894}
!6896 = !DILexicalBlockFile(scope: !6402, file: !2004, discriminator: 2)
!6897 = !{!364, !6628, !369, !369, !690}
!6898 = !DISubroutineType(types: !6897)
!6899 = !DITemplateTypeParameter(name: "S", type: !6390)
!6900 = !{!6899}
!6901 = !DISubprogram(name: "next<core::str::pattern::MatchOnly>", linkageName: "_RINvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECsiGRwBGCeC5s_11quiche_apps", scope: !382, file: !2004, line: 1541, type: !6898, scopeLine: 1541, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !6900)
!6902 = !{!6389}
!6903 = !DILocalVariable(name: "self", arg: 1, scope: !6396, file: !2004, line: 1541, type: !6628)
!6904 = !DILocalVariable(name: "haystack", arg: 2, scope: !6396, file: !2004, line: 1541, type: !369)
!6905 = !DILocalVariable(name: "needle", arg: 3, scope: !6396, file: !2004, line: 1541, type: !369)
!6906 = !DILocalVariable(name: "long_period", arg: 4, scope: !6396, file: !2004, line: 1541, type: !690)
!6907 = !DILocalVariable(name: "old_pos", scope: !6397, file: !2004, line: 1546, type: !601, align: 64)
!6908 = !DILocalVariable(name: "needle_last", scope: !6398, file: !2004, line: 1547, type: !601, align: 64)
!6909 = !DILocalVariable(name: "tail_byte", scope: !6399, file: !2004, line: 1552, type: !431, align: 8)
!6910 = !DILocalVariable(name: "b", scope: !6395, file: !2004, line: 1553, type: !431, align: 8)
!6911 = !DILocalVariable(name: "start", scope: !6400, file: !2004, line: 1574, type: !601, align: 64)
!6912 = !DILocalVariable(name: "iter", scope: !6394, file: !2004, line: 1576, type: !358, align: 64)
!6913 = !DILocalVariable(name: "i", scope: !6393, file: !2004, line: 1576, type: !601, align: 64)
!6914 = !DILocalVariable(name: "start", scope: !6401, file: !2004, line: 1593, type: !601, align: 64)
!6915 = !DILocalVariable(name: "iter", scope: !6402, file: !2004, line: 1594, type: !6387, align: 64)
!6916 = !DILocalVariable(name: "i", scope: !6392, file: !2004, line: 1594, type: !601, align: 64)
!6917 = !DILocalVariable(name: "match_pos", scope: !6391, file: !2004, line: 1611, type: !601, align: 64)
!6918 = !{!6903, !6904, !6905, !6906, !6907, !6908, !6909, !6910, !6911, !6912, !6913, !6914, !6915, !6916, !6917}
!6919 = !DILocalVariable(name: "self", arg: 1, scope: !6422, file: !6871, line: 1099, type: !6874)
!6920 = !DILocalVariable(name: "old", scope: !6421, file: !6871, line: 1101, type: !601, align: 64)
!6921 = !{!6919, !6920}
!6922 = !DINamespace(name: "{impl#6}", scope: !6872)
!6923 = !DILocalVariable(name: "self", arg: 1, scope: !6423, file: !6871, line: 1184, type: !6874)
!6924 = !{!6923}
!6925 = !DILexicalBlockFile(scope: !6394, file: !2004, discriminator: 2)
!6926 = !DILocalVariable(name: "self", arg: 1, scope: !6438, file: !2004, line: 1531, type: !6628)
!6927 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::str::pattern::TwoWaySearcher", baseType: !382, size: 64, align: 64, dwarfAddressSpace: 0)
!6928 = !{!690, !6927, !431}
!6929 = !DISubroutineType(types: !6928)
!6930 = !DISubprogram(name: "byteset_contains", linkageName: "_RNvMsx_NtNtCskKLDkoKarTP_4core3str7patternNtB5_14TwoWaySearcher16byteset_contains", scope: !382, file: !2004, line: 1531, type: !6929, scopeLine: 1531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !593)
!6931 = !DILocalVariable(name: "byte", arg: 2, scope: !6438, file: !2004, line: 1531, type: !431)
!6932 = !{!6926, !6931}
!6933 = !DILocalVariable(name: "self", arg: 1, scope: !6443, file: !2034, line: 572, type: !369)
!6934 = !{!6285, !369, !601}
!6935 = !DISubroutineType(types: !6934)
!6936 = !DILocalVariable(name: "index", arg: 2, scope: !6443, file: !2034, line: 572, type: !601)
!6937 = !{!6933, !6936}
!6938 = !DITemplateTypeParameter(name: "I", type: !601)
!6939 = !{!624, !6938}
!6940 = !DILocalVariable(name: "slice", arg: 2, scope: !6448, file: !2029, line: 183, type: !369)
!6941 = !DINamespace(name: "{impl#2}", scope: !2030)
!6942 = !{!6285, !601, !369}
!6943 = !DISubroutineType(types: !6942)
!6944 = !DILocalVariable(name: "self", arg: 1, scope: !6448, file: !2029, line: 183, type: !601)
!6945 = !{!6944, !6940}
!6946 = !DILocalVariable(name: "self", arg: 1, scope: !6453, file: !2034, line: 640, type: !369)
!6947 = !{!2180, !369, !601, !1804}
!6948 = !DISubroutineType(types: !6947)
!6949 = !DILocalVariable(name: "index", arg: 2, scope: !6453, file: !2034, line: 640, type: !601)
!6950 = !{!6946, !6949}
!6951 = !DILocalVariable(name: "slice", arg: 2, scope: !6458, file: !2029, line: 205, type: !369)
!6952 = !{!627, !601, !359, !1804}
!6953 = !DISubroutineType(types: !6952)
!6954 = !DILocalVariable(name: "self", arg: 1, scope: !6458, file: !2029, line: 205, type: !601)
!6955 = !{!6954, !6951}
!6956 = !DILexicalBlockFile(scope: !6453, file: !2034, discriminator: 2)
!6957 = !DILocalVariable(name: "n", scope: !6471, file: !6871, line: 263, type: !601, align: 64)
!6958 = !DINamespace(name: "{impl#49}", scope: !6872)
!6959 = !DILocalVariable(name: "start", arg: 1, scope: !6471, file: !6871, line: 263, type: !601)
!6960 = !{!6959, !6957}
!6961 = !DILocalVariable(name: "rhs", scope: !6476, file: !1736, line: 1031, type: !601, align: 64)
!6962 = !{!601, !601, !601, !1804}
!6963 = !DISubroutineType(types: !6962)
!6964 = !DILocalVariable(name: "self", arg: 1, scope: !6476, file: !1736, line: 1031, type: !601)
!6965 = !{!6964, !6961}
!6966 = !DILocalVariable(name: "n", scope: !6481, file: !6871, line: 269, type: !601, align: 64)
!6967 = !DILocalVariable(name: "start", arg: 1, scope: !6481, file: !6871, line: 269, type: !601)
!6968 = !{!6967, !6966}
!6969 = !DILocalVariable(name: "rhs", scope: !6486, file: !1736, line: 1210, type: !601, align: 64)
!6970 = !DILocalVariable(name: "self", arg: 1, scope: !6486, file: !1736, line: 1210, type: !601)
!6971 = !{!6970, !6969}
!6972 = !{!6250, !6185, !6168, !6163}
!6973 = !{!6502}
!6974 = !{!6509}
!6975 = !{!6510}
!6976 = !{!6511}
!6977 = !{!6509, !6185, !6168, !6163}
!6978 = !DILexicalBlockFile(scope: !6398, file: !6791, discriminator: 0)
!6979 = !DILocalVariable(name: "v1", arg: 1, scope: !6514, file: !2054, line: 1741, type: !601)
!6980 = !DILocalVariable(name: "v2", arg: 2, scope: !6514, file: !2054, line: 1741, type: !601)
!6981 = !{!6979, !6980}
!6983 = !DILocalVariable(name: "self", arg: 1, scope: !6517, file: !2054, line: 1094, type: !601)
!6984 = !DINamespace(name: "Ord", scope: !2055)
!6985 = !DILocalVariable(name: "other", arg: 2, scope: !6517, file: !2054, line: 1094, type: !601)
!6986 = !{!6983, !6985}
!6987 = !DITemplateTypeParameter(name: "Self", type: !601)
!6988 = !{!6987}
!6990 = !DILexicalBlockFile(scope: !6399, file: !6791, discriminator: 0)
!6991 = !{!6528, !6509, !6510, !6511, !6250, !6185, !6168, !6163}
!6992 = !{!6530}
!6993 = !{!6531}
!6994 = !{!6532}
!6995 = !{!6530, !6185, !6168, !6163}
!6996 = !{!6542, !6530, !6531, !6532, !6250, !6185, !6168, !6163}
!6997 = !DILocalVariable(name: "count", arg: 2, scope: !6544, file: !1800, line: 838, type: !601)
!6998 = !DILocalVariable(name: "self", arg: 1, scope: !6544, file: !1800, line: 838, type: !627)
!6999 = !{!6998, !6997}
!7000 = !DILocalVariable(name: "self", arg: 1, scope: !6551, file: !1974, line: 642, type: !6596)
!7001 = !DISubprogram(name: "get_end<&str>", linkageName: "_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalReE7get_endCsiGRwBGCeC5s_11quiche_apps", scope: !391, file: !1974, line: 642, type: !6599, scopeLine: 642, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagOptimized, templateParams: !2175)
!7002 = !DILocalVariable(name: "string", scope: !6550, file: !1974, line: 648, type: !317, align: 64)
!7003 = !{!7000, !7002}
!7004 = !{!6555, !6168, !6163}
!7005 = !DILocalVariable(name: "self", arg: 1, scope: !6556, file: !1983, line: 700, type: !315)
!7006 = !DILocalVariable(name: "i", scope: !6556, file: !1983, line: 700, type: !358, align: 64)
!7007 = !{!7005, !7006}
!7008 = !DILocalVariable(name: "slice", arg: 2, scope: !6561, file: !1996, line: 199, type: !315)
!7009 = !DILocalVariable(name: "self", scope: !6561, file: !1996, line: 199, type: !358, align: 64)
!7010 = !DILocalVariable(name: "slice", scope: !6560, file: !1996, line: 200, type: !359, align: 64)
!7011 = !DILocalVariable(name: "new_len", scope: !6559, file: !1996, line: 221, type: !601, align: 64)
!7012 = !{!7009, !7008, !7010, !7011}
!7013 = !DILocalVariable(name: "count", arg: 2, scope: !6564, file: !1800, line: 838, type: !601)
!7014 = !DILocalVariable(name: "self", arg: 1, scope: !6564, file: !1800, line: 838, type: !627)
!7015 = !{!7014, !7013}
!7016 = !{!6572, !6163}
!7017 = !DILocation(line: 512, column: 24, scope: !6161)
!7018 = !DILocation(line: 940, column: 9, scope: !6164, inlinedAt: !6165)
!7019 = !DILocation(line: 947, column: 17, scope: !6164, inlinedAt: !6165)
!7020 = !DILocation(line: 948, column: 27, scope: !6164, inlinedAt: !6165)
!7021 = !DILocation(line: 658, column: 12, scope: !6172, inlinedAt: !6173)
!7022 = !DILocation(line: 662, column: 37, scope: !6172, inlinedAt: !6173)
!7023 = !DILocation(line: 663, column: 28, scope: !6171, inlinedAt: !6173)
!7024 = !DILocation(line: 1206, column: 15, scope: !6193, inlinedAt: !6194)
!7025 = !DILocation(line: 1206, column: 9, scope: !6193, inlinedAt: !6194)
!7026 = !DILocation(line: 1141, column: 20, scope: !6214, inlinedAt: !6215)
!7027 = !DILocation(line: 1208, column: 28, scope: !6193, inlinedAt: !6194)
!7028 = !DILocation(line: 1145, column: 32, scope: !6214, inlinedAt: !6215)
!7029 = !DILocation(line: 380, column: 12, scope: !6233, inlinedAt: !6234)
!7030 = !DILocation(line: 384, column: 12, scope: !6233, inlinedAt: !6234)
!7031 = !DILocation(line: 394, column: 13, scope: !6233, inlinedAt: !6234)
!7032 = !DILocation(line: 493, column: 12, scope: !6230, inlinedAt: !6231)
!7033 = !DILocation(line: 396, column: 13, scope: !6233, inlinedAt: !6234)
!7034 = !DILocation(line: 1231, column: 9, scope: !6253, inlinedAt: !6254)
!7035 = !DILocation(line: 872, column: 18, scope: !6245, inlinedAt: !6246)
!7036 = !DILocation(line: 1663, column: 9, scope: !6297, inlinedAt: !6298)
!7037 = !DILocation(line: 180, column: 28, scope: !6287, inlinedAt: !6290)
!7038 = !DILocation(line: 37, column: 13, scope: !6276, inlinedAt: !6277)
!7039 = !DILocation(line: 38, column: 8, scope: !6275, inlinedAt: !6277)
!7040 = !DILocation(line: 627, column: 28, scope: !6292, inlinedAt: !6293)
!7041 = !DILocation(line: 11, column: 5, scope: !6279, inlinedAt: !6280)
!7042 = !DILocation(line: 1663, column: 9, scope: !6297, inlinedAt: !6314)
!7043 = !DILocation(line: 180, column: 28, scope: !6287, inlinedAt: !6308)
!7044 = !DILocation(line: 48, column: 22, scope: !6272, inlinedAt: !6277)
!7045 = !DILocation(line: 17, column: 5, scope: !6305, inlinedAt: !6306)
!7046 = !DILocation(line: 17, column: 17, scope: !6305, inlinedAt: !6306)
!7047 = !DILocation(line: 50, column: 8, scope: !6270, inlinedAt: !6277)
!7048 = !DILocation(line: 627, column: 28, scope: !6292, inlinedAt: !6310)
!7049 = !DILocation(line: 1663, column: 9, scope: !6297, inlinedAt: !6325)
end_hunk_2
