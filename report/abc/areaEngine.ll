Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/areaEngine?download=true
inline.NumInlined: 1126
inline.NumDeleted: 588
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN5eSLIM10AreaEngine21setupCycleConstraintsEv:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZN5eSLIM10AreaEngine19addCycleConstraintsEv(ptr noundef nonnull align 8 dereferenceable(392) %0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5eSLIM10AreaEngine28synthesiseMinimumSizeCircuitERKNS_8RelationERKNS_10SubcircuitERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr dead_on_unwind noalias writable sret(%"class.eSLIM::eSLIMCirMan") align 8 %0, ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 dereferenceable(296) %4) local_unnamed_addr #3 align 2 {
bb.a:
  %5 = alloca %"class.eSLIM::AreaEngine", align 8 ; 12 uses
  %6 = alloca %"class.std::vector.69", align 8    ; 13 uses
  %7 = alloca %"class.std::vector.69", align 8    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN5eSLIM10AreaEngineC1ERKNS_8RelationERKNS_10SubcircuitERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(392) %5, ptr noundef nonnull align 8 dereferenceable(29) %1, ptr noundef nonnull align 8 dereferenceable(176) %2, ptr noundef nonnull align 8 dereferenceable(124) %3, ptr noundef nonnull align 8 dereferenceable(296) %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  store ptr null, ptr %6, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !76
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.f = load i32, ptr %i.e, align 8, !tbaa !77   ; 3 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = call noundef double @_ZN5eSLIM19RelationSynthesiser17getDynamicTimeoutEi(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %i.f) #13
  %i.i = call noundef i32 @_ZN5eSLIM10AreaEngine9checkSizeEjd(ptr noundef nonnull align 8 dereferenceable(392) %5, i32 noundef %i.f, double noundef %i.h)
  %i.j = icmp eq i32 %i.i, 10
  br i1 %i.j, label %.lr.ph32, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = add nsw i32 %i.w, -1                     ; 2 uses
  %i.l = call noundef double @_ZN5eSLIM19RelationSynthesiser17getDynamicTimeoutEi(ptr noundef nonnull align 8 dereferenceable(224) %5, i32 noundef %i.k) #13
  %i.m = call noundef i32 @_ZN5eSLIM10AreaEngine9checkSizeEjd(ptr noundef nonnull align 8 dereferenceable(392) %5, i32 noundef %i.k, double noundef %i.l)
  %i.n = icmp eq i32 %i.m, 10
  br i1 %i.n, label %.lr.ph32, label %._crit_edge, !llvm.loop !104

.lr.ph32:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @_ZN5eSLIM13CadicalSolver8getModelEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.69") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5)
  %i.o = load ptr, ptr %6, align 8, !tbaa !72     ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph32
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !76   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.s) #14
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph32, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(40) %7, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.w = call noundef i32 @_ZN5eSLIM19RelationSynthesiser25getSizeFromActivationVarsERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull align 8 dereferenceable(40) %6) #13 ; 4 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %.._crit_edge_crit_edge, !llvm.loop !104

.._crit_edge_crit_edge:                           ; preds = %bb.c
  br label %._crit_edge, !llvm.loop !104

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge, %.lr.ph.preheader
  %.013.lcssa.ph = phi i32 [ %i.w, %.._crit_edge_crit_edge ], [ 0, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %.pre = load ptr, ptr %6, align 8, !tbaa !72
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !72
  %.pre27 = load i32, ptr %i.c, align 8, !tbaa !73
  %i.y = icmp eq ptr %.pre, %.pre26
  %i.z = icmp eq i32 %.pre27, 0
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  call void @_ZN5eSLIM11eSLIMCirManC1Ei(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef 0) #13
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  call void @_ZN5eSLIM19RelationSynthesiser14getReplacementERKSt6vectorIbSaIbEEi(ptr dead_on_unwind writable sret(%"class.eSLIM::eSLIMCirMan") align 8 %0, ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef nonnull align 8 dereferenceable(40) %6, i32 noundef %.013.lcssa.ph) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.thread
  %i.ab = load ptr, ptr %6, align 8, !tbaa !72    ; 2 uses
  %.not.i.i16 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i16, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit17, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !76  ; 2 uses
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = sub nsw i64 0, %i.ag
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ah
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.af) #14
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit17

_ZNSt13_Bvector_baseISaIbEED2Ev.exit17:           ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN5eSLIM10AreaEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void
}

