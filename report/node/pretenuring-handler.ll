inline.NumInlined: 442
inline.NumDeleted: 301
begin_hunk_0_@_ZN2v88internal18PretenuringHandler26ProcessPretenuringFeedbackEm:bb.a
  %.135 = phi i32 [ %i.ak, %bb.j ], [ %i.ak, %bb.k ], [ %.03457, %bb.c ] ; 2 uses
  %.133 = phi i32 [ %.03258, %bb.j ], [ %i.ce, %bb.k ], [ %.03258, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.cd, %bb.j ], [ %.059, %bb.k ], [ %.059, %bb.c ] ; 2 uses
  %.sroa.043.0 = load ptr, ptr %.sroa.043.060, align 8 ; 2 uses
  %i.cg = icmp eq ptr %.sroa.043.0, null
  br i1 %i.cg, label %._crit_edge, label %bb.c

.lr.ph68:                                         ; preds = %.preheader, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit
  %i.ch = phi ptr [ %i.dr, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit ], [ %i.x, %.preheader ]
  %i.ci = phi ptr [ %i.dq, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit ], [ %i.w, %.preheader ]
  %i.cj = phi i8 [ %spec.select74, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit ], [ %.promoted67, %.preheader ]
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 -8 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  store ptr %i.ck, ptr %i.ci, align 8
  %i.cm = load ptr, ptr %0, align 8
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = add i64 %i.cn, -55464
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = add i64 %i.cl, -1
  %i.cr = inttoptr i64 %i.cq to ptr               ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32 ; 8 uses
  %i.ct = load atomic i32, ptr %i.cs monotonic, align 4 ; 2 uses
  %i.cu = lshr i32 %i.ct, 26
  %i.cv = and i32 %i.cu, 7
  %i.cw = and i32 %i.ct, 335544320
  %or.cond.i = icmp eq i32 %i.cw, 0               ; 2 uses
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph68
  %i.cx = load atomic i32, ptr %i.cs monotonic, align 4
  %i.cy = or i32 %i.cx, 536870912
  store atomic i32 %i.cy, ptr %i.cs monotonic, align 4
  %i.cz = load atomic i32, ptr %i.cs monotonic, align 4
  %i.da = and i32 %i.cz, -469762049
  %i.db = or disjoint i32 %i.da, 201326592
  store atomic i32 %i.db, ptr %i.cs monotonic, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph68
  %i.dc = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.o, label %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit

bb.o:                                             ; preds = %bb.n
  %i.de = inttoptr i64 %i.cl to ptr
  %i.df = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.cr, i32 noundef %i.cv) #14
  %i.dg = load atomic i32, ptr %i.cs monotonic, align 4
  %i.dh = lshr i32 %i.dg, 26
  %i.di = and i32 %i.dh, 7
  %i.dj = tail call noundef ptr @_ZN2v88internal14AllocationSite21PretenureDecisionNameENS1_17PretenureDecisionE(ptr noundef nonnull align 4 dereferenceable(40) %i.cr, i32 noundef %i.di) #14
  tail call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.cp, ptr noundef nonnull @.str.2, ptr noundef %i.de, ptr noundef %i.df, ptr noundef %i.dj) #14
  br label %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit

_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit: ; preds = %bb.n, %bb.o
  %i.dk = load atomic i32, ptr %i.cs monotonic, align 4
  %i.dl = and i32 %i.dk, -67108864
  store atomic i32 %i.dl, ptr %i.cs monotonic, align 4
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 36
  store i32 0, ptr %i.dm, align 4
  %spec.select74 = select i1 %or.cond.i, i8 1, i8 %i.cj ; 2 uses
  %i.dn = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %i.ds = icmp eq ptr %i.dp, %i.dr
  br i1 %i.ds, label %._crit_edge69, label %.lr.ph68, !llvm.loop !10

._crit_edge69:                                    ; preds = %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit, %.preheader
  %.lcssa = phi i8 [ %.promoted67, %.preheader ], [ %spec.select74, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit ] ; 2 uses
  %.lcssa66 = phi ptr [ %i.t, %.preheader ], [ %i.dn, %_ZN2v88internal12_GLOBAL__N_131PretenureAllocationSiteManuallyEPNS0_7IsolateENS0_6TaggedINS0_14AllocationSiteEEE.exit ] ; 4 uses
  store i8 %.lcssa, ptr %i.a, align 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.lcssa66, i64 8
  store ptr null, ptr %i.s, align 8
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.du, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge69
  %i.dv = getelementptr inbounds nuw i8, ptr %.lcssa66, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = ptrtoint ptr %i.du to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = ashr exact i64 %i.dz, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %.lcssa66, ptr noundef nonnull %i.du, i64 noundef %i.ea) #14
  br label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %._crit_edge69, %bb.p
  tail call void @_ZdlPvm(ptr noundef nonnull %.lcssa66, i64 noundef 32) #17
  br label %bb.q

