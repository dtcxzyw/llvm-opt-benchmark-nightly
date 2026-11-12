Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CGOpenMPRuntime?download=true
inline.NumInlined: 22871
inline.NumDeleted: 9963
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 52
begin_hunk_0_@_ZN4llvm15OpenMPIRBuilder10MapInfosTy6appendERS1_:bb.a

.lr.ph.i.i.i.i.preheader.i78:                     ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj4EEEE7reserveEm.exit.i75
  %i.ho = load ptr, ptr %i.gy, align 8, !tbaa !411
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.ho, i64 %.pre-phi.i76
  br label %.lr.ph.i.i.i.i.i79

.lr.ph.i.i.i.i.i79:                               ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87, %.lr.ph.i.i.i.i.preheader.i78
  %.012.i.i.i.i.i80 = phi ptr [ %i.id, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87 ], [ %i.hp, %.lr.ph.i.i.i.i.preheader.i78 ] ; 8 uses
  %.0810.i.i.i.i.i81 = phi ptr [ %i.ic, %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87 ], [ %i.ha, %.lr.ph.i.i.i.i.preheader.i78 ] ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i80, i64 16 ; 3 uses
  store ptr %i.hq, ptr %.012.i.i.i.i.i80, align 8, !tbaa !411
  %i.hr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i80, i64 8 ; 2 uses
  store i32 0, ptr %i.hr, align 8, !tbaa !149
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i80, i64 12
  store i32 4, ptr %i.hs, align 4, !tbaa !837
  %i.ht = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i81, i64 8 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !149 ; 5 uses
  %.not.i.i.i.i.i.i.i.i82 = icmp eq i32 %i.hu, 0
  %i.hv = icmp eq ptr %.012.i.i.i.i.i80, %.0810.i.i.i.i.i81
  %or.cond.i.i.i.i.i.i.i83 = or i1 %i.hv, %.not.i.i.i.i.i.i.i.i82
  br i1 %or.cond.i.i.i.i.i.i.i83, label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i79
  %i.hw = icmp ugt i32 %i.hu, 4
  br i1 %i.hw, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i91, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i84

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i91: ; preds = %bb.u
  %i.hx = zext i32 %i.hu to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %.012.i.i.i.i.i80, ptr noundef nonnull %i.hq, i64 noundef %i.hx, i64 noundef 8) #30
  %.pre.i.i.i.i.i.i.i92 = load i32, ptr %i.ht, align 8, !tbaa !149 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i93 = icmp eq i32 %.pre.i.i.i.i.i.i.i92, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i93, label %.sink.split.i.i.i.i.i.i.i.i86, label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i94

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i94: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i91
  %.pre.i.i.i.i.i.i95 = load ptr, ptr %.012.i.i.i.i.i80, align 8, !tbaa !411
  br label %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i84

_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i84: ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i94, %bb.u
  %i.hy = phi ptr [ %.pre.i.i.i.i.i.i95, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i94 ], [ %i.hq, %bb.u ]
  %i.hz = phi i32 [ %.pre.i.i.i.i.i.i.i92, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i._ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i_crit_edge.i.i.i.i.i.i94 ], [ %i.hu, %bb.u ]
  %i.ia = zext i32 %i.hz to i64
  %i.ib = load ptr, ptr %.0810.i.i.i.i.i81, align 8, !tbaa !411
  %gepdiff.i.i.i.i.i.i.i.i85 = shl nuw nsw i64 %i.ia, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hy, ptr align 8 %i.ib, i64 %gepdiff.i.i.i.i.i.i.i.i85, i1 false)
  br label %.sink.split.i.i.i.i.i.i.i.i86

.sink.split.i.i.i.i.i.i.i.i86:                    ; preds = %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.thread.i.i.i.i.i.i.i84, %_ZSt4copyIPKPN4llvm5ValueEPS2_ET0_T_S7_S6_.exit30.i.i.i.i.i.i.i.i91
  store i32 %i.hu, ptr %i.hr, align 8, !tbaa !149
  br label %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87

