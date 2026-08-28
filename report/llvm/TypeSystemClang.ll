Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TypeSystemClang?download=true
inline.NumInlined: 12535
inline.NumDeleted: 5891
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN12lldb_private15TypeSystemClang11GetTypeInfoEPvPNS_12CompilerTypeE:bb.a
  %i.lg = inttoptr i64 %i.lf to ptr
  %i.lh = load ptr, ptr %i.lg, align 16, !tbaa !1040 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load i8, ptr %i.li, align 16
  %i.lk = and i8 %i.lj, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp ne i8 %i.lk, 58
  %.not62207 = icmp eq ptr %i.lh, null
  %.not62 = or i1 %.not62207, %spec.select.i.i.i.i.i.i.i.i.i
  br i1 %.not62, label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %.sroa.0.0.copyload.i172 = load i64, ptr %i.ll, align 16, !tbaa !30 ; 2 uses
  %i.lm = icmp ult i64 %.sroa.0.0.copyload.i172, 16
  br i1 %i.lm, label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ln = and i64 %.sroa.0.0.copyload.i172, -16
  %i.lo = inttoptr i64 %i.ln to ptr               ; 2 uses
  %i.lp = load ptr, ptr %i.lo, align 16, !tbaa !1040
  %i.lq = tail call noundef zeroext i1 @_ZNK5clang4Type13isIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lp)
  br i1 %i.lq, label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lr = load ptr, ptr %i.lo, align 16, !tbaa !1040
  %i.ls = tail call noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.lr) #30
  %spec.select68 = select i1 %i.ls, i32 589825, i32 65537
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit: ; preds = %._crit_edge.i.i.i.i.us.i
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit246: ; preds = %._crit_edge.i.i.i.i.us.i, %._crit_edge.i.i.i.i.us.i
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit316: ; preds = %._crit_edge.i.i.i.i.us.i
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit354: ; preds = %._crit_edge.i.i.i.i.us.i, %._crit_edge.i.i.i.i.us.i
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit392: ; preds = %._crit_edge.i.i.i.i.us.i
  br label %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge.i.i.i.i.us.i, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit392, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit354, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit316, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit246, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit, %bb.cq, %bb.cp, %bb.cn, %_ZNK5clang4Type6castAsINS_14AttributedTypeEEEPKT_v.exit, %bb.k, %_ZN12lldb_private12CompilerTypeD2Ev.exit, %bb.v, %bb.m, %bb.l, %bb.ah, %bb.aq, %bb.at, %bb.bc, %bb.bl, %bb.bv, %bb.ce, %bb.dd, %bb.af, %bb.ag, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.u, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit76, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80, %bb.ad, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit87, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92, %bb.ap, %bb.as, %bb.ar, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit103, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109, %bb.bb, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit114, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i118, %bb.bk, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130, %bb.bu, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit135, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140, %bb.cd, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit145, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150, %bb.cm, %bb.dg, %bb.df, %bb.de, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 16384, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit392 ], [ %i.z, %_ZNK5clang4Type6castAsINS_14AttributedTypeEEEPKT_v.exit ], [ %spec.select, %bb.k ], [ 3090, %bb.u ], [ 2051, %bb.cm ], [ 2057, %bb.ah ], [ 1048594, %bb.aq ], [ 5, %bb.at ], [ 1310738, %bb.ar ], [ 97, %bb.cq ], [ 65537, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit ], [ 130, %bb.bc ], [ 5, %bb.bb ], [ 2057, %bb.ap ], [ 258, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit246 ], [ 4099, %bb.bl ], [ 2562, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit316 ], [ 3107, %bb.bv ], [ 4099, %bb.bu ], [ 327681, %bb.df ], [ 2051, %bb.ce ], [ 1057, %_ZNSt10__weak_ptrIN12lldb_private10TypeSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.loopexit354 ], [ 3107, %bb.cd ], [ 130, %bb.bk ], [ %i.ks, %_ZN12lldb_private12CompilerTypeD2Ev.exit ], [ 3090, %bb.ad ], [ 18, %bb.l ], [ %spec.select66, %bb.ag ], [ 3090, %bb.m ], [ 3090, %bb.v ], [ 0, %bb.dd ], [ %spec.select65, %bb.af ], [ 3090, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit ], [ 3090, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ 3090, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit76 ], [ 3090, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i80 ], [ 2057, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit87 ], [ 2057, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i92 ], [ %spec.select67, %bb.as ], [ 5, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit103 ], [ 5, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i109 ], [ 130, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit114 ], [ 130, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i118 ], [ 4099, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit ], [ 4099, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i130 ], [ 3107, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit135 ], [ 3107, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i140 ], [ 2051, %_ZNSt23enable_shared_from_thisIN12lldb_private10TypeSystemEE14weak_from_thisEv.exit145 ], [ 2051, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i150 ], [ 0, %bb.de ], [ %spec.select68, %bb.dg ], [ 8193, %bb.cp ], [ 8193, %bb.cn ], [ 0, %._crit_edge.i.i.i.i.us.i ]
  ret i32 %.3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5clang4Type13isIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i38 = load i64, ptr %i.a, align 8, !tbaa !30 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i38, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !1040 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16              ; 2 uses
  %i.g = icmp ne i8 %i.f, 13
  %.not.not3039 = icmp eq ptr %i.d, null
  %.not.not40 = or i1 %.not.not3039, %i.g
  br i1 %.not.not40, label %.lr.ph.preheader, label %tailrecurse._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.not64 = icmp eq i8 %i.f, 47
  br i1 %.not64, label %.lr.ph._crit_edge, label %.lr.ph66

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.am, %tailrecurse ]
  %i.h = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16
  %i.i = load i32, ptr %i.h, align 16
  %i.j = lshr i32 %i.i, 19
  %i.k = and i32 %i.j, 1023
  %i.l = add nsw i32 %i.k, -453
  %spec.select.i = icmp ult i32 %i.l, 20
  br label %.thread26