bb.q:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, %._crit_edge
  %i.eb = phi i8 [ %.lcssa, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit ], [ %.promoted67, %._crit_edge ]
  %i.ec = load ptr, ptr %0, align 8
  %i.ed = tail call noundef i64 @_ZNK2v88internal4Heap22NewSpaceTargetCapacityEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.ec) #14
  %i.ee = icmp ult i64 %i.ed, %.sroa.speculated
  %.not39 = or i1 %i.l, %i.ee                     ; 2 uses
  br i1 %.not39, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ef = load ptr, ptr %0, align 8               ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1648
  %.sroa.0.0.copyload.i = load i64, ptr %i.eg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 24
  store ptr %i.b, ptr %2, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_14AllocationSiteEEEEZNS1_18PretenuringHandler26ProcessPretenuringFeedbackEmE3$_0E9_M_invokeERKSt9_Any_dataOS4_", ptr %i.ei, align 8
  store ptr @"_ZNSt17_Function_handlerIFvN2v88internal6TaggedINS1_14AllocationSiteEEEEZNS1_18PretenuringHandler26ProcessPretenuringFeedbackEmE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation", ptr %i.eh, align 8
  call void @_ZN2v88internal4Heap21ForeachAllocationSiteENS0_6TaggedINS0_6ObjectEEERKSt8functionIFvNS2_INS0_14AllocationSiteEEEEE(ptr noundef nonnull align 8 dereferenceable(2992) %i.ef, i64 %.sroa.0.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %2) #14
  %i.ej = load ptr, ptr %i.eh, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ej, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ek = call noundef zeroext i1 %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3) #14, !inline_history !11 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %.pre = load i8, ptr %i.a, align 1, !range !8
  br label %bb.t

bb.t:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.q
  %i.el = phi i8 [ %.pre, %_ZNSt14_Function_baseD2Ev.exit ], [ %i.eb, %bb.q ]
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.en = load ptr, ptr %0, align 8
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = add i64 %i.eo, -55464
  %i.eq = inttoptr i64 %i.ep to ptr
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  call void @_ZN2v88internal10StackGuard16RequestInterruptENS1_13InterruptFlagE(ptr noundef nonnull align 8 dereferenceable(64) %i.er, i32 noundef 32) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.es = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 246), align 2, !range !8, !noundef !9
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.w, label %bb.aa, !prof !5

bb.w:                                             ; preds = %bb.v
  %i.eu = icmp sgt i32 %.034.lcssa, 0
  %i.ev = icmp sgt i32 %.0.lcssa, 0
  %or.cond = select i1 %i.eu, i1 true, i1 %i.ev
  %i.ew = icmp sgt i32 %.032.lcssa, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ew
  br i1 %or.cond3, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ex = load ptr, ptr %0, align 8
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = add i64 %i.ey, -55464
  %i.fa = inttoptr i64 %i.ez to ptr
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1754), align 2, !range !8, !noundef !9
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.y, label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit

bb.y:                                             ; preds = %bb.x
  %i.fd = icmp ult i64 %1, 16777217
  br i1 %i.fd, label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fe = uitofp i64 %1 to double
  %i.ff = fdiv double f0x416999999999999A, %i.fe
  br label %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit

_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit: ; preds = %bb.x, %bb.y, %bb.z
  %.0.i40 = phi double [ 8.500000e-01, %bb.x ], [ %i.ff, %bb.z ], [ 8.000000e-01, %bb.y ]
  %not..not39 = xor i1 %.not39, true
  %i.fg = zext i1 %not..not39 to i32
  %i.fh = load i32, ptr %i.b, align 4
  call void (ptr, ptr, ...) @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef %i.fa, ptr noundef nonnull @.str, double noundef %.0.i40, i32 noundef %i.fg, i32 noundef %i.fh, i32 noundef %.036.lcssa, i32 noundef %.034.lcssa, i32 noundef %.0.lcssa, i32 noundef %.032.lcssa) #14
  br label %bb.aa

bb.aa:                                            ; preds = %bb.w, %_ZN2v88internal12_GLOBAL__N_128GetPretenuringRatioThresholdEm.exit, %bb.v
  %i.fi = load ptr, ptr %i.n, align 8             ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not5.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aa, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.fj, %.lr.ph.i.i.i ], [ %i.fi, %bb.aa ] ; 2 uses
  %i.fj = load ptr, ptr %.06.i.i.i, align 8       ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 32) #17
  %.not.i.i.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i.i, label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit, label %.lr.ph.i.i.i, !llvm.loop !6

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit: ; preds = %.lr.ph.i.i.i, %bb.aa
  %i.fk = load ptr, ptr %i.m, align 8
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = shl i64 %i.fm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.fk, i8 0, i64 %i.fn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.fp = load float, ptr %i.fo, align 8
  %i.fq = fpext float %i.fp to double
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %4 = load i64, ptr %3, align 8
  %5 = insertelement <2 x double> poison, double %i.fq, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> <double 2.560000e+02, double 1.000000e+00>, %6 ; 2 uses
  %8 = extractelement <2 x double> %7, i64 0
  %9 = call double @llvm.ceil.f64(double %8)
  %10 = fptoui double %9 to i64
  %11 = extractelement <2 x double> %7, i64 1
  %i.fr = call double @llvm.ceil.f64(double %11)
  %i.fs = fptoui double %i.fr to i64
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %10, i64 %i.fs)
  %i.ft = call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, i64 noundef %.sroa.speculated.i.i.i) #14 ; 2 uses
  %i.fu = load i64, ptr %i.fl, align 8
  %.not.i.i.i41 = icmp eq i64 %i.ft, %i.fu
  br i1 %.not.i.i.i41, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit
  call void @_ZNSt10_HashtableIN2v88internal6TaggedINS1_14AllocationSiteEEESt4pairIKS4_mESaIS7_ENSt8__detail10_Select1stESt8equal_toIS4_ENS1_6Object6HasherENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.m, i64 noundef %i.ft)
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit

