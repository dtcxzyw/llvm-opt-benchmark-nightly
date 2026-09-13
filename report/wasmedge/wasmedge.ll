Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasmedge?download=true
inline.NumInlined: 10558
inline.NumDeleted: 5948
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@WasmEdge_StatisticsSetCostTable:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 0, ptr %i.a, align 8, !tbaa !98
  %i.l = sub nuw nsw i64 65536, %i.j
  invoke void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr %i.e, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %_ZN8WasmEdge10Statistics10Statistics12setCostTableEN5cxx204spanIKmLm18446744073709551615EEE.exit

_ZN8WasmEdge10Statistics10Statistics12setCostTableEN5cxx204spanIKmLm18446744073709551615EEE.exit: ; preds = %.noexc3, %.noexc, %bb.a
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit.i, %bb.b
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @WasmEdge_StatisticsSetCostLimit(ptr nofree noundef writeonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %1, ptr %i.a, align 8, !tbaa !122
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_StatisticsClear(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN8WasmEdge5Timer5Timer5resetEv(ptr noundef nonnull align 8 dereferenceable(184) %i.a) #34
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store atomic i64 0, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i64 0, ptr %i.c monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_StatisticsDelete(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8WasmEdge10Statistics10StatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #38
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8WasmEdge10Statistics10StatisticsD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !126  ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not5.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i
  %.06.i.i.i.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.06.i.i.i.i.i.i, align 8, !tbaa !104 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.i.i, i64 noundef 24) #38
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !125
  %i.i = shl i64 %i.h, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.i, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.m = load i64, ptr %i.g, align 8, !tbaa !125
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #38
  br label %_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i

_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i: ; preds = %bb.b, %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !126  ; 2 uses
  %.not5.i.i.i.i.1.i.i = icmp eq ptr %i.p, null
  br i1 %.not5.i.i.i.i.1.i.i, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.1.i.i, label %.lr.ph.i.i.i.i.1.i.i

.lr.ph.i.i.i.i.1.i.i:                             ; preds = %_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i, %.lr.ph.i.i.i.i.1.i.i
  %.06.i.i.i.i.1.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.1.i.i ], [ %i.p, %_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i ] ; 2 uses
  %i.q = load ptr, ptr %.06.i.i.i.i.1.i.i, align 8, !tbaa !104 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i.1.i.i, i64 noundef 24) #38
  %.not.i.i.i.i.1.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.1.i.i, label %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.1.i.i, label %.lr.ph.i.i.i.i.1.i.i, !llvm.loop !2

_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.1.i.i: ; preds = %.lr.ph.i.i.i.i.1.i.i, %_ZNSt13unordered_mapINSt6thread2idENSt6chrono10time_pointINS2_3_V212steady_clockENS2_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4hashIS1_ESt8equal_toIS1_ESaISt4pairIKS1_SA_EEED2Ev.exit.i.i
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !124
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !125
  %i.u = shl i64 %i.t, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %i.u, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN8WasmEdge5Timer5TimerD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.1.i.i
  %i.y = load i64, ptr %i.s, align 8, !tbaa !125
  %i.z = shl i64 %i.y, 3
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #38
  br label %_ZN8WasmEdge5Timer5TimerD2Ev.exit