.lr.ph:                                           ; preds = %tailrecurse
  %.not = icmp eq i8 %i.ao, 47
  br i1 %.not, label %.lr.ph._crit_edge, label %.lr.ph66

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa58 = phi ptr [ %i.d, %.lr.ph.preheader ], [ %i.am, %.lr.ph ]
  %i.m = getelementptr inbounds nuw i8, ptr %.lcssa58, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1451 ; 2 uses
  %i.o = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(164) %i.n) #30 ; 2 uses
  %.not.not.i = icmp eq ptr %i.o, null
  %..i = select i1 %.not.not.i, ptr %i.n, ptr %i.o ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %..i, i64 74
  %i.q = load i8, ptr %i.p, align 2
  %i.r = trunc i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %..i, i64 128
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.s, align 8
  %i.t = icmp ugt i64 %.0.copyload.i.i.i.i.i, 7
  %i.u = select i1 %i.r, i1 true, i1 %i.t
  br i1 %i.u, label %bb.b, label %.thread26

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !1451
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.x = load i40, ptr %i.w, align 8
  %i.y = icmp sgt i40 %i.x, -1
  br label %.thread26

.lr.ph66:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i65 = phi i64 [ %.sroa.0.0.copyload.i.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i.i38, %.lr.ph.preheader ]
  %i.z = and i64 %.sroa.0.0.copyload.i.i.i.i65, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !1040 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i8, ptr %i.ac, align 16            ; 2 uses
  %i.ae = icmp ne i8 %i.ad, 35
  %.not18.not32 = icmp eq ptr %i.ab, null
  %.not18.not = or i1 %.not18.not32, %i.ae
  br i1 %.not18.not, label %bb.c, label %tailrecurse

tailrecurse:                                      ; preds = %.lr.ph66
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.af, align 16, !tbaa !30
  %i.ag = and i64 %.sroa.0.0.copyload.i, -16
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load ptr, ptr %i.ah, align 16, !tbaa !1040
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.ak = and i64 %.sroa.0.0.copyload.i.i.i, -16
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load ptr, ptr %i.al, align 16, !tbaa !1040 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16            ; 2 uses
  %i.ap = icmp ne i8 %i.ao, 13
  %.not.not30 = icmp eq ptr %i.am, null
  %.not.not = or i1 %.not.not30, %i.ap
  br i1 %.not.not, label %.lr.ph, label %tailrecurse._crit_edge

bb.c:                                             ; preds = %.lr.ph66
  %i.aq = icmp eq i8 %i.ad, 10
  br label %.thread26

