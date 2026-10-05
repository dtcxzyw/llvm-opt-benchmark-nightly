Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SILowerI1Copies?download=true
inline.NumInlined: 1840
inline.NumDeleted: 933
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZL14runFixI1CopiesRN4llvm15MachineFunctionERNS_20MachineDominatorTreeERNS_24MachinePostDominatorTreeE:bb.a
  %i.tn = icmp eq i64 %i.tk, 1
  br i1 %i.tn, label %._crit_edge.i37, label %.lr.ph

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph
  %i.to = add nuw nsw i64 %i.tq, 1                ; 2 uses
  %i.tp = icmp eq i64 %i.to, %i.tk
  br i1 %i.tp, label %._crit_edge.i37, label %.lr.ph, !llvm.loop !521

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %i.tq = phi i64 [ %i.to, %.lr.ph.i.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.tq
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !253, !noalias !535 ; 2 uses
  %i.tt = icmp eq i32 %i.ts, 0
  br i1 %i.tt, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.loopexit.i.i.i.i, !llvm.loop !521

._crit_edge.i.loopexit.i.i.i.i:                   ; preds = %.lr.ph
  %i.tu = shl i64 %i.tq, 7
  br label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i

_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i: ; preds = %._crit_edge.i.loopexit.i.i.i.i, %bb.bq
  %.012.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.bq ], [ %i.tu, %._crit_edge.i.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i32 [ %i.tl, %bb.bq ], [ %i.ts, %._crit_edge.i.loopexit.i.i.i.i ]
  %i.tv = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.tw = shl nuw nsw i32 %i.tv, 2
  %.idx.i32 = zext nneg i32 %i.tw to i64
  %i.tx = or disjoint i64 %.012.lcssa.i.i.i.i.i, %.idx.i32 ; 2 uses
  %.not12.i = icmp eq i64 %i.tx, %.idx36.i
  br i1 %.not12.i, label %._crit_edge.i37, label %.lr.ph.i33

._crit_edge.loopexit.i:                           ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, %.lr.ph.i33, %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.pre.i36 = load i32, ptr %i.tf, align 8, !tbaa !303
  br label %._crit_edge.i37

._crit_edge.i37:                                  ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader, %._crit_edge.loopexit.i, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i, %_ZN12_GLOBAL__N_119Vreg1LoweringHelper15lowerCopiesToI1Ev.exit
  %i.ty = phi i32 [ %.pre.i36, %._crit_edge.loopexit.i ], [ %i.tg, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i ], [ %i.tg, %_ZN12_GLOBAL__N_119Vreg1LoweringHelper15lowerCopiesToI1Ev.exit ], [ %i.tg, %.lr.ph.i.i.i.i.i.preheader ], [ %i.tg, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.tz = icmp eq i32 %i.ty, 0
  br i1 %i.tz, label %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit, label %bb.br

bb.br:                                            ; preds = %._crit_edge.i37
  %i.ua = shl i32 %i.ty, 2
  %i.ub = load i32, ptr %i.td, align 4, !tbaa !302 ; 5 uses
  %i.uc = icmp ult i32 %i.ua, %i.ub
  %i.ud = icmp ugt i32 %i.ub, 64
  %or.cond.i.i.i38 = and i1 %i.uc, %i.ud
  br i1 %or.cond.i.i.i38, label %_ZNK4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i, label %bb.bv

_ZNK4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i: ; preds = %bb.br
  %i.ue = add i32 %i.ty, -1
  %i.uf = call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ue, i1 false)
  %i.ug = sub nuw nsw i32 33, %i.uf
  %i.uh = shl nuw i32 1, %i.ug                    ; 2 uses
  %.not.i41 = icmp eq i32 %i.uh, %i.ub
  %i.ui = zext i32 %i.ub to i64                   ; 2 uses
  %i.uj = add nuw nsw i64 %i.ui, 31               ; 2 uses
  br i1 %.not.i41, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %_ZNK4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i
  store i32 0, ptr %i.tf, align 8, !tbaa !303
  %i.uk = load ptr, ptr %i.tb, align 8, !tbaa !301
  %i.ul = lshr i64 %i.uj, 3
  %i.um = and i64 %i.ul, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.uk, i8 0, i64 %i.um, i1 false)
  br label %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit

