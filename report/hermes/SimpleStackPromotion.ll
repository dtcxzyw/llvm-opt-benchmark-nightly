inline.NumInlined: 209
inline.NumDeleted: 154
begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes26createSimpleStackPromotionEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 {
_ZNSt10unique_ptrIZN6hermes26createSimpleStackPromotionEvE8ThisPassSt14default_deleteIS1_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #8, !noalias !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !10, !noalias !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
end_hunk_0
begin_hunk_1_@_ZN6hermes4PassD2Ev:bb.a
; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPassD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #9
  ret void
}

end_hunk_1
begin_hunk_2_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not266.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph10.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a
  %.05.i.i = phi i1 [ %.1.i.i, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ false, %bb.b ] ; 2 uses
  %.0244.i.i = phi ptr [ %i.ey, %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a ], [ %i.o, %bb.b ] ; 2 uses
  %i.v = load ptr, ptr %.0244.i.i, align 8, !tbaa !73 ; 9 uses
  %i.w = call noundef ptr @_ZN6hermes19isStoreOnceVariableEPNS_8VariableE(ptr noundef %i.v) #10 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.i, label %bb.c

end_hunk_2
begin_hunk_3_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.z, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr %i.c, ptr %5, align 8, !tbaa !71
  store i32 0, ptr %i.d, align 8, !tbaa !72
  store i32 8, ptr %i.e, align 4, !tbaa !75
  %i.aa = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !71 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !72 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.al, label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @free(ptr noundef %i.ak) #10
  br label %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.ah, %._crit_edge.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.am) #10
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.aj
  br i1 %.not.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i
end_hunk_4
begin_hunk_5_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull %i.w) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i.i
end_hunk_5
begin_hunk_6_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i, label %bb.h, !prof !78

bb.h:                                             ; preds = %bb.g
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %5, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i.i.i = load i32, ptr %i.d, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i.i.i

end_hunk_6
begin_hunk_7_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not10.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i: ; preds = %bb.e, %._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.i:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !79
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !82 ; 6 uses
  %i.bg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !71 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !72 ; 2 uses
  %.not3746.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not3746.i.i.i, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, label %.lr.ph.i28.i.i.preheader

.lr.ph.i28.i.i.preheader:                         ; preds = %bb.i
  %6 = zext i32 %i.bj to i64
  %7 = add nuw nsw i64 %6, 2305843009213693951    ; 2 uses
  %8 = and i64 %7, 2305843009213693951            ; 2 uses
  %9 = add nuw nsw i64 %8, 1                      ; 2 uses
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %.lr.ph.i28.i.i.epil.preheader, label %.lr.ph.i28.i.i.preheader.new

.lr.ph.i28.i.i.preheader.new:                     ; preds = %.lr.ph.i28.i.i.preheader
  %unroll_iter = and i64 %9, 4611686018427387902
  br label %.lr.ph.i28.i.i

._crit_edge.i29.i.i.unr-lcssa:                    ; preds = %.lr.ph.i28.i.i
  %11 = and i64 %7, 1
  %lcmp.mod.not.not = icmp eq i64 %11, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i28.i.i.epil.preheader, label %._crit_edge.i29.i.i

.lr.ph.i28.i.i.epil.preheader:                    ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.preheader
  %.03249.i.i.i.epil.init = phi i1 [ false, %.lr.ph.i28.i.i.preheader ], [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03348.i.i.i.epil.init = phi i1 [ false, %.lr.ph.i28.i.i.preheader ], [ %.134.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ]
  %.03647.i.i.i.epil.init = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader ], [ %i.bs, %._crit_edge.i29.i.i.unr-lcssa ]
  %lcmp.mod56 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod56)
  %i.bk = load ptr, ptr %.03647.i.i.i.epil.init, align 8, !tbaa !76 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !95
end_hunk_7
begin_hunk_8_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.bp = icmp eq ptr %i.bo, %i.bf                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !74
  %12 = icmp ne i8 %i.br, 49                      ; 2 uses
  %13 = xor i1 %i.bp, true
  %14 = select i1 %12, i1 %13, i1 false
  %.134.i.i.i.epil = or i1 %.03348.i.i.i.epil.init, %14
  %not..i.i.i.epil = xor i1 %12, true
  %15 = select i1 %not..i.i.i.epil, i1 %i.bp, i1 false
  %.1.i.i.i.epil = or i1 %.03249.i.i.i.epil.init, %15
  br label %._crit_edge.i29.i.i

