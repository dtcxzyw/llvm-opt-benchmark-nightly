inline.NumInlined: 209
inline.NumDeleted: 154
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes26createSimpleStackPromotionEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIZN6hermes26createSimpleStackPromotionEvE8ThisPassSt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #7, !noalias !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !10, !noalias !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@_ZN6hermes4PassD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPassD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #8
  ret void
}

end_hunk_1
begin_hunk_2_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not266.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph10.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.05.i.i = phi i8 [ %.1.i.i, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ 0, %bb.b ]
  %.0244.i.i = phi ptr [ %i.ey, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.0244.i.i, align 8, !tbaa !73 ; 9 uses
  %i.w = call noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef %i.v) #9 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

end_hunk_2
begin_hunk_3_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store ptr %i.c, ptr %5, align 8, !tbaa !71
  store i32 0, ptr %i.d, align 8, !tbaa !72
  store i32 8, ptr %i.e, align 4, !tbaa !75
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.al, label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.ak) #9
  br label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.am) #9
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.w) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i

end_hunk_6
begin_hunk_7_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.i:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82 ; 4 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %6 = zext i32 %i.bj to i64
  %.idx.i27.i.i = shl nuw nsw i64 %6, 3
  %7 = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i27.i.i
  %.not3746.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not3746.i.i.i, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, label %.lr.ph.i28.i.i.epil.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %.lr.ph.i28.i.i
  %8 = trunc nuw i8 %.134.i.i.i to i1
  %9 = xor i1 %8, true
  %10 = trunc nuw i8 %.1.i.i.i to i1
  %11 = select i1 %9, i1 %10, i1 false
  br i1 %11, label %bb.j, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %bb.i, %.lr.ph.i28.i.i
  %.03249.i.i.i = phi i8 [ %.1.i.i.i, %.lr.ph.i28.i.i ], [ 0, %bb.i ] ; 2 uses
  %.03348.i.i.i = phi i8 [ %.134.i.i.i, %.lr.ph.i28.i.i ], [ 0, %bb.i ] ; 2 uses
  %.03647.i.i.i.epil.init = phi ptr [ %i.bs, %.lr.ph.i28.i.i ], [ %i.bh, %bb.i ] ; 2 uses
  %i.bk = load ptr, ptr %.03647.i.i.i.epil.init, align 8, !tbaa !76 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !95
end_hunk_7
begin_hunk_8_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.bp = icmp eq ptr %i.bo, %i.bf                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !74
  %12 = icmp eq i8 %i.br, 49
  br i1 %12, label %13, label %._crit_edge.i29.i.i

13:                                               ; preds = %.lr.ph.i28.i.i.epil.preheader
  %14 = trunc nuw i8 %.03249.i.i.i to i1
  %15 = or i1 %i.bp, %14
  %16 = zext i1 %15 to i8
  br label %.lr.ph.i28.i.i

._crit_edge.i29.i.i:                              ; preds = %.lr.ph.i28.i.i.epil.preheader
  %17 = xor i1 %i.bp, true
  %18 = trunc nuw i8 %.03348.i.i.i to i1
  %19 = or i1 %18, %17
  %20 = zext i1 %19 to i8
  br label %.lr.ph.i28.i.i

.lr.ph.i28.i.i:                                   ; preds = %._crit_edge.i29.i.i, %13
  %.134.i.i.i = phi i8 [ %.03348.i.i.i, %13 ], [ %20, %._crit_edge.i29.i.i ] ; 2 uses
  %.1.i.i.i = phi i8 [ %16, %13 ], [ %.03249.i.i.i, %._crit_edge.i29.i.i ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.03647.i.i.i.epil.init, i64 8 ; 2 uses
  %niter.ncmp.1 = icmp eq ptr %i.bs, %7
  br i1 %niter.ncmp.1, label %.lr.ph.i28.i.i.preheader, label %.lr.ph.i28.i.i.epil.preheader

bb.j:                                             ; preds = %.lr.ph.i28.i.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !114
  store ptr %i.bu, ptr %3, align 8, !tbaa !115
end_hunk_8
begin_hunk_9_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.by) #9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !119
  %i.ca = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.g, ptr %4, align 8, !tbaa !71
  store i32 0, ptr %i.h, align 8, !tbaa !72
  store i32 8, ptr %i.i, align 4, !tbaa !75
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !72 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.cm, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i37.i.i
  call void @free(ptr noundef %i.cl) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %._crit_edge55.i.i.i, %.lr.ph.i.i32.i.i
  %.09.i.i33.i.i = phi ptr [ %i.co, %.lr.ph.i.i32.i.i ], [ %i.ch, %._crit_edge55.i.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.09.i.i33.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cn) #9
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i33.i.i, i64 8 ; 2 uses
  %.not.i.i34.i.i = icmp eq ptr %i.co, %i.ck
  br i1 %.not.i.i34.i.i, label %._crit_edge.loopexit.i.i35.i.i, label %.lr.ph.i.i32.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i: ; preds = %bb.k, %._crit_edge.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.j, %bb.p