bb.bt:                                            ; preds = %_ZNK4llvm8DenseMapINS_8RegisterENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE18planShrinkAndClearEv.exit.i
  %.sroa.speculated.i.i = call i32 @llvm.umax.i32(i32 %i.uh, i32 64) ; 2 uses
  %.sroa.39.0.insert.ext.i.i = zext i32 %.sroa.speculated.i.i to i64 ; 2 uses
  %i.un = load ptr, ptr %i.u, align 8, !tbaa !300
  %i.uo = lshr i64 %i.uj, 5
  %i.up = add nuw nsw i64 %i.uo, %i.ui
  %i.uq = shl nuw nsw i64 %i.up, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.un, i64 noundef %i.uq, i64 noundef 4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 16, i1 false)
  store i32 %.sroa.speculated.i.i, ptr %i.td, align 4, !tbaa !302
  %i.ur = add nuw nsw i64 %.sroa.39.0.insert.ext.i.i, 31
  %i.us = lshr i64 %i.ur, 5
  %i.ut = add nuw nsw i64 %i.us, %.sroa.39.0.insert.ext.i.i
  %i.uu = shl nuw nsw i64 %i.ut, 2
  %i.uv = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.uu, i64 noundef 4) #19 ; 2 uses
  %i.uw = load i32, ptr %i.td, align 4, !tbaa !302 ; 2 uses
  %i.ux = zext i32 %i.uw to i64                   ; 2 uses
  %i.uy = shl nuw nsw i64 %i.ux, 2
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uv, i64 %i.uy ; 2 uses
  store ptr %i.uv, ptr %i.u, align 8, !tbaa !300
  store ptr %i.uz, ptr %i.tb, align 8, !tbaa !301
  store i32 0, ptr %i.tf, align 8, !tbaa !303
  %.not.i.i.i42 = icmp eq i32 %i.uw, 0
  br i1 %.not.i.i.i42, label %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.va = add nuw nsw i64 %i.ux, 31
  %i.vb = lshr i64 %i.va, 3
  %i.vc = and i64 %i.vb, 1073741820
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uz, i8 0, i64 %i.vc, i1 false)
  br label %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit

bb.bv:                                            ; preds = %bb.br
  %i.vd = load ptr, ptr %i.tb, align 8, !tbaa !301
  %i.ve = zext i32 %i.ub to i64
  %i.vf = add nuw nsw i64 %i.ve, 31
  %i.vg = lshr i64 %i.vf, 3
  %i.vh = and i64 %i.vg, 1073741820
  call void @llvm.memset.p0.i64(ptr align 4 %i.vd, i8 0, i64 %i.vh, i1 false)
  store i32 0, ptr %i.tf, align 8, !tbaa !303
  br label %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit

.lr.ph.i33:                                       ; preds = %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i
  %.pn.i34 = phi i64 [ %i.wj, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i ], [ %i.tx, %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE5beginEv.exit.i ] ; 2 uses
  %.sroa.05.013.i = getelementptr i8, ptr %i.ta, i64 %.pn.i34
  %.sroa.01.0.copyload.i = load i32, ptr %.sroa.05.013.i, align 4, !tbaa !253
  %i.vi = load ptr, ptr %i.h, align 8, !tbaa !167
  %i.vj = load ptr, ptr %i.l, align 8, !tbaa !168
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 441
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !338, !range !280, !noundef !159
  %i.vm = trunc nuw i8 %i.vl to i1
  %i.vn = select i1 %i.vm, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 1728), ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm28AMDGPUMCRegisterClassStorageE, i64 3840)
  %i.vo = call noundef ptr @_ZN4llvm19MachineRegisterInfo17constrainRegClassENS_8RegisterEPKNS_15MCRegisterClassEj(ptr noundef nonnull align 8 dereferenceable(520) %i.vi, i32 %.sroa.01.0.copyload.i, ptr noundef nonnull %i.vn, i32 noundef 0) #19 ; 0 uses
  %i.vp = add i64 %.pn.i34, 4
  %i.vq = ashr exact i64 %i.vp, 2                 ; 3 uses
  %.not.i.i.i.i35 = icmp ult i64 %i.vq, %i.ti
  br i1 %.not.i.i.i.i35, label %bb.bw, label %._crit_edge.loopexit.i