declare noundef double @_ZN5eSLIM19RelationSynthesiser17getDynamicTimeoutEi(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM10AreaEngine9checkSizeEjd(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, double noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.std::vector", align 8       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN5eSLIM19RelationSynthesiser17getSizeAssumptionEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) #13
  %i.a = fcmp oeq double %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @_ZN7CaDiCaL6Solver17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #13
  %i.c = load ptr, ptr %3, align 8, !tbaa !78     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78   ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not8.i.i.i, label %_ZN5eSLIM13CadicalSolver5solveERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.sroa.05.09.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = load i32, ptr %.sroa.05.09.i.i.i, align 4, !tbaa !39
  call void @_ZN7CaDiCaL6Solver6assumeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i32 noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZN5eSLIM13CadicalSolver5solveERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i.i.i

_ZN5eSLIM13CadicalSolver5solveERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %i.h = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %i.i = call noundef i32 @_ZN7CaDiCaL6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #13
  %i.j = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %i.k = sub nsw i64 %i.j, %i.h
  %i.l = sdiv i64 %i.k, 1000000
  %i.m = sitofp i64 %i.l to double
  store double %i.m, ptr %0, align 8, !tbaa !79
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = call noundef i32 @_ZN5eSLIM13CadicalSolver5solveEdRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5eSLIM13CadicalSolver5solveERKSt6vectorIiSaIiEE.exit
  %i.o = phi i32 [ %i.i, %_ZN5eSLIM13CadicalSolver5solveERKSt6vectorIiSaIiEE.exit ], [ %i.n, %bb.c ] ; 2 uses
  call void @_ZN5eSLIM19RelationSynthesiser6logRunEij(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %i.o, i32 noundef %1) #13
  %i.p = load ptr, ptr %3, align 8, !tbaa !25     ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i6, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !80
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #14
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret i32 %i.o
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM13CadicalSolver8getModelEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.69") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 {
_ZNSt6vectorIbSaIbEE9push_backEb.exit:
  store ptr null, ptr %0, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr null, ptr %i.b, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !76
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr null, i32 0, i1 noundef zeroext false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.f = tail call noundef i32 @_ZN7CaDiCaL6Solver4varsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #13
  %.not9 = icmp slt i32 %i.f, 1
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit, %_ZNSt6vectorIbSaIbEE9push_backEb.exit8
  %.010 = phi i32 [ %i.x, %_ZNSt6vectorIbSaIbEE9push_backEb.exit8 ], [ 1, %_ZNSt6vectorIbSaIbEE9push_backEb.exit ] ; 4 uses
  %i.g = tail call noundef i32 @_ZN7CaDiCaL6Solver3valEib(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i32 noundef %.010, i1 noundef zeroext true) #13 ; 2 uses
  %i.h = tail call i32 @llvm.abs.i32(i32 %i.g, i1 true)
  %i.i = icmp ne i32 %i.h, %.010
  %i.j = icmp sgt i32 %i.g, 0
  %i.k = or i1 %i.j, %i.i                         ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !72   ; 7 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !76
  %.not.i4 = icmp eq ptr %i.l, %i.m
  %.sroa.2.0.copyload.i11.i6 = load i32, ptr %i.c, align 8 ; 4 uses
  br i1 %.not.i4, label %bb.e, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.n = add i32 %.sroa.2.0.copyload.i11.i6, 1
  store i32 %i.n, ptr %i.c, align 8, !tbaa !73
  %i.o = icmp eq i32 %.sroa.2.0.copyload.i11.i6, 63
  br i1 %i.o, label %bb.b, label %_ZNSt13_Bit_iteratorppEi.exit.i7

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !73
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.p, ptr %i.b, align 8, !tbaa !72
  br label %_ZNSt13_Bit_iteratorppEi.exit.i7

_ZNSt13_Bit_iteratorppEi.exit.i7:                 ; preds = %bb.b, %bb.a
  %i.q = zext nneg i32 %.sroa.2.0.copyload.i11.i6 to i64
  %i.r = shl nuw i64 1, %i.q                      ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i7
  %i.s = load i64, ptr %i.l, align 8, !tbaa !14
  %i.t = or i64 %i.s, %i.r
  store i64 %i.t, ptr %i.l, align 8, !tbaa !14
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit8

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i7
  %i.u = xor i64 %i.r, -1
  %i.v = load i64, ptr %i.l, align 8, !tbaa !14
  %i.w = and i64 %i.v, %i.u
  store i64 %i.w, ptr %i.l, align 8, !tbaa !14
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit8

bb.e:                                             ; preds = %.lr.ph
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %i.l, i32 %.sroa.2.0.copyload.i11.i6, i1 noundef zeroext %i.k)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit8

_ZNSt6vectorIbSaIbEE9push_backEb.exit8:           ; preds = %bb.c, %bb.d, %bb.e
  %i.x = add nuw nsw i32 %.010, 1
  %i.y = tail call noundef i32 @_ZN7CaDiCaL6Solver4varsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.e) #13
  %.not.not = icmp slt i32 %.010, %i.y
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit8, %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  ret void
}

