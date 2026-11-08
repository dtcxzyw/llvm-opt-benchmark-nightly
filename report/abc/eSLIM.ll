Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/eSLIM?download=true
inline.NumInlined: 16391
inline.NumDeleted: 1852
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumUnrolled: 150
begin_hunk_0_@_ZN5eSLIM8eSLIMLogD2Ev:bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !154 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !155
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit12, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

declare void @_ZNSt6thread4joinEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !278
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !282, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !285, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !282, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !278, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !282, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !285, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !285, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !282
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !285, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !1425

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_0
begin_hunk_1_@_ZN5eSLIM9WindowManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.161", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !361
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !362, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !362, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !361, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !362, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !362
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !363, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !1586

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_1
begin_hunk_2_@_ZN5eSLIM9WindowManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.169", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !392
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !393, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !394, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !393, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !392, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !393, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !394, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !394, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !393
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !394, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !1719

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !1719

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_2
begin_hunk_3_@_ZN5eSLIM9WindowManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.177", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !423
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !424, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !424, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !423, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !424, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !424
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !425, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !1852

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_3
begin_hunk_4_@_ZN5eSLIM9WindowManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.186", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !454
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !455, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !456, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !455, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !454, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !455, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !456, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !456, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !455
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !456, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !1987

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_4
begin_hunk_5_@_ZN5eSLIM9WindowManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.194", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !483
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !484, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !485, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !484, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !483, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_13AreaMinimizerENS_22RandomizedBFSSelectionINS_19SubcircuitValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !484, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !485, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !485, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !484
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !485, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !2120

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !2120

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_5
begin_hunk_6_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.213", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !574
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !575, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !576, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !575, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !574, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !575, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !576, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !576, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !575
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !576, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !2542

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_6
begin_hunk_7_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.219", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !601
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !602, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !602, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !601, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !602, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !602
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !603, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !2682

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_7
begin_hunk_8_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.225", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !628
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !629, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !630, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !629, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !628, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !629, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !630, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !630, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !629
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !630, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !2820

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !2820

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_8
begin_hunk_9_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.231", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !655
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !656, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !657, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !656, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !655, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !656, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !657, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !657, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !656
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !657, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !2958

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_9
begin_hunk_10_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.237", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !682
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !683, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !684, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !683, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !682, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !683, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !684, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !684, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !683
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !684, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !3098

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_10
begin_hunk_11_@_ZN5eSLIM9WindowManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.243", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !709
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !710, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !711, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !710, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !709, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_28AreaDelayConstraintMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !710, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !711, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !711, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !710
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !711, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !3236

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !3236

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_11
begin_hunk_12_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.262", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !798
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !798, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !799, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !799
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !800, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !3661

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_12
begin_hunk_13_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.269", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !824
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !825, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !826, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !825, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !824, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !825, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !826, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !826, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !825
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !826, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !3792

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_13
begin_hunk_14_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.276", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !850
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !851, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !852, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !851, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !850, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !851, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !852, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !852, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !851
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !852, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !3922

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !3922

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_14
begin_hunk_15_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.283", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !876
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !877, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !877, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !876, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !877, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !877
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !878, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !4052

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_15
begin_hunk_16_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.290", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !902
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !903, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !904, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !903, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !902, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !903, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !904, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !904, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !903
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !904, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !4182

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_16
begin_hunk_17_@_ZN5eSLIM9WindowManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.297", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !928
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !929, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !930, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !929, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !928, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_18AreaDelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !929, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !930, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !930, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !929
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !930, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !4312

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !4312

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_17
begin_hunk_18_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.316", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !1014
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1015, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1016, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1015, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !1014, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_13ForwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !1015, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !1016, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1016, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1015
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !1016, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !4730

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_18
begin_hunk_19_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.323", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !1041
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1042, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1043, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1042, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !1041, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !1042, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !1043, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1043, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1042
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !1043, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !4860

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_19
begin_hunk_20_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.330", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !1067
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1068, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1069, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1068, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !1067, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_13ForwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !1068, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1069, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1069, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1068
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1069, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !4990

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !4990

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_20
begin_hunk_21_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.337", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !1093
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1094, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1095, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1094, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !1093, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_20CriticalPathSelectorENS_14BackwardSearchENS_24CriticalPathBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !1094, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !1095, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1095, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1094
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !1095, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !5120

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_21
begin_hunk_22_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.344", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %3, ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2)
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan19unregisterTabooListEv(ptr noundef nonnull align 8 dereferenceable(56) %i.b) #23
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList19eSLIMCirObjCompBaseESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS0_9TabooList15eSLIMCirObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(5217) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(124) %2, ptr noundef nonnull align 8 dereferenceable(296) %3) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.f, align 8, !tbaa !63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN5eSLIM9TabooListC2ERKNS_11eSLIMCirManE(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %1)
  tail call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.g) #23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %1, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded11 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i
  %i.k = lshr i64 %store_forwarded11, 30
  %i.l = xor i64 %i.k, %store_forwarded11
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i          ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i, 1         ; 3 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 5176
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5184
  store ptr %2, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 5192
  store ptr %3, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 5216
  store i8 0, ptr %i.ag, align 8, !tbaa !1119
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i            ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i, 1            ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 5200
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5217) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5184 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1120, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1121, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1120, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5216
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.aq, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.db, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.aq, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.ah = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = load i64, ptr %3, align 8, !tbaa !280
  %i.ak = mul nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr %i.z, align 8, !tbaa !281
  %i.am = sdiv i64 %i.al, 1000
  %i.an = add nsw i64 %i.am, %i.ak
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.an, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.ao = load i8, ptr %i.y, align 8, !tbaa !1119, !range !152, !noundef !66
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_17TabooRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5217) %0)
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !1120, !nonnull !66, !align !67 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i8, ptr %i.as, align 8, !tbaa !60, !range !152, !noundef !66
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !38
  %i.ax = urem i32 %i.aq, %i.aw
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %0, align 8, !tbaa !1121, !nonnull !66, !align !67
  %i.ba = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.az) #23 ; 2 uses
  %i.bb = call ptr @Gia_ManRehash(ptr noundef %i.ba, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ba) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.bb) #23
  %i.bc = load ptr, ptr %0, align 8, !tbaa !1121, !nonnull !66, !align !67 ; 5 uses
  %i.bd = load i64, ptr %5, align 8
  store i64 %i.bd, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !94 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bk, ptr %i.be, align 8, !tbaa !97
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bf, %i.bh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bx, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bf, %bb.h ] ; 2 uses
  %i.bm = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef %i.bp)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !109
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bw) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bx, %i.bh
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.by = ptrtoint ptr %i.bj to i64
  %i.bz = ptrtoint ptr %i.bf to i64
  %i.ca = sub i64 %i.by, %i.bz
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.ca) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.cc = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cc, %i.cd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cp, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.ce = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cf, ptr noundef %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !109
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cj to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cj, i64 noundef %i.co) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cp, %i.cd
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.cq = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.cc, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cr = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cs = ptrtoint ptr %i.cr to i64
  %i.ct = ptrtoint ptr %i.cq to i64
  %i.cu = sub i64 %i.cs, %i.ct
  call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cu) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.bb) #23
  call void @_ZN5eSLIM9TabooList5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.af)
  %i.cv = load ptr, ptr %i.ae, align 8, !tbaa !269, !nonnull !66, !align !67
  call void @_ZN5eSLIM11eSLIMCirMan17registerTabooListEPNS_9TabooListE(ptr noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noundef nonnull %i.af) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1120
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.cw = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ar, %bb.g ], [ %i.ar, %bb.f ]
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !44
  %i.cz = icmp sgt i32 %i.cy, 0
  br i1 %i.cz, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %0, align 8, !tbaa !1121, !nonnull !66, !align !67
  %i.db = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.da) #23 ; 3 uses
  %i.dc = icmp slt i32 %i.db, %.0.ph
  br i1 %i.dc, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.dd = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.de = icmp slt i32 %i.dd, 0
  br i1 %i.de, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.df = load i64, ptr %2, align 8, !tbaa !280
  %i.dg = mul nsw i64 %i.df, 1000000
  %i.dh = load i64, ptr %i.ag, align 8, !tbaa !281
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.dg
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dk = sub nsw i64 %.0.i30, %.0.i
  %i.dl = sitofp i64 %i.dk to float
  %i.dm = fdiv float %i.dl, 1.000000e+06
  %i.dn = fpext float %i.dm to double
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.aq, ptr noundef nonnull %i.x, i32 noundef %i.db, double noundef %i.dn) ; 0 uses
  br label %.outer, !llvm.loop !5250