._crit_edge.i29.i.i:                              ; preds = %._crit_edge.i29.i.i.unr-lcssa, %.lr.ph.i28.i.i.epil.preheader
  %.134.i.i.i.lcssa = phi i1 [ %.134.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.134.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %.1.i.i.i.lcssa = phi i1 [ %.1.i.i.i.1, %._crit_edge.i29.i.i.unr-lcssa ], [ %.1.i.i.i.epil, %.lr.ph.i28.i.i.epil.preheader ]
  %16 = xor i1 %.134.i.i.i.lcssa, true
  %17 = select i1 %16, i1 %.1.i.i.i.lcssa, i1 false
  br i1 %17, label %bb.j, label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph.i28.i.i:                                   ; preds = %.lr.ph.i28.i.i, %.lr.ph.i28.i.i.preheader.new
  %.03249.i.i.i = phi i1 [ false, %.lr.ph.i28.i.i.preheader.new ], [ %.1.i.i.i.1, %.lr.ph.i28.i.i ]
  %.03348.i.i.i = phi i1 [ false, %.lr.ph.i28.i.i.preheader.new ], [ %.134.i.i.i.1, %.lr.ph.i28.i.i ]
  %.03647.i.i.i = phi ptr [ %i.bh, %.lr.ph.i28.i.i.preheader.new ], [ %i.bs, %.lr.ph.i28.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i28.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i28.i.i ]
  %18 = load ptr, ptr %.03647.i.i.i, align 8, !tbaa !76 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %20 = load ptr, ptr %19, align 8, !tbaa !95
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 72
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = icmp eq ptr %22, %i.bf                    ; 2 uses
  %24 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %25 = load i8, ptr %24, align 8, !tbaa !74
  %26 = icmp ne i8 %25, 49                        ; 2 uses
  %27 = xor i1 %23, true
  %28 = select i1 %26, i1 %27, i1 false
  %.134.i.i.i = or i1 %.03348.i.i.i, %28
  %not..i.i.i = xor i1 %26, true
  %29 = select i1 %not..i.i.i, i1 %23, i1 false
  %.1.i.i.i = or i1 %.03249.i.i.i, %29
  %30 = getelementptr inbounds nuw i8, ptr %.03647.i.i.i, i64 8
  %31 = load ptr, ptr %30, align 8, !tbaa !76     ; 2 uses
  %32 = getelementptr inbounds nuw i8, ptr %31, i64 56
  %33 = load ptr, ptr %32, align 8, !tbaa !95
  %34 = getelementptr inbounds nuw i8, ptr %33, i64 72
  %35 = load ptr, ptr %34, align 8, !tbaa !106
  %36 = icmp eq ptr %35, %i.bf                    ; 2 uses
  %37 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %38 = load i8, ptr %37, align 8, !tbaa !74
  %39 = icmp ne i8 %38, 49                        ; 2 uses
  %40 = xor i1 %36, true
  %41 = select i1 %39, i1 %40, i1 false
  %.134.i.i.i.1 = or i1 %.134.i.i.i, %41          ; 3 uses
  %not..i.i.i.1 = xor i1 %39, true
  %42 = select i1 %not..i.i.i.1, i1 %36, i1 false
  %.1.i.i.i.1 = or i1 %.1.i.i.i, %42              ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.03647.i.i.i, i64 16 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i29.i.i.unr-lcssa, label %.lr.ph.i28.i.i

bb.j:                                             ; preds = %._crit_edge.i29.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 56
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !114
  store ptr %i.bu, ptr %3, align 8, !tbaa !115
end_hunk_8
begin_hunk_9_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 64
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.by) #10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.bz, align 8, !tbaa !119
  %i.ca = call noundef ptr @_ZN6hermes9IRBuilder20createAllocStackInstENS_10IdentifierE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr %.sroa.0.0.copyload.i.i.i.i) #10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store ptr %i.g, ptr %4, align 8, !tbaa !71
  store i32 0, ptr %i.h, align 8, !tbaa !72
  store i32 8, ptr %i.i, align 4, !tbaa !75
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !72 ; 2 uses
end_hunk_9
begin_hunk_10_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.cm, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i37.i.i
  call void @free(ptr noundef %i.cl) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i

.lr.ph.i.i32.i.i:                                 ; preds = %._crit_edge55.i.i.i, %.lr.ph.i.i32.i.i
  %.09.i.i33.i.i = phi ptr [ %i.co, %.lr.ph.i.i32.i.i ], [ %i.ch, %._crit_edge55.i.i.i ] ; 2 uses
  %i.cn = load ptr, ptr %.09.i.i33.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.cn) #10
  %i.co = getelementptr inbounds nuw i8, ptr %.09.i.i33.i.i, i64 8 ; 2 uses
  %.not.i.i34.i.i = icmp eq ptr %i.co, %i.ck
  br i1 %.not.i.i34.i.i, label %._crit_edge.loopexit.i.i35.i.i, label %.lr.ph.i.i32.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i: ; preds = %bb.k, %._crit_edge.i.i37.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i