bb.bw:                                            ; preds = %.lr.ph.i33
  %i.vr = lshr i64 %i.vq, 5                       ; 3 uses
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !253
  %i.vu = trunc nuw i64 %i.vq to i32
  %i.vv = and i32 %i.vu, 31
  %i.vw = shl nsw i32 -1, %i.vv
  %i.vx = and i32 %i.vt, %i.vw                    ; 2 uses
  %i.vy = icmp eq i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph.i.i.i.i.preheader, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.bw
  %i.vz = add nuw nsw i64 %i.vr, 1                ; 2 uses
  %i.wa = icmp eq i64 %i.vz, %i.tk
  br i1 %i.wa, label %._crit_edge.loopexit.i, label %.lr.ph136

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph136
  %i.wb = add i64 %i.wd, 1                        ; 2 uses
  %i.wc = icmp eq i64 %i.wb, %i.tk
  br i1 %i.wc, label %._crit_edge.loopexit.i, label %.lr.ph136, !llvm.loop !521

.lr.ph136:                                        ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %i.wd = phi i64 [ %i.wb, %.lr.ph.i.i.i.i ], [ %i.vz, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.wd
  %i.wf = load i32, ptr %i.we, align 4, !tbaa !253 ; 2 uses
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %.lr.ph.i.i.i.i, label %_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i, !llvm.loop !521

_ZN4llvm6detail12DenseSetImplINS_8RegisterENS_8DenseMapIS2_NS0_13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS0_12DenseSetPairIS2_EEEEE16DenseSetIteratorILb0EEppEv.exit.i: ; preds = %.lr.ph136, %bb.bw
  %.012.lcssa.i.i.i.i = phi i64 [ %i.vr, %bb.bw ], [ %i.wd, %.lr.ph136 ]
  %.0.lcssa.i.i.i.i = phi i32 [ %i.vx, %bb.bw ], [ %i.wf, %.lr.ph136 ]
  %i.wh = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i.i, i1 true)
  %.idx.i.i.i.i = shl i64 %.012.lcssa.i.i.i.i, 7
  %i.wi = shl nuw nsw i32 %i.wh, 2
  %.idx37.i = zext nneg i32 %i.wi to i64
  %i.wj = or disjoint i64 %.idx.i.i.i.i, %.idx37.i ; 2 uses
  %.not.i39 = icmp eq i64 %i.wj, %.idx36.i
  br i1 %.not.i39, label %._crit_edge.loopexit.i, label %.lr.ph.i33

_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit: ; preds = %bb.bu, %bb.bt, %bb.bs, %._crit_edge.i37, %bb.bv
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN12_GLOBAL__N_119Vreg1LoweringHelperE, i64 16), ptr %17, align 8, !tbaa !18
  %i.wk = load i32, ptr %i.td, align 4, !tbaa !302 ; 2 uses
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %_ZN12_GLOBAL__N_119Vreg1LoweringHelperD2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit
  %i.wm = load ptr, ptr %i.u, align 8, !tbaa !300
  %i.wn = zext i32 %i.wk to i64                   ; 2 uses
  %i.wo = add nuw nsw i64 %i.wn, 31
  %i.wp = lshr i64 %i.wo, 5
  %i.wq = add nuw nsw i64 %i.wp, %i.wn
  %i.wr = shl nuw nsw i64 %i.wq, 2
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.wm, i64 noundef %i.wr, i64 noundef 4) #19, !inline_history !339
  br label %_ZN12_GLOBAL__N_119Vreg1LoweringHelperD2Ev.exit

_ZN12_GLOBAL__N_119Vreg1LoweringHelperD2Ev.exit:  ; preds = %_ZN12_GLOBAL__N_119Vreg1LoweringHelper18cleanConstrainRegsEb.exit, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.by