bb.s:                                             ; preds = %bb.p
  %i.dp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.aq) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
end_hunk_22
begin_hunk_23_@_ZN5eSLIM9WindowManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE13computeWindowERKSt6vectorIiSaIiEEii:bb.a
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.cu, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.cv = shl nuw nsw i64 %i.cu, 2
  %i.cw = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #28 ; 4 uses
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.co ; 2 uses
  store i32 %storemerge, ptr %i.cx, align 4, !tbaa !34
  %i.cy = icmp sgt i64 %i.co, 0
  br i1 %i.cy, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

bb.u:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cw, ptr align 4 %i.cl, i64 %i.co, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20: ; preds = %bb.u, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i17
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.not.i17.i.i21 = icmp eq ptr %i.cl, null
  br i1 %.not.i17.i.i21, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !155
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = sub i64 %i.db, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.dc) #24
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i20
  store ptr %i.cw, ptr %i.cf, align 8, !tbaa !154
  store ptr %i.cz, ptr %i.cg, align 8, !tbaa !156
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cu
  store ptr %i.dd, ptr %i.ci, align 8, !tbaa !155
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit23

_ZNSt6vectorIiSaIiEE9push_backERKi.exit23:        ; preds = %bb.r, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i22
  call void @_ZN5eSLIM10SubcircuitD2Ev(ptr noundef nonnull align 8 dead_on_return(176) dereferenceable(176) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE10applyeSLIMERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr noundef nonnull align 8 dereferenceable(296) %2) #3 comdat align 2 {
