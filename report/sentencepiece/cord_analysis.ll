Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/cord_analysis?download=true
inline.NumInlined: 226
inline.NumDeleted: 128
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal25GetMorePreciseMemoryUsageEPKNS1_7CordRepE:bb.a
  %i.y = add i64 %i.x, 32
  store i64 %i.y, ptr %7, align 8, !tbaa !39
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit.i.i

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit.i.i: ; preds = %bb.i, %.noexc11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !25   ; 2 uses
  %.phi.trans.insert.i9.i = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %.pre.i10.i = load i8, ptr %.phi.trans.insert.i9.i, align 4, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit.i.i, %bb.f
  %i.aa = phi i8 [ %.pre.i10.i, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit.i.i ], [ %i.r, %bb.f ] ; 4 uses
  %.sroa.0.0.i.i = phi ptr [ %i.z, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit.i.i ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %i.ab = icmp ugt i8 %i.aa, 5
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = zext i8 %i.aa to i32
  %i.ad = icmp ult i8 %i.aa, 67                   ; 2 uses
  %i.ae = icmp ult i8 %i.aa, -69                  ; 2 uses
  %..i.i.i.i = select i1 %i.ae, i32 6, i32 12
  %.7.i.i.i.i = select i1 %i.ae, i32 -3712, i32 -753664
  %.sink6.i.i.i.i = select i1 %i.ad, i32 3, i32 %..i.i.i.i
  %.sink5.i.i.i.i = select i1 %i.ad, i32 -16, i32 %.7.i.i.i.i
  %i.af = shl nuw nsw i32 %i.ac, %.sink6.i.i.i.i
  %i.ag = add nsw i32 %i.af, %.sink5.i.i.i.i
  %i.ah = sext i32 %i.ag to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ai = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 40
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi i64 [ %i.ah, %bb.k ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %.sroa.0.0.i.i, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  store ptr %i.a, ptr %1, align 8, !tbaa !43
  %i.al = invoke { ptr, i8 } @_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %.noexc12.i unwind label %bb.e

.noexc12.i:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %.fca.1.extract.i4.i.i = extractvalue { ptr, i8 } %i.al, 1
  %i.am = trunc i8 %.fca.1.extract.i4.i.i to i1
  br i1 %i.am, label %bb.n, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit.i

bb.n:                                             ; preds = %.noexc12.i
  %i.an = load i64, ptr %7, align 8, !tbaa !39
  %i.ao = add i64 %i.an, %i.ak
  store i64 %i.ao, ptr %7, align 8, !tbaa !39
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit.i

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit.i: ; preds = %bb.n, %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %.thread20.i

bb.o:                                             ; preds = %bb.g
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr nonnull %.sroa.0.0.i, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %.thread20.i unwind label %bb.e

.thread20.i:                                      ; preds = %bb.o, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i, %bb.g, %bb.d
  %.0.i = load i64, ptr %7, align 8, !tbaa !39
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.thread20.i, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.ap, %.thread20.i ] ; 2 uses
  %i.aq = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !45 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 16) #14
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.thread20.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.as = load i64, ptr %i.c, align 8, !tbaa !41
  %i.at = shl i64 %i.as, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.at, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.b
  br i1 %i.av, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_117GetEstimatedUsageILNS2_4ModeE2EEEmPKNS1_7CordRepE.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  %i.aw = load i64, ptr %i.c, align 8, !tbaa !41
  %i.ax = shl i64 %i.aw, 3
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #14
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_117GetEstimatedUsageILNS2_4ModeE2EEEmPKNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_117GetEstimatedUsageILNS2_4ModeE2EEEmPKNS1_7CordRepE.exit: ; preds = %_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret i64 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr nofree readonly captures(address) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !12
  %i.b = add i64 %i.a, 64                         ; 2 uses
  store i64 %i.b, ptr %1, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47
  %.not31 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j ; 2 uses
  %.not35 = icmp eq i8 %i.g, %i.i                 ; 2 uses
  br i1 %.not31, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02234 = phi ptr [ %i.o, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.n = load ptr, ptr %.02234, align 8, !tbaa !48
  tail call fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr %i.n, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.o = getelementptr inbounds nuw i8, ptr %.02234, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.o, %i.k
  br i1 %.not23, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  br i1 %.not35, label %.loopexit, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %bb.c
  %i.p = zext i8 %i.g to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.p
  br label %.lr.ph37

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit
  %.036 = phi ptr [ %i.am, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit ], [ %i.q, %.lr.ph37.preheader ] ; 2 uses
  %i.r = phi i64 [ %i.al, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit ], [ %i.b, %.lr.ph37.preheader ] ; 2 uses
  %i.s = load ptr, ptr %.036, align 8, !tbaa !48  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i8, ptr %i.t, align 4, !tbaa !17    ; 2 uses
  %i.v = icmp eq i8 %i.u, 1
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph37
  %i.w = add i64 %i.r, 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !25   ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph37
  %i.z = phi i64 [ %i.w, %bb.d ], [ %i.r, %.lr.ph37 ]
  %i.aa = phi i8 [ %.pre.i, %bb.d ], [ %i.u, %.lr.ph37 ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.y, %bb.d ], [ %i.s, %.lr.ph37 ]
  %i.ab = icmp ugt i8 %i.aa, 5
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = zext i8 %i.aa to i32
  %i.ad = icmp ult i8 %i.aa, 67                   ; 2 uses
  %i.ae = icmp ult i8 %i.aa, -69                  ; 2 uses
  %..i.i.i = select i1 %i.ae, i32 6, i32 12
  %.7.i.i.i = select i1 %i.ae, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.ad, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.ad, i32 -16, i32 %.7.i.i.i
  %i.af = shl nuw nsw i32 %i.ac, %.sink6.i.i.i
  %i.ag = add nsw i32 %i.af, %.sink5.i.i.i
  %i.ah = sext i32 %i.ag to i64
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit

bb.g:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !26
  %i.aj = add i64 %i.ai, 40
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit: ; preds = %bb.f, %bb.g
  %i.ak = phi i64 [ %i.ah, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = add i64 %i.z, %i.ak                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.036, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.am, %i.k
  br i1 %.not, label %.loopexit.loopexit, label %.lr.ph37

.loopexit.loopexit:                               ; preds = %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE1EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit
  store i64 %i.al, ptr %1, align 8, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr nofree readonly captures(address) %0, double %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load double, ptr %2, align 8, !tbaa !29
  %i.b = tail call double @llvm.fmuladd.f64(double %1, double 6.400000e+01, double %i.a)
  store double %i.b, ptr %2, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.d = load i8, ptr %i.c, align 1, !tbaa !47
  %.not38 = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47    ; 2 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.j ; 2 uses
  %.not42 = icmp eq i8 %i.g, %i.i                 ; 2 uses
  br i1 %.not38, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not42, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = zext i8 %i.g to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.l
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.041 = phi ptr [ %i.w, %.lr.ph ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %i.n = load ptr, ptr %.041, align 8, !tbaa !48  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load atomic i32, ptr %i.o acquire, align 4
  %i.q = ashr i32 %i.p, 1                         ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 1
  %i.t = uitofp i64 %i.r to double
  %i.u = fdiv double %1, %i.t
  %i.v = select i1 %i.s, double %1, double %i.u
  tail call fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr %i.n, double %i.v, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.w = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not25 = icmp eq ptr %i.w, %i.k
  br i1 %.not25, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  br i1 %.not42, label %.loopexit, label %.lr.ph44.preheader

.lr.ph44.preheader:                               ; preds = %bb.c
  %i.x = zext i8 %i.g to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.x
  br label %.lr.ph44

.lr.ph44:                                         ; preds = %.lr.ph44.preheader, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit
  %.02443 = phi ptr [ %i.bl, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit ], [ %i.y, %.lr.ph44.preheader ] ; 2 uses
  %i.z = load ptr, ptr %.02443, align 8, !tbaa !48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load atomic i32, ptr %i.aa acquire, align 4
  %i.ac = ashr i32 %i.ab, 1                       ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 1
  %i.af = uitofp i64 %i.ad to double
  %i.ag = fdiv double %1, %i.af
  %i.ah = select i1 %i.ae, double %1, double %i.ag ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !17  ; 2 uses
  %i.ak = icmp eq i8 %i.aj, 1
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph44
  %i.al = load double, ptr %2, align 8, !tbaa !29
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ah, double 3.200000e+01, double %i.al)
  store double %i.am, ptr %2, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load atomic i32, ptr %i.ap acquire, align 4
  %i.ar = ashr i32 %i.aq, 1                       ; 2 uses
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp eq i32 %i.ar, 1
  %i.au = uitofp i64 %i.as to double
  %i.av = fdiv double %i.ah, %i.au
  %i.aw = select i1 %i.at, double %i.ah, double %i.av
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph44
  %i.ax = phi i8 [ %.pre.i, %bb.d ], [ %i.aj, %.lr.ph44 ] ; 4 uses
  %.sroa.4.0.i = phi double [ %i.aw, %bb.d ], [ %i.ah, %.lr.ph44 ]
  %.sroa.0.0.i = phi ptr [ %i.ao, %bb.d ], [ %i.z, %.lr.ph44 ]
  %i.ay = icmp ugt i8 %i.ax, 5
  br i1 %i.ay, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.az = zext i8 %i.ax to i32
  %i.ba = icmp ult i8 %i.ax, 67                   ; 2 uses
  %i.bb = icmp ult i8 %i.ax, -69                  ; 2 uses
  %..i.i.i = select i1 %i.bb, i32 6, i32 12
  %.7.i.i.i = select i1 %i.bb, i32 -3712, i32 -753664
  %.sink6.i.i.i = select i1 %i.ba, i32 3, i32 %..i.i.i
  %.sink5.i.i.i = select i1 %i.ba, i32 -16, i32 %.7.i.i.i
  %i.bc = shl nuw nsw i32 %i.az, %.sink6.i.i.i
  %i.bd = add nsw i32 %i.bc, %.sink5.i.i.i
  %i.be = sext i32 %i.bd to i64
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit

bb.g:                                             ; preds = %bb.e
  %i.bf = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !26
  %i.bg = add i64 %i.bf, 40
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit: ; preds = %bb.f, %bb.g
  %i.bh = phi i64 [ %i.be, %bb.f ], [ %i.bg, %bb.g ]
  %i.bi = uitofp i64 %i.bh to double
  %i.bj = load double, ptr %2, align 8, !tbaa !29
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bi, double %.sroa.4.0.i, double %i.bj)
  store double %i.bk, ptr %2, align 8, !tbaa !29
  %i.bl = getelementptr inbounds nuw i8, ptr %.02443, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.k
  br i1 %.not, label %.loopexit, label %.lr.ph44

.loopexit:                                        ; preds = %.lr.ph, %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_115AnalyzeDataEdgeILNS2_4ModeE0EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE.exit, %bb.b, %bb.c
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %3 = alloca %"struct.absl::lts_20260526::cord_internal::(anonymous namespace)::CordRepRef.5", align 8 ; 5 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"struct.absl::lts_20260526::cord_internal::(anonymous namespace)::CordRepRef.5", align 8 ; 5 uses
  %6 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %7 = alloca %"struct.absl::lts_20260526::cord_internal::(anonymous namespace)::CordRepRef.5", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %0, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr %i.a, ptr %6, align 8, !tbaa !43
  %i.b = call { ptr, i8 } @_ZNSt10_HashtableIPKN4absl12lts_2026052613cord_internal7CordRepES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb0EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb0EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.b, 1
  %i.c = trunc i8 %.fca.1.extract.i to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8, !tbaa !39
  %i.e = add i64 %i.d, 64
  store i64 %i.e, ptr %1, align 8, !tbaa !39
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.g = load i8, ptr %i.f, align 1, !tbaa !47
  %.not31 = icmp eq i8 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.j = load i8, ptr %i.i, align 1, !tbaa !47    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !47    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.m ; 2 uses
  %.not35 = icmp eq i8 %i.j, %i.l                 ; 2 uses
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_18RawUsageILNS2_4ModeE2EE3AddEmNS2_10CordRepRefILS4_2EEE.exit
  br i1 %.not35, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.o
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02234 = phi ptr [ %i.r, %.lr.ph ], [ %i.p, %.lr.ph.preheader ] ; 2 uses
  %i.q = load ptr, ptr %.02234, align 8, !tbaa !48
  call fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_112AnalyzeBtreeILNS2_4ModeE2EEEvNS2_10CordRepRefIXT_EEERNS2_8RawUsageIXT_EEE(ptr %i.q, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.r = getelementptr inbounds nuw i8, ptr %.02234, i64 8 ; 2 uses
  %.not23 = icmp eq ptr %i.r, %i.n
end_hunk_0