_ZN8WasmEdge5Timer5TimerD2Ev.exit:                ; preds = %_ZNSt10_HashtableINSt6thread2idESt4pairIKS1_NSt6chrono10time_pointINS4_3_V212steady_clockENS4_8durationIlSt5ratioILl1ELl1000000000EEEEEEESaISD_ENSt8__detail10_Select1stESt8equal_toIS1_ESt4hashIS1_ENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i.1.i.i, %bb.c
  %i.aa = load ptr, ptr %0, align 8, !tbaa !107   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge5Timer5TimerD2Ev.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !108
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = sub i64 %i.ad, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.af) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN8WasmEdge5Timer5TimerD2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @WasmEdge_ASTModuleListImportsLength(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168
  %i.i = trunc i64 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @WasmEdge_ASTModuleListImports(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !129  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 168                 ; 3 uses
  %.not17 = icmp ne ptr %1, null
  %i.i = icmp ne i32 %2, 0
  %or.cond = and i1 %.not17, %i.i
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.j)
  %3 = add nsw i64 %i.k, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.l = and i64 %3, 3                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub i64 %3, %i.n                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [168 x i8], ptr %i.b, <2 x i64> %vec.ind
  %wide.gep24 = getelementptr inbounds nuw [168 x i8], ptr %i.b, <2 x i64> %step.add
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x ptr> %wide.gep, ptr %i.o, align 8, !tbaa !982
  store <2 x ptr> %wide.gep24, ptr %i.p, align 8, !tbaa !982
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %.lr.ph.preheader25, label %vector.body, !llvm.loop !979

.lr.ph.preheader25:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 4 uses
  %i.r = icmp ugt i64 %i.h, %indvars.iv
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.s, ptr %i.t, align 8, !tbaa !982
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !980

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %i.u = trunc i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.013 = phi i32 [ %i.u, %.critedge ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @WasmEdge_ASTModuleListExportsLength(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  %i.i = trunc i64 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define i32 @WasmEdge_ASTModuleListExports(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48                  ; 3 uses
  %.not17 = icmp ne ptr %1, null
  %i.i = icmp ne i32 %2, 0
  %or.cond = and i1 %.not17, %i.i
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %2 to i64           ; 2 uses
  %i.j = add nsw i64 %wide.trip.count, -1
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.j)
  %3 = add nsw i64 %i.k, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %3, 5
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.l = and i64 %3, 3                            ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  %i.n = select i1 %i.m, i64 4, i64 %i.l
  %n.vec = sub i64 %3, %i.n                       ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.b, <2 x i64> %vec.ind
  %wide.gep24 = getelementptr inbounds nuw [48 x i8], ptr %i.b, <2 x i64> %step.add
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <2 x ptr> %wide.gep, ptr %i.o, align 8, !tbaa !986
  store <2 x ptr> %wide.gep24, ptr %i.p, align 8, !tbaa !986
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %.lr.ph.preheader25, label %vector.body, !llvm.loop !983

.lr.ph.preheader25:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 4 uses
  %i.r = icmp ugt i64 %i.h, %indvars.iv
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.s, ptr %i.t, align 8, !tbaa !986
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !984

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %i.u = trunc i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.013 = phi i32 [ %i.u, %.critedge ], [ 0, %bb.a ]
  ret i32 %.013
}

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_ASTModuleDelete(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i

_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 712) #38
  br label %_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !136    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit

_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit: ; preds = %bb.a
  tail call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %i.a) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 712) #38
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @WasmEdge_LimitCreate(i64 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %0, ptr %i.c, align 8, !tbaa !140
  %..i = select i1 %1, i8 4, i8 0
  store i8 %..i, ptr %i.a, align 8, !tbaa !141
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #34 ; 0 uses
  %i.g = tail call fastcc i32 @_ZN12_GLOBAL__N_115handleCAPIErrorEv() #34 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ]
  ret ptr %.0

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @WasmEdge_LimitCreateWithMax(i64 noundef %0, i64 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #36
          to label %bb.b unwind label %bb.c       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8, !tbaa !139
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.c, align 8, !tbaa !140
  %.5.i = select i1 %2, i8 5, i8 1
  %..i = select i1 %2, i8 7, i8 3
  %.sink.i = select i1 %3, i8 %..i, i8 %.5.i
  store i8 %.sink.i, ptr %i.a, align 8, !tbaa !141
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  %i.f = tail call ptr @__cxa_begin_catch(ptr %i.e) #34 ; 0 uses
  %i.g = tail call fastcc i32 @_ZN12_GLOBAL__N_115handleCAPIErrorEv() #34 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ null, %bb.c ]
  ret ptr %.0

bb.e:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #33
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @WasmEdge_LimitGetMin(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !139
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @WasmEdge_LimitGetMax(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !140
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @WasmEdge_LimitHasMax(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !141
  %i.b = trunc i8 %i.a to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @WasmEdge_LimitIsShared(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
end_hunk_0