bb.a:
  %3 = alloca %"class.eSLIM::eSLIM_Man.351", align 8 ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  store ptr %0, ptr %3, align 8, !tbaa !183
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %0, ptr %i.a, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !184
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.e, align 8, !tbaa !183
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !233
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 -1, ptr %i.g, align 8, !tbaa !234
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr %0, ptr %i.h, align 8, !tbaa !183
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 72 ; 6 uses
  store i64 5489, ptr %i.i, align 8, !tbaa !159
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %store_forwarded4 = phi i64 [ 5489, %bb.a ], [ %i.v, %bb.c ] ; 2 uses
  %.011.i.i.i.i.i = phi i64 [ 1, %bb.a ], [ %i.w, %bb.c ] ; 4 uses
  %i.j = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i
  %i.k = lshr i64 %store_forwarded4, 30
  %i.l = xor i64 %i.k, %store_forwarded4
  %i.m = mul nuw nsw i64 %i.l, 1812433253
  %i.n = add nuw i64 %i.m, %.011.i.i.i.i.i        ; 2 uses
  %i.o = and i64 %i.n, 4294967295                 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !tbaa !159
  %i.p = add nuw nsw i64 %.011.i.i.i.i.i, 1       ; 3 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, 624
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr [8 x i8], ptr %i.i, i64 %i.p
  %i.r = lshr i64 %i.o, 30
  %i.s = xor i64 %i.r, %i.n
  %i.t = mul i64 %i.s, 1812433253
  %i.u = add i64 %i.t, %i.p
  %i.v = and i64 %i.u, 4294967295                 ; 2 uses
  store i64 %i.v, ptr %i.q, align 8, !tbaa !159
  %i.w = add nuw nsw i64 %.011.i.i.i.i.i, 2
  br label %bb.b

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i: ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 5064 ; 2 uses
  store i64 624, ptr %i.x, align 8, !tbaa !185
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5072
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aa = load double, ptr %i.z, align 8, !tbaa !46 ; 2 uses
  store double %i.aa, ptr %i.y, align 8, !tbaa !271
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 5080
  %i.ac = fmul double %i.aa, 1.500000e+00         ; 2 uses
  %i.ad = fcmp olt double %i.ac, 1.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ad, double %i.ac, double 1.000000e+00
  store double %.sroa.speculated.i.i, ptr %i.ab, align 8, !tbaa !271
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 5088
  store ptr %1, ptr %i.ae, align 8, !tbaa !63
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 5096
  store ptr %2, ptr %i.af, align 8, !tbaa !184
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 5120
  store i8 0, ptr %i.ag, align 8, !tbaa !1145
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !186, !range !152, !noundef !66
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