bb.by:                                            ; preds = %bb.a, %_ZN12_GLOBAL__N_119Vreg1LoweringHelperD2Ev.exit
  %.0 = phi i1 [ %i.sz, %_ZN12_GLOBAL__N_119Vreg1LoweringHelperD2Ev.exit ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm39getMachineFunctionPassPreservedAnalysesEv(ptr dead_on_unwind writable sret(%"class.llvm::PreservedAnalyses") align 8) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN21SILowerI1CopiesLegacy20runOnMachineFunctionERN4llvm15MachineFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1065) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !343  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !537  ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !537  ; 3 uses
  %.not1114.i.i.i = icmp ne ptr %i.c, %i.e
  tail call void @llvm.assume(i1 %.not1114.i.i.i)
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !540  ; 2 uses
  %.not.i3.i.i = icmp eq ptr %i.f, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread: ; preds = %bb.a
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %3 = load ptr, ptr %2, align 8
  br label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.sroa.08.015.i4.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 16 ; 3 uses
  %.not11.i.i.i = icmp ne ptr %i.g, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i)
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !540
  %.not.i.i.i = icmp eq ptr %i.h, @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i, label %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i

_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i, i64 24
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i3.i.i5 = icmp eq ptr %i.f, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i3.i.i5, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6.preheader

.lr.ph.i.i.i6.preheader:                          ; preds = %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %4 = phi ptr [ %3, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit.thread ], [ %i.j, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ]
  br label %.lr.ph.i.i.i6

.lr.ph.i.i.i6:                                    ; preds = %.lr.ph.i.i.i6.preheader, %.lr.ph.i.i.i6
  %.sroa.08.015.i4.i.i7 = phi ptr [ %i.k, %.lr.ph.i.i.i6 ], [ %i.c, %.lr.ph.i.i.i6.preheader ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i4.i.i7, i64 16 ; 4 uses
  %.not11.i.i.i8 = icmp ne ptr %i.k, %i.e
  tail call void @llvm.assume(i1 %.not11.i.i.i8)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !540
  %.not.i.i.i9 = icmp eq ptr %i.l, @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE
  br i1 %.not.i.i.i9, label %_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit, label %.lr.ph.i.i.i6

_ZNK4llvm4Pass11getAnalysisINS_35MachinePostDominatorTreeWrapperPassEEERT_v.exit: ; preds = %.lr.ph.i.i.i6, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit
  %5 = phi ptr [ %i.j, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %4, %.lr.ph.i.i.i6 ]
  %.sroa.08.015.i.lcssa.i.i10 = phi ptr [ %i.c, %_ZNK4llvm4Pass11getAnalysisINS_31MachineDominatorTreeWrapperPassEEERT_v.exit ], [ %i.k, %.lr.ph.i.i.i6 ]
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.015.i.lcssa.i.i10, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = tail call fastcc noundef zeroext i1 @_ZL14runFixI1CopiesRN4llvm15MachineFunctionERNS_20MachineDominatorTreeERNS_24MachinePostDominatorTreeE(ptr noundef nonnull align 8 dereferenceable(1065) %1, ptr noundef nonnull align 8 dereferenceable(204) %i.m, ptr noundef nonnull align 8 dereferenceable(228) %i.p)
  ret i1 %i.q
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm35initializeSILowerI1CopiesLegacyPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %class.anon.446, align 8            ; 5 uses
  %2 = alloca %"class.std::reference_wrapper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  store ptr @_ZL39initializeSILowerI1CopiesLegacyPassOnceRN4llvm12PassRegistryE, ptr %1, align 8, !tbaa !169
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !541
  %i.b = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !169
  %i.c = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 2 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIRFvRN4llvm12PassRegistryEEJSt17reference_wrapperIS4_EEEvRS_OT_DpOT0_EUlvE_EERSB_ENUlvE_8__invokeEv, ptr %i.c, align 8, !tbaa !169
  %i.d = call noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) @_ZL39InitializeSILowerI1CopiesLegacyPassFlag, ptr noundef nonnull @__once_proxy) #19 ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_system_errori(i32 noundef %i.d) #21
  unreachable