.lr.ph54.i.i.i:                                   ; preds = %bb.j, %bb.p
end_hunk_10
begin_hunk_11_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.cx, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #10
  %i.cy = call noundef ptr @_ZN6hermes9IRBuilder19createLoadStackInstEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.ca) #10 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %spec.select.i.i.i = select i1 %i.cz, ptr null, ptr %i.da
  call void @_ZN6hermes5Value18replaceAllUsesWithEPS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cq, ptr noundef %spec.select.i.i.i) #10
  %i.db = load i32, ptr %i.h, align 8, !tbaa !72  ; 2 uses
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !75
  %.not.i.i.i39.i.i = icmp ult i32 %i.db, %i.dc
  br i1 %.not.i.i.i39.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, label %bb.n, !prof !78

bb.n:                                             ; preds = %bb.m
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull %i.g, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i40.i.i = load i32, ptr %i.h, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i

end_hunk_11
begin_hunk_12_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph54.i.i.i
  call void @_ZN6hermes9IRBuilder17setInsertionPointEPNS_11InstructionE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %i.cp) #10
  %i.dk = call noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132) %i.cp, i32 noundef 0) #10
  %i.dl = call noundef ptr @_ZN6hermes9IRBuilder20createStoreStackInstEPNS_5ValueEPNS_14AllocStackInstE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.dk, ptr noundef %i.ca) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i41.i.i, %bb.l
end_hunk_12
begin_hunk_13_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %.not38.i.i.i = icmp eq ptr %i.dm, %i.cg
  br i1 %.not38.i.i.i, label %._crit_edge55.i.i.i, label %.lr.ph54.i.i.i

_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i: ; preds = %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i, %._crit_edge.i29.i.i, %bb.i
  %.033.lcssa60.i.i.i = phi i1 [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i38.i.i ], [ %.05.i.i, %._crit_edge.i29.i.i ], [ %.05.i.i, %bb.i ] ; 2 uses
  %i.dn = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10
  br i1 %i.dn, label %bb.q, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

bb.q:                                             ; preds = %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i
  %i.do = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !71 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !72 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !74
  %i.dy = icmp eq i8 %i.dx, 51
  br i1 %i.dy, label %bb.r, label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

._crit_edge.i45.i.i:                              ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store ptr %i.j, ptr %2, align 8, !tbaa !71
  store i32 0, ptr %i.k, align 8, !tbaa !72
  store i32 8, ptr %i.l, align 4, !tbaa !75
  %i.dz = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes5Value8getUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.v) #10 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !71 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !72 ; 2 uses
end_hunk_14
begin_hunk_15_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %i.ek, label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i56.i.i
  call void @free(ptr noundef %i.ej) #10
  br label %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i

.lr.ph.i.i51.i.i:                                 ; preds = %._crit_edge30.i.i.i, %.lr.ph.i.i51.i.i
  %.09.i.i52.i.i = phi ptr [ %i.em, %.lr.ph.i.i51.i.i ], [ %i.eg, %._crit_edge30.i.i.i ] ; 2 uses
  %i.el = load ptr, ptr %.09.i.i52.i.i, align 8, !tbaa !76
  call void @_ZN6hermes11Instruction15eraseFromParentEv(ptr noundef nonnull align 8 dereferenceable(132) %i.el) #10
  %i.em = getelementptr inbounds nuw i8, ptr %.09.i.i52.i.i, i64 8 ; 2 uses
  %.not.i.i53.i.i = icmp eq ptr %i.em, %i.ei
  br i1 %.not.i.i53.i.i, label %._crit_edge.loopexit.i.i54.i.i, label %.lr.ph.i.i51.i.i

_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i: ; preds = %bb.s, %._crit_edge.i.i56.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a

.lr.ph29.i.i.i:                                   ; preds = %._crit_edge.i45.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i
  %i.en = phi i32 [ %i.ew, %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i ], [ %.pre32.i.i.i, %._crit_edge.i45.i.i ] ; 2 uses
end_hunk_15
begin_hunk_16_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i46.i.i, label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i, label %bb.t, !prof !78

bb.t:                                             ; preds = %.lr.ph29.i.i.i
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %i.j, i64 noundef 0, i64 noundef 8) #10
  %.pre.i.i.i47.i.i = load i32, ptr %i.k, align 8, !tbaa !72
  br label %_ZN6hermes9IRBuilder20InstructionDestroyer3addEPNS_11InstructionE.exit.i48.i.i