bb.d:                                             ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !42
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  store i64 %i.am, ptr %i.i, align 8, !tbaa !159
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %store_forwarded = phi i64 [ %i.am, %bb.d ], [ %i.az, %bb.f ] ; 2 uses
  %.011.i.i.i = phi i64 [ 1, %bb.d ], [ %i.ba, %bb.f ] ; 4 uses
  %i.an = getelementptr [8 x i8], ptr %i.i, i64 %.011.i.i.i
  %i.ao = lshr i64 %store_forwarded, 30
  %i.ap = xor i64 %i.ao, %store_forwarded
  %i.aq = mul nuw nsw i64 %i.ap, 1812433253
  %i.ar = add nuw i64 %i.aq, %.011.i.i.i          ; 2 uses
  %i.as = and i64 %i.ar, 4294967295               ; 2 uses
  store i64 %i.as, ptr %i.an, align 8, !tbaa !159
  %i.at = add nuw nsw i64 %.011.i.i.i, 1          ; 3 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, 624
  br i1 %exitcond.not.i.i.i, label %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.i, i64 %i.at
  %i.av = lshr i64 %i.as, 30
  %i.aw = xor i64 %i.av, %i.ar
  %i.ax = mul i64 %i.aw, 1812433253
  %i.ay = add i64 %i.ax, %i.at
  %i.az = and i64 %i.ay, 4294967295               ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !159
  %i.ba = add nuw nsw i64 %.011.i.i.i, 2
  br label %bb.e

_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i: ; preds = %bb.e
  store i64 624, ptr %i.x, align 8, !tbaa !185
  br label %_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit

_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit: ; preds = %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEC2ERNS_11eSLIMCirManERKNS_11eSLIMConfigERNS_8eSLIMLogE.exit.i, %_ZN5eSLIM22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEE7setSeedEi.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 5104
  %i.bd = load <2 x double>, ptr %i.bb, align 8, !tbaa !163
  store <2 x double> %i.bd, ptr %i.bc, align 8, !tbaa !163
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE8optimizeEv(ptr noundef nonnull align 8 dereferenceable(5121) %0) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %"class.eSLIM::eSLIMCirMan", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #23
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %_ZL9Abc_Clockv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !280
  %i.d = mul nsw i64 %i.c, 1000000
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !281
  %i.g = sdiv i64 %i.f, 1000
  %i.h = add nsw i64 %i.g, %i.d
  br label %_ZL9Abc_Clockv.exit

_ZL9Abc_Clockv.exit:                              ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.h, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5088 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1146, !nonnull !66, !align !67 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !283
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 1000000
  %i.o = add nsw i64 %i.n, %.0.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !284
  %i.r = add i32 %i.q, -1
  %i.s = load ptr, ptr %0, align 8, !tbaa !1147, !nonnull !66, !align !67
  %i.t = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.s) #23
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !1146, !nonnull !66, !align !67
  %i.v = load i8, ptr %i.u, align 8, !tbaa !56, !range !152, !noundef !66
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = select i1 %i.w, ptr @.str.24, ptr @.str.25 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %.outer