_ZN4llvm9call_onceIRFvRNS_12PassRegistryEEJSt17reference_wrapperIS1_EEEEvRSt9once_flagOT_DpOT0_.exit: ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !169
  store ptr null, ptr %i.c, align 8, !tbaa !169
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL39initializeSILowerI1CopiesLegacyPassOnceRN4llvm12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #0 {
bb.a:
  tail call void @_ZN4llvm45initializeMachineDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  tail call void @_ZN4llvm49initializeMachinePostDominatorTreeWrapperPassPassERNS_12PassRegistryE(ptr noundef nonnull align 8 dereferenceable(160) %0) #19
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 9 uses
  store ptr @.str.2, ptr %i.a, align 8, !tbaa !542
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 18, ptr %.sroa.25.0..sroa_idx.i, align 8, !tbaa !543
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @.str.3, ptr %i.b, align 8, !tbaa !542
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 12, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !543
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_ZN21SILowerI1CopiesLegacy2IDE, ptr %i.c, align 8, !tbaa !546
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !547
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 41
  store i8 0, ptr %i.e, align 1, !tbaa !548
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr @_ZN4llvm15callDefaultCtorI21SILowerI1CopiesLegacyEEPNS_4PassEv, ptr %i.f, align 8, !tbaa !549
  tail call void @_ZN4llvm12PassRegistry12registerPassERKNS_8PassInfoEb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i1 noundef zeroext true) #19
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias noundef nonnull ptr @_ZN4llvm31createSILowerI1CopiesLegacyPassEv() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %i.b, align 8, !tbaa !343
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_ZN21SILowerI1CopiesLegacy2IDE, ptr %i.c, align 8, !tbaa !345
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 2, ptr %i.d, align 8, !tbaa !346
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 176) (i8, ptr @_ZTV21SILowerI1CopiesLegacy, i64 16), ptr %i.a, align 8, !tbaa !18
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN21SILowerI1CopiesLegacyD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm4PassD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 56) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK21SILowerI1CopiesLegacy11getPassNameEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.2, i64 18 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm19MachineFunctionPass16doInitializationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.e, align 8
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call i64 %i.h(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.i, ptr %i.j, align 8
  %i.k = load ptr, ptr %0, align 8, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(56) %0) #19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.n, ptr %i.o, align 8
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm4Pass14doFinalizationERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(1288) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK4llvm4Pass5printERNS_11raw_ostreamEPKNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZNK4llvm19MachineFunctionPass17createPrinterPassERNS_11raw_ostreamERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare void @_ZN4llvm12FunctionPass17assignPassManagerERNS_7PMStackENS_15PassManagerTypeE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1, i32 noundef) unnamed_addr #1

declare void @_ZN4llvm4Pass18preparePassManagerERNS_7PMStackE(ptr noundef nonnull align 8 dereferenceable(28), ptr noundef nonnull align 1) unnamed_addr #1

declare noundef i32 @_ZNK4llvm12FunctionPass27getPotentialPassManagerTypeEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK21SILowerI1CopiesLegacy16getAnalysisUsageERN4llvm13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN4llvm13AnalysisUsage15setPreservesCFGEv(ptr noundef nonnull align 8 dereferenceable(161) %1) #19
  %i.a = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm31MachineDominatorTreeWrapperPass2IDE) #19 ; 0 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(161) ptr @_ZN4llvm13AnalysisUsage13addRequiredIDERc(ptr noundef nonnull align 8 dereferenceable(161) %1, ptr noundef nonnull align 1 dereferenceable(1) @_ZN4llvm35MachinePostDominatorTreeWrapperPass2IDE) #19 ; 0 uses
  tail call void @_ZNK4llvm19MachineFunctionPass16getAnalysisUsageERNS_13AnalysisUsageE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(161) %1) #19
  ret void
}

declare void @_ZN4llvm4Pass13releaseMemoryEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare noundef ptr @_ZN4llvm4Pass18getAsImmutablePassEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare noundef ptr @_ZN4llvm4Pass18getAsPMDataManagerEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare void @_ZNK4llvm4Pass14verifyAnalysisEv(ptr noundef nonnull align 8 dereferenceable(28)) unnamed_addr #1

declare void @_ZN4llvm4Pass17dumpPassStructureEj(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass13runOnFunctionERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #1

declare noundef zeroext i1 @_ZN4llvm19MachineFunctionPass11printIRUnitERNS_11raw_ostreamERNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(140)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass21getRequiredPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass16getSetPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZNK4llvm19MachineFunctionPass20getClearedPropertiesEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6AMDGPU17PhiLoweringHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm6AMDGPU17PhiLoweringHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7
end_hunk_0