.thread26:                                        ; preds = %bb.b, %.lr.ph._crit_edge, %tailrecurse._crit_edge, %bb.c
  %.3 = phi i1 [ %i.aq, %bb.c ], [ %i.y, %bb.b ], [ %spec.select.i, %tailrecurse._crit_edge ], [ false, %.lr.ph._crit_edge ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK5clang8EnumDecl14getIntegerTypeEv(ptr noundef nonnull align 8 dereferenceable(164) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.0.copyload.i.i.i = load i64, ptr %i.a, align 8 ; 4 uses
  %i.b = icmp ugt i64 %.0.copyload.i.i.i, 7
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = and i64 %.0.copyload.i.i.i, 4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = and i64 %.0.copyload.i.i.i, -8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = and i64 %.0.copyload.i.i.i, -5
  %i.f = inttoptr i64 %i.e to ptr
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !30 ; 2 uses
  %i.g = and i64 %.sroa.0.0.copyload.i, -16
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !1040 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i5 = load i64, ptr %i.j, align 8, !tbaa !30
  %i.k = and i64 %.sroa.0.0.copyload.i.i5, 15
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call { ptr, i64 } @_ZN5clang8QualType27getSplitUnqualifiedTypeImplES0_(i64 %.sroa.0.0.copyload.i) #30
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  br label %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit

_ZNK5clang8QualType18getUnqualifiedTypeEv.exit:   ; preds = %bb.d, %bb.e
  %.sroa.03.0.in.in.i = phi ptr [ %i.m, %bb.e ], [ %i.i, %bb.d ]
  %.sroa.03.0.in.i = ptrtoint ptr %.sroa.03.0.in.in.i to i64
  %.sroa.03.0.i = and i64 %.sroa.03.0.in.i, -8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.a, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit
  %.sroa.06.1 = phi i64 [ %.sroa.03.0.i, %_ZNK5clang8QualType18getUnqualifiedTypeEv.exit ], [ %i.d, %bb.c ], [ 0, %bb.a ]
  ret i64 %.sroa.06.1
}

declare noundef i32 @_ZNK12lldb_private12CompilerType11GetTypeInfoEPS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN12lldb_private15TypeSystemClang18GetMinimumLanguageEPv(ptr noundef nonnull align 8 dereferenceable(328) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.lldb_private::CompilerType", align 8 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %_ZN12lldb_private15TypeSystemClang20GetCanonicalQualTypeEPv.exit

_ZN12lldb_private15TypeSystemClang20GetCanonicalQualTypeEPv.exit: ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = and i64 %i.a, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !30   ; 3 uses
  %i.f = and i64 %i.e, -16
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !1040 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i8, ptr %i.i, align 16
  %i.k = and i8 %i.j, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i = icmp eq i8 %i.k, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, label %bb.b

bb.b:                                             ; preds = %_ZN12lldb_private15TypeSystemClang20GetCanonicalQualTypeEPv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !30
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !1040
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = and i8 %i.q, -2
  %spec.select.i.i.i.i.i.i.i.i5.i.i = icmp eq i8 %i.r, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i5.i.i, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i: ; preds = %bb.b
  %i.s = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.h) #30 ; 2 uses
  %.not.i10 = icmp eq ptr %i.s, null
  br i1 %.not.i10, label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, label %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i

_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i: ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZN12lldb_private15TypeSystemClang20GetCanonicalQualTypeEPv.exit
  %.1.i8.i = phi ptr [ %i.s, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ], [ %i.h, %_ZN12lldb_private15TypeSystemClang20GetCanonicalQualTypeEPv.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.1.i8.i, i64 16
  %i.u = load i24, ptr %i.t, align 16
  %i.v = and i24 %i.u, 1048576
  %.not4.i.i = icmp eq i24 %i.v, 0
  br i1 %.not4.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i
  %.05.i.i = phi ptr [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ], [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  %i.x = and i64 %.0.copyload.i.i.i.i.i.i.i, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !1040 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = and i8 %i.ab, -2
  %spec.select.i.i.i.i.i.i.i.i.not.i.i.i = icmp eq i8 %i.ac, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.not.i.i.i, label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.ad = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.z) #30
  br label %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i

_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i: ; preds = %bb.c, %.lr.ph.i.i
  %.1.i.i.i = phi ptr [ %i.ad, %bb.c ], [ %i.z, %.lr.ph.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 16
  %i.af = load i24, ptr %i.ae, align 16
  %i.ag = and i24 %i.af, 1048576
  %.not.i.i = icmp eq i24 %i.ag, 0
  br i1 %.not.i.i, label %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, label %.lr.ph.i.i, !llvm.loop !1770

_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i: ; preds = %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i
  %.0.lcssa.i.i = phi ptr [ %.1.i8.i, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.thread5.i ], [ %.1.i.i.i, %_ZNK5clang4Type6castAsINS_13ReferenceTypeEEEPKT_v.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 32
  %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i = load i64, ptr %i.ah, align 8, !tbaa !30
  br label %_ZNK5clang8QualType19getNonReferenceTypeEv.exit

_ZNK5clang8QualType19getNonReferenceTypeEv.exit:  ; preds = %bb.b, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i
  %.sroa.0.0.in.i.sroa.speculated = phi i64 [ %.sroa.0.0.in.i.sroa.speculate.load._ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i, %_ZNK5clang13ReferenceType14getPointeeTypeEv.exit.i ], [ %i.e, %bb.b ], [ %i.e, %_ZNK5clang4Type5getAsINS_13ReferenceTypeEEEPKT_v.exit.i ]
  %i.ai = and i64 %.sroa.0.0.in.i.sroa.speculated, -16
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !1040 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i11 = load i64, ptr %i.al, align 8, !tbaa !30
  %i.am = and i64 %.sroa.0.0.copyload.i.i.i.i.i11, -16
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = load ptr, ptr %i.an, align 16, !tbaa !1040 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i8, ptr %i.ap, align 16            ; 5 uses
  switch i8 %i.aq, label %bb.i [
    i8 31, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit
    i8 40, label %bb.d
  ]

bb.d:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.ar = tail call noundef ptr @_ZNK5clang4Type23getPointeeCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ak) #30
  %.not7 = icmp eq ptr %i.ar, null
  br i1 %.not7, label %bb.e, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.e:                                             ; preds = %bb.d
  %i.as = load ptr, ptr %i.aj, align 16, !tbaa !1040
  %i.at = tail call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.as) #30
  %i.au = and i64 %i.at, -16
  %i.av = inttoptr i64 %i.au to ptr               ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 16, !tbaa !1040
  %i.ax = tail call noundef ptr @_ZNK5clang4Type23getPointeeCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24) %i.aw) #30
  %.not8 = icmp eq ptr %i.ax, null
  br i1 %.not8, label %bb.f, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = load ptr, ptr %i.av, align 16, !tbaa !1040 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %.sroa.0.0.copyload.i.i.i.i17 = load i64, ptr %i.az, align 8, !tbaa !30
  %i.ba = and i64 %.sroa.0.0.copyload.i.i.i.i17, -16
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load ptr, ptr %i.bb, align 16, !tbaa !1040
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i8, ptr %i.bd, align 16
  %i.bf = and i8 %i.be, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bf, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = tail call noundef zeroext i1 @_ZNK5clang4Type15isObjCClassTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.ay)
  br i1 %i.bg, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load ptr, ptr %i.av, align 16, !tbaa !1040
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 19400
  %.0.copyload.i.i.i.i.i19 = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.0.copyload.i.i.i.i.i19, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !1040
  %.not49 = icmp eq ptr %i.bh, %i.bn
  br i1 %.not49, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %bb.u