.outer:                                           ; preds = %_ZL9Abc_Clockv.exit31, %_ZL9Abc_Clockv.exit
  %.023.ph = phi i32 [ %i.ao, %_ZL9Abc_Clockv.exit31 ], [ 0, %_ZL9Abc_Clockv.exit ]
  %.0.ph = phi i32 [ %i.cy, %_ZL9Abc_Clockv.exit31 ], [ %i.t, %_ZL9Abc_Clockv.exit ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.023 = phi i32 [ %.023.ph, %.outer ], [ %i.ao, %.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #23
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %_ZL9Abc_Clockv.exit29, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load i64, ptr %3, align 8, !tbaa !280
  %i.ai = mul nsw i64 %i.ah, 1000000
  %i.aj = load i64, ptr %i.z, align 8, !tbaa !281
  %i.ak = sdiv i64 %i.aj, 1000
  %i.al = add nsw i64 %i.ak, %i.ai
  br label %_ZL9Abc_Clockv.exit29

_ZL9Abc_Clockv.exit29:                            ; preds = %bb.c, %bb.d
  %.0.i28 = phi i64 [ %i.al, %bb.d ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %.not26 = icmp sgt i64 %.0.i28, %i.o
  %.not27 = icmp ugt i32 %.023, %i.r
  %or.cond = select i1 %.not26, i1 true, i1 %.not27
  br i1 %or.cond, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZL9Abc_Clockv.exit29
  %i.am = load i8, ptr %i.y, align 8, !tbaa !1145, !range !152, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = add i32 %.023, 1                        ; 5 uses
  call void @_ZN5eSLIM9eSLIM_ManINS_14DelayMinimizerENS_22RandomizedBFSSelectionINS_23SubcircuitNoFBValidatorENS_16BaseRootSelectorENS_14BackwardSearchENS_14NoBiasSelectorENS_27BaseCandidateNodeConstraintEEEE15findReplacementEv(ptr noundef nonnull align 8 dereferenceable(5121) %0)
  %i.ap = load ptr, ptr %i.i, align 8, !tbaa !1146, !nonnull !66, !align !67 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !60, !range !152, !noundef !66
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !38
  %i.av = urem i32 %i.ao, %i.au
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g
  %i.ax = load ptr, ptr %0, align 8, !tbaa !1147, !nonnull !66, !align !67
  %i.ay = call noundef ptr @_ZN5eSLIM11eSLIMCirMan16eSLIMCirManToGiaEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ax) #23 ; 2 uses
  %i.az = call ptr @Gia_ManRehash(ptr noundef %i.ay, i32 noundef 0) #23 ; 2 uses
  call void @Gia_ManStop(ptr noundef %i.ay) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN5eSLIM11eSLIMCirManC1EP10Gia_Man_t_(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef %i.az) #23
  %i.ba = load ptr, ptr %0, align 8, !tbaa !1147, !nonnull !66, !align !67 ; 5 uses
  %i.bb = load i64, ptr %5, align 8
  store i64 %i.bb, ptr %i.ba, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !94 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !95 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !96
  %i.bi = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !97
  store <2 x ptr> %i.bi, ptr %i.bc, align 8, !tbaa !97
  %i.bj = load ptr, ptr %i.ac, align 8, !tbaa !96
  store ptr %i.bj, ptr %i.bg, align 8, !tbaa !96
  %.not4.i.i.i.i34 = icmp eq ptr %i.bd, %i.bf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i34, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35

.lr.ph.i.i.i.i35:                                 ; preds = %bb.h, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40
  %.05.i.i.i.i36 = phi ptr [ %i.bv, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40 ], [ %i.bd, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.05.i.i.i.i36, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i37 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i37, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i38, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !109
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39: ; preds = %bb.j, %bb.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i39, %.lr.ph.i.i.i.i35
  %i.bv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i36, i64 8 ; 2 uses
  %.not.i.i.i.i41 = icmp eq ptr %i.bv, %i.bf
  br i1 %.not.i.i.i.i41, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, label %.lr.ph.i.i.i.i35, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i40, %bb.h
  %.not.i.i1.i.i43 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i1.i.i43, label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42
  %i.bw = ptrtoint ptr %i.bh to i64
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.by) #24
  br label %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit

_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i42, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %i.ca = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 3 uses
  %i.cb = load ptr, ptr %i.ab, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ca, %i.cb
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cn, %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 2 uses
  %i.cc = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 48
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !104
  call void @_ZNSt8_Rb_treeIPN5eSLIM11eSLIMCirObjES2_St9_IdentityIS2_ENS1_12eSLIMObjCompESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !108 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !109
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ch to i64
  %i.cm = sub i64 %i.ck, %i.cl
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef %i.cm) #24
  br label %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef 128) #24
  br label %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5eSLIM11eSLIMCirObjEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cn, %i.cb
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.aa, align 8, !tbaa !94
  br label %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit
  %i.co = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exitthread-pre-split.i.i ], [ %i.ca, %_ZNSt6vectorISt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EESaIS5_EE14_M_move_assignEOS7_St17integral_constantIbLb1EE.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i1.i.i, label %_ZN5eSLIM11eSLIMCirManD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !96
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = ptrtoint ptr %i.co to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.co, i64 noundef %i.cs) #24
  br label %_ZN5eSLIM11eSLIMCirManD2Ev.exit

