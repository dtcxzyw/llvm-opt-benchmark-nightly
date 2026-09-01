Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/computemultibodycutoffs?download=true
inline.NumInlined: 489
inline.NumDeleted: 291
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z21dd_bonded_cg_distanceRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KfNS_16DDBondedCheckingEPfSI_:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit152

bb.ab:                                            ; preds = %.lr.ph, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150
  %i.ex = phi i32 [ %.pre, %.lr.ph ], [ %i.rr, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 3 uses
  %.sroa.10.sroa.8.3 = phi i8 [ %.sroa.10.sroa.8.1, %.lr.ph ], [ %.sroa.10.sroa.8.4, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.10.sroa.0.3 = phi i32 [ %.sroa.10.sroa.0.1, %.lr.ph ], [ %.sroa.10.sroa.0.4, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.8.sroa.8.3 = phi i8 [ %.sroa.8.sroa.8.1, %.lr.ph ], [ %.sroa.8.sroa.8.4, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.8.sroa.0.3 = phi i32 [ %.sroa.8.sroa.0.1, %.lr.ph ], [ %.sroa.8.sroa.0.4, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.1830 = phi i32 [ %.0849, %.lr.ph ], [ %i.rs, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 6 uses
  %.065829 = phi i32 [ 0, %.lr.ph ], [ %i.rt, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ]
  %.sroa.26.1828 = phi i8 [ %.sroa.26.0848, %.lr.ph ], [ %.sroa.26.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.21361.1827 = phi i32 [ %.sroa.21361.0847, %.lr.ph ], [ %.sroa.21361.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.16360.1826 = phi i32 [ %.sroa.16360.0846, %.lr.ph ], [ %.sroa.16360.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.0356.1825 = phi float [ %.sroa.0356.0845, %.lr.ph ], [ %.sroa.0356.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 3 uses
  %.sroa.0325.1824 = phi float [ %.sroa.0325.0844, %.lr.ph ], [ %.sroa.0325.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 3 uses
  %.sroa.13.1823 = phi i32 [ %.sroa.13.0843, %.lr.ph ], [ %.sroa.13.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.17.1822 = phi i32 [ %.sroa.17.0842, %.lr.ph ], [ %.sroa.17.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %.sroa.21.1821 = phi i8 [ %.sroa.21.0841, %.lr.ph ], [ %.sroa.21.2, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150 ] ; 2 uses
  %i.ey = sext i32 %.1830 to i64
  %i.ez = getelementptr inbounds [12 x i8], ptr %3, i64 %i.ey ; 10 uses
  %i.fa = load i8, ptr %i.e, align 4, !tbaa !9, !range !110, !noundef !111
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.ax, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fc = load i32, ptr %i.t, align 8, !tbaa !112 ; 3 uses
  %.not.i = icmp eq i32 %i.fc, 1
  br i1 %.not.i, label %.preheader.i, label %bb.ad

.preheader.i:                                     ; preds = %bb.ac
  %i.fd = icmp sgt i32 %i.ex, 0
  br i1 %i.fd, label %.lr.ph.i, label %.loopexit.i.preheader

.lr.ph.i:                                         ; preds = %.preheader.i
  %wide.trip.count.i = zext nneg i32 %i.ex to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.ex, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %index
  %i.ff = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %index
  %wide.vec = load <24 x float>, ptr %i.fe, align 4, !tbaa !206
  store <24 x float> %wide.vec, ptr %i.ff, align 4, !tbaa !206
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %.loopexit.i.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.ad:                                            ; preds = %bb.ac
  invoke void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr noundef null, ptr noundef nonnull %14, i32 noundef %i.fc, ptr noundef %5, ptr noundef %i.ez)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ad
  invoke void @_Z7shift_xPK7t_graphPA3_KfS4_PA3_f(ptr noundef nonnull %14, ptr noundef %5, ptr noundef %i.ez, ptr noundef %i.dw)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc88:                                         ; preds = %.noexc87
  invoke void @_Z9mk_mshiftP8_IO_FILEP7t_graph7PbcTypePA3_KfS6_(ptr noundef null, ptr noundef nonnull %14, i32 noundef %i.fc, ptr noundef %5, ptr noundef %i.dw)
          to label %.loopexit.i.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %indvars.iv.i ; 2 uses
  %i.fi = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %indvars.iv.i ; 2 uses
  %i.fj = load <2 x float>, ptr %i.fh, align 4, !tbaa !206
  store <2 x float> %i.fj, ptr %i.fi, align 4, !tbaa !206
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !206
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store float %i.fl, ptr %i.fm, align 4, !tbaa !206
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i.preheader, label %scalar.ph, !llvm.loop !211

.loopexit.i.preheader:                            ; preds = %scalar.ph, %middle.block, %.noexc88, %.preheader.i
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.aj, %.loopexit.i.preheader
  %indvars.iv.i.i = phi i64 [ 0, %.loopexit.i.preheader ], [ %indvars.iv.next.i.i.3, %bb.aj ] ; 7 uses
  %.012.i.i = phi i1 [ false, %.loopexit.i.preheader ], [ %.1.i.i.3, %bb.aj ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !212
  %i.fq = and i32 %i.fp, 2
  %.not.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i.i, label %.loopexit.i.1, label %bb.ae

bb.ae:                                            ; preds = %.loopexit.i
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv.i.i ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !186
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !186
  %i.fv = icmp ne ptr %i.fs, %i.fu
  %spec.select.i.i = select i1 %i.fv, i1 true, i1 %.012.i.i
  br label %.loopexit.i.1

.loopexit.i.1:                                    ; preds = %bb.ae, %.loopexit.i
  %.1.i.i = phi i1 [ %spec.select.i.i, %bb.ae ], [ %.012.i.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 28
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !212
  %i.fz = and i32 %i.fy, 2
  %.not.i.i.1 = icmp eq i32 %i.fz, 0
  br i1 %.not.i.i.1, label %.loopexit.i.2, label %bb.af

bb.af:                                            ; preds = %.loopexit.i.1
  %i.ga = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !186
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !186
  %i.ge = icmp ne ptr %i.gb, %i.gd
  %spec.select.i.i.1 = select i1 %i.ge, i1 true, i1 %.1.i.i
  br label %.loopexit.i.2

.loopexit.i.2:                                    ; preds = %bb.af, %.loopexit.i.1
  %.1.i.i.1 = phi i1 [ %spec.select.i.i.1, %bb.af ], [ %.1.i.i, %.loopexit.i.1 ] ; 2 uses
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.gf = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next.i.i.1
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !212
  %i.gi = and i32 %i.gh, 2
  %.not.i.i.2 = icmp eq i32 %i.gi, 0
  br i1 %.not.i.i.2, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit.i.2
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !186
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !186
  %i.gn = icmp ne ptr %i.gk, %i.gm
  %spec.select.i.i.2 = select i1 %i.gn, i1 true, i1 %.1.i.i.1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit.i.2
  %.1.i.i.2 = phi i1 [ %spec.select.i.i.2, %bb.ag ], [ %.1.i.i.1, %.loopexit.i.2 ] ; 3 uses
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.not10.i.i.2 = icmp eq i64 %indvars.iv.i.i, 92
  br i1 %.not10.i.i.2, label %_ZL15moltypeHasVsiteRK13gmx_moltype_t.exit.i, label %.loopexit.i.3

.loopexit.i.3:                                    ; preds = %bb.ah
  %i.go = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv.next.i.i.2
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 28
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !212
  %i.gr = and i32 %i.gq, 2
  %.not.i.i.3 = icmp eq i32 %i.gr, 0
  br i1 %.not.i.i.3, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.loopexit.i.3
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv.next.i.i.2 ; 2 uses
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !186
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !186
  %i.gw = icmp ne ptr %i.gt, %i.gv
  %spec.select.i.i.3 = select i1 %i.gw, i1 true, i1 %.1.i.i.2
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit.i.3
  %.1.i.i.3 = phi i1 [ %spec.select.i.i.3, %bb.ai ], [ %.1.i.i.2, %.loopexit.i.3 ]
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4
  br label %.loopexit.i

_ZL15moltypeHasVsiteRK13gmx_moltype_t.exit.i:     ; preds = %bb.ah
  br i1 %.1.i.i.2, label %bb.ak, label %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit

bb.ak:                                            ; preds = %_ZL15moltypeHasVsiteRK13gmx_moltype_t.exit.i
  %i.gx = load ptr, ptr %i.ak, align 8, !tbaa !215 ; 3 uses
  %i.gy = load ptr, ptr %i.al, align 8, !tbaa !216
  %i.gz = ptrtoint ptr %i.gy to i64
  %i.ha = ptrtoint ptr %i.gx to i64
  %i.hb = sub i64 %i.gz, %i.ha
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gx, i64 %i.hb
  invoke void @_ZN3gmx21constructVirtualSitesENS_8ArrayRefINS_11BasicVectorIfEEEENS0_IK9t_iparamsEEPKNS_16EnumerationArrayI19InteractionFunction15InteractionListLS8_95EEE(ptr %i.dw, ptr %scevgep.i.i.i.i.i, ptr %i.gx, ptr %i.hc, ptr noundef nonnull %i.dz)
          to label %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit: ; preds = %_ZL15moltypeHasVsiteRK13gmx_moltype_t.exit.i, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  store i8 %i.am, ptr %12, align 1, !tbaa !217
  store i8 0, ptr %i.an, align 1, !tbaa !220
  store i8 0, ptr %i.ao, align 1, !tbaa !221
  br label %bb.am

bb.al:                                            ; preds = %.loopexit23.i
  br i1 %i.d, label %bb.at, label %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit

bb.am:                                            ; preds = %.loopexit23.i, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit
  %.sroa.43.1 = phi i8 [ 0, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.43.2, %.loopexit23.i ] ; 5 uses
  %.sroa.34.1 = phi i32 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.34.2, %.loopexit23.i ] ; 5 uses
  %.sroa.25.1 = phi i32 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.25.2, %.loopexit23.i ] ; 5 uses
  %.sroa.16.1 = phi i64 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.16.2, %.loopexit23.i ] ; 5 uses
  %.sroa.0298.1 = phi float [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.0298.2, %.loopexit23.i ] ; 5 uses
  %.sroa.0286.1 = phi float [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.0286.2, %.loopexit23.i ] ; 5 uses
  %.sroa.6.1 = phi i64 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.6.2, %.loopexit23.i ] ; 5 uses
  %.sroa.9.1 = phi i32 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.9.2, %.loopexit23.i ] ; 5 uses
  %.sroa.12.1 = phi i32 [ undef, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.12.2, %.loopexit23.i ] ; 5 uses
  %.sroa.15.1 = phi i8 [ 0, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %.sroa.15.2, %.loopexit23.i ] ; 5 uses
  %indvars.iv46.i = phi i64 [ 0, %_ZL27getWholeMoleculeCoordinatesPK13gmx_moltype_tPK14gmx_ffparams_t7PbcTypeP7t_graphPA3_KfN3gmx8ArrayRefIKNSB_11BasicVectorIfEEEENSC_ISE_EE.exit ], [ %indvars.iv.next47.i, %.loopexit23.i ] ; 5 uses
  %i.hd = trunc nuw nsw i64 %indvars.iv46.i to i32
  %i.he = invoke noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef %i.hd, ptr noundef nonnull align 1 dereferenceable(3) %12)
          to label %.noexc97 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc97:                                         ; preds = %bb.am
  br i1 %i.he, label %bb.an, label %.loopexit23.i

bb.an:                                            ; preds = %.noexc97
  %i.hf = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv46.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !222
  %.fr910 = freeze i32 %i.hh                      ; 4 uses
  %i.hi = icmp sgt i32 %.fr910, 1
  br i1 %i.hi, label %.preheader22.i, label %.loopexit23.i

.preheader22.i:                                   ; preds = %bb.an
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv46.i ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !185
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !182 ; 3 uses
  %i.hn = ptrtoint ptr %i.hl to i64
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = sub i64 %i.hn, %i.ho
  %i.hq = lshr exact i64 %i.hp, 2
  %i.hr = trunc i64 %i.hq to i32                  ; 3 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.preheader.us.preheader.i, label %.loopexit23.i

.preheader.us.preheader.i:                        ; preds = %.preheader22.i
  %i.ht = icmp eq i32 %.fr910, 2
  %.sroa.04.0.insert.insert.i = or disjoint i64 %indvars.iv46.i, 4294967296 ; 8 uses
  %i.hu = add nuw i32 %.fr910, 1
  %i.hv = zext nneg i32 %.fr910 to i64            ; 5 uses
  %i.hw = zext i32 %i.hu to i64                   ; 2 uses
  br i1 %i.ht, label %.preheader.us.i.us, label %.preheader.us.i.preheader

.preheader.us.i.preheader:                        ; preds = %.preheader.us.preheader.i
  %i.hx = add nsw i64 %i.hv, -2
  br label %.preheader.us.i

.preheader.us.i.us:                               ; preds = %.preheader.us.preheader.i, %._crit_edge.us.i.split.us.us
  %.sroa.43.7.us = phi i8 [ %.sroa.43.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.43.1, %.preheader.us.preheader.i ] ; 2 uses
  %.sroa.34.7.us = phi i32 [ %.sroa.34.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.34.1, %.preheader.us.preheader.i ] ; 2 uses
  %.sroa.32.7.us = phi i32 [ %.sroa.32.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.25.1, %.preheader.us.preheader.i ] ; 2 uses
  %.sroa.16.7.us = phi i64 [ %.sroa.16.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.16.1, %.preheader.us.preheader.i ] ; 2 uses
  %.sroa.0286.7.us = phi float [ %.sroa.0286.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.0298.1, %.preheader.us.preheader.i ] ; 3 uses
  %indvars.iv43.i.us = phi i64 [ %indvars.iv.next44.i.us, %._crit_edge.us.i.split.us.us ], [ 0, %.preheader.us.preheader.i ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv43.i.us ; 2 uses
  %invariant.gep699.us = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.hz = load i32, ptr %invariant.gep699.us, align 4, !tbaa !184 ; 4 uses
  %i.ia = sext i32 %i.hz to i64
  %i.ib = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.ia ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  %gep.us.us.us.prol = getelementptr inbounds nuw i8, ptr %i.hy, i64 8
  %i.id = load i32, ptr %gep.us.us.us.prol, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i.us.us.us.prol = icmp eq i32 %i.hz, %i.id
  br i1 %.not62.us.i.us.us.us.prol, label %._crit_edge.us.i.split.us.us, label %bb.ao

bb.ao:                                            ; preds = %.preheader.us.i.us
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.ie ; 2 uses
  %i.ig = load <2 x float>, ptr %i.if, align 4, !tbaa !206
  %i.ih = load <2 x float>, ptr %i.ib, align 4, !tbaa !206
  %i.ii = fsub <2 x float> %i.ig, %i.ih           ; 2 uses
  %i.ij = fmul <2 x float> %i.ii, %i.ii           ; 2 uses
  %shift.prol = shufflevector <2 x float> %i.ij, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop.prol = fadd <2 x float> %i.ij, %shift.prol
  %i.ik = extractelement <2 x float> %foldExtExtBinop.prol, i64 0
  %i.il = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.im = load float, ptr %i.il, align 4, !tbaa !206
  %i.in = load float, ptr %i.ic, align 4, !tbaa !206
  %i.io = fsub float %i.im, %i.in                 ; 2 uses
  %i.ip = fmul float %i.io, %i.io
  %i.iq = fadd float %i.ik, %i.ip                 ; 3 uses
  %i.ir = trunc nuw i8 %.sroa.43.7.us to i1
  br i1 %i.ir, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol, label %._crit_edge.us.i.split.us.us

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol: ; preds = %bb.ao
  %i.is = fcmp ogt float %i.iq, %.sroa.0286.7.us
  br i1 %i.is, label %.thread.i.us.i.us.us.us.prol, label %._crit_edge.us.i.split.us.us

.thread.i.us.i.us.us.us.prol:                     ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol
  br label %._crit_edge.us.i.split.us.us

._crit_edge.us.i.split.us.us:                     ; preds = %.thread.i.us.i.us.us.us.prol, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol, %bb.ao, %.preheader.us.i.us
  %.sroa.43.11.us.us.us.prol = phi i8 [ %.sroa.43.7.us, %.preheader.us.i.us ], [ 1, %.thread.i.us.i.us.us.us.prol ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol ], [ 1, %bb.ao ] ; 2 uses
  %.sroa.34.11.us.us.us.prol = phi i32 [ %.sroa.34.7.us, %.preheader.us.i.us ], [ %i.id, %.thread.i.us.i.us.us.us.prol ], [ %.sroa.34.7.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol ], [ %i.id, %bb.ao ] ; 2 uses
  %.sroa.32.11.us.us.us.prol = phi i32 [ %.sroa.32.7.us, %.preheader.us.i.us ], [ %i.hz, %.thread.i.us.i.us.us.us.prol ], [ %.sroa.32.7.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol ], [ %i.hz, %bb.ao ] ; 2 uses
  %.sroa.16.11.us.us.us.prol = phi i64 [ %.sroa.16.7.us, %.preheader.us.i.us ], [ %.sroa.04.0.insert.insert.i, %.thread.i.us.i.us.us.us.prol ], [ %.sroa.16.7.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol ], [ %.sroa.04.0.insert.insert.i, %bb.ao ] ; 2 uses
  %.sroa.0286.11.us.us.us.prol = phi float [ %.sroa.0286.7.us, %.preheader.us.i.us ], [ %i.iq, %.thread.i.us.i.us.us.us.prol ], [ %.sroa.0286.7.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.us.us.us.prol ], [ %i.iq, %bb.ao ] ; 2 uses
  %indvars.iv.next44.i.us = add nuw nsw i64 %indvars.iv43.i.us, %i.hw ; 2 uses
  %i.it = trunc nuw i64 %indvars.iv.next44.i.us to i32
  %i.iu = icmp slt i32 %i.it, %i.hr
  br i1 %i.iu, label %.preheader.us.i.us, label %.loopexit23.i, !llvm.loop !223

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %._crit_edge.us.i.split
  %.sroa.0233.3 = phi float [ %.sroa.0233.5, %._crit_edge.us.i.split ], [ %.sroa.0286.1, %.preheader.us.i.preheader ]
  %.sroa.6.3 = phi i64 [ %.sroa.6.5, %._crit_edge.us.i.split ], [ %.sroa.6.1, %.preheader.us.i.preheader ]
  %.sroa.9.3 = phi i32 [ %.sroa.9.5, %._crit_edge.us.i.split ], [ %.sroa.9.1, %.preheader.us.i.preheader ]
  %.sroa.12.3 = phi i32 [ %.sroa.12.5, %._crit_edge.us.i.split ], [ %.sroa.12.1, %.preheader.us.i.preheader ]
  %.sroa.15.3 = phi i8 [ %.sroa.15.5, %._crit_edge.us.i.split ], [ %.sroa.15.1, %.preheader.us.i.preheader ]
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %._crit_edge.us.i.split ], [ 0, %.preheader.us.i.preheader ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hm, i64 %indvars.iv43.i
  %invariant.gep699 = getelementptr inbounds nuw i8, ptr %i.iv, i64 4 ; 4 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.loopexit21.us.i, %.preheader.us.i
  %.sroa.0233.4 = phi float [ %.sroa.0233.3, %.preheader.us.i ], [ %.sroa.0233.5, %.loopexit21.us.i ] ; 5 uses
  %.sroa.6.4 = phi i64 [ %.sroa.6.3, %.preheader.us.i ], [ %.sroa.6.5, %.loopexit21.us.i ] ; 4 uses
  %.sroa.9.4 = phi i32 [ %.sroa.9.3, %.preheader.us.i ], [ %.sroa.9.5, %.loopexit21.us.i ] ; 4 uses
  %.sroa.12.4 = phi i32 [ %.sroa.12.3, %.preheader.us.i ], [ %.sroa.12.5, %.loopexit21.us.i ] ; 4 uses
  %.sroa.15.4 = phi i8 [ %.sroa.15.3, %.preheader.us.i ], [ %.sroa.15.5, %.loopexit21.us.i ] ; 4 uses
  %indvars.iv38.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next39.i, %.loopexit21.us.i ] ; 4 uses
  %indvars.iv.i94 = phi i64 [ 1, %.preheader.us.i ], [ %indvars.iv.next.i95, %.loopexit21.us.i ] ; 4 uses
  %gep700 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep699, i64 %indvars.iv38.i
  %i.iw = load i32, ptr %gep700, align 4, !tbaa !184 ; 10 uses
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1 ; 3 uses
  %i.ix = icmp samesign ult i64 %indvars.iv.next39.i, %i.hv
  br i1 %i.ix, label %.lr.ph.us.i, label %.loopexit21.us.i

.lr.ph.us.i.new:                                  ; preds = %.prol.loopexit, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1
  %.sroa.0233.6 = phi float [ %.sroa.0233.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %.sroa.0233.6.unr, %.prol.loopexit ] ; 3 uses
  %.sroa.6.6 = phi i64 [ %.sroa.6.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %.sroa.6.6.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.9.6 = phi i32 [ %.sroa.9.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %.sroa.9.6.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.12.6 = phi i32 [ %.sroa.12.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %.sroa.12.6.unr, %.prol.loopexit ] ; 2 uses
  %.sroa.15.6 = phi i8 [ %.sroa.15.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %.sroa.15.6.unr, %.prol.loopexit ] ; 2 uses
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ], [ %indvars.iv35.i.unr, %.prol.loopexit ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep699, i64 %indvars.iv35.i
  %i.iy = load i32, ptr %gep, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i = icmp eq i32 %i.iw, %i.iy
  br i1 %.not62.us.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.us.i.new
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.iz ; 2 uses
  %i.jb = load <2 x float>, ptr %i.ja, align 4, !tbaa !206
  %i.jc = load <2 x float>, ptr %i.kg, align 4, !tbaa !206
  %i.jd = fsub <2 x float> %i.jb, %i.jc           ; 2 uses
  %i.je = fmul <2 x float> %i.jd, %i.jd           ; 2 uses
  %shift1095 = shufflevector <2 x float> %i.je, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1096 = fadd <2 x float> %i.je, %shift1095
  %i.jf = extractelement <2 x float> %foldExtExtBinop1096, i64 0
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !206
  %i.ji = load float, ptr %i.kh, align 4, !tbaa !206
  %i.jj = fsub float %i.jh, %i.ji                 ; 2 uses
  %i.jk = fmul float %i.jj, %i.jj
  %i.jl = fadd float %i.jf, %i.jk                 ; 3 uses
  %i.jm = trunc nuw i8 %.sroa.15.6 to i1
  br i1 %i.jm, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i: ; preds = %bb.aq
  %i.jn = fcmp ogt float %i.jl, %.sroa.0233.6
  br i1 %i.jn, label %.thread.i.us.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i

.thread.i.us.i:                                   ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i: ; preds = %bb.aq, %.thread.i.us.i, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i, %.lr.ph.us.i.new
  %.sroa.0233.7 = phi float [ %.sroa.0233.6, %.lr.ph.us.i.new ], [ %i.jl, %.thread.i.us.i ], [ %.sroa.0233.6, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i ], [ %i.jl, %bb.aq ] ; 3 uses
  %.sroa.6.7 = phi i64 [ %.sroa.6.6, %.lr.ph.us.i.new ], [ %.sroa.04.0.insert.insert.i, %.thread.i.us.i ], [ %.sroa.6.6, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i ], [ %.sroa.04.0.insert.insert.i, %bb.aq ] ; 2 uses
  %.sroa.9.7 = phi i32 [ %.sroa.9.6, %.lr.ph.us.i.new ], [ %i.iw, %.thread.i.us.i ], [ %.sroa.9.6, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i ], [ %i.iw, %bb.aq ] ; 2 uses
  %.sroa.12.7 = phi i32 [ %.sroa.12.6, %.lr.ph.us.i.new ], [ %i.iy, %.thread.i.us.i ], [ %.sroa.12.6, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i ], [ %i.iy, %bb.aq ] ; 2 uses
  %.sroa.15.7 = phi i8 [ %.sroa.15.6, %.lr.ph.us.i.new ], [ 1, %.thread.i.us.i ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i ], [ 1, %bb.aq ] ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep699, i64 %indvars.iv35.i
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jp = load i32, ptr %gep.1, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i.1 = icmp eq i32 %i.iw, %i.jp
  br i1 %.not62.us.i.1, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1, label %bb.ar

bb.ar:                                            ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.jq ; 2 uses
  %i.js = load <2 x float>, ptr %i.jr, align 4, !tbaa !206
  %i.jt = load <2 x float>, ptr %i.kg, align 4, !tbaa !206
  %i.ju = fsub <2 x float> %i.js, %i.jt           ; 2 uses
  %i.jv = fmul <2 x float> %i.ju, %i.ju           ; 2 uses
  %shift1095.1 = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1096.1 = fadd <2 x float> %i.jv, %shift1095.1
  %i.jw = extractelement <2 x float> %foldExtExtBinop1096.1, i64 0
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !206
  %i.jz = load float, ptr %i.kh, align 4, !tbaa !206
  %i.ka = fsub float %i.jy, %i.jz                 ; 2 uses
  %i.kb = fmul float %i.ka, %i.ka
  %i.kc = fadd float %i.jw, %i.kb                 ; 3 uses
  %i.kd = trunc nuw i8 %.sroa.15.7 to i1
  br i1 %i.kd, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1: ; preds = %bb.ar
  %i.ke = fcmp ogt float %i.kc, %.sroa.0233.7
  br i1 %i.ke, label %.thread.i.us.i.1, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1

.thread.i.us.i.1:                                 ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1: ; preds = %.thread.i.us.i.1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1, %bb.ar, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i
  %.sroa.0233.7.1 = phi float [ %.sroa.0233.7, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i ], [ %i.kc, %.thread.i.us.i.1 ], [ %.sroa.0233.7, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1 ], [ %i.kc, %bb.ar ] ; 2 uses
  %.sroa.6.7.1 = phi i64 [ %.sroa.6.7, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i ], [ %.sroa.04.0.insert.insert.i, %.thread.i.us.i.1 ], [ %.sroa.6.7, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1 ], [ %.sroa.04.0.insert.insert.i, %bb.ar ] ; 2 uses
  %.sroa.9.7.1 = phi i32 [ %.sroa.9.7, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i ], [ %i.iw, %.thread.i.us.i.1 ], [ %.sroa.9.7, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1 ], [ %i.iw, %bb.ar ] ; 2 uses
  %.sroa.12.7.1 = phi i32 [ %.sroa.12.7, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i ], [ %i.jp, %.thread.i.us.i.1 ], [ %.sroa.12.7, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1 ], [ %i.jp, %bb.ar ] ; 2 uses
  %.sroa.15.7.1 = phi i8 [ %.sroa.15.7, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i ], [ 1, %.thread.i.us.i.1 ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.1 ], [ 1, %bb.ar ] ; 2 uses
  %indvars.iv.next36.i.1 = add nuw nsw i64 %indvars.iv35.i, 2 ; 2 uses
  %exitcond.not.i96.1 = icmp eq i64 %indvars.iv.next36.i.1, %i.hv
  br i1 %exitcond.not.i96.1, label %.loopexit21.us.i, label %.lr.ph.us.i.new, !llvm.loop !224

.loopexit21.us.i:                                 ; preds = %.prol.loopexit, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1, %bb.ap
  %.sroa.0233.5 = phi float [ %.sroa.0233.4, %bb.ap ], [ %.sroa.0233.7.lcssa.unr, %.prol.loopexit ], [ %.sroa.0233.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ] ; 3 uses
  %.sroa.6.5 = phi i64 [ %.sroa.6.4, %bb.ap ], [ %.sroa.6.7.lcssa.unr, %.prol.loopexit ], [ %.sroa.6.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ] ; 3 uses
  %.sroa.9.5 = phi i32 [ %.sroa.9.4, %bb.ap ], [ %.sroa.9.7.lcssa.unr, %.prol.loopexit ], [ %.sroa.9.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ] ; 3 uses
  %.sroa.12.5 = phi i32 [ %.sroa.12.4, %bb.ap ], [ %.sroa.12.7.lcssa.unr, %.prol.loopexit ], [ %.sroa.12.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ] ; 3 uses
  %.sroa.15.5 = phi i8 [ %.sroa.15.4, %bb.ap ], [ %.sroa.15.7.lcssa.unr, %.prol.loopexit ], [ %.sroa.15.7.1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.1 ] ; 3 uses
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %i.hv
  br i1 %exitcond42.not.i, label %._crit_edge.us.i.split, label %bb.ap, !llvm.loop !225

.lr.ph.us.i:                                      ; preds = %bb.ap
  %i.kf = sext i32 %i.iw to i64
  %i.kg = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.kf ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8 ; 3 uses
  %i.ki = sub nsw i64 %indvars.iv38.i, %i.hv
  %i.kj = and i64 %i.ki, 1
  %lcmp.mod.not.not = icmp eq i64 %i.kj, 0
  br i1 %lcmp.mod.not.not, label %.prol.preheader, label %.prol.loopexit

.prol.preheader:                                  ; preds = %.lr.ph.us.i
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep699, i64 %indvars.iv.i94
  %i.kk = load i32, ptr %gep.prol, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i.prol = icmp eq i32 %i.iw, %i.kk
  br i1 %.not62.us.i.prol, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol, label %bb.as

bb.as:                                            ; preds = %.prol.preheader
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.kl ; 2 uses
  %i.kn = load <2 x float>, ptr %i.km, align 4, !tbaa !206
  %i.ko = load <2 x float>, ptr %i.kg, align 4, !tbaa !206
  %i.kp = fsub <2 x float> %i.kn, %i.ko           ; 2 uses
  %i.kq = fmul <2 x float> %i.kp, %i.kp           ; 2 uses
  %shift1095.prol = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1096.prol = fadd <2 x float> %i.kq, %shift1095.prol
  %i.kr = extractelement <2 x float> %foldExtExtBinop1096.prol, i64 0
  %i.ks = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !206
  %i.ku = load float, ptr %i.kh, align 4, !tbaa !206
  %i.kv = fsub float %i.kt, %i.ku                 ; 2 uses
  %i.kw = fmul float %i.kv, %i.kv
  %i.kx = fadd float %i.kr, %i.kw                 ; 3 uses
  %i.ky = trunc nuw i8 %.sroa.15.4 to i1
  br i1 %i.ky, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol: ; preds = %bb.as
  %i.kz = fcmp ogt float %i.kx, %.sroa.0233.4
  br i1 %i.kz, label %.thread.i.us.i.prol, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol

.thread.i.us.i.prol:                              ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol: ; preds = %.thread.i.us.i.prol, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol, %bb.as, %.prol.preheader
  %.sroa.0233.7.prol = phi float [ %.sroa.0233.4, %.prol.preheader ], [ %i.kx, %.thread.i.us.i.prol ], [ %.sroa.0233.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol ], [ %i.kx, %bb.as ] ; 2 uses
  %.sroa.6.7.prol = phi i64 [ %.sroa.6.4, %.prol.preheader ], [ %.sroa.04.0.insert.insert.i, %.thread.i.us.i.prol ], [ %.sroa.6.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol ], [ %.sroa.04.0.insert.insert.i, %bb.as ] ; 2 uses
  %.sroa.9.7.prol = phi i32 [ %.sroa.9.4, %.prol.preheader ], [ %i.iw, %.thread.i.us.i.prol ], [ %.sroa.9.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol ], [ %i.iw, %bb.as ] ; 2 uses
  %.sroa.12.7.prol = phi i32 [ %.sroa.12.4, %.prol.preheader ], [ %i.kk, %.thread.i.us.i.prol ], [ %.sroa.12.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol ], [ %i.kk, %bb.as ] ; 2 uses
  %.sroa.15.7.prol = phi i8 [ %.sroa.15.4, %.prol.preheader ], [ 1, %.thread.i.us.i.prol ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i.prol ], [ 1, %bb.as ] ; 2 uses
  %indvars.iv.next36.i.prol = add nuw nsw i64 %indvars.iv.i94, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol, %.lr.ph.us.i
  %.sroa.0233.7.lcssa.unr = phi float [ poison, %.lr.ph.us.i ], [ %.sroa.0233.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.6.7.lcssa.unr = phi i64 [ poison, %.lr.ph.us.i ], [ %.sroa.6.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.9.7.lcssa.unr = phi i32 [ poison, %.lr.ph.us.i ], [ %.sroa.9.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.12.7.lcssa.unr = phi i32 [ poison, %.lr.ph.us.i ], [ %.sroa.12.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.15.7.lcssa.unr = phi i8 [ poison, %.lr.ph.us.i ], [ %.sroa.15.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.0233.6.unr = phi float [ %.sroa.0233.4, %.lr.ph.us.i ], [ %.sroa.0233.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.6.6.unr = phi i64 [ %.sroa.6.4, %.lr.ph.us.i ], [ %.sroa.6.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.9.6.unr = phi i32 [ %.sroa.9.4, %.lr.ph.us.i ], [ %.sroa.9.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.12.6.unr = phi i32 [ %.sroa.12.4, %.lr.ph.us.i ], [ %.sroa.12.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %.sroa.15.6.unr = phi i8 [ %.sroa.15.4, %.lr.ph.us.i ], [ %.sroa.15.7.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %indvars.iv35.i.unr = phi i64 [ %indvars.iv.i94, %.lr.ph.us.i ], [ %indvars.iv.next36.i.prol, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i.prol ]
  %i.la = icmp eq i64 %i.hx, %indvars.iv38.i
  br i1 %i.la, label %.loopexit21.us.i, label %.lr.ph.us.i.new

._crit_edge.us.i.split:                           ; preds = %.loopexit21.us.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, %i.hw ; 2 uses
  %i.lb = trunc nuw i64 %indvars.iv.next44.i to i32
  %i.lc = icmp slt i32 %i.lb, %i.hr
  br i1 %i.lc, label %.preheader.us.i, label %.loopexit23.i, !llvm.loop !223

.loopexit23.i:                                    ; preds = %._crit_edge.us.i.split, %._crit_edge.us.i.split.us.us, %.preheader22.i, %bb.an, %.noexc97
  %.sroa.43.2 = phi i8 [ %.sroa.43.1, %.noexc97 ], [ %.sroa.43.1, %.preheader22.i ], [ %.sroa.43.1, %bb.an ], [ %.sroa.43.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.43.1, %._crit_edge.us.i.split ] ; 4 uses
  %.sroa.34.2 = phi i32 [ %.sroa.34.1, %.noexc97 ], [ %.sroa.34.1, %.preheader22.i ], [ %.sroa.34.1, %bb.an ], [ %.sroa.34.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.34.1, %._crit_edge.us.i.split ] ; 4 uses
  %.sroa.25.2 = phi i32 [ %.sroa.25.1, %.noexc97 ], [ %.sroa.25.1, %.preheader22.i ], [ %.sroa.25.1, %bb.an ], [ %.sroa.32.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.25.1, %._crit_edge.us.i.split ] ; 4 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.1, %.noexc97 ], [ %.sroa.16.1, %.preheader22.i ], [ %.sroa.16.1, %bb.an ], [ %.sroa.16.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.16.1, %._crit_edge.us.i.split ] ; 4 uses
  %.sroa.0298.2 = phi float [ %.sroa.0298.1, %.noexc97 ], [ %.sroa.0298.1, %.preheader22.i ], [ %.sroa.0298.1, %bb.an ], [ %.sroa.0286.11.us.us.us.prol, %._crit_edge.us.i.split.us.us ], [ %.sroa.0298.1, %._crit_edge.us.i.split ] ; 4 uses
  %.sroa.0286.2 = phi float [ %.sroa.0286.1, %.noexc97 ], [ %.sroa.0286.1, %.preheader22.i ], [ %.sroa.0286.1, %bb.an ], [ %.sroa.0286.1, %._crit_edge.us.i.split.us.us ], [ %.sroa.0233.5, %._crit_edge.us.i.split ] ; 2 uses
  %.sroa.6.2 = phi i64 [ %.sroa.6.1, %.noexc97 ], [ %.sroa.6.1, %.preheader22.i ], [ %.sroa.6.1, %bb.an ], [ %.sroa.6.1, %._crit_edge.us.i.split.us.us ], [ %.sroa.6.5, %._crit_edge.us.i.split ] ; 2 uses
  %.sroa.9.2 = phi i32 [ %.sroa.9.1, %.noexc97 ], [ %.sroa.9.1, %.preheader22.i ], [ %.sroa.9.1, %bb.an ], [ %.sroa.9.1, %._crit_edge.us.i.split.us.us ], [ %.sroa.9.5, %._crit_edge.us.i.split ] ; 2 uses
  %.sroa.12.2 = phi i32 [ %.sroa.12.1, %.noexc97 ], [ %.sroa.12.1, %.preheader22.i ], [ %.sroa.12.1, %bb.an ], [ %.sroa.12.1, %._crit_edge.us.i.split.us.us ], [ %.sroa.12.5, %._crit_edge.us.i.split ] ; 2 uses
  %.sroa.15.2 = phi i8 [ %.sroa.15.1, %.noexc97 ], [ %.sroa.15.1, %.preheader22.i ], [ %.sroa.15.1, %bb.an ], [ %.sroa.15.1, %._crit_edge.us.i.split.us.us ], [ %.sroa.15.5, %._crit_edge.us.i.split ] ; 2 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %.not19.i = icmp eq i64 %indvars.iv.next47.i, 95
  br i1 %.not19.i, label %bb.al, label %bb.am

bb.at:                                            ; preds = %bb.al
  %i.ld = load ptr, ptr %i.eb, align 8, !tbaa !185
  %i.le = load ptr, ptr %i.ea, align 8, !tbaa !182 ; 2 uses
  %i.lf = ptrtoint ptr %i.ld to i64
  %i.lg = ptrtoint ptr %i.le to i64
  %i.lh = sub i64 %i.lf, %i.lg                    ; 2 uses
  %i.li = icmp sgt i64 %i.lh, 4
  br i1 %i.li, label %.lr.ph33.i, label %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit

.lr.ph33.i:                                       ; preds = %bb.at
  %i.lj = load ptr, ptr %i.ec, align 8, !tbaa !182 ; 2 uses
  %i.lk = lshr exact i64 %i.lh, 2
  %i.ll = call i64 @llvm.usub.sat.i64(i64 %i.lk, i64 2)
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge.i, %.lr.ph33.i
  %.sroa.43.3 = phi i8 [ %.sroa.43.2, %.lr.ph33.i ], [ %.sroa.43.6, %._crit_edge.i ] ; 2 uses
  %.sroa.34.3 = phi i32 [ %.sroa.34.2, %.lr.ph33.i ], [ %.sroa.34.6, %._crit_edge.i ] ; 2 uses
  %.sroa.32.3 = phi i32 [ %.sroa.25.2, %.lr.ph33.i ], [ %.sroa.32.6, %._crit_edge.i ] ; 2 uses
  %.sroa.16.3 = phi i64 [ %.sroa.16.2, %.lr.ph33.i ], [ %.sroa.16.6, %._crit_edge.i ] ; 2 uses
  %.sroa.0286.3 = phi float [ %.sroa.0298.2, %.lr.ph33.i ], [ %.sroa.0286.6, %._crit_edge.i ] ; 2 uses
  %.031.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.lx, %._crit_edge.i ] ; 6 uses
  %i.lm = getelementptr [4 x i8], ptr %i.le, i64 %.031.i ; 2 uses
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !184 ; 2 uses
  %i.lo = getelementptr i8, ptr %i.lm, i64 4
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !184 ; 2 uses
  %i.lq = sext i32 %i.lp to i64
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lq
  %.not2029.i = icmp eq i32 %i.ln, %i.lp
  br i1 %.not2029.i, label %._crit_edge.i, label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %bb.au
  %i.ls = sext i32 %i.ln to i64
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %.031.i ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = trunc i64 %.031.i to i32                ; 2 uses
  br label %bb.av

._crit_edge.i:                                    ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i, %bb.au
  %.sroa.43.6 = phi i8 [ %.sroa.43.3, %bb.au ], [ %.sroa.43.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.34.6 = phi i32 [ %.sroa.34.3, %bb.au ], [ %.sroa.34.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.32.6 = phi i32 [ %.sroa.32.3, %bb.au ], [ %.sroa.32.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.16.6 = phi i64 [ %.sroa.16.3, %bb.au ], [ %.sroa.16.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.0286.6 = phi float [ %.sroa.0286.3, %bb.au ], [ %.sroa.0286.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %i.lx = add nuw nsw i64 %.031.i, 1
  %exitcond.not = icmp eq i64 %.031.i, %i.ll
  br i1 %exitcond.not, label %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit, label %bb.au, !llvm.loop !226

bb.av:                                            ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i, %.lr.ph.i92
  %.sroa.43.4 = phi i8 [ %.sroa.43.3, %.lr.ph.i92 ], [ %.sroa.43.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.34.4 = phi i32 [ %.sroa.34.3, %.lr.ph.i92 ], [ %.sroa.34.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.32.4 = phi i32 [ %.sroa.32.3, %.lr.ph.i92 ], [ %.sroa.32.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.16.4 = phi i64 [ %.sroa.16.3, %.lr.ph.i92 ], [ %.sroa.16.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %.sroa.0286.4 = phi float [ %.sroa.0286.3, %.lr.ph.i92 ], [ %.sroa.0286.5, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 3 uses
  %.sroa.01.030.i = phi ptr [ %i.lt, %.lr.ph.i92 ], [ %i.mo, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i ] ; 2 uses
  %i.ly = load i32, ptr %.sroa.01.030.i, align 4, !tbaa !184 ; 3 uses
  %i.lz = sext i32 %i.ly to i64                   ; 2 uses
  %.not.i93 = icmp eq i64 %.031.i, %i.lz
  br i1 %.not.i93, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ma = getelementptr inbounds [12 x i8], ptr %i.dw, i64 %i.lz ; 2 uses
  %i.mb = load <2 x float>, ptr %i.ma, align 4, !tbaa !206
  %i.mc = load <2 x float>, ptr %i.lu, align 4, !tbaa !206
  %i.md = fsub <2 x float> %i.mb, %i.mc           ; 2 uses
  %i.me = fmul <2 x float> %i.md, %i.md           ; 2 uses
  %shift1098 = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1099 = fadd <2 x float> %i.me, %shift1098
  %i.mf = extractelement <2 x float> %foldExtExtBinop1099, i64 0
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !206
  %i.mi = load float, ptr %i.lv, align 4, !tbaa !206
  %i.mj = fsub float %i.mh, %i.mi                 ; 2 uses
  %i.mk = fmul float %i.mj, %i.mj
  %i.ml = fadd float %i.mf, %i.mk                 ; 3 uses
  %i.mm = trunc nuw i8 %.sroa.43.4 to i1
  br i1 %i.mm, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i: ; preds = %bb.aw
  %i.mn = fcmp ogt float %i.ml, %.sroa.0286.4
  br i1 %i.mn, label %.thread.i68.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i

.thread.i68.i:                                    ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i: ; preds = %bb.aw, %.thread.i68.i, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i, %bb.av
  %.sroa.43.5 = phi i8 [ %.sroa.43.4, %bb.av ], [ 1, %.thread.i68.i ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i ], [ 1, %bb.aw ] ; 2 uses
  %.sroa.34.5 = phi i32 [ %.sroa.34.4, %bb.av ], [ %i.ly, %.thread.i68.i ], [ %.sroa.34.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i ], [ %i.ly, %bb.aw ] ; 2 uses
  %.sroa.32.5 = phi i32 [ %.sroa.32.4, %bb.av ], [ %i.lw, %.thread.i68.i ], [ %.sroa.32.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i ], [ %i.lw, %bb.aw ] ; 2 uses
  %.sroa.16.5 = phi i64 [ %.sroa.16.4, %bb.av ], [ 0, %.thread.i68.i ], [ %.sroa.16.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i ], [ 0, %bb.aw ] ; 2 uses
  %.sroa.0286.5 = phi float [ %.sroa.0286.4, %bb.av ], [ %i.ml, %.thread.i68.i ], [ %.sroa.0286.4, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i ], [ %i.ml, %bb.aw ] ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.01.030.i, i64 4 ; 2 uses
  %.not20.i = icmp eq ptr %i.mo, %i.lr
  br i1 %.not20.i, label %._crit_edge.i, label %bb.av

_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit: ; preds = %._crit_edge.i, %bb.al, %bb.at
  %.sroa.43.12 = phi i8 [ %.sroa.43.2, %bb.al ], [ %.sroa.43.2, %bb.at ], [ %.sroa.43.6, %._crit_edge.i ]
  %.sroa.34.12 = phi i32 [ %.sroa.34.2, %bb.al ], [ %.sroa.34.2, %bb.at ], [ %.sroa.34.6, %._crit_edge.i ]
  %.sroa.32.12 = phi i32 [ %.sroa.25.2, %bb.al ], [ %.sroa.25.2, %bb.at ], [ %.sroa.32.6, %._crit_edge.i ]
  %.sroa.16.12 = phi i64 [ %.sroa.16.2, %bb.al ], [ %.sroa.16.2, %bb.at ], [ %.sroa.16.6, %._crit_edge.i ]
  %.sroa.0286.12 = phi float [ %.sroa.0298.2, %bb.al ], [ %.sroa.0298.2, %bb.at ], [ %.sroa.0286.6, %._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  br label %bb.bk

.loopexit.split:                                  ; preds = %bb.bg
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.bj
  %lpad.loopexit537 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.az
  %lpad.loopexit540 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.am
  %lpad.loopexit542 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ak, %.noexc88, %.noexc87, %bb.ad
  %lpad.loopexit.split-lp543 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split, %.loopexit.split.us.split.us.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us.us.us, %.loopexit.split.us.split.us.split.us ], [ %lpad.loopexit, %.loopexit.split ], [ %lpad.loopexit537, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit540, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit542, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp543, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i151 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i151, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit152, label %bb.bp

bb.ax:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #14
  store i8 %i.am, ptr %11, align 1, !tbaa !217
  store i8 0, ptr %i.ap, align 1, !tbaa !220
  store i8 0, ptr %i.aq, align 1, !tbaa !221
  br label %bb.az

bb.ay:                                            ; preds = %.loopexit95.i
  br i1 %i.d, label %bb.bh, label %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit

bb.az:                                            ; preds = %.loopexit95.i, %bb.ax
  %.sroa.43.13 = phi i8 [ 0, %bb.ax ], [ %.sroa.43.14, %.loopexit95.i ] ; 5 uses
  %.sroa.34.13 = phi i32 [ undef, %bb.ax ], [ %.sroa.34.14, %.loopexit95.i ] ; 5 uses
  %.sroa.25.13 = phi i32 [ undef, %bb.ax ], [ %.sroa.25.14, %.loopexit95.i ] ; 5 uses
  %.sroa.16.13 = phi i64 [ undef, %bb.ax ], [ %.sroa.16.14, %.loopexit95.i ] ; 5 uses
  %.sroa.0298.13 = phi float [ undef, %bb.ax ], [ %.sroa.0298.14, %.loopexit95.i ] ; 5 uses
  %.sroa.0286.13 = phi float [ undef, %bb.ax ], [ %.sroa.0286.14, %.loopexit95.i ] ; 5 uses
  %.sroa.6.8 = phi i64 [ undef, %bb.ax ], [ %.sroa.6.9, %.loopexit95.i ] ; 5 uses
  %.sroa.9.8 = phi i32 [ undef, %bb.ax ], [ %.sroa.9.9, %.loopexit95.i ] ; 5 uses
  %.sroa.12.8 = phi i32 [ undef, %bb.ax ], [ %.sroa.12.9, %.loopexit95.i ] ; 5 uses
  %.sroa.15.8 = phi i8 [ 0, %bb.ax ], [ %.sroa.15.9, %.loopexit95.i ] ; 5 uses
  %indvars.iv118.i = phi i64 [ 0, %bb.ax ], [ %indvars.iv.next119.i, %.loopexit95.i ] ; 5 uses
  %i.mp = trunc nuw nsw i64 %indvars.iv118.i to i32
  %i.mq = invoke noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef %i.mp, ptr noundef nonnull align 1 dereferenceable(3) %11)
          to label %.noexc124 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc124:                                        ; preds = %bb.az
  br i1 %i.mq, label %bb.ba, label %.loopexit95.i

bb.ba:                                            ; preds = %.noexc124
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv118.i ; 8 uses
  %i.ms = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv118.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.mu = load i32, ptr %i.mt, align 8, !tbaa !222
  %.fr = freeze i32 %i.mu                         ; 4 uses
  %i.mv = icmp sgt i32 %.fr, 1
  br i1 %i.mv, label %.preheader94.i, label %.loopexit95.i

.preheader94.i:                                   ; preds = %bb.ba
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 3 uses
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !185
  %i.my = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = ptrtoint ptr %i.my to i64
  %i.nb = sub i64 %i.mz, %i.na
  %i.nc = lshr exact i64 %i.nb, 2
  %i.nd = trunc i64 %i.nc to i32
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.preheader.us.preheader.i110, label %.loopexit95.i

.preheader.us.preheader.i110:                     ; preds = %.preheader94.i
  %i.nf = icmp eq i32 %.fr, 2
  %.sroa.076.0.insert.insert.i = or disjoint i64 %indvars.iv118.i, 4294967296 ; 4 uses
  %i.ng = add nuw i32 %.fr, 1
  %i.nh = zext nneg i32 %.fr to i64               ; 6 uses
  %i.ni = zext i32 %i.ng to i64                   ; 2 uses
  br i1 %i.nf, label %.preheader.us.i114.us, label %.preheader.us.i114

.preheader.us.i114.us:                            ; preds = %.preheader.us.preheader.i110, %._crit_edge.us.i117.split.us.us
  %.sroa.43.19.us = phi i8 [ %.sroa.43.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.43.13, %.preheader.us.preheader.i110 ]
  %.sroa.34.19.us = phi i32 [ %.sroa.34.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.34.13, %.preheader.us.preheader.i110 ]
  %.sroa.32.19.us = phi i32 [ %.sroa.32.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.25.13, %.preheader.us.preheader.i110 ]
  %.sroa.16.19.us = phi i64 [ %.sroa.16.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.16.13, %.preheader.us.preheader.i110 ]
  %.sroa.0286.19.us = phi float [ %.sroa.0286.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.0298.13, %.preheader.us.preheader.i110 ]
  %indvars.iv115.i.us = phi i64 [ %indvars.iv.next116.i.us, %._crit_edge.us.i117.split.us.us ], [ 0, %.preheader.us.preheader.i110 ] ; 2 uses
  %i.nj = add nuw nsw i64 %indvars.iv115.i.us, 1  ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit93.us.i.us.us, %.preheader.us.i114.us
  %.sroa.43.20.us.us = phi i8 [ %.sroa.43.19.us, %.preheader.us.i114.us ], [ %.sroa.43.21.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %.sroa.34.20.us.us = phi i32 [ %.sroa.34.19.us, %.preheader.us.i114.us ], [ %.sroa.34.21.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %.sroa.32.20.us.us = phi i32 [ %.sroa.32.19.us, %.preheader.us.i114.us ], [ %.sroa.32.21.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %.sroa.16.20.us.us = phi i64 [ %.sroa.16.19.us, %.preheader.us.i114.us ], [ %.sroa.16.21.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %.sroa.0286.20.us.us = phi float [ %.sroa.0286.19.us, %.preheader.us.i114.us ], [ %.sroa.0286.21.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %indvars.iv110.i.us.us = phi i64 [ 0, %.preheader.us.i114.us ], [ %indvars.iv.next111.i.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %indvars.iv.i115.us.us = phi i64 [ 1, %.preheader.us.i114.us ], [ %indvars.iv.next.i116.us.us, %.loopexit93.us.i.us.us ] ; 2 uses
  %i.nk = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %indvars.iv110.i.us.us
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.nj
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !184 ; 4 uses
  %indvars.iv.next111.i.us.us = add nuw nsw i64 %indvars.iv110.i.us.us, 1 ; 3 uses
  %i.no = icmp samesign ult i64 %indvars.iv.next111.i.us.us, %i.nh
  br i1 %i.no, label %.lr.ph.us.i118.us.us, label %.loopexit93.us.i.us.us

.lr.ph.us.i118.us.us:                             ; preds = %bb.bb
  %i.np = sext i32 %i.nn to i64
  %i.nq = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.np
  br label %bb.bc

.loopexit93.us.i.us.us:                           ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us, %bb.bb
  %.sroa.43.21.us.us = phi i8 [ %.sroa.43.20.us.us, %bb.bb ], [ %.sroa.43.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %.sroa.34.21.us.us = phi i32 [ %.sroa.34.20.us.us, %bb.bb ], [ %.sroa.34.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %.sroa.32.21.us.us = phi i32 [ %.sroa.32.20.us.us, %bb.bb ], [ %.sroa.32.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %.sroa.16.21.us.us = phi i64 [ %.sroa.16.20.us.us, %bb.bb ], [ %.sroa.16.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %.sroa.0286.21.us.us = phi float [ %.sroa.0286.20.us.us, %bb.bb ], [ %.sroa.0286.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %indvars.iv.next.i116.us.us = add nuw nsw i64 %indvars.iv.i115.us.us, 1
  %exitcond114.not.i.us.us = icmp eq i64 %indvars.iv.next111.i.us.us, %i.nh
  br i1 %exitcond114.not.i.us.us, label %._crit_edge.us.i117.split.us.us, label %bb.bb, !llvm.loop !227

bb.bc:                                            ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us, %.lr.ph.us.i118.us.us
  %.sroa.43.22.us.us.us = phi i8 [ %.sroa.43.20.us.us, %.lr.ph.us.i118.us.us ], [ %.sroa.43.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 2 uses
  %.sroa.34.22.us.us.us = phi i32 [ %.sroa.34.20.us.us, %.lr.ph.us.i118.us.us ], [ %.sroa.34.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 2 uses
  %.sroa.32.22.us.us.us = phi i32 [ %.sroa.32.20.us.us, %.lr.ph.us.i118.us.us ], [ %.sroa.32.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 2 uses
  %.sroa.16.22.us.us.us = phi i64 [ %.sroa.16.20.us.us, %.lr.ph.us.i118.us.us ], [ %.sroa.16.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 2 uses
  %.sroa.0286.22.us.us.us = phi float [ %.sroa.0286.20.us.us, %.lr.ph.us.i118.us.us ], [ %.sroa.0286.23.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 3 uses
  %indvars.iv107.i.us.us.us = phi i64 [ %indvars.iv.i115.us.us, %.lr.ph.us.i118.us.us ], [ %indvars.iv.next108.i.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us ] ; 2 uses
  %i.nr = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %indvars.iv107.i.us.us.us
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ns, i64 %i.nj
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i119.us.us.us = icmp eq i32 %i.nn, %i.nu
  br i1 %.not62.us.i119.us.us.us, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nv = sext i32 %i.nu to i64
  %i.nw = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.nv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(12) %i.nq, ptr noundef nonnull align 4 dereferenceable(12) %i.nw, ptr noundef nonnull %i.c)
          to label %.noexc125.us.us.us unwind label %.loopexit.split.us.split.us.split.us

.noexc125.us.us.us:                               ; preds = %bb.bd
  %i.nx = load float, ptr %i.c, align 4, !tbaa !206 ; 2 uses
  %i.ny = load float, ptr %i.ar, align 4, !tbaa !206 ; 2 uses
  %i.nz = fmul float %i.ny, %i.ny
  %i.oa = call float @llvm.fmuladd.f32(float %i.nx, float %i.nx, float %i.nz)
  %i.ob = load float, ptr %i.as, align 4, !tbaa !206 ; 2 uses
  %i.oc = call noundef float @llvm.fmuladd.f32(float %i.ob, float %i.ob, float %i.oa) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.od = trunc nuw i8 %.sroa.43.22.us.us.us to i1
  br i1 %i.od, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us: ; preds = %.noexc125.us.us.us
  %i.oe = fcmp ogt float %i.oc, %.sroa.0286.22.us.us.us
  br i1 %i.oe, label %.thread.i.us.i123.us.us.us, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us

.thread.i.us.i123.us.us.us:                       ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120.us.us.us: ; preds = %.noexc125.us.us.us, %.thread.i.us.i123.us.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us, %bb.bc
  %.sroa.43.23.us.us.us = phi i8 [ %.sroa.43.22.us.us.us, %bb.bc ], [ 1, %.thread.i.us.i123.us.us.us ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us ], [ 1, %.noexc125.us.us.us ] ; 2 uses
  %.sroa.34.23.us.us.us = phi i32 [ %.sroa.34.22.us.us.us, %bb.bc ], [ %i.nu, %.thread.i.us.i123.us.us.us ], [ %.sroa.34.22.us.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us ], [ %i.nu, %.noexc125.us.us.us ] ; 2 uses
  %.sroa.32.23.us.us.us = phi i32 [ %.sroa.32.22.us.us.us, %bb.bc ], [ %i.nn, %.thread.i.us.i123.us.us.us ], [ %.sroa.32.22.us.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us ], [ %i.nn, %.noexc125.us.us.us ] ; 2 uses
  %.sroa.16.23.us.us.us = phi i64 [ %.sroa.16.22.us.us.us, %bb.bc ], [ %.sroa.076.0.insert.insert.i, %.thread.i.us.i123.us.us.us ], [ %.sroa.16.22.us.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us ], [ %.sroa.076.0.insert.insert.i, %.noexc125.us.us.us ] ; 2 uses
  %.sroa.0286.23.us.us.us = phi float [ %.sroa.0286.22.us.us.us, %bb.bc ], [ %i.oc, %.thread.i.us.i123.us.us.us ], [ %.sroa.0286.22.us.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122.us.us.us ], [ %i.oc, %.noexc125.us.us.us ] ; 2 uses
  %indvars.iv.next108.i.us.us.us = add nuw nsw i64 %indvars.iv107.i.us.us.us, 1 ; 2 uses
  %exitcond.not.i121.us.us.us = icmp eq i64 %indvars.iv.next108.i.us.us.us, %i.nh
  br i1 %exitcond.not.i121.us.us.us, label %.loopexit93.us.i.us.us, label %bb.bc, !llvm.loop !228

._crit_edge.us.i117.split.us.us:                  ; preds = %.loopexit93.us.i.us.us
  %indvars.iv.next116.i.us = add nuw nsw i64 %indvars.iv115.i.us, %i.ni ; 2 uses
  %i.of = load ptr, ptr %i.mw, align 8, !tbaa !185
  %i.og = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = lshr exact i64 %i.oj, 2
  %i.ol = trunc i64 %i.ok to i32
  %i.om = trunc nuw i64 %indvars.iv.next116.i.us to i32
  %i.on = icmp slt i32 %i.om, %i.ol
  br i1 %i.on, label %.preheader.us.i114.us, label %.loopexit95.i, !llvm.loop !229

.loopexit.split.us.split.us.split.us:             ; preds = %bb.bd
  %lpad.loopexit.us.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.preheader.us.i114:                               ; preds = %.preheader.us.preheader.i110, %._crit_edge.us.i117.split
  %.sroa.0233.10 = phi float [ %.sroa.0233.12, %._crit_edge.us.i117.split ], [ %.sroa.0286.13, %.preheader.us.preheader.i110 ]
  %.sroa.6.10 = phi i64 [ %.sroa.6.12, %._crit_edge.us.i117.split ], [ %.sroa.6.8, %.preheader.us.preheader.i110 ]
  %.sroa.9.10 = phi i32 [ %.sroa.9.12, %._crit_edge.us.i117.split ], [ %.sroa.9.8, %.preheader.us.preheader.i110 ]
  %.sroa.12.10 = phi i32 [ %.sroa.12.12, %._crit_edge.us.i117.split ], [ %.sroa.12.8, %.preheader.us.preheader.i110 ]
  %.sroa.15.10 = phi i8 [ %.sroa.15.12, %._crit_edge.us.i117.split ], [ %.sroa.15.8, %.preheader.us.preheader.i110 ]
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %._crit_edge.us.i117.split ], [ 0, %.preheader.us.preheader.i110 ] ; 2 uses
  %i.oo = add nuw nsw i64 %indvars.iv115.i, 1     ; 2 uses
  br label %bb.be

bb.be:                                            ; preds = %.loopexit93.us.i, %.preheader.us.i114
  %.sroa.0233.11 = phi float [ %.sroa.0233.10, %.preheader.us.i114 ], [ %.sroa.0233.12, %.loopexit93.us.i ] ; 2 uses
  %.sroa.6.11 = phi i64 [ %.sroa.6.10, %.preheader.us.i114 ], [ %.sroa.6.12, %.loopexit93.us.i ] ; 2 uses
  %.sroa.9.11 = phi i32 [ %.sroa.9.10, %.preheader.us.i114 ], [ %.sroa.9.12, %.loopexit93.us.i ] ; 2 uses
  %.sroa.12.11 = phi i32 [ %.sroa.12.10, %.preheader.us.i114 ], [ %.sroa.12.12, %.loopexit93.us.i ] ; 2 uses
  %.sroa.15.11 = phi i8 [ %.sroa.15.10, %.preheader.us.i114 ], [ %.sroa.15.12, %.loopexit93.us.i ] ; 2 uses
  %indvars.iv110.i = phi i64 [ 0, %.preheader.us.i114 ], [ %indvars.iv.next111.i, %.loopexit93.us.i ] ; 2 uses
  %indvars.iv.i115 = phi i64 [ 1, %.preheader.us.i114 ], [ %indvars.iv.next.i116, %.loopexit93.us.i ] ; 2 uses
  %i.op = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv110.i
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.oq, i64 %i.oo
  %i.os = load i32, ptr %i.or, align 4, !tbaa !184 ; 4 uses
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1 ; 3 uses
  %i.ot = icmp samesign ult i64 %indvars.iv.next111.i, %i.nh
  br i1 %i.ot, label %.lr.ph.us.i118, label %.loopexit93.us.i

bb.bf:                                            ; preds = %.lr.ph.us.i118, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120
  %.sroa.0233.13 = phi float [ %.sroa.0233.11, %.lr.ph.us.i118 ], [ %.sroa.0233.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %.sroa.6.13 = phi i64 [ %.sroa.6.11, %.lr.ph.us.i118 ], [ %.sroa.6.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 2 uses
  %.sroa.9.13 = phi i32 [ %.sroa.9.11, %.lr.ph.us.i118 ], [ %.sroa.9.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 2 uses
  %.sroa.12.13 = phi i32 [ %.sroa.12.11, %.lr.ph.us.i118 ], [ %.sroa.12.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 2 uses
  %.sroa.15.13 = phi i8 [ %.sroa.15.11, %.lr.ph.us.i118 ], [ %.sroa.15.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 2 uses
  %indvars.iv107.i = phi i64 [ %indvars.iv.i115, %.lr.ph.us.i118 ], [ %indvars.iv.next108.i, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 2 uses
  %i.ou = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv107.i
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ov, i64 %i.oo
  %i.ox = load i32, ptr %i.ow, align 4, !tbaa !184 ; 4 uses
  %.not62.us.i119 = icmp eq i32 %i.os, %i.ox
  br i1 %.not62.us.i119, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.oy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(12) %i.pj, ptr noundef nonnull align 4 dereferenceable(12) %i.oz, ptr noundef nonnull %i.c)
          to label %.noexc125 unwind label %.loopexit.split

.noexc125:                                        ; preds = %bb.bg
  %i.pa = load float, ptr %i.c, align 4, !tbaa !206 ; 2 uses
  %i.pb = load float, ptr %i.ar, align 4, !tbaa !206 ; 2 uses
  %i.pc = fmul float %i.pb, %i.pb
  %i.pd = call float @llvm.fmuladd.f32(float %i.pa, float %i.pa, float %i.pc)
  %i.pe = load float, ptr %i.as, align 4, !tbaa !206 ; 2 uses
  %i.pf = call noundef float @llvm.fmuladd.f32(float %i.pe, float %i.pe, float %i.pd) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  %i.pg = trunc nuw i8 %.sroa.15.13 to i1
  br i1 %i.pg, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122: ; preds = %.noexc125
  %i.ph = fcmp ogt float %i.pf, %.sroa.0233.13
  br i1 %i.ph, label %.thread.i.us.i123, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120

.thread.i.us.i123:                                ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120: ; preds = %.noexc125, %.thread.i.us.i123, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122, %bb.bf
  %.sroa.0233.14 = phi float [ %.sroa.0233.13, %bb.bf ], [ %i.pf, %.thread.i.us.i123 ], [ %.sroa.0233.13, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122 ], [ %i.pf, %.noexc125 ] ; 2 uses
  %.sroa.6.14 = phi i64 [ %.sroa.6.13, %bb.bf ], [ %.sroa.076.0.insert.insert.i, %.thread.i.us.i123 ], [ %.sroa.6.13, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122 ], [ %.sroa.076.0.insert.insert.i, %.noexc125 ] ; 2 uses
  %.sroa.9.14 = phi i32 [ %.sroa.9.13, %bb.bf ], [ %i.os, %.thread.i.us.i123 ], [ %.sroa.9.13, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122 ], [ %i.os, %.noexc125 ] ; 2 uses
  %.sroa.12.14 = phi i32 [ %.sroa.12.13, %bb.bf ], [ %i.ox, %.thread.i.us.i123 ], [ %.sroa.12.13, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122 ], [ %i.ox, %.noexc125 ] ; 2 uses
  %.sroa.15.14 = phi i8 [ %.sroa.15.13, %bb.bf ], [ 1, %.thread.i.us.i123 ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i122 ], [ 1, %.noexc125 ] ; 2 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 2 uses
  %exitcond.not.i121 = icmp eq i64 %indvars.iv.next108.i, %i.nh
  br i1 %exitcond.not.i121, label %.loopexit93.us.i, label %bb.bf, !llvm.loop !228

.loopexit93.us.i:                                 ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120, %bb.be
  %.sroa.0233.12 = phi float [ %.sroa.0233.11, %bb.be ], [ %.sroa.0233.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %.sroa.6.12 = phi i64 [ %.sroa.6.11, %bb.be ], [ %.sroa.6.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %.sroa.9.12 = phi i32 [ %.sroa.9.11, %bb.be ], [ %.sroa.9.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %.sroa.12.12 = phi i32 [ %.sroa.12.11, %bb.be ], [ %.sroa.12.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %.sroa.15.12 = phi i8 [ %.sroa.15.11, %bb.be ], [ %.sroa.15.14, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i120 ] ; 3 uses
  %indvars.iv.next.i116 = add nuw nsw i64 %indvars.iv.i115, 1
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %i.nh
  br i1 %exitcond114.not.i, label %._crit_edge.us.i117.split, label %bb.be, !llvm.loop !227

.lr.ph.us.i118:                                   ; preds = %bb.be
  %i.pi = sext i32 %i.os to i64
  %i.pj = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.pi
  br label %bb.bf

._crit_edge.us.i117.split:                        ; preds = %.loopexit93.us.i
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, %i.ni ; 2 uses
  %i.pk = load ptr, ptr %i.mw, align 8, !tbaa !185
  %i.pl = load ptr, ptr %i.mr, align 8, !tbaa !182
  %i.pm = ptrtoint ptr %i.pk to i64
  %i.pn = ptrtoint ptr %i.pl to i64
  %i.po = sub i64 %i.pm, %i.pn
  %i.pp = lshr exact i64 %i.po, 2
  %i.pq = trunc i64 %i.pp to i32
  %i.pr = trunc nuw i64 %indvars.iv.next116.i to i32
  %i.ps = icmp slt i32 %i.pr, %i.pq
  br i1 %i.ps, label %.preheader.us.i114, label %.loopexit95.i, !llvm.loop !229

.loopexit95.i:                                    ; preds = %._crit_edge.us.i117.split, %._crit_edge.us.i117.split.us.us, %.preheader94.i, %bb.ba, %.noexc124
  %.sroa.43.14 = phi i8 [ %.sroa.43.13, %.noexc124 ], [ %.sroa.43.13, %.preheader94.i ], [ %.sroa.43.13, %bb.ba ], [ %.sroa.43.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.43.13, %._crit_edge.us.i117.split ] ; 4 uses
  %.sroa.34.14 = phi i32 [ %.sroa.34.13, %.noexc124 ], [ %.sroa.34.13, %.preheader94.i ], [ %.sroa.34.13, %bb.ba ], [ %.sroa.34.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.34.13, %._crit_edge.us.i117.split ] ; 4 uses
  %.sroa.25.14 = phi i32 [ %.sroa.25.13, %.noexc124 ], [ %.sroa.25.13, %.preheader94.i ], [ %.sroa.25.13, %bb.ba ], [ %.sroa.32.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.25.13, %._crit_edge.us.i117.split ] ; 4 uses
  %.sroa.16.14 = phi i64 [ %.sroa.16.13, %.noexc124 ], [ %.sroa.16.13, %.preheader94.i ], [ %.sroa.16.13, %bb.ba ], [ %.sroa.16.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.16.13, %._crit_edge.us.i117.split ] ; 4 uses
  %.sroa.0298.14 = phi float [ %.sroa.0298.13, %.noexc124 ], [ %.sroa.0298.13, %.preheader94.i ], [ %.sroa.0298.13, %bb.ba ], [ %.sroa.0286.21.us.us, %._crit_edge.us.i117.split.us.us ], [ %.sroa.0298.13, %._crit_edge.us.i117.split ] ; 4 uses
  %.sroa.0286.14 = phi float [ %.sroa.0286.13, %.noexc124 ], [ %.sroa.0286.13, %.preheader94.i ], [ %.sroa.0286.13, %bb.ba ], [ %.sroa.0286.13, %._crit_edge.us.i117.split.us.us ], [ %.sroa.0233.12, %._crit_edge.us.i117.split ] ; 2 uses
  %.sroa.6.9 = phi i64 [ %.sroa.6.8, %.noexc124 ], [ %.sroa.6.8, %.preheader94.i ], [ %.sroa.6.8, %bb.ba ], [ %.sroa.6.8, %._crit_edge.us.i117.split.us.us ], [ %.sroa.6.12, %._crit_edge.us.i117.split ] ; 2 uses
  %.sroa.9.9 = phi i32 [ %.sroa.9.8, %.noexc124 ], [ %.sroa.9.8, %.preheader94.i ], [ %.sroa.9.8, %bb.ba ], [ %.sroa.9.8, %._crit_edge.us.i117.split.us.us ], [ %.sroa.9.12, %._crit_edge.us.i117.split ] ; 2 uses
  %.sroa.12.9 = phi i32 [ %.sroa.12.8, %.noexc124 ], [ %.sroa.12.8, %.preheader94.i ], [ %.sroa.12.8, %bb.ba ], [ %.sroa.12.8, %._crit_edge.us.i117.split.us.us ], [ %.sroa.12.12, %._crit_edge.us.i117.split ] ; 2 uses
  %.sroa.15.9 = phi i8 [ %.sroa.15.8, %.noexc124 ], [ %.sroa.15.8, %.preheader94.i ], [ %.sroa.15.8, %bb.ba ], [ %.sroa.15.8, %._crit_edge.us.i117.split.us.us ], [ %.sroa.15.12, %._crit_edge.us.i117.split ] ; 2 uses
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %.not91.i = icmp eq i64 %indvars.iv.next119.i, 95
  br i1 %.not91.i, label %bb.ay, label %bb.az

bb.bh:                                            ; preds = %bb.ay
  %i.pt = load ptr, ptr %i.eb, align 8, !tbaa !185 ; 2 uses
  %i.pu = load ptr, ptr %i.ea, align 8, !tbaa !182 ; 2 uses
  %i.pv = ptrtoint ptr %i.pt to i64
  %i.pw = ptrtoint ptr %i.pu to i64
  %i.px = sub i64 %i.pv, %i.pw
  %i.py = icmp sgt i64 %i.px, 4
  br i1 %i.py, label %.lr.ph105.i, label %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit

.lr.ph105.i:                                      ; preds = %bb.bh, %._crit_edge.i107
  %.sroa.43.15 = phi i8 [ %.sroa.43.18, %._crit_edge.i107 ], [ %.sroa.43.14, %bb.bh ] ; 2 uses
  %.sroa.34.15 = phi i32 [ %.sroa.34.18, %._crit_edge.i107 ], [ %.sroa.34.14, %bb.bh ] ; 2 uses
  %.sroa.32.15 = phi i32 [ %.sroa.32.18, %._crit_edge.i107 ], [ %.sroa.25.14, %bb.bh ] ; 2 uses
  %.sroa.16.15 = phi i64 [ %.sroa.16.18, %._crit_edge.i107 ], [ %.sroa.16.14, %bb.bh ] ; 2 uses
  %.sroa.0286.15 = phi float [ %.sroa.0286.18, %._crit_edge.i107 ], [ %.sroa.0298.14, %bb.bh ] ; 2 uses
  %i.pz = phi ptr [ %i.qm, %._crit_edge.i107 ], [ %i.pu, %bb.bh ] ; 2 uses
  %i.qa = phi ptr [ %i.qn, %._crit_edge.i107 ], [ %i.pt, %bb.bh ]
  %.0103.i = phi i64 [ %i.qo, %._crit_edge.i107 ], [ 0, %bb.bh ] ; 5 uses
  %i.qb = load ptr, ptr %i.ec, align 8, !tbaa !182 ; 2 uses
  %i.qc = getelementptr [4 x i8], ptr %i.pz, i64 %.0103.i ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !184 ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qc, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !184 ; 2 uses
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qg
  %.not92101.i = icmp eq i32 %i.qd, %i.qf
  br i1 %.not92101.i, label %._crit_edge.i107, label %.lr.ph.i102

.lr.ph.i102:                                      ; preds = %.lr.ph105.i
  %i.qi = sext i32 %i.qd to i64
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.qb, i64 %i.qi
  %i.qk = getelementptr inbounds nuw [12 x i8], ptr %i.ez, i64 %.0103.i
  %i.ql = trunc i64 %.0103.i to i32               ; 2 uses
  br label %bb.bi

._crit_edge.loopexit.i105:                        ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104
  %.pre.i106 = load ptr, ptr %i.eb, align 8, !tbaa !185
  %.pre121.i = load ptr, ptr %i.ea, align 8, !tbaa !182
  br label %._crit_edge.i107

._crit_edge.i107:                                 ; preds = %._crit_edge.loopexit.i105, %.lr.ph105.i
  %.sroa.43.18 = phi i8 [ %.sroa.43.15, %.lr.ph105.i ], [ %.sroa.43.17, %._crit_edge.loopexit.i105 ] ; 2 uses
  %.sroa.34.18 = phi i32 [ %.sroa.34.15, %.lr.ph105.i ], [ %.sroa.34.17, %._crit_edge.loopexit.i105 ] ; 2 uses
  %.sroa.32.18 = phi i32 [ %.sroa.32.15, %.lr.ph105.i ], [ %.sroa.32.17, %._crit_edge.loopexit.i105 ] ; 2 uses
  %.sroa.16.18 = phi i64 [ %.sroa.16.15, %.lr.ph105.i ], [ %.sroa.16.17, %._crit_edge.loopexit.i105 ] ; 2 uses
  %.sroa.0286.18 = phi float [ %.sroa.0286.15, %.lr.ph105.i ], [ %.sroa.0286.17, %._crit_edge.loopexit.i105 ] ; 2 uses
  %i.qm = phi ptr [ %i.pz, %.lr.ph105.i ], [ %.pre121.i, %._crit_edge.loopexit.i105 ] ; 2 uses
  %i.qn = phi ptr [ %i.qa, %.lr.ph105.i ], [ %.pre.i106, %._crit_edge.loopexit.i105 ] ; 2 uses
  %i.qo = add nuw nsw i64 %.0103.i, 1             ; 2 uses
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qm to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = ashr exact i64 %i.qr, 2
  %i.qt = add nsw i64 %i.qs, -1
  %i.qu = icmp slt i64 %i.qo, %i.qt
  br i1 %i.qu, label %.lr.ph105.i, label %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit, !llvm.loop !230

bb.bi:                                            ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104, %.lr.ph.i102
  %.sroa.43.16 = phi i8 [ %.sroa.43.15, %.lr.ph.i102 ], [ %.sroa.43.17, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 2 uses
  %.sroa.34.16 = phi i32 [ %.sroa.34.15, %.lr.ph.i102 ], [ %.sroa.34.17, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 2 uses
  %.sroa.32.16 = phi i32 [ %.sroa.32.15, %.lr.ph.i102 ], [ %.sroa.32.17, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 2 uses
  %.sroa.16.16 = phi i64 [ %.sroa.16.15, %.lr.ph.i102 ], [ %.sroa.16.17, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 2 uses
  %.sroa.0286.16 = phi float [ %.sroa.0286.15, %.lr.ph.i102 ], [ %.sroa.0286.17, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 3 uses
  %.sroa.073.0102.i = phi ptr [ %i.qj, %.lr.ph.i102 ], [ %i.rg, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104 ] ; 2 uses
  %i.qv = load i32, ptr %.sroa.073.0102.i, align 4, !tbaa !184 ; 3 uses
  %i.qw = sext i32 %i.qv to i64                   ; 2 uses
  %.not.i103 = icmp eq i64 %.0103.i, %i.qw
  br i1 %.not.i103, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.qx = getelementptr inbounds [12 x i8], ptr %i.ez, i64 %i.qw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  invoke void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %13, ptr noundef nonnull align 4 dereferenceable(12) %i.qk, ptr noundef nonnull align 4 dereferenceable(12) %i.qx, ptr noundef nonnull %i.b)
          to label %.noexc126 unwind label %.loopexit.split-lp.loopexit

.noexc126:                                        ; preds = %bb.bj
  %i.qy = load float, ptr %i.b, align 4, !tbaa !206 ; 2 uses
  %i.qz = load float, ptr %i.at, align 4, !tbaa !206 ; 2 uses
  %i.ra = fmul float %i.qz, %i.qz
  %i.rb = call float @llvm.fmuladd.f32(float %i.qy, float %i.qy, float %i.ra)
  %i.rc = load float, ptr %i.au, align 4, !tbaa !206 ; 2 uses
  %i.rd = call noundef float @llvm.fmuladd.f32(float %i.rc, float %i.rc, float %i.rb) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.re = trunc nuw i8 %.sroa.43.16 to i1
  br i1 %i.re, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108: ; preds = %.noexc126
  %i.rf = fcmp ogt float %i.rd, %.sroa.0286.16
  br i1 %i.rf, label %.thread.i68.i109, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104

.thread.i68.i109:                                 ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit72.i104: ; preds = %.noexc126, %.thread.i68.i109, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108, %bb.bi
  %.sroa.43.17 = phi i8 [ %.sroa.43.16, %bb.bi ], [ 1, %.thread.i68.i109 ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108 ], [ 1, %.noexc126 ] ; 2 uses
  %.sroa.34.17 = phi i32 [ %.sroa.34.16, %bb.bi ], [ %i.qv, %.thread.i68.i109 ], [ %.sroa.34.16, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108 ], [ %i.qv, %.noexc126 ] ; 2 uses
  %.sroa.32.17 = phi i32 [ %.sroa.32.16, %bb.bi ], [ %i.ql, %.thread.i68.i109 ], [ %.sroa.32.16, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108 ], [ %i.ql, %.noexc126 ] ; 2 uses
  %.sroa.16.17 = phi i64 [ %.sroa.16.16, %bb.bi ], [ 0, %.thread.i68.i109 ], [ %.sroa.16.16, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108 ], [ 0, %.noexc126 ] ; 2 uses
  %.sroa.0286.17 = phi float [ %.sroa.0286.16, %bb.bi ], [ %i.rd, %.thread.i68.i109 ], [ %.sroa.0286.16, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i67.i108 ], [ %i.rd, %.noexc126 ] ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.073.0102.i, i64 4 ; 2 uses
  %.not92.i = icmp eq ptr %i.rg, %i.qh
  br i1 %.not92.i, label %._crit_edge.loopexit.i105, label %bb.bi

_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit: ; preds = %._crit_edge.i107, %bb.ay, %bb.bh
  %.sroa.43.24 = phi i8 [ %.sroa.43.14, %bb.ay ], [ %.sroa.43.14, %bb.bh ], [ %.sroa.43.18, %._crit_edge.i107 ]
  %.sroa.34.24 = phi i32 [ %.sroa.34.14, %bb.ay ], [ %.sroa.34.14, %bb.bh ], [ %.sroa.34.18, %._crit_edge.i107 ]
  %.sroa.32.24 = phi i32 [ %.sroa.25.14, %bb.ay ], [ %.sroa.25.14, %bb.bh ], [ %.sroa.32.18, %._crit_edge.i107 ]
  %.sroa.16.24 = phi i64 [ %.sroa.16.14, %bb.ay ], [ %.sroa.16.14, %bb.bh ], [ %.sroa.16.18, %._crit_edge.i107 ]
  %.sroa.0286.24 = phi float [ %.sroa.0298.14, %bb.ay ], [ %.sroa.0298.14, %bb.bh ], [ %.sroa.0286.18, %._crit_edge.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #14
  br label %bb.bk

bb.bk:                                            ; preds = %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit
  %.sroa.43.0 = phi i8 [ %.sroa.43.24, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.43.12, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %.sroa.34.0 = phi i32 [ %.sroa.34.24, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.34.12, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %.sroa.32.0 = phi i32 [ %.sroa.32.24, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.32.12, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %.sroa.16.0 = phi i64 [ %.sroa.16.24, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.16.12, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ] ; 4 uses
  %.sroa.0286.0 = phi float [ %.sroa.0286.24, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.0286.12, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ] ; 3 uses
  %.sroa.0233.0 = phi float [ %.sroa.0286.14, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.0286.2, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ] ; 3 uses
  %.sroa.6.0 = phi i64 [ %.sroa.6.9, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.6.2, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ] ; 4 uses
  %.sroa.9.0 = phi i32 [ %.sroa.9.9, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.9.2, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %.sroa.12.0 = phi i32 [ %.sroa.12.9, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.12.2, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %.sroa.15.0 = phi i8 [ %.sroa.15.9, %_ZL22bonded_cg_distance_molILb1EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ], [ %.sroa.15.2, %_ZL22bonded_cg_distance_molILb0EEvPK13gmx_moltype_tN3gmx16DDBondedCheckingEbPK5t_pbcNS3_8ArrayRefIKNS3_11BasicVectorIfEEEEPSt8optionalI17bonded_distance_tESG_.exit ]
  %i.rh = trunc nuw i8 %.sroa.43.0 to i1
  br i1 %i.rh, label %bb.bl, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit

bb.bl:                                            ; preds = %bb.bk
  %i.ri = add nsw i32 %.sroa.32.0, %.1830         ; 2 uses
  %i.rj = add nsw i32 %.sroa.34.0, %.1830         ; 2 uses
  %i.rk = trunc nuw i8 %.sroa.26.1828 to i1
  br i1 %i.rk, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i, label %bb.bm

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i: ; preds = %bb.bl
  %i.rl = fcmp ogt float %.sroa.0286.0, %.sroa.0356.1825
  br i1 %i.rl, label %.thread.i, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit

.thread.i:                                        ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i
  %.sroa.10.sroa.0.0.extract.trunc970 = trunc i64 %.sroa.16.0 to i32
  %.sroa.10.sroa.8.0.extract.shift972 = lshr i64 %.sroa.16.0, 32
  %.sroa.10.sroa.8.0.extract.trunc973 = trunc i64 %.sroa.10.sroa.8.0.extract.shift972 to i8
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit

bb.bm:                                            ; preds = %bb.bl
  %.sroa.10.sroa.0.0.extract.trunc = trunc i64 %.sroa.16.0 to i32
  %.sroa.10.sroa.8.0.extract.shift = lshr i64 %.sroa.16.0, 32
  %.sroa.10.sroa.8.0.extract.trunc = trunc i64 %.sroa.10.sroa.8.0.extract.shift to i8
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit: ; preds = %bb.bm, %.thread.i, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i, %bb.bk
  %.sroa.10.sroa.8.4 = phi i8 [ %.sroa.10.sroa.8.0.extract.trunc973, %.thread.i ], [ %.sroa.10.sroa.8.3, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ %.sroa.10.sroa.8.0.extract.trunc, %bb.bm ], [ %.sroa.10.sroa.8.3, %bb.bk ] ; 2 uses
  %.sroa.10.sroa.0.4 = phi i32 [ %.sroa.10.sroa.0.0.extract.trunc970, %.thread.i ], [ %.sroa.10.sroa.0.3, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ %.sroa.10.sroa.0.0.extract.trunc, %bb.bm ], [ %.sroa.10.sroa.0.3, %bb.bk ] ; 2 uses
  %.sroa.0356.2 = phi float [ %.sroa.0286.0, %.thread.i ], [ %.sroa.0356.1825, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ %.sroa.0286.0, %bb.bm ], [ %.sroa.0356.1825, %bb.bk ] ; 2 uses
  %.sroa.16360.2 = phi i32 [ %i.ri, %.thread.i ], [ %.sroa.16360.1826, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ %i.ri, %bb.bm ], [ %.sroa.16360.1826, %bb.bk ] ; 2 uses
  %.sroa.21361.2 = phi i32 [ %i.rj, %.thread.i ], [ %.sroa.21361.1827, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ %i.rj, %bb.bm ], [ %.sroa.21361.1827, %bb.bk ] ; 2 uses
  %.sroa.26.2 = phi i8 [ 1, %.thread.i ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i ], [ 1, %bb.bm ], [ %.sroa.26.1828, %bb.bk ] ; 2 uses
  %i.rm = trunc nuw i8 %.sroa.15.0 to i1
  br i1 %i.rm, label %bb.bn, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150

bb.bn:                                            ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit
  %i.rn = add nsw i32 %.sroa.9.0, %.1830          ; 2 uses
  %i.ro = add nsw i32 %.sroa.12.0, %.1830         ; 2 uses
  %i.rp = trunc nuw i8 %.sroa.21.1821 to i1
  br i1 %i.rp, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145, label %bb.bo

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145: ; preds = %bb.bn
  %i.rq = fcmp ogt float %.sroa.0233.0, %.sroa.0325.1824
  br i1 %i.rq, label %.thread.i146, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150

.thread.i146:                                     ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145
  %.sroa.8.sroa.0.0.extract.trunc960 = trunc i64 %.sroa.6.0 to i32
  %.sroa.8.sroa.8.0.extract.shift962 = lshr i64 %.sroa.6.0, 32
  %.sroa.8.sroa.8.0.extract.trunc963 = trunc i64 %.sroa.8.sroa.8.0.extract.shift962 to i8
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150

bb.bo:                                            ; preds = %bb.bn
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %.sroa.6.0 to i32
  %.sroa.8.sroa.8.0.extract.shift = lshr i64 %.sroa.6.0, 32
  %.sroa.8.sroa.8.0.extract.trunc = trunc i64 %.sroa.8.sroa.8.0.extract.shift to i8
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit150: ; preds = %bb.bo, %.thread.i146, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit
  %.sroa.8.sroa.8.4 = phi i8 [ %.sroa.8.sroa.8.0.extract.trunc963, %.thread.i146 ], [ %.sroa.8.sroa.8.3, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ %.sroa.8.sroa.8.0.extract.trunc, %bb.bo ], [ %.sroa.8.sroa.8.3, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %.sroa.8.sroa.0.4 = phi i32 [ %.sroa.8.sroa.0.0.extract.trunc960, %.thread.i146 ], [ %.sroa.8.sroa.0.3, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ %.sroa.8.sroa.0.0.extract.trunc, %bb.bo ], [ %.sroa.8.sroa.0.3, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %.sroa.21.2 = phi i8 [ 1, %.thread.i146 ], [ 1, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ 1, %bb.bo ], [ %.sroa.21.1821, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %.sroa.17.2 = phi i32 [ %i.ro, %.thread.i146 ], [ %.sroa.17.1822, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ %i.ro, %bb.bo ], [ %.sroa.17.1822, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %.sroa.13.2 = phi i32 [ %i.rn, %.thread.i146 ], [ %.sroa.13.1823, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ %i.rn, %bb.bo ], [ %.sroa.13.1823, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %.sroa.0325.2 = phi float [ %.sroa.0233.0, %.thread.i146 ], [ %.sroa.0325.1824, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i145 ], [ %.sroa.0233.0, %bb.bo ], [ %.sroa.0325.1824, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit ] ; 2 uses
  %i.rr = load i32, ptr %i.bc, align 8, !tbaa !173 ; 2 uses
  %i.rs = add nsw i32 %i.rr, %.1830               ; 2 uses
  %i.rt = add nuw nsw i32 %.065829, 1             ; 2 uses
  %i.ru = load i32, ptr %.phi.trans.insert, align 4, !tbaa !181
  %i.rv = icmp slt i32 %i.rt, %i.ru
  br i1 %i.rv, label %bb.ab, label %._crit_edge, !llvm.loop !231

bb.bp:                                            ; preds = %.loopexit.split-lp
  %.idx536 = mul nuw nsw i64 %i.ds, 12
  call void @_ZdlPvm(ptr noundef nonnull %i.dw, i64 noundef %.idx536) #16
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit152

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EED2Ev.exit152: ; preds = %.loopexit545, %.loopexit.split-lp546, %.loopexit.split-lp, %bb.bp, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.dq, %bb.s ], [ %lpad.phi, %bb.bp ], [ %lpad.phi, %.loopexit.split-lp ], [ %lpad.loopexit547, %.loopexit545 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp546 ]
  call void @_ZN7t_graphD2Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %14) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #14
  br label %bb.cs

bb.bq:                                            ; preds = %_ZN7t_graphD2Ev.exit86, %bb.f
  %.sroa.10.sroa.8.5 = phi i8 [ %.sroa.10.sroa.8.1, %bb.f ], [ %.sroa.10.sroa.8.2, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.10.sroa.0.5 = phi i32 [ %.sroa.10.sroa.0.1, %bb.f ], [ %.sroa.10.sroa.0.2, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.8.sroa.8.5 = phi i8 [ %.sroa.8.sroa.8.1, %bb.f ], [ %.sroa.8.sroa.8.2, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.8.sroa.0.5 = phi i32 [ %.sroa.8.sroa.0.1, %bb.f ], [ %.sroa.8.sroa.0.2, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.21.3 = phi i8 [ %.sroa.21.0841, %bb.f ], [ %.sroa.21.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.17.3 = phi i32 [ %.sroa.17.0842, %bb.f ], [ %.sroa.17.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.13.3 = phi i32 [ %.sroa.13.0843, %bb.f ], [ %.sroa.13.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.0325.3 = phi float [ %.sroa.0325.0844, %bb.f ], [ %.sroa.0325.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.0356.3 = phi float [ %.sroa.0356.0845, %bb.f ], [ %.sroa.0356.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.16360.3 = phi i32 [ %.sroa.16360.0846, %bb.f ], [ %.sroa.16360.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.21361.3 = phi i32 [ %.sroa.21361.0847, %bb.f ], [ %.sroa.21361.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.sroa.26.3 = phi i8 [ %.sroa.26.0848, %bb.f ], [ %.sroa.26.1.lcssa, %_ZN7t_graphD2Ev.exit86 ] ; 2 uses
  %.2 = phi i32 [ %i.bi, %bb.f ], [ %.1.lcssa, %_ZN7t_graphD2Ev.exit86 ]
  %i.rw = getelementptr inbounds nuw i8, ptr %.sroa.0312.0840, i64 56 ; 2 uses
  %.not534 = icmp eq ptr %i.rw, %i.m
  br i1 %.not534, label %._crit_edge852, label %bb.d

bb.br:                                            ; preds = %._crit_edge852
  %i.rx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !232 ; 2 uses
  %.not535 = icmp eq ptr %i.ry, null
  br i1 %.not535, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ21dd_bonded_cg_distanceRKN3gmx8MDLoggerERK10gmx_mtop_tRK10t_inputrecNS_8ArrayRefIKNS_11BasicVectorIfEEEEPA3_KfNS_16DDBondedCheckingEPfSI_ENK3$_0clEv", ptr noundef nonnull @.str.8, i32 noundef 365) #17
  unreachable

bb.bt:                                            ; preds = %bb.br
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  call void @_Z7set_pbcP5t_pbc7PbcTypePA3_Kf(ptr noundef nonnull %9, i32 noundef %i.sa, ptr noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #14
  %i.sb = zext i1 %6 to i8
  store i8 %i.sb, ptr %10, align 1, !tbaa !217
  %i.sc = getelementptr inbounds nuw i8, ptr %10, i64 1
  store i8 0, ptr %i.sc, align 1, !tbaa !220
  %i.sd = getelementptr inbounds nuw i8, ptr %10, i64 2
  store i8 0, ptr %i.sd, align 1, !tbaa !221
  %i.se = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.8.sroa.8.0.insert.ext = zext i8 %.sroa.8.sroa.8.0 to i64
  %.sroa.8.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.8.sroa.8.0.insert.ext, 32
  %.sroa.8.sroa.0.0.insert.ext = zext i32 %.sroa.8.sroa.0.0 to i64
  %.sroa.8.sroa.0.0.insert.insert = or disjoint i64 %.sroa.8.sroa.8.0.insert.shift, %.sroa.8.sroa.0.0.insert.ext
  %.sroa.10.sroa.8.0.insert.ext = zext i8 %.sroa.10.sroa.8.0 to i64
  %.sroa.10.sroa.8.0.insert.shift = shl nuw nsw i64 %.sroa.10.sroa.8.0.insert.ext, 32
  %.sroa.10.sroa.0.0.insert.ext = zext i32 %.sroa.10.sroa.0.0 to i64
  %.sroa.10.sroa.0.0.insert.insert = or disjoint i64 %.sroa.10.sroa.8.0.insert.shift, %.sroa.10.sroa.0.0.insert.ext
  br label %bb.bu

bb.bu:                                            ; preds = %.loopexit43.i, %bb.bt
  %.us-phi894909 = phi i64 [ %.sroa.10.sroa.0.0.insert.insert, %bb.bt ], [ %.us-phi894908, %.loopexit43.i ] ; 5 uses
  %.us-phi895906 = phi i64 [ %.sroa.8.sroa.0.0.insert.insert, %bb.bt ], [ %.us-phi895905, %.loopexit43.i ] ; 5 uses
  %.sroa.21.6 = phi i8 [ %.sroa.21.0.lcssa, %bb.bt ], [ %.sroa.21.7, %.loopexit43.i ] ; 5 uses
  %.sroa.17.6 = phi i32 [ %.sroa.17.0.lcssa, %bb.bt ], [ %.sroa.17.7, %.loopexit43.i ] ; 5 uses
  %.sroa.13.6 = phi i32 [ %.sroa.13.0.lcssa, %bb.bt ], [ %.sroa.13.7, %.loopexit43.i ] ; 5 uses
  %.sroa.0325.6 = phi float [ %.sroa.0325.0.lcssa, %bb.bt ], [ %.sroa.0325.7, %.loopexit43.i ] ; 5 uses
  %.sroa.0356.6 = phi float [ %.sroa.0356.0.lcssa, %bb.bt ], [ %.sroa.0356.7, %.loopexit43.i ] ; 5 uses
  %.sroa.16360.6 = phi i32 [ %.sroa.16360.0.lcssa, %bb.bt ], [ %.sroa.16360.7, %.loopexit43.i ] ; 5 uses
  %.sroa.21361.6 = phi i32 [ %.sroa.21361.0.lcssa, %bb.bt ], [ %.sroa.21361.7, %.loopexit43.i ] ; 5 uses
  %.sroa.26.6 = phi i8 [ %.sroa.26.0.lcssa, %bb.bt ], [ %.sroa.26.7, %.loopexit43.i ] ; 5 uses
  %indvars.iv61.i = phi i64 [ 0, %bb.bt ], [ %indvars.iv.next62.i, %.loopexit43.i ] ; 5 uses
  %i.sg = trunc nuw nsw i64 %indvars.iv61.i to i32
  %i.sh = call noundef zeroext i1 @_Z14dd_check_ftype19InteractionFunctionRK17ReverseTopOptions(i32 noundef %i.sg, ptr noundef nonnull align 1 dereferenceable(3) %10)
  br i1 %i.sh, label %bb.bv, label %.loopexit43.i

bb.bv:                                            ; preds = %bb.bu
  %i.si = getelementptr inbounds nuw [24 x i8], ptr %i.ry, i64 %indvars.iv61.i ; 10 uses
  %i.sj = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv61.i
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %i.sl = load i32, ptr %i.sk, align 8, !tbaa !222
  %.fr916 = freeze i32 %i.sl                      ; 4 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.si, i64 8 ; 3 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !185
  %i.so = load ptr, ptr %i.si, align 8, !tbaa !182
  %i.sp = ptrtoint ptr %i.sn to i64
  %i.sq = ptrtoint ptr %i.so to i64
  %i.sr = sub i64 %i.sp, %i.sq
  %i.ss = lshr exact i64 %i.sr, 2
  %i.st = trunc i64 %i.ss to i32
  %i.su = icmp sgt i32 %i.st, 0
  br i1 %i.su, label %.preheader.lr.ph.i, label %.loopexit43.i

.preheader.lr.ph.i:                               ; preds = %bb.bv
  %i.sv = icmp sgt i32 %.fr916, 0
  %.sroa.0.0.insert.insert.i = or disjoint i64 %indvars.iv61.i, 4294967296 ; 6 uses
  br i1 %i.sv, label %.preheader.us.preheader.i157, label %.loopexit43.i

.preheader.us.preheader.i157:                     ; preds = %.preheader.lr.ph.i
  %i.sw = icmp eq i32 %.fr916, 2
  %i.sx = add nuw i32 %.fr916, 1
  %i.sy = zext nneg i32 %.fr916 to i64            ; 8 uses
  %i.sz = zext i32 %i.sx to i64                   ; 2 uses
  br i1 %i.sw, label %.preheader.us.i158.us, label %.preheader.us.i158

.preheader.us.i158.us:                            ; preds = %.preheader.us.preheader.i157, %._crit_edge.us.i161.split.us.us
  %.us-phi882893.us = phi i64 [ %.us-phi865880.us.us, %._crit_edge.us.i161.split.us.us ], [ %.us-phi894909, %.preheader.us.preheader.i157 ]
  %.sroa.0356.8.us = phi float [ %.sroa.0356.10.us.us, %._crit_edge.us.i161.split.us.us ], [ %.sroa.0356.6, %.preheader.us.preheader.i157 ]
  %.sroa.16360.8.us = phi i32 [ %.sroa.16360.10.us.us, %._crit_edge.us.i161.split.us.us ], [ %.sroa.16360.6, %.preheader.us.preheader.i157 ]
  %.sroa.21361.8.us = phi i32 [ %.sroa.21361.10.us.us, %._crit_edge.us.i161.split.us.us ], [ %.sroa.21361.6, %.preheader.us.preheader.i157 ]
  %.sroa.26.8.us = phi i8 [ %.sroa.26.10.us.us, %._crit_edge.us.i161.split.us.us ], [ %.sroa.26.6, %.preheader.us.preheader.i157 ]
  %indvars.iv58.i.us = phi i64 [ %indvars.iv.next59.i.us, %._crit_edge.us.i161.split.us.us ], [ 0, %.preheader.us.preheader.i157 ] ; 2 uses
  %i.ta = add nuw nsw i64 %indvars.iv58.i.us, 1   ; 3 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.us.i.us.us, %.preheader.us.i158.us
  %.us-phi865881.us.us = phi i64 [ %.us-phi882893.us, %.preheader.us.i158.us ], [ %.us-phi865880.us.us, %.loopexit.us.i.us.us ] ; 2 uses
  %.sroa.0356.9.us.us = phi float [ %.sroa.0356.8.us, %.preheader.us.i158.us ], [ %.sroa.0356.10.us.us, %.loopexit.us.i.us.us ] ; 3 uses
  %.sroa.16360.9.us.us = phi i32 [ %.sroa.16360.8.us, %.preheader.us.i158.us ], [ %.sroa.16360.10.us.us, %.loopexit.us.i.us.us ] ; 2 uses
  %.sroa.21361.9.us.us = phi i32 [ %.sroa.21361.8.us, %.preheader.us.i158.us ], [ %.sroa.21361.10.us.us, %.loopexit.us.i.us.us ] ; 2 uses
  %.sroa.26.9.us.us = phi i8 [ %.sroa.26.8.us, %.preheader.us.i158.us ], [ %.sroa.26.10.us.us, %.loopexit.us.i.us.us ] ; 2 uses
  %indvars.iv53.i.us.us = phi i64 [ 0, %.preheader.us.i158.us ], [ %indvars.iv.next54.i.us.us, %.loopexit.us.i.us.us ] ; 2 uses
  %indvars.iv.i159.us.us = phi i64 [ 1, %.preheader.us.i158.us ], [ %indvars.iv.next.i160.us.us, %.loopexit.us.i.us.us ] ; 3 uses
  %i.tb = load ptr, ptr %i.si, align 8, !tbaa !182
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.tb, i64 %indvars.iv53.i.us.us
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.ta
  %i.te = load i32, ptr %i.td, align 4, !tbaa !184 ; 4 uses
  %indvars.iv.next54.i.us.us = add nuw nsw i64 %indvars.iv53.i.us.us, 1 ; 3 uses
  %i.tf = icmp samesign ult i64 %indvars.iv.next54.i.us.us, %i.sy
  br i1 %i.tf, label %.lr.ph.us.i162.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i162.us.us:                             ; preds = %bb.bw
  %i.tg = sext i32 %i.te to i64
  %i.th = getelementptr inbounds [12 x i8], ptr %3, i64 %i.tg ; 2 uses
  %i.ti = trunc nuw i8 %.sroa.26.9.us.us to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.tj = load ptr, ptr %i.si, align 8, !tbaa !182
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.tj, i64 %indvars.iv.i159.us.us
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.tk, i64 %i.ta
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !184 ; 3 uses
  %i.tn = sext i32 %i.tm to i64
  %i.to = getelementptr inbounds [12 x i8], ptr %3, i64 %i.tn
  call void @_Z6pbc_dxPK5t_pbcPKfS3_Pf(ptr noundef nonnull %9, ptr noundef nonnull %i.th, ptr noundef nonnull %i.to, ptr noundef nonnull %i.a)
  %i.tp = load float, ptr %i.a, align 4, !tbaa !206 ; 2 uses
  %i.tq = load float, ptr %i.se, align 4, !tbaa !206 ; 2 uses
  %i.tr = fmul float %i.tq, %i.tq
  %i.ts = call float @llvm.fmuladd.f32(float %i.tp, float %i.tp, float %i.tr)
  %i.tt = load float, ptr %i.sf, align 4, !tbaa !206 ; 2 uses
  %i.tu = call noundef float @llvm.fmuladd.f32(float %i.tt, float %i.tt, float %i.ts) ; 3 uses
  br i1 %i.ti, label %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel

_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel: ; preds = %.lr.ph.us.i162.us.us
  %i.tv = fcmp ogt float %i.tu, %.sroa.0356.9.us.us
  br i1 %i.tv, label %.thread.i.us.i166.us.us.us.peel, label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel

.thread.i.us.i166.us.us.us.peel:                  ; preds = %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel
  br label %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel

_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel: ; preds = %.thread.i.us.i166.us.us.us.peel, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel, %.lr.ph.us.i162.us.us
  %.sroa.0.0.insert.insert.i864.us.us.us.peel = phi i64 [ %.sroa.0.0.insert.insert.i, %.thread.i.us.i166.us.us.us.peel ], [ %.us-phi865881.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel ], [ %.sroa.0.0.insert.insert.i, %.lr.ph.us.i162.us.us ] ; 2 uses
  %.sroa.0356.12.us.us.us.peel = phi float [ %i.tu, %.thread.i.us.i166.us.us.us.peel ], [ %.sroa.0356.9.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel ], [ %i.tu, %.lr.ph.us.i162.us.us ] ; 2 uses
  %.sroa.16360.12.us.us.us.peel = phi i32 [ %i.te, %.thread.i.us.i166.us.us.us.peel ], [ %.sroa.16360.9.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel ], [ %i.te, %.lr.ph.us.i162.us.us ] ; 2 uses
  %.sroa.21361.12.us.us.us.peel = phi i32 [ %i.tm, %.thread.i.us.i166.us.us.us.peel ], [ %.sroa.21361.9.us.us, %_ZNRSt8optionalI17bonded_distance_tE5valueEv.exit.i.us.i165.us.us.us.peel ], [ %i.tm, %.lr.ph.us.i162.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %indvars.iv.next51.i.us.us.us.peel = add nuw nsw i64 %indvars.iv.i159.us.us, 1 ; 2 uses
  %exitcond.not.i164.us.us.us.peel = icmp eq i64 %indvars.iv.next51.i.us.us.us.peel, %i.sy
  br i1 %exitcond.not.i164.us.us.us.peel, label %.loopexit.us.i.us.us, label %.lr.ph.us.i162.us.us.peel.newph

.loopexit.us.i.us.us:                             ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us, %bb.bw
  %.us-phi865880.us.us = phi i64 [ %.us-phi865881.us.us, %bb.bw ], [ %.sroa.0.0.insert.insert.i864.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ], [ %.sroa.0.0.insert.insert.i864.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ] ; 3 uses
  %.sroa.0356.10.us.us = phi float [ %.sroa.0356.9.us.us, %bb.bw ], [ %.sroa.0356.12.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ], [ %.sroa.0356.12.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ] ; 3 uses
  %.sroa.16360.10.us.us = phi i32 [ %.sroa.16360.9.us.us, %bb.bw ], [ %.sroa.16360.12.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ], [ %.sroa.16360.12.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ] ; 3 uses
  %.sroa.21361.10.us.us = phi i32 [ %.sroa.21361.9.us.us, %bb.bw ], [ %.sroa.21361.12.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ], [ %.sroa.21361.12.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ] ; 3 uses
  %.sroa.26.10.us.us = phi i8 [ %.sroa.26.9.us.us, %bb.bw ], [ 1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ], [ 1, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ] ; 3 uses
  %indvars.iv.next.i160.us.us = add nuw nsw i64 %indvars.iv.i159.us.us, 1
  %exitcond57.not.i.us.us = icmp eq i64 %indvars.iv.next54.i.us.us, %i.sy
  br i1 %exitcond57.not.i.us.us, label %._crit_edge.us.i161.split.us.us, label %bb.bw, !llvm.loop !233

.lr.ph.us.i162.us.us.peel.newph:                  ; preds = %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us
  %.sroa.0.0.insert.insert.i863.us.us.us = phi i64 [ %.sroa.0.0.insert.insert.i864.us.us.us, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us ], [ %.sroa.0.0.insert.insert.i864.us.us.us.peel, %_ZL26update_max_bonded_distancefSt8optionalI19InteractionFunctionEiiPS_I17bonded_distance_tE.exit.us.i163.us.us.us.peel ]
end_hunk_0
