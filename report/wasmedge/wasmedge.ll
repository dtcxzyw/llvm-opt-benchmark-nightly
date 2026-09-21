Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/wasmedge?download=true
inline.NumInlined: 10558
inline.NumDeleted: 5948
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 29
begin_hunk_0_@WasmEdge_StatisticsSetCostLimit:bb.a
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
  %i.l = add nsw i64 %i.k, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 5
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.m = and i64 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub i64 %i.l, %i.o                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [168 x i8], ptr %i.b, <2 x i64> %vec.ind
  %wide.gep24 = getelementptr inbounds nuw [168 x i8], ptr %i.b, <2 x i64> %step.add
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x ptr> %wide.gep, ptr %i.p, align 8, !tbaa !982
  store <2 x ptr> %wide.gep24, ptr %i.q, align 8, !tbaa !982
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.lr.ph.preheader25, label %vector.body, !llvm.loop !979

.lr.ph.preheader25:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [168 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.s, ptr %i.t, align 8, !tbaa !982
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.critedge, label %.lr.ph, !llvm.loop !980

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
  %i.l = add nsw i64 %i.k, 1                      ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 5
  br i1 %min.iters.check, label %.lr.ph.preheader25, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.m = and i64 %i.l, 3                          ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 4, i64 %i.m
  %n.vec = sub i64 %i.l, %i.o                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.b, <2 x i64> %vec.ind
  %wide.gep24 = getelementptr inbounds nuw [48 x i8], ptr %i.b, <2 x i64> %step.add
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x ptr> %wide.gep, ptr %i.p, align 8, !tbaa !986
  store <2 x ptr> %wide.gep24, ptr %i.q, align 8, !tbaa !986
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %.lr.ph.preheader25, label %vector.body, !llvm.loop !983

.lr.ph.preheader25:                               ; preds = %vector.body, %.lr.ph.preheader
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader25, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %indvars.iv.ph, %.lr.ph.preheader25 ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  store ptr %i.s, ptr %i.t, align 8, !tbaa !986
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.critedge, label %.lr.ph, !llvm.loop !984

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
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !141
  %i.b = and i8 %i.a, 2
  %i.c = icmp ne i8 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @WasmEdge_LimitIs64Bit(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 8, !tbaa !141
  %i.b = icmp ugt i8 %i.a, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@WasmEdge_Driver_Compiler:bb.a
bb.a:
  %i.a = tail call noundef i32 @_ZN8WasmEdge6Driver7UniToolEiPPKcNS0_8ToolTypeE(i32 noundef %0, ptr noundef %1, i8 noundef signext 1) #34
  ret i32 %i.a
}

; Function Attrs: nounwind
declare noundef i32 @_ZN8WasmEdge6Driver7UniToolEiPPKcNS0_8ToolTypeE(i32 noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @WasmEdge_Driver_Tool(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8WasmEdge6Driver7UniToolEiPPKcNS0_8ToolTypeE(i32 noundef %0, ptr noundef %1, i8 noundef signext 2) #34
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef i32 @WasmEdge_Driver_UniTool(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef i32 @_ZN8WasmEdge6Driver7UniToolEiPPKcNS0_8ToolTypeE(i32 noundef %0, ptr noundef %1, i8 noundef signext 0) #34
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_PluginLoadWithDefaultPaths() local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN8WasmEdge6Plugin6Plugin20loadFromDefaultPathsEv() #34
  ret void
}

; Function Attrs: nounwind
declare void @_ZN8WasmEdge6Plugin6Plugin20loadFromDefaultPathsEv() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_PluginLoadFromPath(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %.not = icmp eq ptr %0, null
  %i.b = select i1 %.not, ptr @.str.5, ptr %0
  store ptr %i.b, ptr %i.a, align 8, !tbaa !74
  invoke void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i8 noundef zeroext 2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef zeroext i1 @_ZN8WasmEdge6Plugin6Plugin4loadERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40) %1) #34 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !262  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #34
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !70     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #38
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  ret void

bb.d:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  call void @__clang_call_terminate(ptr %i.l) #33
  unreachable
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN8WasmEdge6Plugin6Plugin4loadERKNSt10filesystem7__cxx114pathE(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #22

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !74     ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #34 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !260
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.c, ptr %i.a, align 8, !tbaa !98
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !70
  %i.g = load i64, ptr %i.a, align 8, !tbaa !98
  store i64 %i.g, ptr %i.d, align 8, !tbaa !65
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !65
  store i8 %i.i, ptr %i.h, align 1, !tbaa !65
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !98   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !71
  %i.l = load ptr, ptr %0, align 8, !tbaa !70
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !262  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #34
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !65
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define i32 @WasmEdge_PluginListPluginsLength() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() #34
  %i.b = extractvalue { ptr, i64 } %i.a, 1
  %i.c = trunc i64 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind
declare { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define i32 @WasmEdge_PluginListPlugins(ptr nofree noundef writeonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() #34 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1        ; 2 uses
  %.not = icmp ne ptr %0, null
  %i.d = icmp ne i32 %1, 0
  %or.cond = and i1 %.not, %i.d
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.c
  br i1 %exitcond.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw [224 x i8], ptr %i.b, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !504, !nonnull !102, !noundef !102
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !716  ; 2 uses
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #35
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  store i32 %i.j, ptr %i.k, align 8, !tbaa !153
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.h, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.critedge, label %.lr.ph, !llvm.loop !1305

.critedge:                                        ; preds = %bb.b, %.lr.ph, %bb.a
  %i.l = trunc i64 %i.c to i32
  ret i32 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @WasmEdge_PluginFind(i32 %0, ptr %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %0 to i64
  %i.b = tail call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 %i.a, ptr %1) #34
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { i32, ptr } @WasmEdge_PluginGetPluginName(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #17 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !504, !nonnull !102, !noundef !102
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !716  ; 2 uses
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.c) #35
  %i.e = trunc i64 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %.sroa.3.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.sroa.3.0, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @WasmEdge_PluginListModuleLength(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !717
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !718
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @WasmEdge_PluginListModule(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !717  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !718
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %.not16 = icmp ne ptr %1, null
  %i.i = icmp ne i32 %2, 0
  %or.cond = and i1 %.not16, %i.i
  br i1 %or.cond, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %i.h
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !720, !nonnull !102, !noundef !102
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1307 ; 2 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.l) #35
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  store i32 %i.n, ptr %i.o, align 8, !tbaa !153
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.l, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !74
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not.a, label %.critedge, label %.lr.ph, !llvm.loop !1306

.critedge:                                        ; preds = %bb.c, %.lr.ph, %bb.b
  %i.p = trunc i64 %i.h to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i32 [ %i.p, %.critedge ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @WasmEdge_PluginCreateModule(ptr noundef %0, i32 %1, ptr %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = tail call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %0, i64 %i.a, ptr %2) #34 ; 2 uses
  %.not13.not = icmp eq ptr %i.b, null
  br i1 %.not13.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !720, !noalias !1311, !nonnull !102, !noundef !102 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1312, !noalias !1311
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull %i.c) #34, !noalias !1311, !inline_history !1310
  br label %.thread

.thread:                                          ; preds = %bb.b, %bb.a, %bb.c
  %.1 = phi ptr [ %i.f, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224), i64, ptr) local_unnamed_addr #22

; Function Attrs: mustprogress nounwind uwtable
define void @WasmEdge_PluginInitWASINN(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.WasmEdge::PO::ArgumentParser", align 8 ; 19 uses
  %3 = alloca %"class.std::vector.462", align 8   ; 6 uses
  %i.a = tail call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 7, ptr nonnull @.str.6) #34 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.b = invoke noalias noundef nonnull dereferenceable(328) ptr @_Znwm(i64 noundef 328) #36
          to label %_ZN8WasmEdge2PO14ArgumentParserC2Ev.exit unwind label %bb.c ; 4 uses

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #33
  unreachable

_ZN8WasmEdge2PO14ArgumentParserC2Ev.exit:         ; preds = %bb.b
  store ptr %i.b, ptr %2, align 8, !tbaa !475
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !476
  tail call void @_ZN8WasmEdge2PO14ArgumentParser20SubCommandDescriptorC2Ev(ptr noundef nonnull align 8 dereferenceable(328) %i.b) #34
  store ptr %i.f, ptr %i.e, align 8, !tbaa !477
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i8 0, ptr %i.k, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.h, i8 0, i64 33, i1 false)
  store i64 24, ptr %i.j, align 8, !tbaa !98
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr @.str.179, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !74
  call void @_ZN8WasmEdge2PO14ArgumentParser20SubCommandDescriptor10add_optionINS0_6OptionINS0_6ToggleENS0_6ParserIbEEEEEEvSt17basic_string_viewIcSt11char_traitsIcEERT_(ptr noundef nonnull align 8 dereferenceable(328) %i.b, i64 1, ptr nonnull @.str.180, ptr noundef nonnull align 8 dereferenceable(25) %i.i) #34
  %i.l = load ptr, ptr %2, align 8, !tbaa !478
  call void @_ZN8WasmEdge2PO14ArgumentParser20SubCommandDescriptor10add_optionINS0_6OptionINS0_6ToggleENS0_6ParserIbEEEEEEvSt17basic_string_viewIcSt11char_traitsIcEERT_(ptr noundef nonnull align 8 dereferenceable(328) %i.l, i64 7, ptr nonnull @.str.181, ptr noundef nonnull align 8 dereferenceable(25) %i.i) #34
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !504, !nonnull !102, !noundef !102 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !509  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN8WasmEdge2PO14ArgumentParserC2Ev.exit
  call void %i.p(ptr noundef nonnull %i.n, ptr noundef nonnull align 8 dereferenceable(88) %2) #34, !inline_history !8
  br label %_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit

_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit: ; preds = %_ZN8WasmEdge2PO14ArgumentParserC2Ev.exit, %bb.d
  %i.q = zext i32 %1 to i64                       ; 4 uses
  %.idx10 = shl nuw nsw i64 %i.q, 3
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %.idx10
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit
  %.idx = shl nuw nsw i64 %i.q, 5
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #36
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i unwind label %.thread

.thread:                                          ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i, %_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit
  %i.u = phi ptr [ null, %_ZNK8WasmEdge6Plugin6Plugin15registerOptionsERNS_2PO14ArgumentParserE.exit ], [ %i.s, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ] ; 5 uses
  store ptr %i.u, ptr %3, align 8, !tbaa !462
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %i.q
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !467
  %i.x = invoke noundef ptr @_ZSt16__do_uninit_copyIPKPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SC_SB_(ptr noundef %0, ptr noundef %i.r, ptr noundef %i.u)
          to label %bb.g unwind label %bb.e

bb.e:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.y = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %.not.i.i6.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i6.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.idx25 = shl nuw nsw i64 %i.q, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %.idx25) #38
  br label %.body

bb.g:                                             ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.z, align 8, !tbaa !463
  %i.aa = call noundef zeroext i1 @_ZNK8WasmEdge2PO14ArgumentParser13set_raw_valueISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EEEEbSt17basic_string_viewIcS7_ET_(ptr noundef nonnull align 8 dereferenceable(88) %2, i64 10, ptr nonnull @.str.7, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %3) #34 ; 0 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !462   ; 3 uses
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !463 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i, align 8, !tbaa !70 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !65
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #38
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i8, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !7

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !462
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.g
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.ab, %bb.g ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !467
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %i.aj to i64
  %i.an = sub i64 %i.al, %i.am
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.an) #38
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !107 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !108
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.ap to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.au) #38
  br label %_ZNSt6vectorImSaImEED2Ev.exit.i

_ZNSt6vectorImSaImEED2Ev.exit.i:                  ; preds = %bb.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
end_hunk_1