_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87: ; preds = %.sink.split.i.i.i.i.i.i.i.i86, %.lr.ph.i.i.i.i.i79
  %i.ic = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i81, i64 48 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i80, i64 48
  %.not.i.i.i.i.i88 = icmp eq ptr %i.ic, %i.he
  br i1 %.not.i.i.i.i.i88, label %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj4EEELb0EE18uninitialized_copyIPS4_S7_EEvT_S8_T0_.exit.loopexit.i89, label %.lr.ph.i.i.i.i.i79, !llvm.loop !5665

_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj4EEELb0EE18uninitialized_copyIPS4_S7_EEvT_S8_T0_.exit.loopexit.i89: ; preds = %_ZSt10_ConstructIN4llvm11SmallVectorIPNS0_5ValueELj4EEEJRS4_EEvPT_DpOT0_.exit.i.i.i.i.i87
  %.pre8.i90 = load i32, ptr %i.hf, align 8, !tbaa !149
  br label %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj4EEEE6appendIPS4_vEEvT_S8_.exit98

_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj4EEEE6appendIPS4_vEEvT_S8_.exit98: ; preds = %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj4EEEE7reserveEm.exit.i75, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj4EEELb0EE18uninitialized_copyIPS4_S7_EEvT_S8_T0_.exit.loopexit.i89
  %i.ie = phi i32 [ %.pre8.i90, %_ZN4llvm23SmallVectorTemplateBaseINS_11SmallVectorIPNS_5ValueELj4EEELb0EE18uninitialized_copyIPS4_S7_EEvT_S8_T0_.exit.loopexit.i89 ], [ %i.hn, %_ZN4llvm15SmallVectorImplINS_11SmallVectorIPNS_5ValueELj4EEEE7reserveEm.exit.i75 ]
  %i.if = add i32 %i.ie, %i.hc
  store i32 %i.if, ptr %i.hf, align 8, !tbaa !149
  ret void
}