bb.i:                                             ; preds = %_ZNK5clang8QualType19getNonReferenceTypeEv.exit
  %i.bo = and i8 %i.aq, -2
  %spec.select.i.i.i.i.i.i.i.i.i22 = icmp eq i8 %i.bo, 32
  br i1 %spec.select.i.i.i.i.i.i.i.i.i22, label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bp = add i8 %i.aq, -47
  %switch.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.bp, 3
  %i.bq = and i8 %i.aq, 62
  %spec.select.i.i.i = icmp eq i8 %i.bq, 48
  %or.cond.i = and i1 %switch.i.i.i.i.i.i.i.i.i.i, %spec.select.i.i.i
  br i1 %or.cond.i, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !1451 ; 2 uses
  %i.bt = icmp eq i8 %i.aq, 49
  br i1 %i.bt, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 127
  %i.bx = add nsw i32 %i.bw, -60
  %i.by = icmp ult i32 %i.bx, 3
  br i1 %i.by, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = tail call noundef ptr @_ZNK5clang13CXXRecordDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(144) %i.bs) ; 0 uses
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 16
  switch i8 %i.cb, label %bb.u [
    i8 13, label %bb.o
    i8 54, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.cc = load i32, ptr %i.ca, align 16
  %i.cd = lshr i32 %i.cc, 19
  %i.ce = and i32 %i.cd, 1023
  %switch.tableidx = add nsw i32 %i.ce, -505      ; 2 uses
  %i.cf = icmp ult i32 %switch.tableidx, 4
  br i1 %i.cf, label %switch.lookup, label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !1849
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  %.0.copyload.i.i.i.i.i27 = load i64, ptr %i.ci, align 8 ; 2 uses
  %i.cj = and i64 %.0.copyload.i.i.i.i.i27, -8
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = shl i64 %.0.copyload.i.i.i.i.i27, 1
  %.sroa.0.0.in.idx.i = and i64 %i.cl, 8
  %.sroa.0.0.in.i28 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.0.0.in.idx.i
  %.sroa.0.0.i29 = load i64, ptr %.sroa.0.0.in.i28, align 8, !tbaa !30
  call void @_ZN12lldb_private15TypeSystemClang7GetTypeEN5clang8QualTypeE(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::CompilerType") align 8 %2, ptr noundef nonnull align 8 dereferenceable(328) %0, i64 %.sroa.0.0.i29)
  %i.cm = call noundef i32 @_ZN12lldb_private12CompilerType18GetMinimumLanguageEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #30
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !771 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i, label %_ZN12lldb_private12CompilerTypeD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 12 ; 3 uses
  %i.cq = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i = icmp eq i8 %i.cq, 0
  br i1 %.not.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load i32, ptr %i.cp, align 4, !tbaa !742 ; 2 uses
  %i.cs = add nsw i32 %i.cr, -1
  store i32 %i.cs, ptr %i.cp, align 4, !tbaa !742
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ct = atomicrmw volatile add ptr %i.cp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i = phi i32 [ %i.cr, %bb.r ], [ %i.ct, %bb.s ]
  %i.cu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.cu, label %bb.t, label %_ZN12lldb_private12CompilerTypeD2Ev.exit

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  %i.cv = load ptr, ptr %i.co, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  call void %i.cx(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #30, !inline_history !1126
  br label %_ZN12lldb_private12CompilerTypeD2Ev.exit

_ZN12lldb_private12CompilerTypeD2Ev.exit:         ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.h
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

switch.lookup:                                    ; preds = %bb.o
  %i.cy = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN12lldb_private15TypeSystemClang18GetMinimumLanguageEPv, i64 %i.cy
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZNK5clang4Type18getAsCXXRecordDeclEv.exit

_ZNK5clang4Type18getAsCXXRecordDeclEv.exit:       ; preds = %switch.lookup, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit, %bb.m, %bb.f, %bb.e, %bb.g, %_ZN12lldb_private12CompilerTypeD2Ev.exit, %bb.u, %bb.h, %bb.d, %bb.i, %bb.a
  %.2 = phi i32 [ 2, %bb.a ], [ %i.cm, %_ZN12lldb_private12CompilerTypeD2Ev.exit ], [ 16, %_ZNK5clang8QualType19getNonReferenceTypeEv.exit ], [ 2, %bb.u ], [ 16, %bb.h ], [ 4, %bb.d ], [ 16, %bb.i ], [ 4, %bb.e ], [ 16, %bb.g ], [ %switch.ext, %switch.lookup ], [ 4, %bb.m ], [ 16, %bb.f ]
  ret i32 %.2
}

declare noundef ptr @_ZNK5clang4Type23getPointeeCXXRecordDeclEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #5

declare noundef i32 @_ZN12lldb_private12CompilerType18GetMinimumLanguageEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, -2147483647) i32 @_ZN12lldb_private15TypeSystemClang12GetTypeClassEPv(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  br label %._crit_edge.i.i.i.i.us.i

._crit_edge.i.i.i.i.us.i:                         ; preds = %._crit_edge.i.i.i.i.us.i.backedge, %bb.b
  %.sroa.011.0.us.i = phi i64 [ %i.a, %bb.b ], [ %.sroa.011.0.us.i.be, %._crit_edge.i.i.i.i.us.i.backedge ]
  %i.b = and i64 %.sroa.011.0.us.i, -16
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !1040 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i8, ptr %i.e, align 16
  switch i8 %i.f, label %bb.n [
    i8 54, label %_ZL19RemoveWrappingTypesN5clang8QualTypeEN4llvm8ArrayRefINS_4Type9TypeClassEEE.exit.thread
    i8 7, label %bb.d
    i8 16, label %bb.c
    i8 15, label %bb.c
    i8 38, label %bb.c
    i8 46, label %bb.c
end_hunk_0