declare noundef i32 @_ZN5eSLIM19RelationSynthesiser25getSizeFromActivationVarsERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN5eSLIM11eSLIMCirManC1Ei(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) unnamed_addr #4

declare void @_ZN5eSLIM19RelationSynthesiser14getReplacementERKSt6vectorIbSaIbEEi(ptr dead_on_unwind writable sret(%"class.eSLIM::eSLIMCirMan") align 8, ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM10AreaEngineD2Ev(ptr noundef nonnull align 8 dead_on_return(392) dereferenceable(392) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81   ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !82 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #14
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !106

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.l = load i64, ptr %i.f, align 8, !tbaa !38
  %i.m = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #14
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81   ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.q, %.lr.ph.i.i.i.i2 ], [ %i.p, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !82 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i3, i64 noundef 16) #14
  %.not.i.i.i.i4 = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2, !llvm.loop !106

_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.n, align 8, !tbaa !37   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5
  %i.y = load i64, ptr %i.s, align 8, !tbaa !38
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #14
  br label %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6

_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6: ; preds = %_ZNSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i5, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !83 ; 2 uses
  %.not5.i.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not5.i.i.i.i7, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8

.lr.ph.i.i.i.i8:                                  ; preds = %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i9 = phi ptr [ %i.ad, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.ac, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6 ] ; 4 uses
  %i.ad = load ptr, ptr %.06.i.i.i.i9, align 8, !tbaa !82 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i9, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i9, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #14
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i9, i64 noundef 40) #14
  %.not.i.i.i.i10 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i10, label %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i8, !llvm.loop !107

_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKiSt6vectorIiSaIiEEELb0EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEED2Ev.exit6
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34
  %i.ao = shl i64 %i.an, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ao, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ap = load ptr, ptr %i.aa, align 8, !tbaa !33 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.as = load i64, ptr %i.am, align 8, !tbaa !34
  %i.at = shl i64 %i.as, 3
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #14
  br label %_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit

_ZNSt13unordered_mapIiSt6vectorIiSaIiEESt4hashIiESt8equal_toIiESaISt4pairIKiS2_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableIiSt4pairIKiSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.e
  tail call void @_ZN5eSLIM19RelationSynthesiserD2Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %0) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @_ZN5eSLIM10AreaEngine9checkSizeEj(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN5eSLIM10AreaEngine9checkSizeEjd(ptr noundef nonnull align 8 dereferenceable(392) %0, i32 noundef %1, double noundef 0.000000e+00)
  ret i32 %i.a
}

declare void @_ZN5eSLIM19RelationSynthesiser17getSizeAssumptionEi(ptr dead_on_unwind writable sret(%"class.std::vector") align 8, ptr noundef nonnull align 8 dereferenceable(224), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN5eSLIM13CadicalSolver5solveEdRKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(32) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::CadicalSolver::TimeoutTerminator", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  tail call void @_ZN7CaDiCaL6Solver17reset_assumptionsEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #13
  %i.b = load ptr, ptr %2, align 8, !tbaa !78     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78   ; 2 uses
  %.not8.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not8.i.i, label %_ZN5eSLIM13CadicalSolver9assumeAllERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.05.09.i.i = phi ptr [ %i.f, %.lr.ph.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load i32, ptr %.sroa.05.09.i.i, align 4, !tbaa !39
  tail call void @_ZN7CaDiCaL6Solver6assumeEi(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i32 noundef %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZN5eSLIM13CadicalSolver9assumeAllERKSt6vectorIiSaIiEE.exit, label %.lr.ph.i.i

_ZN5eSLIM13CadicalSolver9assumeAllERKSt6vectorIiSaIiEE.exit: ; preds = %.lr.ph.i.i, %bb.a
  %i.g = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5eSLIM13CadicalSolver17TimeoutTerminatorE, i64 16), ptr %3, align 8, !tbaa !110
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %1, ptr %i.h, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  store i64 %i.j, ptr %i.i, align 8
  call void @_ZN7CaDiCaL6Solver18connect_terminatorEPNS_10TerminatorE(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %3) #13
  %i.k = call noundef i32 @_ZN7CaDiCaL6Solver5solveEv(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #13
  %i.l = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #13
  %i.m = sub nsw i64 %i.l, %i.g
  %i.n = sdiv i64 %i.m, 1000000
  %i.o = sitofp i64 %i.n to double
  store double %i.o, ptr %0, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !111
  %i.r = icmp eq i32 %i.q, 129
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZN5eSLIM13CadicalSolver9assumeAllERKSt6vectorIiSaIiEE.exit
  %i.s = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.1, i64 noundef 26) #13 ; 0 uses
  %i.t = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !110
  %i.u = getelementptr i8, ptr %i.t, i64 -24
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !126  ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %bb.c, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
end_hunk_0