declare noundef i64 @_ZN4llvm15OpenMPIRBuilder15getMemberOfFlagEj(ptr noundef nonnull align 8 dereferenceable(1864), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm15OpenMPIRBuilder22setCorrectMemberOfFlagERNS_3omp25OpenMPOffloadMappingFlagsES2_(ptr noundef nonnull align 8 dereferenceable(1864), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare i64 @_ZNK5clang13CXXMethodDecl39getFunctionObjectParameterReferenceTypeEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoELb1EE18growAndEmplaceBackIJRKPKN5clang9ValueDeclERKPKNS6_4ExprEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.0.val, ptr %.0.val1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !149  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !837
  %.not.i = icmp ult i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !842

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoELb1EE15growAndPushBackES3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %.0.val, ptr %.0.val1)
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoELb1EE9push_backES3_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = zext i32 %i.b to i64
  %.val.i = load ptr, ptr %0, align 8, !tbaa !411
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %.val.i, i64 %i.e ; 2 uses
  store ptr %.0.val, ptr %i.f, align 1
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.0.val1, ptr %.sroa.3.0..sroa_idx.i, align 1
  %i.g = load i32, ptr %i.a, align 8, !tbaa !149
  %i.h = add i32 %i.g, 1
  store i32 %i.h, ptr %i.a, align 8, !tbaa !149
  br label %_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoELb1EE9push_backES3_.exit

_ZN4llvm23SmallVectorTemplateBaseIN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoELb1EE9push_backES3_.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZL22emitMappingInformationRN5clang7CodeGen15CodeGenFunctionERN4llvm15OpenMPIRBuilderERN12_GLOBAL__N_120MappableExprsHandler15MappingExprInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(6288) %0, ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %4 = alloca %"struct.clang::PrintingPolicy", align 8 ; 5 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.clang::PresumedLoc", align 8 ; 7 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %.val34 = load ptr, ptr %2, align 8, !tbaa !2268 ; 3 uses
  %.not = icmp eq ptr %.val34, null
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val40 = load ptr, ptr %i.b, align 8, !tbaa !2269 ; 4 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %.val40, null
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = call noundef ptr @_ZN4llvm15OpenMPIRBuilder27getOrCreateDefaultSrcLocStrERj(ptr noundef nonnull align 8 dereferenceable(1864) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #30
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN5clang4Expr16IgnoreParenCastsEv(ptr noundef nonnull readonly align 8 dereferenceable(16) %.val40) #32 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %.not22.i = icmp eq i16 %i.f, 128
  br i1 %.not22.i, label %bb.e, label %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !872
  %i.i = tail call noundef ptr @_ZN5clang4Expr19IgnoreParenImpCastsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #32 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = and i16 %i.j, 511
  %.not24.i = icmp eq i16 %i.k, 46
  br i1 %.not24.i, label %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit, label %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread

_ZL19getDeclFromThisExprPKN5clang4ExprE.exit:     ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2270 ; 2 uses
  %.not28 = icmp eq ptr %i.m, null
  br i1 %.not28, label %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.0.0.copyload.i = load i32, ptr %i.n, align 8, !tbaa !886
  br label %.thread

_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread: ; preds = %bb.d, %bb.e, %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit
  %i.o = tail call i32 @_ZNK5clang4Expr10getExprLocEv(ptr noundef nonnull align 8 dereferenceable(16) %.val40) #32
  br label %.thread

.thread:                                          ; preds = %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread, %bb.f
  %storemerge29.ph = phi i32 [ %.sroa.0.0.copyload.i, %bb.f ], [ %i.o, %_ZL19getDeclFromThisExprPKN5clang4ExprE.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.p, ptr %3, align 8, !tbaa !1460
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !1411
  store i8 0, ptr %i.p, align 8, !tbaa !421
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %.val34, i64 24
  %.sroa.0.0.copyload.i41 = load i32, ptr %i.r, align 8, !tbaa !886 ; 2 uses
  %i.s = icmp eq ptr %.val40, null
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.t, ptr %3, align 8, !tbaa !1460
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 0, ptr %i.u, align 8, !tbaa !1411
  store i8 0, ptr %i.t, align 8, !tbaa !421
  br i1 %i.s, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.v = phi ptr [ %i.q, %.thread ], [ %i.u, %bb.g ]
  %i.w = phi ptr [ %i.p, %.thread ], [ %i.t, %bb.g ]
  %storemerge29105 = phi i32 [ %storemerge29.ph, %.thread ], [ %.sroa.0.0.copyload.i41, %bb.g ]
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !453, !nonnull !394, !align !407
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !809, !nonnull !394, !align !407
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2600
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !5666, !nonnull !394, !align !407 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8            ; 11 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = and i64 %i.af, 512
  %i.ah = lshr i64 %i.ae, 5
  %i.ai = and i64 %i.ah, 8388608
  %i.aj = or disjoint i64 %i.ag, %i.ai
  %i.ak = and i64 %i.ae, 8192
  %.not.i42 = icmp eq i64 %i.ak, 0
  %i.al = shl i64 %i.ae, 21
  %i.am = and i64 %i.al, 16777216
  %i.an = select i1 %.not.i42, i64 %i.am, i64 16777216
  %i.ao = shl i64 %i.ae, 13
  %i.ap = and i64 %i.ao, 33554432
  %i.aq = or disjoint i64 %i.an, %i.ap
  %i.ar = shl i64 %i.ae, 26
  %i.as = and i64 %i.ar, 67108864
  %i.at = or disjoint i64 %i.aq, %i.as
  %i.au = shl i64 %i.ae, 14
  %i.av = and i64 %i.au, 134217728
  %i.aw = or disjoint i64 %i.at, %i.av
  %i.ax = shl i64 %i.ae, 27
  %i.ay = and i64 %i.ax, 268435456
  %i.az = or disjoint i64 %i.aw, %i.ay
  %i.ba = shl i64 %i.ae, 17
  %i.bb = and i64 %i.ba, 1610612736
  %i.bc = shl i64 %i.ae, 4                        ; 2 uses
  %i.bd = and i64 %i.bc, 8589934592
  %i.be = and i64 %i.ae, 128
  %.not17.i = icmp eq i64 %i.be, 0
  %i.bf = and i64 %i.bc, 17179869184
  %i.bg = xor i64 %i.bf, 112201725640704
  %i.bh = select i1 %.not17.i, i64 112184545771520, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = shl i64 %i.bj, 7
  %i.bl = and i64 %i.bk, 140737488355328
  %.masked.masked.masked = or i64 %i.az, %i.bb
  %.masked106.masked = or i64 %.masked.masked.masked, %i.bd
  %.masked = or i64 %i.aj, %.masked106.masked
  %i.bm = or i64 %.masked, %i.bh
  %i.bn = or i64 %i.bm, %i.bl
  %i.bo = xor i64 %i.bn, 1615085570
  store i64 %i.bo, ptr %4, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !5667
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.bq, align 8, !tbaa !1541
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.br, align 8, !tbaa !1542
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.bs, align 4, !tbaa !1543
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !400
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %3, ptr %i.bu, align 8, !tbaa !5668
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #30
  %.val35 = load ptr, ptr %i.x, align 8, !tbaa !2269
  store ptr @.str.123, ptr %6, align 8, !tbaa !883
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 1, ptr %i.bv, align 8, !tbaa !884
  call void @_ZNK5clang4Stmt11printPrettyERN4llvm11raw_ostreamEPNS_13PrinterHelperERKNS_14PrintingPolicyEjNS1_9StringRefEPKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(8) %.val35, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 0, ptr noundef nonnull byval(%"class.llvm::StringRef") align 8 %6, ptr noundef null) #30
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.o

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.bw = getelementptr inbounds nuw i8, ptr %.val34, i64 40
  call void @_ZNK5clang15DeclarationName11getAsStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %i.bw) #30
  %i.bx = load ptr, ptr %3, align 8, !tbaa !891   ; 6 uses
  %i.by = icmp eq ptr %i.bx, %i.t
  %i.bz = load ptr, ptr %7, align 8, !tbaa !891   ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca                ; 2 uses
  br i1 %i.by, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.i
  br i1 %i.cb, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.i
  br i1 %i.cb, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !1411 ; 3 uses
  %i.ce = icmp ult i64 %i.cd, 16
  call void @llvm.assume(i1 %i.ce)
  switch i64 %i.cd, label %bb.l [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.cf = load i8, ptr %i.bz, align 1, !tbaa !421
  store i8 %i.cf, ptr %i.bx, align 1, !tbaa !421
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr align 1 %i.bz, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.l, %bb.k, %bb.j
  %i.cg = load i64, ptr %i.cc, align 8, !tbaa !1411 ; 2 uses
  store i64 %i.cg, ptr %i.u, align 8, !tbaa !1411
  %i.ch = load ptr, ptr %3, align 8, !tbaa !891
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cg
  store i8 0, ptr %i.ci, align 1, !tbaa !421
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bz, ptr %3, align 8, !tbaa !891
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = load <2 x i64>, ptr %i.cj, align 8, !tbaa !421
  store <2 x i64> %i.ck, ptr %i.u, align 8, !tbaa !421
  br label %bb.n

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.cl = load i64, ptr %i.t, align 8, !tbaa !421
  store ptr %i.bz, ptr %3, align 8, !tbaa !891
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cn = load <2 x i64>, ptr %i.cm, align 8, !tbaa !421
  store <2 x i64> %i.cn, ptr %i.u, align 8, !tbaa !421
  %.not.i43 = icmp eq ptr %i.bx, null
  br i1 %.not.i43, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.bx, ptr %7, align 8, !tbaa !891
  store i64 %i.cl, ptr %i.ca, align 8, !tbaa !421
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.n:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ca, ptr %7, align 8, !tbaa !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.m, %bb.n
  %i.co = phi ptr [ %i.bx, %bb.m ], [ %i.ca, %bb.n ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.cp, align 8, !tbaa !1411
  store i8 0, ptr %i.co, align 1, !tbaa !421
  %i.cq = load ptr, ptr %7, align 8, !tbaa !891   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !421
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.o

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.h
  %i.cv = phi ptr [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.v, %bb.h ]
  %i.cw = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %bb.h ] ; 2 uses
  %storemerge29104 = phi i32 [ %.sroa.0.0.copyload.i41, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %storemerge29105, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 6 uses
  store ptr %i.cx, ptr %8, align 8, !tbaa !1460
  %i.cy = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 6 uses
  store i64 0, ptr %i.cy, align 8, !tbaa !1411
  store i8 0, ptr %i.cx, align 8, !tbaa !421
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !453, !nonnull !394, !align !407
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 144
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !809, !nonnull !394, !align !407
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2592
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1528, !nonnull !394, !align !407
  call void @_ZNK5clang13SourceManager14getPresumedLocENS_14SourceLocationEb(ptr dead_on_unwind nonnull writable sret(%"class.clang::PresumedLoc") align 8 %9, ptr noundef nonnull align 8 dereferenceable(776) %i.de, i32 %storemerge29104, i1 noundef zeroext true) #30
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3036
  %i.dg = load i8, ptr %i.df, align 4, !tbaa !1529, !range !393, !noundef !394
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 3024
  %i.dj = load ptr, ptr %i.di, align 8            ; 2 uses
  %.not3169 = icmp eq ptr %i.dj, null
  %.not31 = select i1 %i.dh, i1 true, i1 %.not3169
  br i1 %.not31, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.dk = load ptr, ptr %9, align 8, !tbaa !1532  ; 3 uses
  %.not.i44 = icmp eq ptr %i.dk, null
  br i1 %.not.i44, label %_ZN4llvm9StringRefC2EPKc.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dl = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dk) #30
  br label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %bb.p, %bb.q
  %.sroa.0.0.i = phi i64 [ %i.dl, %bb.q ], [ 0, %bb.p ]
  call void @_ZNK5clang7CodeGen11CGDebugInfo11remapDIPathB5cxx11EN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(2480) %i.dj, ptr %i.dk, i64 %.sroa.0.0.i) #30
  %i.dm = load ptr, ptr %8, align 8, !tbaa !891   ; 6 uses
  %i.dn = icmp eq ptr %i.dm, %i.cx
  %i.do = load ptr, ptr %10, align 8, !tbaa !891  ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.dq = icmp eq ptr %i.do, %i.dp                ; 2 uses
  br i1 %i.dn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i50: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  br i1 %i.dq, label %bb.r, label %.thread.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45: ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  br i1 %i.dq, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i46

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i50
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !1411 ; 3 uses
  %i.dt = icmp ult i64 %i.ds, 16
  call void @llvm.assume(i1 %i.dt)
  switch i64 %i.ds, label %bb.t [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i48
    i64 1, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.du = load i8, ptr %i.do, align 1, !tbaa !421
  store i8 %i.du, ptr %i.dm, align 1, !tbaa !421
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i48

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dm, ptr align 1 %i.do, i64 %i.ds, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i48

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i48: ; preds = %bb.t, %bb.s, %bb.r
  %i.dv = load i64, ptr %i.dr, align 8, !tbaa !1411 ; 2 uses
  store i64 %i.dv, ptr %i.cy, align 8, !tbaa !1411
  %i.dw = load ptr, ptr %8, align 8, !tbaa !891
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.dv
  store i8 0, ptr %i.dx, align 1, !tbaa !421
  %.pre.i49 = load ptr, ptr %10, align 8, !tbaa !891
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit52

.thread.i51:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i50
  store ptr %i.do, ptr %8, align 8, !tbaa !891
  %i.dy = getelementptr inbounds nuw i8, ptr %10, i64 8
end_hunk_0