bb.ac:                                            ; preds = %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE5clearEv.exit
  store i64 %4, ptr %3, align 8
  br label %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit

_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit: ; preds = %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %_ZNSt13unordered_mapIN2v88internal6TaggedINS1_14AllocationSiteEEEmNS1_6Object6HasherESt8equal_toIS4_ESaISt4pairIKS4_mEEE7reserveEm.exit
  ret void
}

declare noundef zeroext i8 @_ZNK2v88internal14AllocationSite17GetAllocationTypeEv(ptr noundef nonnull align 4 dereferenceable(40)) local_unnamed_addr #3

declare noundef i64 @_ZNK2v88internal4Heap22NewSpaceTargetCapacityEv(ptr noundef nonnull align 8 dereferenceable(2992)) local_unnamed_addr #3

declare void @_ZN2v88internal4Heap21ForeachAllocationSiteENS0_6TaggedINS0_6ObjectEEERKSt8functionIFvNS2_INS0_14AllocationSiteEEEEE(ptr noundef nonnull align 8 dereferenceable(2992), i64, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN2v88internal12PrintIsolateEPvPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler39PretenureAllocationSiteOnNextCollectionENS0_6TaggedINS0_14AllocationSiteEEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.b

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.a
  %i.c = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 4 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr %i.c, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, %bb.a
  %i.g = phi ptr [ %i.c, %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit ], [ %i.b, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %.not.i.i2 = icmp eq ptr %i.i, %i.k
  br i1 %.not.i.i2, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %1, ptr %i.i, align 8
  %i.l = load ptr, ptr %i.h, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.m, ptr %i.h, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_14AllocationSiteEE4PushENS0_6TaggedIS2_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 7 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 4 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #15
  unreachable

_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = tail call noundef ptr @_ZN2v88internal23StrongRootAllocatorBase13allocate_implEm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.x) #14 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  store i64 %1, ptr %i.z, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.o, %i.i
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aa = ptrtoaddr ptr %i.y to i64
  %i.ab = sub i64 %i.p, %i.q
  %i.ac = add i64 %i.ab, -8                       ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ac, 72
  %i.af = sub i64 %i.q, %i.aa
  %diff.check = icmp ugt i64 %i.af, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.y, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.aj ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.o, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.ak = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !alias.scope !15, !noalias !12
  %wide.load7 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !15, !noalias !12
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !12, !noalias !15
  store <2 x i64> %wide.load7, ptr %i.al, align 8, !alias.scope !12, !noalias !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader9

.lr.ph.i.i.i.i.i.i.preheader9:                    ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader9, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader9 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !15, !noalias !12
  store i64 %i.an, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !12, !noalias !15
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !20

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.y, %_ZNKSt6vectorImN2v88internal19StrongRootAllocatorImEEE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  %i.ar = load ptr, ptr %i.j, align 8
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull %i.o, i64 noundef %i.au) #14
  br label %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i

_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE11_S_relocateEPmS5_S5_RS3_.exit22.i.i.i
  store ptr %i.y, ptr %i.n, align 8
  store ptr %i.aq, ptr %i.h, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.x
  store ptr %i.av, ptr %i.j, align 8
  br label %_ZN2v88internal18GlobalHandleVectorINS0_14AllocationSiteEE4PushENS0_6TaggedIS2_EE.exit

_ZN2v88internal18GlobalHandleVectorINS0_14AllocationSiteEE4PushENS0_6TaggedIS2_EE.exit: ; preds = %bb.c, %_ZNSt6vectorImN2v88internal19StrongRootAllocatorImEEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS4_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal18PretenuringHandler5resetEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  tail call void @_ZN2v88internal23StrongRootAllocatorBase15deallocate_implEPmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull %i.d, i64 noundef %i.j) #14
  br label %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i.i

_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 32) #17
  br label %_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit

_ZNSt10unique_ptrIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEESt14default_deleteIS4_EE5resetEPS4_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal18GlobalHandleVectorINS1_14AllocationSiteEEEEclEPS4_.exit.i.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