end_hunk_10
begin_hunk_11_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.cx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #9
  %i.cy = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.ca) #9 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %spec.select.i.i.i = select i1 %i.cz, ptr null, ptr %i.da
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef %spec.select.i.i.i) #9
  %i.db = load i32, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !75
  %.not.i.i.i39.i.i = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i.i.i39.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i40.i.i = load i32, ptr %i.h, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i

end_hunk_11
begin_hunk_12_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph54.i.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #9
  %i.dk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.cp, i32 noundef 0) #9
  %i.dl = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.dk, ptr noundef %i.ca) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, %bb.l
end_hunk_12
begin_hunk_13_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %.not38.i.i.i = icmp eq ptr %i.dm, %i.cg
  br i1 %.not38.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i: ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, %.lr.ph.i28.i.i.preheader, %bb.i
  %.033.lcssa60.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i ], [ false, %.lr.ph.i28.i.i.preheader ], [ false, %bb.i ]
  %21 = trunc nuw i8 %.05.i.i to i1
  %22 = or i1 %.033.lcssa60.i.i.i, %21            ; 2 uses
  %i.dn = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9
  br i1 %i.dn, label %bb.q, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !71 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !74
  %i.dy = icmp eq i8 %i.dx, 51
  br i1 %i.dy, label %bb.r, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

._crit_edge.i45.i.i:                              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.j, ptr %2, align 8, !tbaa !71
  store i32 0, ptr %i.k, align 8, !tbaa !72
  store i32 8, ptr %i.l, align 4, !tbaa !75
  %i.dz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #9 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.ek, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i56.i.i
  call void @free(ptr noundef %i.ej) #9
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i51.i.i
  %.09.i.i52.i.i = phi ptr [ %i.em, %.lr.ph.i.i51.i.i ], [ %i.eg, %._crit_edge30.i.i.i ] ; 2 uses
  %i.el = load ptr, ptr %.09.i.i52.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.el) #9
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i52.i.i, i64 8 ; 2 uses
  %.not.i.i53.i.i = icmp eq ptr %i.em, %i.ei
  br i1 %.not.i.i53.i.i, label %._crit_edge.loopexit.i.i54.i.i, label %.lr.ph.i.i51.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i: ; preds = %bb.s, %._crit_edge.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i

.lr.ph29.i.i.i:                                   ; preds = %._crit_edge.i45.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i
  %i.en = phi i32 [ %i.ew, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %.pre32.i.i.i, %._crit_edge.i45.i.i ] ; 2 uses
end_hunk_15
begin_hunk_16_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i46.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, label %bb.t, !prof !78

bb.t:                                             ; preds = %.lr.ph29.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 8) #9
  %.pre.i.i.i47.i.i = load i32, ptr %i.k, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i

end_hunk_16
begin_hunk_17_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %.not22.i.i.i = icmp eq ptr %i.ex, %i.ee
  br i1 %.not22.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i: ; preds = %.lr.ph.i43.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %.3.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i ], [ %22, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i ], [ %22, %.lr.ph.i43.i.i ]
  %23 = zext i1 %.3.i.i.i to i8
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a: ; preds = %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i
  %.1.i.i = phi i8 [ %23, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i ], [ 1, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0244.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ey, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i
end_hunk_17
begin_hunk_18_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.lr.ph10.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ag
  %.28.i.i = phi i8 [ %.3.i.i, %bb.ag ], [ %.1.i.i, %._crit_edge.i.i ]
  %.0257.i.i = phi ptr [ %i.fu, %bb.ag ], [ %.pre.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.fr = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  %i.fs = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) #9
  br i1 %i.fs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph10.i.i
  %i.ft = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef %i.ft) #9
  store ptr null, ptr %.0257.i.i, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph10.i.i
  %.3.i.i = phi i8 [ %.28.i.i, %.lr.ph10.i.i ], [ 1, %bb.af ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 8 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.fu, %i.u
  br i1 %.not26.i.i, label %._crit_edge11.i.i, label %.lr.ph10.i.i

_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i: ; preds = %bb.ae, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i, %bb.b
  %.2.lcssa56.i.i = phi i8 [ %.3.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.3.i.i, %bb.ac ], [ %.3.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %bb.b ], [ %.1.i.i, %._crit_edge.i.i ], [ %.3.i.i, %bb.ae ]
  %.val.i53.i.i = phi ptr [ %.val.i.pre.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.val.i.pre.i.i, %bb.ac ], [ %.val.i.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.val.i.pre.i.i, %bb.ae ]
  %.016.i.i.i.i.i.i = phi ptr [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %i.fa, %bb.ac ], [ %i.fa, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.1.i.i.i.i.i.i, %bb.ae ]
  %i.fv = ptrtoint ptr %.016.i.i.i.i.i.i to i64
end_hunk_18
begin_hunk_19_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  store i32 %i.fz, ptr %i.p, align 8, !tbaa !72
  %24 = trunc nuw i8 %.2.lcssa56.i.i to i1
  %i.ga = or i1 %.019.i, %24                      ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.gb, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %i.b
end_hunk_19
begin_hunk_20_@llvm.memset.p0.i64

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_20
begin_hunk_21_@llvm.assume/@_ZNK6hermes11Instruction10getOperandEj
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { builtin nounwind allocsize(0) }
attributes #8 = { builtin nounwind }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_21