end_hunk_16
begin_hunk_17_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %.not22.i.i.i = icmp eq ptr %i.ex, %i.ee
  br i1 %.not22.i.i.i, label %._crit_edge30.i.i.i, label %.lr.ph29.i.i.i

_ZN6hermes12_GLOBAL__N_126tryDeleteStoreOnlyVariableEPNS_8VariableE.exit.i.i.a: ; preds = %.lr.ph.i43.i.i, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i
  %.1.i.i = phi i1 [ true, %_ZN6hermes12_GLOBAL__N_123tryPromoteConstVariableEPNS_8VariableE.exit.i.i ], [ true, %_ZN6hermes9IRBuilder20InstructionDestroyerD2Ev.exit.i57.i.i ], [ %.033.lcssa60.i.i.i, %_ZN6hermes12_GLOBAL__N_114tryCopyToStackEPNS_8VariableE.exit.i.i ], [ %.033.lcssa60.i.i.i, %.lr.ph.i43.i.i ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.0244.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ey, %i.s
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i
end_hunk_17
begin_hunk_18_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  br i1 %.not.i.i.i.i.i.i, label %_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !122

.lr.ph10.i.i:                                     ; preds = %._crit_edge.i.i, %bb.ag
  %.28.i.i = phi i1 [ %.3.i.i, %bb.ag ], [ %.1.i.i, %._crit_edge.i.i ]
  %.0257.i.i = phi ptr [ %i.fu, %bb.ag ], [ %.pre.i.i, %._crit_edge.i.i ] ; 4 uses
  %i.fr = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  %i.fs = call noundef zeroext i1 @_ZNK6hermes5Value8hasUsersEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fr) #10
  br i1 %i.fs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.lr.ph10.i.i
  %i.ft = load ptr, ptr %.0257.i.i, align 8, !tbaa !73
  call void @_ZN6hermes5Value7destroyEPS0_(ptr noundef %i.ft) #10
  store ptr null, ptr %.0257.i.i, align 8, !tbaa !73
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.lr.ph10.i.i
  %.3.i.i = phi i1 [ %.28.i.i, %.lr.ph10.i.i ], [ true, %bb.af ] ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0257.i.i, i64 8 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.fu, %i.u
  br i1 %.not26.i.i, label %._crit_edge11.i.i, label %.lr.ph10.i.i

_ZN6hermes12_GLOBAL__N_113runOnFunctionEPNS_8FunctionE.exit.i: ; preds = %bb.ae, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i", %bb.ac, %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.i.i, %bb.b
  %.2.lcssa55.i.i = phi i1 [ %.3.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.3.i.i, %bb.ac ], [ %.3.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ false, %bb.b ], [ %.1.i.i, %._crit_edge.i.i ], [ %.3.i.i, %bb.ae ]
  %.val.i53.i.i = phi ptr [ %.val.i.pre.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %.val.i.pre.i.i, %bb.ac ], [ %.val.i.pre.i.i, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.val.i.pre.i.i, %bb.ae ]
  %.016.i.i.i.i.i.i = phi ptr [ %.028.i.i.i.i.i.i.i.i, %"_ZSt9__find_ifIPPN6hermes8VariableEN9__gnu_cxx5__ops10_Iter_predIZNS0_12_GLOBAL__N_113runOnFunctionEPNS0_8FunctionEE3$_0EEET_SC_SC_T0_.exit.i.i.i.i.i.i" ], [ %i.fa, %bb.ac ], [ %i.fa, %._crit_edge.i.i.i.i.i.i.i.i ], [ %i.o, %bb.b ], [ %.pre.i.i, %._crit_edge.i.i ], [ %.1.i.i.i.i.i.i, %bb.ae ]
  %i.fv = ptrtoint ptr %.016.i.i.i.i.i.i to i64
end_hunk_18
begin_hunk_19_@_ZZN6hermes26createSimpleStackPromotionEvEN8ThisPass11runOnModuleEPNS_6ModuleE:bb.a
  %i.fy = lshr exact i64 %i.fx, 3
  %i.fz = trunc i64 %i.fy to i32
  store i32 %i.fz, ptr %i.p, align 8, !tbaa !72
  %i.ga = or i1 %.019.i, %.2.lcssa55.i.i          ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.05.020.i, i64 8
  %.sroa.05.0.i = load ptr, ptr %i.gb, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.05.0.i, %i.b
end_hunk_19
begin_hunk_20_@llvm.memset.p0.i64

declare noundef ptr @_ZNK6hermes11Instruction10getOperandEj(ptr noundef nonnull align 8 dereferenceable(132), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_20
begin_hunk_21_@llvm.assume/@_ZNK6hermes11Instruction10getOperandEj
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { builtin nounwind allocsize(0) }
attributes #9 = { builtin nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_21