_ZN5eSLIM11eSLIMCirManD2Ev.exit:                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN5eSLIM11eSLIMCirObjESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @Gia_ManStop(ptr noundef %i.az) #23
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !1146
  br label %bb.o

bb.o:                                             ; preds = %_ZN5eSLIM11eSLIMCirManD2Ev.exit, %bb.g, %bb.f
  %i.ct = phi ptr [ %.pre, %_ZN5eSLIM11eSLIMCirManD2Ev.exit ], [ %i.ap, %bb.g ], [ %i.ap, %bb.f ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 120
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !44
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.p, label %.backedge

bb.p:                                             ; preds = %bb.o
  %i.cx = load ptr, ptr %0, align 8, !tbaa !1147, !nonnull !66, !align !67
  %i.cy = call noundef i32 @_ZNK5eSLIM11eSLIMCirMan11getNofGatesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.cx) #23 ; 3 uses
  %i.cz = icmp slt i32 %i.cy, %.0.ph
  br i1 %i.cz, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.da = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #23
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %_ZL9Abc_Clockv.exit31, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i64, ptr %2, align 8, !tbaa !280
  %i.dd = mul nsw i64 %i.dc, 1000000
  %i.de = load i64, ptr %i.ae, align 8, !tbaa !281
  %i.df = sdiv i64 %i.de, 1000
  %i.dg = add nsw i64 %i.df, %i.dd
  br label %_ZL9Abc_Clockv.exit31

_ZL9Abc_Clockv.exit31:                            ; preds = %bb.q, %bb.r
  %.0.i30 = phi i64 [ %i.dg, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.dh = sub nsw i64 %.0.i30, %.0.i
  %i.di = sitofp i64 %i.dh to float
  %i.dj = fdiv float %i.di, 1.000000e+06
  %i.dk = fpext float %i.dj to double
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.ao, ptr noundef nonnull %i.x, i32 noundef %i.cy, double noundef %i.dk) ; 0 uses
  br label %.outer, !llvm.loop !5380

bb.s:                                             ; preds = %bb.p
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %i.ao) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !112
  %i.do = call i32 @fflush(ptr noundef %i.dn)     ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.s, %bb.o
  br label %bb.c, !llvm.loop !5380

.critedge:                                        ; preds = %_ZL9Abc_Clockv.exit29, %bb.e
end_hunk_23
