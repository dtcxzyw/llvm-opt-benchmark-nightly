Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AArch64ISelDAGToDAG?download=true
inline.NumInlined: 8224
inline.NumDeleted: 1235
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17PreprocessISelDAGEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.061.069, i64 40
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !332 ; 2 uses
  %.sroa.0.0.copyload.i.i40 = load i16, ptr %i.eb, align 8, !tbaa !333 ; 8 uses
  %.sroa.21.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %.sroa.21.0.copyload.i.i42 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i41, align 8, !tbaa !335 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i40, ptr %1, align 8
  store ptr %.sroa.21.0.copyload.i.i42, ptr %i.f, align 8
  %.not.i.i43 = icmp eq i16 %.sroa.0.0.copyload.i.i40, 0
  br i1 %.not.i.i43, label %_ZNK4llvm3EVT15isFloatingPointEv.exit.i, label %.split.i

.split.i:                                         ; preds = %bb.t
  %i.ec = add i16 %.sroa.0.0.copyload.i.i40, -19  ; 2 uses
  %or.cond.i.i.i = icmp ult i16 %i.ec, -7
  %i.ed = add i16 %.sroa.0.0.copyload.i.i40, -163
  %or.cond3.i.i.i = icmp ult i16 %i.ed, -58
  %or.cond4.i.i.not86.i = and i1 %or.cond.i.i.i, %or.cond3.i.i.i
  %i.ee = add i16 %.sroa.0.0.copyload.i.i40, -216
  %spec.select.i.i.i = icmp ult i16 %i.ee, -21
  %.not85.i = and i1 %spec.select.i.i.i, %or.cond4.i.i.not86.i
  %spec.select.i.i36.i = icmp ult i16 %i.ec, 197
  %or.cond84.i = or i1 %spec.select.i.i36.i, %.not85.i
  br i1 %or.cond84.i, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit, label %bb.u

_ZNK4llvm3EVT15isFloatingPointEv.exit.i:          ; preds = %bb.t
  %i.ef = call noundef zeroext i1 @_ZNK4llvm3EVT23isExtendedFloatingPointEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  br i1 %i.ef, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZNK4llvm3EVT15isFloatingPointEv.exit.i
  %i.eg = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %1) #26
  br i1 %i.eg, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i, %.split.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.061.069, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !337 ; 6 uses
  %.sroa.069.0.copyload.i = load ptr, ptr %i.ei, align 8, !tbaa !421 ; 2 uses
  %.sroa.571.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %.sroa.571.0.copyload.i = load i32, ptr %.sroa.571.0..sroa_idx.i, align 8, !tbaa !201 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %.sroa.065.0.copyload.i = load ptr, ptr %i.ej, align 8, !tbaa !421 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !201 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  %.sroa.064.0.copyload.i = load ptr, ptr %i.ek, align 8, !tbaa !421 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 120
  %.sroa.061.0.copyload.i = load ptr, ptr %i.el, align 8, !tbaa !421 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.061.0.copyload.i, i64 24
  %i.en = load i32, ptr %i.em, align 8, !tbaa !331
  %.not.i44 = icmp eq i32 %i.en, 602
  br i1 %.not.i44, label %bb.v, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.v:                                             ; preds = %bb.u
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload.i, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !331
  switch i32 %i.ep, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %bb.v, %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.061.0.copyload.i, i64 40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !337 ; 4 uses
  %.sroa.052.0.copyload.i = load ptr, ptr %i.er, align 8, !tbaa !421 ; 4 uses
  %.sroa.755.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.es = load <2 x i32>, ptr %.sroa.755.0..sroa_idx.i, align 8
  %.sroa.755.0.copyload.i = load i32, ptr %.sroa.755.0..sroa_idx.i, align 8, !tbaa !201 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 40
  %.sroa.043.0.copyload.i = load ptr, ptr %i.et, align 8, !tbaa !421 ; 5 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.er, i64 48 ; 2 uses
  %i.eu = load <2 x i32>, ptr %.sroa.7.0..sroa_idx.i, align 8
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !201 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.064.0.copyload.i, i64 88
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !425 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !428
  %i.fa = icmp ult i32 %i.ez, 65
  %i.fb = load ptr, ptr %i.ex, align 8
  %spec.select.i.i.i.i = select i1 %i.fa, ptr %i.ex, ptr %i.fb
  %.0.i.i.i37.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !430
  %i.fc = trunc i64 %.0.i.i.i37.i to i32          ; 3 uses
  %i.fd = icmp eq i32 %i.fc, 12
  %i.fe = icmp eq i32 %i.fc, 10
  %or.cond.i = or i1 %i.fd, %i.fe                 ; 3 uses
  switch i32 %i.fc, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit [
    i32 12, label %bb.w
    i32 10, label %bb.w
    i32 9, label %bb.y
    i32 4, label %bb.y
  ]

bb.w:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.ff = icmp eq ptr %.sroa.069.0.copyload.i, %.sroa.052.0.copyload.i
  %i.fg = icmp eq i32 %.sroa.571.0.copyload.i, %.sroa.755.0.copyload.i
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %i.fh, label %bb.x, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.x:                                             ; preds = %bb.w
  %i.fi = icmp eq ptr %.sroa.065.0.copyload.i, %.sroa.043.0.copyload.i
  %i.fj = icmp eq i32 %.sroa.5.0.copyload.i, %.sroa.7.0.copyload.i
  %i.fk = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %i.fk, label %bb.aa, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.y:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.fl = icmp eq ptr %.sroa.069.0.copyload.i, %.sroa.052.0.copyload.i
  %i.fm = icmp eq i32 %.sroa.571.0.copyload.i, %.sroa.755.0.copyload.i
  %i.fn = select i1 %i.fl, i1 %i.fm, i1 false
  br i1 %i.fn, label %bb.z, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.z:                                             ; preds = %bb.y
  %i.fo = icmp eq ptr %.sroa.065.0.copyload.i, %.sroa.043.0.copyload.i
  %i.fp = icmp eq i32 %.sroa.5.0.copyload.i, %.sroa.7.0.copyload.i
  %i.fq = select i1 %i.fo, i1 %i.fp, i1 false
  br i1 %i.fq, label %bb.aa, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.aa:                                            ; preds = %bb.z, %bb.x
  %.not.i.i.i.i47 = icmp eq i16 %.sroa.0.0.copyload.i.i40, 13
  %i.fr = icmp eq ptr %.sroa.21.0.copyload.i.i42, null ; 3 uses
  %.not4.i.i.i48 = select i1 %.not.i.i.i.i47, i1 %i.fr, i1 false
  br i1 %.not4.i.i.i48, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fs = select i1 %or.cond.i, i32 3447, i32 3539
  br label %select.unfold.i

bb.ac:                                            ; preds = %bb.aa
  %.not.i.i4.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i40, 14
  %.not4.i5.i.i = select i1 %.not.i.i4.i.i, i1 %i.fr, i1 false
  br i1 %.not4.i5.i.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ft = select i1 %or.cond.i, i32 3462, i32 3554
  br label %select.unfold.i

bb.ae:                                            ; preds = %bb.ac
  %.not.i.i6.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i40, 15
  %.not4.i7.i.i = select i1 %.not.i.i6.i.i, i1 %i.fr, i1 false
  %i.fu = select i1 %or.cond.i, i32 3446, i32 3538
  br i1 %.not4.i7.i.i, label %select.unfold.i, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

select.unfold.i:                                  ; preds = %bb.ae, %bb.ad, %bb.ab
  %.0.i.ph.i = phi i32 [ %i.fs, %bb.ab ], [ %i.ft, %bb.ad ], [ %i.fu, %bb.ae ]
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.043.0.copyload.i, i64 24
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !331
  switch i32 %i.fw, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit [
    i32 38, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
    i32 13, label %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  ]

_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i: ; preds = %select.unfold.i, %select.unfold.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.043.0.copyload.i, i64 88
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !431 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !430
  %.not.i.i.i39.i = icmp eq ptr %i.ga, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8
  %.0.i.i.i40.i = select i1 %.not.i.i.i39.i, ptr %i.gc, ptr %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %.0.i.i.i40.i, i64 20
  %i.ge = load i8, ptr %i.gd, align 4
  %i.gf = and i8 %i.ge, 7
  switch i8 %i.gf, label %.critedge.i [
    i8 1, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit
    i8 3, label %bb.af
  ]

bb.af:                                            ; preds = %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.061.069, i64 20
  %.sroa.0.0.copyload.i41.i = load i32, ptr %i.gg, align 4, !tbaa !201
  %i.gh = and i32 %.sroa.0.0.copyload.i41.i, 128
  %.not87.i = icmp eq i32 %i.gh, 0
  br i1 %.not87.i, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.af, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i
  %i.gi = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.gj = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG15isKnownNeverNaNENS_7SDValueEbj(ptr noundef nonnull align 8 dereferenceable(920) %i.gi, ptr %.sroa.052.0.copyload.i, i32 %.sroa.755.0.copyload.i, i1 noundef zeroext true, i32 noundef 0) #22
  br i1 %i.gj, label %bb.ag, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

bb.ag:                                            ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.061.069, i64 64
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !342
  store i64 %i.gl, ptr %2, align 8, !tbaa !342
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.061.069, i64 60
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !343
  store i32 %i.gn, ptr %i.g, align 8, !tbaa !344
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !318
  %.sroa.0.0.copyload.i49 = load i16, ptr %1, align 8, !tbaa !333
  %.sroa.24.0.copyload.i = load ptr, ptr %i.f, align 8, !tbaa !335
  store ptr %.sroa.052.0.copyload.i, ptr %3, align 8, !tbaa !421
  store <2 x i32> %i.es, ptr %.sroa.755.0..sroa_idx56.i, align 8
  store ptr %.sroa.043.0.copyload.i, ptr %4, align 8, !tbaa !421
  store <2 x i32> %i.eu, ptr %.sroa.7.0..sroa_idx47.i, align 8
  %i.gp = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.go, i32 noundef %.0.i.ph.i, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 %.sroa.0.0.copyload.i49, ptr %.sroa.24.0.copyload.i, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit

_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit: ; preds = %.split.i, %_ZNK4llvm3EVT15isFloatingPointEv.exit.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.u, %bb.v, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.w, %bb.x, %bb.y, %bb.z, %bb.ae, %select.unfold.i, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i, %bb.af, %.critedge.i, %bb.ag
  %.sroa.074.2.i = phi ptr [ null, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ null, %_ZNK4llvm3EVT15isFloatingPointEv.exit.i ], [ null, %.split.i ], [ null, %bb.u ], [ null, %bb.v ], [ null, %bb.y ], [ null, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit.i ], [ null, %bb.ae ], [ %i.gp, %bb.ag ], [ null, %bb.af ], [ null, %_ZN4llvm8dyn_castINS_16ConstantFPSDNodeENS_7SDValueEEEDcRT0_.exit.i ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.z ], [ null, %.critedge.i ], [ null, %select.unfold.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL15addBitcastHintsRN4llvm12SelectionDAGERNS_6SDNodeE.exit, %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit
  %.sroa.059.1 = phi ptr [ %.fca.0.extract4, %_ZL15addBitcastHintsRN4llvm12SelectionDAGERNS_6SDNodeE.exit ], [ %.sroa.074.2.i, %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit ] ; 2 uses
  %.sroa.7.1 = phi i32 [ %.fca.1.extract5, %_ZL15addBitcastHintsRN4llvm12SelectionDAGERNS_6SDNodeE.exit ], [ 0, %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20tryFoldCselToFMaxMinERN4llvm6SDNodeE.exit ]
  %.not67 = icmp eq ptr %.sroa.059.1, null
  br i1 %.not67, label %.thread, label %.thread.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit, %bb.g, %bb.c, %bb.ah, %bb.b
  %.not = icmp eq ptr %i.q, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

.thread.thread:                                   ; preds = %bb.ah
  %i.gq = getelementptr inbounds i8, ptr %.sroa.061.069, i64 -8
  %i.gr = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.gr, ptr nonnull %i.gq, i32 0, ptr nonnull %.sroa.059.1, i32 %.sroa.7.1) #22
  %.not80 = icmp eq ptr %i.q, %i.e
  br i1 %.not80, label %._crit_edge.thread, label %.outer

._crit_edge.thread:                               ; preds = %.thread.thread, %._crit_edge
  %i.gs = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG15RemoveDeadNodesEv(ptr noundef nonnull align 8 dereferenceable(920) %i.gs) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %._crit_edge.thread, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16SelectionDAGISel18PostprocessISelDAGEv(ptr noundef nonnull align 8 dereferenceable(952) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel6SelectEPN4llvm6SDNodeE(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %5 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %6 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 11 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 7 uses
  %10 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %14 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %15 = alloca [2 x %"class.llvm::SDValue"], align 16 ; 6 uses
  %16 = alloca %"class.llvm::ArrayRef", align 8   ; 7 uses
  %17 = alloca %"class.llvm::SDValue", align 8    ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %18 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %19 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %20 = alloca %"class.llvm::ArrayRef", align 8   ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %21 = alloca %"class.llvm::SDValue", align 8    ; 8 uses
  %22 = alloca %"class.llvm::SDLoc", align 8      ; 10 uses
  %23 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %24 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %25 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %26 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 8 uses
  %27 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %28 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %29 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %31 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %32 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %33 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %34 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %35 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 17 uses
  %37 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %38 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 7 uses
  %39 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %40 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %41 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %42 = alloca [5 x %"class.llvm::SDValue"], align 8 ; 11 uses
  %43 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %44 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %45 = alloca %"class.llvm::FeatureBitset", align 16 ; 9 uses
  %46 = alloca %"class.llvm::SDLoc", align 8      ; 10 uses
  %47 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %48 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %49 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %50 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %51 = alloca %"struct.llvm::EVT", align 8       ; 6 uses
  %52 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %53 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %54 = alloca [2 x %"struct.llvm::EVT"], align 8 ; 4 uses
  %55 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %56 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  %57 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %58 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %59 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %60 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %61 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %62 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %63 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %64 = alloca %"class.llvm::SDValue", align 8    ; 2 uses
  %65 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %66 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %67 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %68 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %69 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %70 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %71 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %i.f = alloca [1 x ptr], align 8                ; 4 uses
  %72 = alloca %"class.llvm::SDLoc", align 8      ; 5 uses
  %73 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 7 uses
  %74 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %75 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %i.g = alloca [1 x ptr], align 8                ; 4 uses
  %76 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %77 = alloca %"struct.llvm::EVT", align 8       ; 3 uses
  %78 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %79 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %80 = alloca %"class.llvm::SDValue", align 8    ; 3 uses
  %i.h = alloca [3 x i32], align 4                ; 6 uses
  %i.i = alloca [3 x i32], align 4                ; 6 uses
  %i.j = alloca [3 x i32], align 4                ; 6 uses
  %i.k = alloca [3 x i32], align 4                ; 6 uses
  %i.l = alloca [2 x i32], align 4                ; 5 uses
  %i.m = alloca [2 x i32], align 4                ; 5 uses
  %i.n = alloca [2 x i32], align 4                ; 5 uses
  %i.o = alloca [2 x i32], align 4                ; 5 uses
  %i.p = alloca [4 x i32], align 16               ; 4 uses
  %i.q = alloca [4 x i32], align 16               ; 4 uses
  %i.r = alloca [4 x i32], align 16               ; 4 uses
  %i.s = alloca [4 x i32], align 16               ; 4 uses
  %i.t = alloca [4 x i32], align 16               ; 4 uses
  %i.u = alloca [4 x i32], align 16               ; 4 uses
  %i.v = alloca [4 x i32], align 16               ; 4 uses
  %i.w = alloca [4 x i32], align 16               ; 4 uses
  %i.x = alloca [4 x i32], align 16               ; 4 uses
  %i.y = alloca [4 x i32], align 16               ; 4 uses
  %i.z = alloca [4 x i32], align 16               ; 4 uses
  %i.aa = alloca [4 x i32], align 16              ; 4 uses
  %i.ab = alloca [4 x i32], align 16              ; 4 uses
  %i.ac = alloca [4 x i32], align 16              ; 4 uses
  %i.ad = alloca [4 x i32], align 16              ; 4 uses
  %i.ae = alloca [4 x i32], align 16              ; 4 uses
  %i.af = alloca [4 x i32], align 16              ; 4 uses
  %i.ag = alloca [4 x i32], align 16              ; 4 uses
  %i.ah = alloca [4 x i32], align 16              ; 4 uses
  %i.ai = alloca [4 x i32], align 16              ; 4 uses
  %i.aj = alloca [4 x i32], align 16              ; 4 uses
  %i.ak = alloca [4 x i32], align 16              ; 4 uses
  %i.al = alloca [4 x i32], align 16              ; 4 uses
  %i.am = alloca [4 x i32], align 16              ; 4 uses
  %i.an = alloca [4 x i32], align 16              ; 4 uses
  %i.ao = alloca [4 x i32], align 16              ; 4 uses
  %i.ap = alloca [4 x i32], align 16              ; 4 uses
  %i.aq = alloca [4 x i32], align 16              ; 4 uses
  %i.ar = alloca [4 x i32], align 16              ; 4 uses
  %i.as = alloca [4 x i32], align 16              ; 4 uses
  %i.at = alloca [4 x i32], align 16              ; 4 uses
  %i.au = alloca [4 x i32], align 16              ; 4 uses
  %i.av = alloca [4 x i32], align 16              ; 4 uses
  %i.aw = alloca [4 x i32], align 16              ; 4 uses
  %i.ax = alloca [4 x i32], align 16              ; 4 uses
  %i.ay = alloca [4 x i32], align 16              ; 4 uses
  %i.az = alloca [4 x i32], align 16              ; 4 uses
  %i.ba = alloca [4 x i32], align 16              ; 4 uses
  %i.bb = alloca [4 x i32], align 16              ; 4 uses
  %i.bc = alloca [4 x i32], align 16              ; 4 uses
  %i.bd = alloca [4 x i32], align 16              ; 4 uses
  %i.be = alloca [4 x i32], align 16              ; 4 uses
  %i.bf = alloca [4 x i32], align 16              ; 4 uses
  %i.bg = alloca [4 x i32], align 16              ; 4 uses
  %i.bh = alloca [4 x i32], align 16              ; 4 uses
  %i.bi = alloca [4 x i32], align 16              ; 4 uses
  %i.bj = alloca [4 x i32], align 16              ; 4 uses
  %i.bk = alloca [4 x i32], align 16              ; 4 uses
  %i.bl = alloca [4 x i32], align 16              ; 4 uses
  %i.bm = alloca [4 x i32], align 16              ; 4 uses
  %i.bn = alloca [4 x i32], align 16              ; 4 uses
  %i.bo = alloca [4 x i32], align 16              ; 4 uses
  %i.bp = alloca [4 x i32], align 16              ; 4 uses
  %i.bq = alloca [4 x i32], align 16              ; 4 uses
  %i.br = alloca [4 x i32], align 16              ; 4 uses
  %i.bs = alloca [4 x i32], align 16              ; 4 uses
  %i.bt = alloca [4 x i32], align 16              ; 4 uses
  %i.bu = alloca [4 x i32], align 16              ; 4 uses
  %i.bv = alloca [4 x i32], align 16              ; 4 uses
  %i.bw = alloca [4 x i32], align 16              ; 4 uses
  %i.bx = alloca [4 x i32], align 16              ; 4 uses
  %i.by = alloca [4 x i32], align 16              ; 4 uses
  %81 = alloca %"class.llvm::SDLoc", align 8      ; 7 uses
  %82 = alloca %"class.llvm::SmallVector.432", align 8 ; 7 uses
  %83 = alloca %"class.llvm::ArrayRef", align 8   ; 3 uses
  %84 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19CheckComplexPatternEPN4llvm6SDNodeES3_NS1_7SDValueEjRNS1_15SmallVectorImplISt4pairIS4_S3_EEE:bb.a
    i32 112, label %bb.dl
    i32 113, label %bb.dm
    i32 114, label %bb.dn
    i32 115, label %bb.do
    i32 116, label %bb.dp
    i32 117, label %bb.dq
    i32 118, label %bb.dr
    i32 119, label %bb.ds
    i32 120, label %bb.dt
    i32 121, label %bb.du
    i32 122, label %bb.dv
    i32 123, label %bb.dw
    i32 124, label %bb.dx
    i32 125, label %bb.dy
    i32 126, label %bb.dz
    i32 127, label %bb.ea
    i32 128, label %bb.eb
    i32 129, label %bb.ec
    i32 130, label %bb.ed
    i32 131, label %bb.ee
    i32 132, label %bb.ef
    i32 133, label %bb.eg
    i32 134, label %bb.eh
    i32 135, label %bb.ei
    i32 136, label %bb.ej
    i32 137, label %bb.ek
    i32 138, label %bb.el
    i32 139, label %bb.em
    i32 140, label %bb.en
    i32 141, label %bb.eo
    i32 142, label %bb.ep
    i32 143, label %bb.eq
    i32 144, label %bb.er
    i32 145, label %bb.es
    i32 146, label %bb.et
    i32 147, label %bb.eu
    i32 148, label %bb.ev
    i32 149, label %bb.ew
    i32 150, label %bb.ex
    i32 151, label %bb.ey
    i32 152, label %bb.ez
    i32 153, label %bb.fa
    i32 154, label %bb.fb
    i32 155, label %bb.fc
    i32 156, label %bb.fd
    i32 157, label %bb.fe
    i32 158, label %bb.ff
    i32 159, label %bb.fg
    i32 160, label %bb.fh
    i32 161, label %bb.fi
    i32 162, label %bb.fj
    i32 163, label %bb.fk
    i32 164, label %bb.fl
    i32 165, label %bb.fm
    i32 166, label %bb.fn
    i32 167, label %bb.fo
    i32 168, label %bb.fp
    i32 169, label %bb.fq
    i32 170, label %bb.fr
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.d, align 8, !tbaa !318
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %.val1741 = load ptr, ptr %i.e, align 8, !tbaa !469
  %i.f = tail call noundef zeroext i1 @_ZNK4llvm21AArch64TargetLowering20isAllActivePredicateERKNS_12SelectionDAGENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(518448) %.val1741, ptr noundef nonnull align 8 dereferenceable(920) %.val, ptr %3, i32 %4) #22
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c)
  %i.g = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel13SelectDupZeroEN4llvm7SDValueE(ptr %3)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c)
  %i.h = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel20SelectDupZeroOrUndefEN4llvm7SDValueE(ptr %3)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.f:                                             ; preds = %bb.a
  %i.i = add nuw nsw i64 %i.c, 2
  %i.j = and i64 %i.i, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.j)
  %i.k = load ptr, ptr %6, align 8, !tbaa !346    ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.c
  %i.m = add nuw nsw i64 %i.c, 1
  %i.n = and i64 %i.m, 4294967295
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.n
  tail call fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_j(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %i.o, i32 noundef 1)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.g:                                             ; preds = %bb.a
  %i.p = add nuw nsw i64 %i.c, 2
  %i.q = and i64 %i.p, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.q)
  %i.r = load ptr, ptr %6, align 8, !tbaa !346    ; 2 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.c
  %i.t = add nuw nsw i64 %i.c, 1
  %i.u = and i64 %i.t, 4294967295
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.u
  %i.w = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln8ELl7EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr noundef %1, ptr %3, ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(12) %i.v)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.c)
  %i.x = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectAnyPredicateEN4llvm7SDValueE(ptr %3, i32 %4)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.j:                                             ; preds = %bb.a
  %i.y = add nuw nsw i64 %i.c, 1
  %i.z = and i64 %i.y, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.z)
  %i.aa = load ptr, ptr %6, align 8, !tbaa !346
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.val1749 = load ptr, ptr %i.ac, align 8, !tbaa !141
  %i.ad = getelementptr i8, ptr %.val1749, i64 864
  %.val1749.val = load i8, ptr %i.ad, align 8, !tbaa !677, !range !446, !noundef !316
  %i.ae = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectExtractHighEN4llvm7SDValueERS2_(i8 %.val1749.val, ptr %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ab)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.k:                                             ; preds = %bb.a
  %i.af = add nuw nsw i64 %i.c, 1
  %i.ag = and i64 %i.af, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ag)
  %i.ah = load ptr, ptr %6, align 8, !tbaa !346
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.val1748 = load ptr, ptr %i.aj, align 8, !tbaa !141
  %i.ak = getelementptr i8, ptr %.val1748, i64 864
  %.val1748.val = load i8, ptr %i.ak, align 8, !tbaa !677, !range !446, !noundef !316
  %i.al = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectExtractHighEN4llvm7SDValueERS2_(i8 %.val1748.val, ptr %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ai)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.l:                                             ; preds = %bb.a
  %i.am = add nuw nsw i64 %i.c, 1
  %i.an = and i64 %i.am, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.an)
  %i.ao = load ptr, ptr %6, align 8, !tbaa !346
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %i.c
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 952
  %.val1747 = load ptr, ptr %i.aq, align 8, !tbaa !141
  %i.ar = getelementptr i8, ptr %.val1747, i64 864
  %.val1747.val = load i8, ptr %i.ar, align 8, !tbaa !677, !range !446, !noundef !316
  %i.as = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectExtractHighEN4llvm7SDValueERS2_(i8 %.val1747.val, ptr %3, ptr noundef nonnull align 8 dereferenceable(12) %i.ap)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.m:                                             ; preds = %bb.a
  %i.at = add nuw nsw i64 %i.c, 2
  %i.au = and i64 %i.at, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.au)
  %i.av = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.c
  %i.ax = add nuw nsw i64 %i.c, 1
  %i.ay = and i64 %i.ax, 4294967295
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.ay
  %i.ba = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %i.aw, ptr noundef nonnull align 8 dereferenceable(12) %i.az)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.n:                                             ; preds = %bb.a
  %i.bb = add nuw nsw i64 %i.c, 2
  %i.bc = and i64 %i.bb, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bc)
  %i.bd = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.c
  %i.bf = add nuw nsw i64 %i.c, 1
  %i.bg = and i64 %i.bf, 4294967295
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %i.bg
  tail call fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_j(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(12) %i.be, ptr noundef nonnull align 8 dereferenceable(12) %i.bh, i32 noundef 4)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.o:                                             ; preds = %bb.a
  %i.bi = add nuw nsw i64 %i.c, 2
  %i.bj = and i64 %i.bi, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bj)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !331
  %.not.i.i = icmp eq i32 %i.bl, 59
  br i1 %.not.i.i, label %bb.p, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.p:                                             ; preds = %bb.o
  %i.bm = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.bn = add nuw nsw i64 %i.c, 1
  %i.bo = and i64 %i.bn, 4294967295
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %i.c
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !337 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.046.0.copyload.i.i = load ptr, ptr %i.bt, align 8, !tbaa !421
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %i.bu = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.8.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bu to i32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bq, ptr noundef nonnull align 8 dereferenceable(12) %i.bs, i64 12, i1 false)
  store ptr %.sroa.046.0.copyload.i.i, ptr %i.bp, align 8, !tbaa !421
  %.sroa.8.0..sroa_idx51.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store i32 %.sroa.8.sroa.0.0.extract.trunc.i.i, ptr %.sroa.8.0..sroa_idx51.i.i, align 8, !tbaa !201
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.q:                                             ; preds = %bb.a
  %i.bv = add nuw nsw i64 %i.c, 2
  %i.bw = and i64 %i.bv, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bw)
  %i.bx = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.c
  %i.bz = add nuw nsw i64 %i.c, 1
  %i.ca = and i64 %i.bz, 4294967295
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bx, i64 %i.ca
  %i.cc = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel22SelectAddrModeUnscaledEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.by, ptr noundef nonnull align 8 dereferenceable(12) %i.cb)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.r:                                             ; preds = %bb.a
  %i.cd = add nuw nsw i64 %i.c, 2
  %i.ce = and i64 %i.cd, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ce)
  %i.cf = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.c
  %i.ch = add nuw nsw i64 %i.c, 1
  %i.ci = and i64 %i.ch, 4294967295
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.cg, ptr noundef nonnull align 8 dereferenceable(12) %i.cj)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.s:                                             ; preds = %bb.a
  %i.cl = add nuw nsw i64 %i.c, 4
  %i.cm = and i64 %i.cl, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.cm)
  %i.cn = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.co = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.c
  %i.cp = add nuw nsw i64 %i.c, 1
  %i.cq = and i64 %i.cp, 4294967295
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = add nuw nsw i64 %i.c, 2
  %i.ct = and i64 %i.cs, 4294967295
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.ct
  %i.cv = add nuw nsw i64 %i.c, 3
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = getelementptr inbounds nuw [24 x i8], ptr %i.cn, i64 %i.cw
  %i.cy = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectAddrModeWROEN4llvm7SDValueEjRS2_S3_S3_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.co, ptr noundef nonnull align 8 dereferenceable(12) %i.cr, ptr noundef nonnull align 8 dereferenceable(12) %i.cu, ptr noundef nonnull align 8 dereferenceable(12) %i.cx)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.t:                                             ; preds = %bb.a
  %i.cz = add nuw nsw i64 %i.c, 4
  %i.da = and i64 %i.cz, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.da)
  %i.db = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.dc = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.c
  %i.dd = add nuw nsw i64 %i.c, 1
  %i.de = and i64 %i.dd, 4294967295
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.de
  %i.dg = add nuw nsw i64 %i.c, 2
  %i.dh = and i64 %i.dg, 4294967295
  %i.di = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.dh
  %i.dj = add nuw nsw i64 %i.c, 3
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.db, i64 %i.dk
  %i.dm = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectAddrModeXROEN4llvm7SDValueEjRS2_S3_S3_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 %4, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.dc, ptr noundef nonnull align 8 dereferenceable(12) %i.df, ptr noundef nonnull align 8 dereferenceable(12) %i.di, ptr noundef nonnull align 8 dereferenceable(12) %i.dl)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.u:                                             ; preds = %bb.a
  %i.dn = add nuw nsw i64 %i.c, 2
  %i.do = and i64 %i.dn, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.do)
  %i.dp = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.c
  %i.dr = add nuw nsw i64 %i.c, 1
  %i.ds = and i64 %i.dr, 4294967295
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.ds
  tail call fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_j(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(12) %i.dq, ptr noundef nonnull align 8 dereferenceable(12) %i.dt, i32 noundef 2)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.v:                                             ; preds = %bb.a
  %i.du = add nuw nsw i64 %i.c, 2
  %i.dv = and i64 %i.du, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.dv)
  %i.dw = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.dx = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.c
  %i.dy = add nuw nsw i64 %i.c, 1
  %i.dz = and i64 %i.dy, 4294967295
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dw, i64 %i.dz
  %i.eb = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel22SelectAddrModeUnscaledEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.dx, ptr noundef nonnull align 8 dereferenceable(12) %i.ea)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.w:                                             ; preds = %bb.a
  %i.ec = add nuw nsw i64 %i.c, 2
  %i.ed = and i64 %i.ec, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.ed)
  %i.ee = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.c
  %i.eg = add nuw nsw i64 %i.c, 1
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.ee, i64 %i.eh
  %i.ej = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %i.ef, ptr noundef nonnull align 8 dereferenceable(12) %i.ei)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.x:                                             ; preds = %bb.a
  %i.ek = add nuw nsw i64 %i.c, 2
  %i.el = and i64 %i.ek, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.el)
  %i.em = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.en = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.c
  %i.eo = add nuw nsw i64 %i.c, 1
  %i.ep = and i64 %i.eo, 4294967295
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %i.em, i64 %i.ep
  tail call fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSMETileSliceEN4llvm7SDValueEjRS2_S3_j(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %i.en, ptr noundef nonnull align 8 dereferenceable(12) %i.eq, i32 noundef 1)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.y:                                             ; preds = %bb.a
  %i.er = add nuw nsw i64 %i.c, 4
  %i.es = and i64 %i.er, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.es)
  %i.et = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.eu = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.c
  %i.ev = add nuw nsw i64 %i.c, 1
  %i.ew = and i64 %i.ev, 4294967295
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ew
  %i.ey = add nuw nsw i64 %i.c, 2
  %i.ez = and i64 %i.ey, 4294967295
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.ez
  %i.fb = add nuw nsw i64 %i.c, 3
  %i.fc = and i64 %i.fb, 4294967295
  %i.fd = getelementptr inbounds nuw [24 x i8], ptr %i.et, i64 %i.fc
  %i.fe = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectAddrModeWROEN4llvm7SDValueEjRS2_S3_S3_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %i.eu, ptr noundef nonnull align 8 dereferenceable(12) %i.ex, ptr noundef nonnull align 8 dereferenceable(12) %i.fa, ptr noundef nonnull align 8 dereferenceable(12) %i.fd)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.z:                                             ; preds = %bb.a
  %i.ff = add nuw nsw i64 %i.c, 4
  %i.fg = and i64 %i.ff, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.fg)
  %i.fh = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.c
  %i.fj = add nuw nsw i64 %i.c, 1
  %i.fk = and i64 %i.fj, 4294967295
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.fk
  %i.fm = add nuw nsw i64 %i.c, 2
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.fn
  %i.fp = add nuw nsw i64 %i.c, 3
  %i.fq = and i64 %i.fp, 4294967295
  %i.fr = getelementptr inbounds nuw [24 x i8], ptr %i.fh, i64 %i.fq
  %i.fs = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectAddrModeXROEN4llvm7SDValueEjRS2_S3_S3_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 %4, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %i.fi, ptr noundef nonnull align 8 dereferenceable(12) %i.fl, ptr noundef nonnull align 8 dereferenceable(12) %i.fo, ptr noundef nonnull align 8 dereferenceable(12) %i.fr)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.aa:                                            ; preds = %bb.a
  %i.ft = add nuw nsw i64 %i.c, 2
  %i.fu = and i64 %i.ft, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.fu)
  %i.fv = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.fw = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.c
  %i.fx = add nuw nsw i64 %i.c, 1
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = getelementptr inbounds nuw [24 x i8], ptr %i.fv, i64 %i.fy
  %i.ga = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %i.fw, ptr noundef nonnull align 8 dereferenceable(12) %i.fz)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.ab:                                            ; preds = %bb.a
  %i.gb = add nuw nsw i64 %i.c, 2
  %i.gc = and i64 %i.gb, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.gc)
  %i.gd = load ptr, ptr %6, align 8, !tbaa !346   ; 2 uses
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.c
  %i.gf = add nuw nsw i64 %i.c, 1
  %i.gg = and i64 %i.gf, 4294967295
  %i.gh = getelementptr inbounds nuw [24 x i8], ptr %i.gd, i64 %i.gg
  %i.gi = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel22SelectAddrModeUnscaledEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr %3, i32 %4, ptr noundef nonnull align 8 dereferenceable(12) %i.ge, ptr noundef nonnull align 8 dereferenceable(12) %i.gh)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.ac:                                            ; preds = %bb.a
  %i.gj = add nuw nsw i64 %i.c, 4
  %i.gk = and i64 %i.gj, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.gk)
  %i.gl = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.gm = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.c
  %i.gn = add nuw nsw i64 %i.c, 1
  %i.go = and i64 %i.gn, 4294967295
  %i.gp = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.go
  %i.gq = add nuw nsw i64 %i.c, 2
  %i.gr = and i64 %i.gq, 4294967295
  %i.gs = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gr
  %i.gt = add nuw nsw i64 %i.c, 3
  %i.gu = and i64 %i.gt, 4294967295
  %i.gv = getelementptr inbounds nuw [24 x i8], ptr %i.gl, i64 %i.gu
  %i.gw = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel17SelectAddrModeWROEN4llvm7SDValueEjRS2_S3_S3_S3_(ptr noundef nonnull readonly align 8 dereferenceable(960) %0, ptr readonly %3, i32 %4, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %i.gm, ptr noundef nonnull align 8 dereferenceable(12) %i.gp, ptr noundef nonnull align 8 dereferenceable(12) %i.gs, ptr noundef nonnull align 8 dereferenceable(12) %i.gv)
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeILj0EEEbN4llvm7SDValueERS3_S4_.exit

bb.ad:                                            ; preds = %bb.a
  %i.gx = add nuw nsw i64 %i.c, 4
  %i.gy = and i64 %i.gx, 4294967295
  tail call void @_ZN4llvm15SmallVectorImplISt4pairINS_7SDValueEPNS_6SDNodeEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.gy)
  %i.gz = load ptr, ptr %6, align 8, !tbaa !346   ; 4 uses
  %i.ha = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.c
  %i.hb = add nuw nsw i64 %i.c, 1
  %i.hc = and i64 %i.hb, 4294967295
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.hc
  %i.he = add nuw nsw i64 %i.c, 2
  %i.hf = and i64 %i.he, 4294967295
  %i.hg = getelementptr inbounds nuw [24 x i8], ptr %i.gz, i64 %i.hf
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel14tryIndexedLoadEPN4llvm6SDNodeE:bb.a
  store ptr %.sroa.021.0, ptr %i.co, align 16, !tbaa !421
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.sroa.522.0, ptr %.sroa.522.0..sroa_idx, align 8, !tbaa !201
  %i.cp = getelementptr inbounds nuw i8, ptr %6, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.cp, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !458
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !318
  store i16 %.sroa.0156.0, ptr %7, align 8, !tbaa !333
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !335
  store i16 1, ptr %8, align 8, !tbaa !456
  %i.cs = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %i.cs, align 8, !tbaa !457
  store ptr %6, ptr %9, align 8, !tbaa !417
  %i.ct = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 3, ptr %i.ct, align 8, !tbaa !420
  %i.cu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTES4_S4_NS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cr, i32 noundef %.068, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %7, ptr noundef nonnull byval(%"struct.llvm::EVT") align 8 %8, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %9) #22 ; 7 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.cv, align 8
  %i.cw = and i64 %.0.copyload.i.i.i.i.i.i, -5
  %i.cx = inttoptr i64 %i.cw to ptr
  %i.cy = load ptr, ptr %i.cq, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !471
  call void @_ZN4llvm12SelectionDAG14setNodeMemRefsEPNS_13MachineSDNodeENS_8ArrayRefIPNS_17MachineMemOperandEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.cy, ptr noundef %i.cu, ptr nonnull %i.a, i64 1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br i1 %.069.shrunk, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.cz = load ptr, ptr %i.cq, align 8, !tbaa !318
  %i.da = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.cz, i64 noundef 20, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.da, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.da, 1
  %i.db = load ptr, ptr %i.cq, align 8, !tbaa !318
  store ptr %i.cu, ptr %10, align 8, !tbaa !421
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i32 1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !201
  store ptr %.fca.0.extract, ptr %11, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  %i.dc = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.db, i32 noundef 12, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %10, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %11) #22
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sroa.0113.0 = phi ptr [ %i.dc, %bb.az ], [ %i.cu, %bb.ay ] ; 2 uses
  %.sroa.6.0 = phi i32 [ 0, %bb.az ], [ 1, %bb.ay ]
  %i.dd = load ptr, ptr %i.cq, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.dd, ptr nonnull %1, i32 0, ptr %.sroa.0113.0, i32 %.sroa.6.0) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %.sroa.0113.0) #22
  %i.de = load ptr, ptr %i.cq, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.de, ptr nonnull %1, i32 1, ptr %i.cu, i32 0) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.cu) #22
  %i.df = load ptr, ptr %i.cq, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG25ReplaceAllUsesOfValueWithENS_7SDValueES1_(ptr noundef nonnull align 8 dereferenceable(920) %i.df, ptr nonnull %1, i32 2, ptr %i.cu, i32 2) #22
  call void @_ZN4llvm16SelectionDAGISel22EnforceNodeIdInvariantEPNS_6SDNodeE(ptr noundef %i.cu) #22
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !318
  call void @_ZN4llvm12SelectionDAG14RemoveDeadNodeEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(920) %i.dg, ptr noundef nonnull %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ao, %bb.ai, %bb.ba
  %.0 = phi i1 [ true, %bb.ba ], [ false, %bb.ao ], [ false, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.bc

bb.bc:                                            ; preds = %bb.a, %bb.bb
  %.1 = phi i1 [ %.0, %bb.bb ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel28tryBitfieldExtractOpFromSExtEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %3 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %4 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !332  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.b, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !338  ; 3 uses
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i, 8
  %i.f = icmp ne ptr %.sroa.21.0.copyload.i, null
  %i.g = select i1 %.not.i, i1 true, i1 %i.f
  br i1 %i.g, label %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !332  ; 2 uses
  %.sroa.21.0..sroa_idx.i33 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.21.0.copyload.i34 = load ptr, ptr %.sroa.21.0..sroa_idx.i33, align 8, !tbaa !335
  %.sroa.0.0.copyload.i32 = load i16, ptr %i.i, align 8, !tbaa !333
  %.not.i37 = icmp ne i16 %.sroa.0.0.copyload.i32, 7
  %i.j = icmp ne ptr %.sroa.21.0.copyload.i34, null
  %i.k = select i1 %.not.i37, i1 true, i1 %i.j
  br i1 %i.k, label %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !331
  %i.n = icmp eq i32 %i.m, 199
  br i1 %i.n, label %bb.d, label %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !338  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load i32, ptr %i.s, align 8, !tbaa !331
  switch i32 %i.t, label %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread [
    i32 37, label %_ZNK4llvm8TypeSizecvmEv.exit
    i32 12, label %_ZNK4llvm8TypeSizecvmEv.exit
  ]

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %bb.d, %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !425  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !428
  %i.z = icmp ult i32 %i.y, 65
  %i.aa = load ptr, ptr %i.w, align 8
  %spec.select.i.i.i.i.i = select i1 %i.z, ptr %i.w, ptr %i.aa
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !342
  store i64 %i.ac, ptr %5, align 8, !tbaa !342
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !344
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !318 ; 2 uses
  %.sroa.023.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !421 ; 3 uses
  %.sroa.224.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.224.0.copyload = load i32, ptr %.sroa.224.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 72
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !342
  store i64 %i.aj, ptr %2, align 8, !tbaa !342
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.023.0.copyload, i64 68
  %i.am = load i32, ptr %i.al, align 4, !tbaa !343
  store i32 %i.am, ptr %i.ak, align 8, !tbaa !344
  %i.an = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null) #22
  store ptr %i.an, ptr %3, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !201
  store ptr %.sroa.023.0.copyload, ptr %4, align 8, !tbaa !421
  %.sroa.35.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.224.0.copyload, ptr %.sroa.35.0..sroa_idx.i, align 8, !tbaa !201
  %i.ao = call { ptr, i32 } @_ZN4llvm12SelectionDAG21getTargetInsertSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(12) %2, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %3, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %4) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.fca.0.extract19 = extractvalue { ptr, i32 } %i.ao, 0
  %.fca.1.extract20 = extractvalue { ptr, i32 } %i.ao, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr %.fca.0.extract19, ptr %6, align 16, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.fca.1.extract20, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !318
  %i.ar = and i64 %.0.i.i.i.i.i, 4294967295
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.aq, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract7, ptr %i.ap, align 16
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.au = load ptr, ptr %i.ag, align 8, !tbaa !318
  %i.av = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.au, i64 noundef 31, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.av, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.av, 1
  store ptr %.fca.0.extract, ptr %i.at, align 16
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 %.fca.1.extract, ptr %.sroa.23.0..sroa_idx, align 8
  %i.aw = load ptr, ptr %i.ag, align 8, !tbaa !318
  store ptr %6, ptr %7, align 8, !tbaa !417
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 3, ptr %i.ax, align 8, !tbaa !420
  %i.ay = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.aw, ptr noundef nonnull %1, i32 noundef 6058, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread

_ZL21isOpcWithIntImmediatePKN4llvm6SDNodeEjRm.exit.thread: ; preds = %_ZNK4llvm8TypeSizecvmEv.exit, %bb.c, %bb.d, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %_ZNK4llvm8TypeSizecvmEv.exit ], [ false, %bb.c ], [ false, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19tryBitfieldInsertOpEPN4llvm6SDNodeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.llvm::KnownBits", align 8  ; 11 uses
  %3 = alloca %"class.llvm::APInt", align 8       ; 9 uses
  %4 = alloca %"class.llvm::APInt", align 8       ; 7 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 8 uses
  %6 = alloca %"class.llvm::SDValue", align 8     ; 5 uses
  %7 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %8 = alloca %"class.llvm::ArrayRef", align 8    ; 5 uses
  %9 = alloca %"struct.llvm::EVT", align 8        ; 7 uses
  %10 = alloca %"class.llvm::SDLoc", align 8      ; 8 uses
  %11 = alloca %"class.llvm::SDValue", align 8    ; 5 uses
  %12 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %13 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %14 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %15 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %16 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %17 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %18 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %19 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %20 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %21 = alloca [3 x %"class.llvm::SDValue"], align 16 ; 9 uses
  %22 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %23 = alloca %"struct.llvm::EVT", align 8       ; 5 uses
  %24 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %25 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %26 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %27 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %28 = alloca %"class.llvm::APInt", align 8      ; 5 uses
  %29 = alloca %"class.llvm::APInt", align 8      ; 9 uses
  %30 = alloca %"class.llvm::SDValue", align 8    ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %31 = alloca %"struct.llvm::KnownBits", align 8 ; 9 uses
  %32 = alloca %"class.llvm::APInt", align 8      ; 13 uses
  %33 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %34 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %35 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %36 = alloca %"class.llvm::SDLoc", align 8      ; 6 uses
  %37 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %38 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %39 = alloca %"class.llvm::APInt", align 8      ; 8 uses
  %40 = alloca %"class.llvm::APInt", align 8      ; 6 uses
  %41 = alloca %"class.llvm::APInt", align 8      ; 10 uses
  %42 = alloca %"class.llvm::SDValue", align 8    ; 4 uses
  %43 = alloca %"class.llvm::APInt", align 8      ; 7 uses
  %44 = alloca %"class.llvm::SDLoc", align 8      ; 9 uses
  %45 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %46 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %47 = alloca %"class.llvm::SDValue", align 8    ; 6 uses
  %48 = alloca [4 x %"class.llvm::SDValue"], align 16 ; 10 uses
  %49 = alloca %"class.llvm::ArrayRef", align 8   ; 6 uses
  %50 = alloca %"class.llvm::APInt", align 8      ; 11 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !331
  %.not = icmp eq i32 %i.g, 194
  br i1 %.not, label %bb.b, label %bb.ev

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #22
  %i.h = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  store i32 1, ptr %i.h, align 8, !tbaa !428
  store i64 0, ptr %50, align 8, !tbaa !430
  call fastcc void @_ZL13getUsefulBitsN4llvm7SDValueERNS_5APIntEj(ptr nonnull %1, i32 0, ptr noundef nonnull align 8 dereferenceable(12) %50, i32 noundef 0)
  %i.i = load i32, ptr %i.h, align 8, !tbaa !428  ; 4 uses
  %i.j = icmp ult i32 %i.i, 65                    ; 2 uses
  br i1 %i.j, label %.split, label %_ZNK4llvm5APIntntEv.exit

.split:                                           ; preds = %bb.b
  %i.k = load i64, ptr %50, align 8, !tbaa !430
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.d

_ZNK4llvm5APIntntEv.exit:                         ; preds = %bb.b
  %i.m = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  %i.n = icmp eq i32 %i.m, %i.i
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.split, %_ZNK4llvm5APIntntEv.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !332  ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.r, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  %i.s = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %i.p, ptr noundef nonnull %1, i32 noundef 10, i16 %.sroa.0.0.copyload.i, ptr %.sroa.21.0.copyload.i) #22 ; 0 uses
  br label %bb.es

bb.d:                                             ; preds = %.split, %_ZNK4llvm5APIntntEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318  ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  call void @llvm.lifetime.start.p0(ptr nonnull %41)
  call void @llvm.lifetime.start.p0(ptr nonnull %45)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  call void @llvm.lifetime.start.p0(ptr nonnull %49)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !332  ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.w, align 8, !tbaa !333 ; 12 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !335
  %i.x = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.y = add i16 %.sroa.0.0.copyload.i.i, -9
  %i.z = icmp ult i16 %i.y, -2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.x
  br i1 %or.cond.i, label %.loopexit, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.d
  %i.aa = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.ab = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -16
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ac, align 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ab, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.ad = trunc nuw i8 %.sroa.2.0.copyload.i.i.i to i1
  br i1 %i.ad, label %bb.e, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.e:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %i.ae = trunc i64 %.sroa.0.0.copyload.i.i.i to i32 ; 10 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.af = load i64, ptr %50, align 8, !tbaa !430  ; 2 uses
  %i.ag = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.af, i1 false)
  %i.ah = trunc nuw nsw i64 %i.ag to i32
  %..i.i = call i32 @llvm.umin.i32(i32 %i.i, i32 %i.ah)
  %.neg.i.i = add nsw i32 %i.i, -64
  %i.ai = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.af, i1 false)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %i.ak = add nsw i32 %.neg.i.i, %i.aj
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.i

bb.g:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.al = call noundef i32 @_ZNK4llvm5APInt26countTrailingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  %i.am = call noundef i32 @_ZNK4llvm5APInt25countLeadingZerosSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %50) #26
  br label %_ZNK4llvm5APInt11countl_zeroEv.exit.i

_ZNK4llvm5APInt11countl_zeroEv.exit.i:            ; preds = %bb.g, %bb.f
  %.0.i336.i = phi i32 [ %..i.i, %bb.f ], [ %i.al, %bb.g ]
  %.0.i161.i = phi i32 [ %i.ak, %bb.f ], [ %i.am, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 6 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.897.0..sroa_idx100.i.i = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %21, i64 16
  %.sroa.897.0..sroa_idx102.i.i = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %21, i64 32
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %17, i64 16
  %.sroa.6316.0..sroa_idx317.i = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %17, i64 32
  %.sroa.223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %17, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.897.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %.sroa.897.0..sroa_idx98.i.i = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bl = getelementptr inbounds nuw i8, ptr %19, i64 32
  %.sroa.213.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %10, i64 8
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.2.0..sroa_idx.i.i182.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.10114.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %15, i64 32
  %.sroa.233.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %16, i64 8
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19tryBitfieldInsertOpEPN4llvm6SDNodeE:bb.a
  %i.sm = icmp ult i32 %i.ae, 65                  ; 2 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 5 uses
  br i1 %i.sm, label %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i, label %_ZN4llvm5APIntC2Ejmbb.exit206.i

_ZN4llvm5APIntC2Ejmbb.exit206.thread.i:           ; preds = %bb.cv
  store i64 %.0.i.i.i.i.i201.i, ptr %39, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i

_ZN4llvm5APIntC2Ejmbb.exit206.i:                  ; preds = %bb.cv
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %39, i64 noundef %.0.i.i.i.i.i201.i, i1 noundef zeroext false) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  store i32 %i.ae, ptr %i.sn, align 8, !tbaa !428
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %41, i64 noundef %.0.i.i.i.i.i204.i, i1 noundef zeroext false) #22
  %.pr353.i = load i32, ptr %i.sn, align 8, !tbaa !428, !noalias !809 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !809)
  %i.so = icmp ult i32 %.pr353.i, 65
  br i1 %i.so, label %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i, label %bb.cw

_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206.i
  %.pre393.i = load i64, ptr %41, align 8, !tbaa !430, !noalias !809
  br label %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i

_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i:  ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i
  %i.sp = phi i64 [ %.0.i.i.i.i.i204.i, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i ], [ %.pre393.i, %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i ]
  %i.sq = phi i32 [ %i.ae, %_ZN4llvm5APIntC2Ejmbb.exit206.thread.i ], [ %.pr353.i, %_ZN4llvm5APIntC2Ejmbb.exit206._ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209_crit_edge.i ] ; 3 uses
  %i.sr = xor i64 %i.sp, -1
  %i.ss = sub nsw i32 0, %i.sq
  %i.st = and i32 %i.ss, 63
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = lshr i64 -1, %i.su
  %i.sw = icmp eq i32 %i.sq, 0
  %spec.select.i.i210.i = select i1 %i.sw, i64 0, i64 %i.sv, !prof !798
  %i.sx = and i64 %spec.select.i.i210.i, %i.sr    ; 2 uses
  store i64 %i.sx, ptr %41, align 8, !tbaa !430, !noalias !809
  br label %_ZN4llvmcoENS_5APIntE.exit211.i

bb.cw:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit206.i
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %41) #22, !noalias !809
  %.pre.i207.i = load i32, ptr %i.sn, align 8, !tbaa !428, !noalias !809
  %.pre1.i208.i = load i64, ptr %41, align 8, !noalias !809
  br label %_ZN4llvmcoENS_5APIntE.exit211.i

_ZN4llvmcoENS_5APIntE.exit211.i:                  ; preds = %bb.cw, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i
  %i.sy = phi i64 [ %i.sx, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i ], [ %.pre1.i208.i, %bb.cw ] ; 4 uses
  %i.sz = phi i32 [ %i.sq, %_ZN4llvm5APInt15clearUnusedBitsEv.exit.i.i209.i ], [ %.pre.i207.i, %bb.cw ] ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i32 %i.sz, ptr %i.ta, align 8, !tbaa !428, !alias.scope !809
  store i64 %i.sy, ptr %40, align 8, !alias.scope !809
  store i32 0, ptr %i.sn, align 8, !tbaa !428, !noalias !809
  %i.tb = load i32, ptr %i.sl, align 8, !tbaa !428
  %i.tc = icmp ult i32 %i.tb, 65
  %i.td = inttoptr i64 %i.sy to ptr
  br i1 %i.tc, label %.split.i, label %_ZNK4llvm5APInteqERKS0_.exit.i

.split.i:                                         ; preds = %_ZN4llvmcoENS_5APIntE.exit211.i
  %i.te = load i64, ptr %39, align 8, !tbaa !430
  %i.tf = icmp eq i64 %i.te, %i.sy
  br i1 %i.tf, label %bb.cx, label %.critedge155.i

_ZNK4llvm5APInteqERKS0_.exit.i:                   ; preds = %_ZN4llvmcoENS_5APIntE.exit211.i
  %i.tg = call noundef zeroext i1 @_ZNK4llvm5APInt13equalSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %39, ptr noundef nonnull align 8 dereferenceable(12) %40) #26
  br i1 %i.tg, label %bb.cx, label %.critedge155.i

bb.cx:                                            ; preds = %_ZNK4llvm5APInteqERKS0_.exit.i, %.split.i
  %.not.i.i.i213.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  br i1 %.not.i.i.i213.i, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.th = trunc i64 %.0.i.i.i.i.i201.i to i32     ; 3 uses
  %.not.i.i216.i = icmp eq i32 %i.th, 0
  br i1 %.not.i.i216.i, label %bb.da, label %.split355.i

.split355.i:                                      ; preds = %bb.cy
  %i.ti = add i32 %i.th, -1
  %i.tj = or i32 %i.ti, %i.th                     ; 2 uses
  %i.tk = add i32 %i.tj, 1
  %i.tl = and i32 %i.tk, %i.tj
  %i.tm = icmp eq i32 %i.tl, 0
  br i1 %i.tm, label %.critedge155.i, label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %.not.i2.i.i = icmp eq i64 %.0.i.i.i.i.i201.i, 0
  br i1 %.not.i2.i.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit.i

_ZL13isShiftedMaskmN4llvm3EVTE.exit.i:            ; preds = %bb.cz
  %i.tn = add i64 %.0.i.i.i.i.i201.i, -1
  %i.to = or i64 %i.tn, %.0.i.i.i.i.i201.i        ; 2 uses
  %i.tp = add i64 %i.to, 1
  %i.tq = and i64 %i.tp, %i.to
  %i.tr = icmp eq i64 %i.tq, 0
  br i1 %i.tr, label %.critedge155.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i

bb.da:                                            ; preds = %.split355.i, %bb.cy
  %i.ts = trunc i64 %.0.i.i.i.i.i204.i to i32     ; 3 uses
  %.not.i.i = icmp eq i32 %i.ts, 0
  br i1 %.not.i.i, label %.critedge155.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.tt = add i32 %i.ts, -1
  %i.tu = or i32 %i.tt, %i.ts                     ; 2 uses
  %i.tv = add i32 %i.tu, 1
  %i.tw = and i32 %i.tv, %i.tu
  %i.tx = icmp eq i32 %i.tw, 0
  br label %.critedge155.i

_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i:     ; preds = %bb.cz, %_ZL13isShiftedMaskmN4llvm3EVTE.exit.i
  %.not.i2.i = icmp eq i64 %.0.i.i.i.i.i204.i, 0
  br i1 %.not.i2.i, label %.critedge155.i, label %bb.dc

bb.dc:                                            ; preds = %_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i
  %i.ty = add i64 %.0.i.i.i.i.i204.i, -1
  %i.tz = or i64 %i.ty, %.0.i.i.i.i.i204.i        ; 2 uses
  %i.ua = add i64 %i.tz, 1
  %i.ub = and i64 %i.ua, %i.tz
  %i.uc = icmp eq i64 %i.ub, 0
  br label %.critedge155.i

.critedge155.i:                                   ; preds = %bb.dc, %_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i, %bb.db, %bb.da, %_ZL13isShiftedMaskmN4llvm3EVTE.exit.i, %.split355.i, %_ZNK4llvm5APInteqERKS0_.exit.i, %.split.i
  %i.ud = phi i1 [ true, %_ZL13isShiftedMaskmN4llvm3EVTE.exit.i ], [ true, %.split355.i ], [ false, %_ZNK4llvm5APInteqERKS0_.exit.i ], [ false, %.split.i ], [ %i.tx, %bb.db ], [ false, %bb.da ], [ false, %_ZL13isShiftedMaskmN4llvm3EVTE.exit.thread.i ], [ %i.uc, %bb.dc ]
  %i.ue = icmp ult i32 %i.sz, 65
  %i.uf = icmp eq i64 %i.sy, 0
  %or.cond101 = select i1 %i.ue, i1 true, i1 %i.uf
  br i1 %or.cond101, label %_ZN4llvm5APIntD2Ev.exit218.i, label %_ZN4llvm5APIntD2Ev.exit217.i

_ZN4llvm5APIntD2Ev.exit217.i:                     ; preds = %.critedge155.i
  call void @_ZdaPv(ptr noundef nonnull %i.td) #25
  %.pre = load i32, ptr %i.sn, align 8, !tbaa !428
  %i.ug = icmp ugt i32 %.pre, 64
  br i1 %i.ug, label %bb.dd, label %_ZN4llvm5APIntD2Ev.exit218.i

bb.dd:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit217.i
  %i.uh = load ptr, ptr %41, align 8, !tbaa !430  ; 2 uses
  %i.ui = icmp eq ptr %i.uh, null
  br i1 %i.ui, label %_ZN4llvm5APIntD2Ev.exit218.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_ZdaPv(ptr noundef nonnull %i.uh) #25
  br label %_ZN4llvm5APIntD2Ev.exit218.i

_ZN4llvm5APIntD2Ev.exit218.i:                     ; preds = %.critedge155.i, %bb.de, %bb.dd, %_ZN4llvm5APIntD2Ev.exit217.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #22
  %i.uj = load i32, ptr %i.sl, align 8, !tbaa !428
  %i.uk = icmp ugt i32 %i.uj, 64
  br i1 %i.uk, label %bb.df, label %.critedge158.i

bb.df:                                            ; preds = %_ZN4llvm5APIntD2Ev.exit218.i
  %i.ul = load ptr, ptr %39, align 8, !tbaa !430  ; 2 uses
  %i.um = icmp eq ptr %i.ul, null
  br i1 %i.um, label %.critedge158.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_ZdaPv(ptr noundef nonnull %i.ul) #25
  br label %.critedge158.i

.critedge158.i:                                   ; preds = %bb.dg, %bb.df, %_ZN4llvm5APIntD2Ev.exit218.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  br i1 %i.ud, label %bb.dh, label %.loopexit

bb.dh:                                            ; preds = %.critedge158.i
  %.not.i.i.i220.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7 ; 3 uses
  br i1 %.not.i.i.i220.i, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.un = trunc i64 %.0.i.i.i.i.i201.i to i32     ; 3 uses
  %.not.i.i224.i = icmp eq i32 %i.un, 0
  br i1 %.not.i.i224.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i, label %.split365.i

.split365.i:                                      ; preds = %bb.di
  %i.uo = add i32 %i.un, -1
  %i.up = or i32 %i.uo, %i.un                     ; 2 uses
  %i.uq = add i32 %i.up, 1
  %i.ur = and i32 %i.uq, %i.up
  %i.us = icmp eq i32 %i.ur, 0
  br i1 %i.us, label %bb.dk, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i

bb.dj:                                            ; preds = %bb.dh
  %.not.i2.i222.i = icmp eq i64 %.0.i.i.i.i.i201.i, 0
  br i1 %.not.i2.i222.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i

_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i:         ; preds = %bb.dj
  %i.ut = add i64 %.0.i.i.i.i.i201.i, -1
  %i.uu = or i64 %i.ut, %.0.i.i.i.i.i201.i        ; 2 uses
  %i.uv = add i64 %i.uu, 1
  %i.uw = and i64 %i.uv, %i.uu
  %i.ux = icmp eq i64 %i.uw, 0
  br i1 %i.ux, label %bb.dk, label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i

bb.dk:                                            ; preds = %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i, %.split365.i
  br label %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i

_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i:  ; preds = %bb.dk, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i, %bb.dj, %.split365.i, %bb.di
  %.1332.i.a = phi i64 [ %.0.i.i.i.i.i204.i, %bb.dk ], [ %.0.i.i.i.i.i201.i, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i ], [ %.0.i.i.i.i.i201.i, %.split365.i ], [ %.0.i.i.i.i.i201.i, %bb.di ], [ 0, %bb.dj ] ; 2 uses
  %.1330.i = phi i64 [ %.0.i.i.i.i.i201.i, %bb.dk ], [ %.0.i.i.i.i.i204.i, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i ], [ %.0.i.i.i.i.i204.i, %.split365.i ], [ %.0.i.i.i.i.i204.i, %bb.di ], [ %.0.i.i.i.i.i204.i, %bb.dj ]
  %.sroa.0258.0.i = phi ptr [ %.sroa.0248.0.copyload.i, %bb.dk ], [ %.sroa.0258.0.copyload.i, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i ], [ %.sroa.0258.0.copyload.i, %.split365.i ], [ %.sroa.0258.0.copyload.i, %bb.di ], [ %.sroa.0258.0.copyload.i, %bb.dj ]
  %.sroa.0248.0.i = phi ptr [ %.sroa.0258.0.copyload.i, %bb.dk ], [ %.sroa.0248.0.copyload.i, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.i ], [ %.sroa.0248.0.copyload.i, %.split365.i ], [ %.sroa.0248.0.copyload.i, %bb.di ], [ %.sroa.0248.0.copyload.i, %bb.dj ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.0248.0.i, i64 40
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !337 ; 2 uses
  %.sroa.0241.0.copyload.i = load ptr, ptr %i.uz, align 8, !tbaa !421 ; 8 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.va = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.8.sroa.0.0.extract.trunc.i = trunc i64 %i.va to i32 ; 5 uses
  %.sroa.8.sroa.5.0.extract.shift.i = and i64 %i.va, -4294967296
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.0258.0.i, i64 40
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, ptr noundef nonnull align 8 dereferenceable(16) %i.vc, i64 16, i1 false), !tbaa.struct !458
  %i.vd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.1330.i, i1 false) ; 6 uses
  %i.ve = trunc nuw nsw i64 %i.vd to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  %i.vf = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  store i32 %i.ae, ptr %i.vf, align 8, !tbaa !428
  br i1 %i.sm, label %_ZNK4llvm5APInt8popcountEv.exit.i, label %_ZN4llvm5APIntC2Ejmbb.exit226.i

_ZN4llvm5APIntC2Ejmbb.exit226.i:                  ; preds = %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i
  call void @_ZN4llvm5APInt12initSlowCaseEmb(ptr noundef nonnull align 8 dereferenceable(12) %43, i64 noundef %.1332.i.a, i1 noundef zeroext false) #22
  %.pr366.i = load i32, ptr %i.vf, align 8, !tbaa !428
  %i.vg = icmp ult i32 %.pr366.i, 65
  br i1 %i.vg, label %_ZN4llvm5APIntC2Ejmbb.exit226._ZNK4llvm5APInt8popcountEv.exit_crit_edge.i, label %bb.dl

_ZN4llvm5APIntC2Ejmbb.exit226._ZNK4llvm5APInt8popcountEv.exit_crit_edge.i: ; preds = %_ZN4llvm5APIntC2Ejmbb.exit226.i
  %.pre394.i = load i64, ptr %43, align 8, !tbaa !430
  br label %_ZNK4llvm5APInt8popcountEv.exit.i

_ZNK4llvm5APInt8popcountEv.exit.i:                ; preds = %_ZN4llvm5APIntC2Ejmbb.exit226._ZNK4llvm5APInt8popcountEv.exit_crit_edge.i, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i
  %i.vh = phi i64 [ %.pre394.i, %_ZN4llvm5APIntC2Ejmbb.exit226._ZNK4llvm5APInt8popcountEv.exit_crit_edge.i ], [ %.1332.i.a, %_ZL13isShiftedMaskmN4llvm3EVTE.exit225.thread.i ]
  %i.vi = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.vh)
  %i.vj = trunc nuw nsw i64 %i.vi to i32
  br label %_ZN4llvm5APIntD2Ev.exit228.i

bb.dl:                                            ; preds = %_ZN4llvm5APIntC2Ejmbb.exit226.i
  %i.vk = call noundef i32 @_ZNK4llvm5APInt23countPopulationSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(12) %43) #26 ; 2 uses
  %i.vl = load ptr, ptr %43, align 8, !tbaa !430  ; 2 uses
  %i.vm = icmp eq ptr %i.vl, null
  br i1 %i.vm, label %_ZN4llvm5APIntD2Ev.exit228.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @_ZdaPv(ptr noundef nonnull %i.vl) #25
  br label %_ZN4llvm5APIntD2Ev.exit228.i

_ZN4llvm5APIntD2Ev.exit228.i:                     ; preds = %bb.dm, %bb.dl, %_ZNK4llvm5APInt8popcountEv.exit.i
  %.0.i227368.i = phi i32 [ %i.vj, %_ZNK4llvm5APInt8popcountEv.exit.i ], [ %i.vk, %bb.dl ], [ %i.vk, %bb.dm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #22
  %i.vn = load i64, ptr %i.bb, align 8, !tbaa !342
  store i64 %i.vn, ptr %44, align 8, !tbaa !342
  %i.vo = getelementptr inbounds nuw i8, ptr %44, i64 8
  %i.vp = load i32, ptr %i.bd, align 4, !tbaa !343
  store i32 %i.vp, ptr %i.vo, align 8, !tbaa !344
  %i.vq = select i1 %.not.i.i.i220.i, i32 8093, i32 8094
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.0241.0.copyload.i, i64 56
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !320 ; 2 uses
  %.not.i.i231.i = icmp eq ptr %i.vs, null
  br i1 %.not.i.i231.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.i:              ; preds = %_ZN4llvm5APIntD2Ev.exit228.i
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vs, i64 32
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !812
  %i.vv = icmp eq ptr %i.vu, null
  br i1 %i.vv, label %bb.dn, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

bb.dn:                                            ; preds = %_ZNK4llvm6SDNode9hasOneUseEv.exit.i
  %i.vw = getelementptr inbounds nuw i8, ptr %.sroa.0241.0.copyload.i, i64 24
  %i.vx = load i32, ptr %i.vw, align 8, !tbaa !331
  %i.vy = icmp eq i32 %i.vx, 200
  br i1 %i.vy, label %bb.do, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

bb.do:                                            ; preds = %bb.dn
  %i.vz = getelementptr inbounds nuw i8, ptr %.sroa.0241.0.copyload.i, i64 40
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !337 ; 3 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 40
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !338 ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 24
  %i.we = load i32, ptr %i.wd, align 8, !tbaa !331
  switch i32 %i.we, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i [
    i32 37, label %bb.dp
    i32 12, label %bb.dp
  ]

bb.dp:                                            ; preds = %bb.do, %bb.do
  %i.wf = getelementptr inbounds nuw i8, ptr %i.wc, i64 88
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !425 ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 24 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 32
  %i.wj = load i32, ptr %i.wi, align 8, !tbaa !428
  %i.wk = icmp ult i32 %i.wj, 65
  %i.wl = load ptr, ptr %i.wh, align 8
  %spec.select.i.i.i.i.i232.i = select i1 %i.wk, ptr %i.wh, ptr %i.wl
  %.0.i.i.i.i.i233.i = load i64, ptr %spec.select.i.i.i.i.i232.i, align 8, !tbaa !430 ; 2 uses
  %i.wm = add i64 %.0.i.i.i.i.i233.i, %i.vd       ; 2 uses
  %i.wn = and i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.wo = icmp ult i64 %i.wm, %i.wn
  br i1 %i.wo, label %bb.dq, label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

bb.dq:                                            ; preds = %bb.dp
  %.sroa.0241.0.copyload245.i = load ptr, ptr %i.wa, align 8, !tbaa !421
  %.sroa.8.0..sroa_idx247.i = getelementptr inbounds nuw i8, ptr %i.wa, i64 8
  %i.wp = load i32, ptr %.sroa.8.0..sroa_idx247.i, align 8, !tbaa !201
  br label %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i

_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i:       ; preds = %bb.dq, %bb.dp, %bb.do, %bb.dn, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i, %_ZN4llvm5APIntD2Ev.exit228.i
  %.sroa.8.sroa.0.0.i = phi i32 [ %.sroa.8.sroa.0.0.extract.trunc.i, %_ZN4llvm5APIntD2Ev.exit228.i ], [ %.sroa.8.sroa.0.0.extract.trunc.i, %bb.do ], [ %i.wp, %bb.dq ], [ %.sroa.8.sroa.0.0.extract.trunc.i, %bb.dp ], [ %.sroa.8.sroa.0.0.extract.trunc.i, %bb.dn ], [ %.sroa.8.sroa.0.0.extract.trunc.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i ]
  %.sroa.0241.0.i = phi ptr [ %.sroa.0241.0.copyload.i, %_ZN4llvm5APIntD2Ev.exit228.i ], [ %.sroa.0241.0.copyload.i, %bb.do ], [ %.sroa.0241.0.copyload245.i, %bb.dq ], [ %.sroa.0241.0.copyload.i, %bb.dp ], [ %.sroa.0241.0.copyload.i, %bb.dn ], [ %.sroa.0241.0.copyload.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i ]
  %.0.i = phi i64 [ %i.vd, %_ZN4llvm5APIntD2Ev.exit228.i ], [ %i.vd, %bb.do ], [ %i.wm, %bb.dq ], [ %.0.i.i.i.i.i233.i, %bb.dp ], [ %i.vd, %bb.dn ], [ %i.vd, %_ZNK4llvm6SDNode9hasOneUseEv.exit.i ]
  store ptr %.sroa.0241.0.i, ptr %45, align 8, !tbaa !421
  %.sroa.8.0..sroa_idx246.i = getelementptr inbounds nuw i8, ptr %45, i64 8
  %.sroa.8.sroa.0.0.insert.ext.i = zext i32 %.sroa.8.sroa.0.0.i to i64
  %.sroa.8.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.8.sroa.5.0.extract.shift.i, %.sroa.8.sroa.0.0.insert.ext.i
  store i64 %.sroa.8.sroa.0.0.insert.insert.i, ptr %.sroa.8.0..sroa_idx246.i, align 8
  %i.wq = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %.0.i, ptr noundef nonnull align 8 dereferenceable(12) %44, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract24.i = extractvalue { ptr, i32 } %i.wq, 0
  %.fca.1.extract25.i = extractvalue { ptr, i32 } %i.wq, 1
  store ptr %.fca.0.extract24.i, ptr %46, align 8
  %.sroa.227.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %46, i64 8
  store i32 %.fca.1.extract25.i, ptr %.sroa.227.0..sroa_idx.i, align 8
  %i.wr = add i64 %.sroa.0.0.copyload.i.i.i, 4294967295
  %i.ws = and i64 %i.wr, 4294967295
  %i.wt = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.ws, ptr noundef nonnull align 8 dereferenceable(12) %44, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract17.i = extractvalue { ptr, i32 } %i.wt, 0
  %.fca.1.extract18.i = extractvalue { ptr, i32 } %i.wt, 1
  store ptr %.fca.0.extract17.i, ptr %47, align 8
  %.sroa.220.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i32 %.fca.1.extract18.i, ptr %.sroa.220.0..sroa_idx.i, align 8
  %i.wu = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueES5_S5_(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i32 noundef %i.vq, ptr noundef nonnull align 8 dereferenceable(12) %44, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %45, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %46, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %47) #22
  %i.wv = sub i32 %i.ae, %i.ve
  %i.ww = urem i32 %i.wv, %i.ae
  %i.wx = xor i32 %.0.i227368.i, -1
  %i.wy = add i32 %i.wx, %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %48, ptr noundef nonnull align 8 dereferenceable(12) %42, i64 12, i1 false), !tbaa.struct !458
  %i.wz = getelementptr inbounds nuw i8, ptr %48, i64 16
  store ptr %i.wu, ptr %i.wz, align 16, !tbaa !338
  %i.xa = getelementptr inbounds nuw i8, ptr %48, i64 24
  store i32 0, ptr %i.xa, align 8, !tbaa !341
  %i.xb = getelementptr inbounds nuw i8, ptr %48, i64 32
  %i.xc = zext i32 %i.ww to i64
  %i.xd = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.xc, ptr noundef nonnull align 8 dereferenceable(12) %44, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract8.i = extractvalue { ptr, i32 } %i.xd, 0
  %.fca.1.extract9.i = extractvalue { ptr, i32 } %i.xd, 1
  store ptr %.fca.0.extract8.i, ptr %i.xb, align 16
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %48, i64 40
  store i32 %.fca.1.extract9.i, ptr %.sroa.211.0..sroa_idx.i, align 8
  %i.xe = getelementptr inbounds nuw i8, ptr %48, i64 48
  %i.xf = zext i32 %i.wy to i64
  %i.xg = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef %i.xf, ptr noundef nonnull align 8 dereferenceable(12) %44, i16 %.sroa.0.0.copyload.i.i, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.xg, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.xg, 1
  store ptr %.fca.0.extract.i, ptr %i.xe, align 16
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %48, i64 56
  store i32 %.fca.1.extract.i, ptr %.sroa.24.0..sroa_idx.i, align 8
  %i.xh = select i1 %.not.i.i.i220.i, i32 2098, i32 2099
  store ptr %48, ptr %49, align 8, !tbaa !417
  %i.xi = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 4, ptr %i.xi, align 8, !tbaa !420
  %i.xj = call noundef ptr @_ZN4llvm12SelectionDAG12SelectNodeToEPNS_6SDNodeEjNS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.u, ptr noundef nonnull %1, i32 noundef %i.xh, i16 %.sroa.0.0.copyload.i.i, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %49) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %_ZL25tryBitfieldInsertOpFromOrPN4llvm6SDNodeERKNS_5APIntEPNS_12SelectionDAGE.exit

_ZL25tryBitfieldInsertOpFromOrPN4llvm6SDNodeERKNS_5APIntEPNS_12SelectionDAGE.exit: ; preds = %_ZN4llvm9KnownBitsD2Ev.exit.i, %_ZNK4llvm6SDNode9hasOneUseEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  br label %bb.es

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i190.i, %bb.d, %.critedge158.i, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %_ZNK4llvm7SDValue9hasOneUseEv.exit199.i, %bb.cp, %.critedge153.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %38)
  call void @llvm.lifetime.end.p0(ptr nonnull %41)
  call void @llvm.lifetime.end.p0(ptr nonnull %45)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @llvm.lifetime.end.p0(ptr nonnull %47)
  call void @llvm.lifetime.end.p0(ptr nonnull %49)
  %i.xk = load ptr, ptr %i.t, align 8, !tbaa !318 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.xl = load ptr, ptr %i.v, align 8, !tbaa !332 ; 2 uses
  %.sroa.0.0.copyload.i.i8 = load i16, ptr %i.xl, align 8, !tbaa !333 ; 8 uses
  %.sroa.21.0..sroa_idx.i.i9 = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  %.sroa.21.0.copyload.i.i10 = load ptr, ptr %.sroa.21.0..sroa_idx.i.i9, align 8, !tbaa !335
  %i.xm = icmp ne ptr %.sroa.21.0.copyload.i.i10, null
  %i.xn = add i16 %.sroa.0.0.copyload.i.i8, -9
  %i.xo = icmp ult i16 %i.xn, -2
  %or.cond.i11 = select i1 %i.xo, i1 true, i1 %i.xm
  br i1 %or.cond.i11, label %_ZL31tryBitfieldInsertOpFromOrAndImmPN4llvm6SDNodeEPNS_12SelectionDAGE.exit, label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i12

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i12:          ; preds = %.loopexit
  %i.xp = zext nneg i16 %.sroa.0.0.copyload.i.i8 to i64
  %i.xq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.xp ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i13 = getelementptr i8, ptr %i.xq, i64 -8
  %.sroa.2.0.copyload.i.i.i14 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i13, align 8
  %i.xr = trunc nuw i8 %.sroa.2.0.copyload.i.i.i14 to i1
  br i1 %i.xr, label %bb.dr, label %_ZNK4llvm8TypeSizecvmEv.exit.i15

bb.dr:                                            ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i12
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i15:                 ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i12
  %i.xs = getelementptr i8, ptr %i.xq, i64 -16
  %.sroa.0.0.copyload.i.i.i16 = load i64, ptr %i.xs, align 16 ; 4 uses
  %i.xt = trunc i64 %.sroa.0.0.copyload.i.i.i16 to i32 ; 8 uses
  %i.xu = load i32, ptr %i.f, align 8, !tbaa !331
  %i.xv = icmp eq i32 %i.xu, 194
  br i1 %i.xv, label %bb.ds, label %_ZL31tryBitfieldInsertOpFromOrAndImmPN4llvm6SDNodeEPNS_12SelectionDAGE.exit

bb.ds:                                            ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i15
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.xx = load ptr, ptr %i.xw, align 8, !tbaa !337 ; 3 uses
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 40
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !338 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 24
  %i.yb = load i32, ptr %i.ya, align 8, !tbaa !331
  switch i32 %i.yb, label %_ZL31tryBitfieldInsertOpFromOrAndImmPN4llvm6SDNodeEPNS_12SelectionDAGE.exit [
    i32 37, label %bb.dt
    i32 12, label %bb.dt
  ]

bb.dt:                                            ; preds = %bb.ds, %bb.ds
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xz, i64 88
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !425 ; 2 uses
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24 ; 2 uses
  %i.yf = getelementptr inbounds nuw i8, ptr %i.yd, i64 32
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !428
  %i.yh = icmp ult i32 %i.yg, 65
  %i.yi = load ptr, ptr %i.ye, align 8
  %spec.select.i.i.i.i.i.i17 = select i1 %i.yh, ptr %i.ye, ptr %i.yi
  %.0.i.i.i.i.i.i18 = load i64, ptr %spec.select.i.i.i.i.i.i17, align 8, !tbaa !430 ; 11 uses
  %i.yj = add i64 %.0.i.i.i.i.i.i18, 1
  %or.cond.i.i.i = icmp ult i64 %i.yj, 2
  br i1 %or.cond.i.i.i, label %bb.dz, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %.not.i.i.i19 = icmp eq i32 %i.xt, 64
  br i1 %.not.i.i.i19, label %.preheader, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.yk = and i64 %.sroa.0.0.copyload.i.i.i16, 4294967295
  %i.yl = lshr i64 %.0.i.i.i.i.i.i18, %i.yk
  %.not52.i.i.i = icmp eq i64 %i.yl, 0
  br i1 %.not52.i.i.i, label %bb.dw, label %bb.dz

bb.dw:                                            ; preds = %bb.dv
  %i.ym = sub i64 64, %.sroa.0.0.copyload.i.i.i16
  %i.yn = and i64 %i.ym, 4294967295
  %i.yo = lshr i64 -1, %i.yn
  %i.yp = icmp eq i64 %.0.i.i.i.i.i.i18, %i.yo
  br i1 %i.yp, label %bb.dz, label %.preheader

.preheader:                                       ; preds = %bb.dw, %bb.du
  br label %bb.dx

bb.dx:                                            ; preds = %.preheader, %bb.dx
  %.045.i.i.i = phi i32 [ %.146.i.i.i, %bb.dx ], [ %i.xt, %.preheader ] ; 2 uses
  %i.yq = lshr i32 %.045.i.i.i, 1                 ; 2 uses
  %i.yr = zext nneg i32 %i.yq to i64              ; 2 uses
  %notmask.i.i.i = shl nsw i64 -1, %i.yr
  %i.ys = xor i64 %notmask.i.i.i, -1
  %i.yt = lshr i64 %.0.i.i.i.i.i.i18, %i.yr
  %i.yu = xor i64 %i.yt, %.0.i.i.i.i.i.i18
  %i.yv = and i64 %i.yu, %i.ys
  %.not53.i.i.i = icmp eq i64 %i.yv, 0            ; 2 uses
  %i.yw = and i32 %.045.i.i.i, -2
  %.146.i.i.i = select i1 %.not53.i.i.i, i32 %i.yq, i32 %i.yw ; 3 uses
  %i.yx = icmp ugt i32 %.146.i.i.i, 2
  %or.cond54.i.i.i = and i1 %.not53.i.i.i, %i.yx
  br i1 %or.cond54.i.i.i, label %bb.dx, label %bb.dy, !llvm.loop !778

bb.dy:                                            ; preds = %bb.dx
  %i.yy = sub i32 64, %.146.i.i.i
  %i.yz = zext nneg i32 %i.yy to i64
  %i.za = lshr i64 -1, %i.yz                      ; 2 uses
  %i.zb = and i64 %i.za, %.0.i.i.i.i.i.i18        ; 3 uses
  %.not.i.i.i.i51 = icmp eq i64 %i.zb, 0
  br i1 %.not.i.i.i.i51, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i.i, label %_ZN4llvm16isShiftedMask_64Em.exit.i.i.i52

_ZN4llvm16isShiftedMask_64Em.exit.i.i.i52:        ; preds = %bb.dy
  %i.zc = add i64 %i.zb, -1
  %i.zd = or i64 %i.zc, %i.zb                     ; 2 uses
  %i.ze = add i64 %i.zd, 1
  %i.zf = and i64 %i.ze, %i.zd
  %i.zg = icmp eq i64 %i.zf, 0
  br i1 %i.zg, label %_ZL31tryBitfieldInsertOpFromOrAndImmPN4llvm6SDNodeEPNS_12SelectionDAGE.exit, label %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i.i

_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i.i:   ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.i.i.i52, %bb.dy
  %.not57.i.i.i = xor i64 %.0.i.i.i.i.i.i18, -1
  %i.zh = and i64 %i.za, %.not57.i.i.i            ; 3 uses
  %.not.i55.i.i.i = icmp eq i64 %i.zh, 0
  br i1 %.not.i55.i.i.i, label %bb.dz, label %_ZN4llvm16isShiftedMask_64Em.exit56.i.i.i

_ZN4llvm16isShiftedMask_64Em.exit56.i.i.i:        ; preds = %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i.i
  %i.zi = add i64 %i.zh, -1
  %i.zj = or i64 %i.zi, %i.zh                     ; 2 uses
  %i.zk = add i64 %i.zj, 1
  %i.zl = and i64 %i.zk, %i.zj
  %i.zm = icmp eq i64 %i.zl, 0
  br i1 %i.zm, label %_ZL31tryBitfieldInsertOpFromOrAndImmPN4llvm6SDNodeEPNS_12SelectionDAGE.exit, label %bb.dz

bb.dz:                                            ; preds = %_ZN4llvm16isShiftedMask_64Em.exit56.i.i.i, %_ZN4llvm16isShiftedMask_64Em.exit.thread.i.i.i, %bb.dw, %bb.dv, %bb.dt
  %.sroa.0109.0.copyload.i = load ptr, ptr %i.xx, align 8, !tbaa !421 ; 4 uses
  %.sroa.7.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %.sroa.7.0.copyload.i21 = load i32, ptr %.sroa.7.0..sroa_idx.i20, align 8, !tbaa !201 ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.sroa.0109.0.copyload.i, i64 56
end_hunk_3
begin_hunk_4_@_ZL23isBitfieldPositioningOpPN4llvm12SelectionDAGENS_7SDValueEbRS2_RiS4_:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !428  ; 3 uses
  store i32 %i.m, ptr %i.k, align 8, !tbaa !428
  %i.n = icmp ult i32 %i.m, 65
  br i1 %i.n, label %_ZN4llvmcoENS_5APIntE.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull align 8 dereferenceable(12) %12) #22
  %.pr = load i32, ptr %i.k, align 8, !tbaa !428, !noalias !860 ; 2 uses
  %i.o = icmp ult i32 %.pr, 65
  br i1 %i.o, label %_ZN4llvmcoENS_5APIntE.exit.thread, label %_ZN4llvmcoENS_5APIntE.exit

_ZN4llvmcoENS_5APIntE.exit.thread:                ; preds = %_ZN4llvm5APIntC2ERKS0_.exit, %_ZNK4llvm8TypeSizecvmEv.exit
  %.sink = phi ptr [ %12, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %13, %_ZN4llvm5APIntC2ERKS0_.exit ]
  %i.p = phi i32 [ %i.m, %_ZNK4llvm8TypeSizecvmEv.exit ], [ %.pr, %_ZN4llvm5APIntC2ERKS0_.exit ] ; 2 uses
  %.pre = load i64, ptr %.sink, align 8, !tbaa !430
  %i.q = xor i64 %.pre, -1
  %i.r = sub nsw i32 0, %i.p
  %i.s = and i32 %i.r, 63
  %i.t = zext nneg i32 %i.s to i64
  %i.u = lshr i64 -1, %i.t
  %i.v = icmp eq i32 %i.p, 0
  %spec.select.i.i = select i1 %i.v, i64 0, i64 %i.u, !prof !798
  %i.w = and i64 %spec.select.i.i, %i.q           ; 2 uses
  store i64 %i.w, ptr %13, align 8, !tbaa !430, !noalias !860
  store i32 0, ptr %i.k, align 8, !tbaa !428, !noalias !860
  br label %_ZN4llvm5APIntD2Ev.exit25

_ZN4llvmcoENS_5APIntE.exit:                       ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  call void @_ZN4llvm5APInt19flipAllBitsSlowCaseEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #22, !noalias !860
  %.pre.i = load i32, ptr %i.k, align 8, !tbaa !428, !noalias !860
  %.pre1.i = load i64, ptr %13, align 8, !noalias !860 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !428, !noalias !860
  %i.x = icmp ult i32 %.pre.i, 65
  br i1 %i.x, label %_ZN4llvm5APIntD2Ev.exit25, label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %_ZN4llvmcoENS_5APIntE.exit
  %i.y = inttoptr i64 %.pre1.i to ptr             ; 2 uses
  %.0.i.else.val = load i64, ptr %i.y, align 8, !tbaa !430 ; 3 uses
  call void @_ZdaPv(ptr noundef nonnull %i.y) #25
  %.pr59 = load i32, ptr %i.k, align 8, !tbaa !428
  %i.z = icmp ugt i32 %.pr59, 64
  br i1 %i.z, label %bb.e, label %_ZN4llvm5APIntD2Ev.exit25

bb.e:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.aa = load ptr, ptr %13, align 8, !tbaa !430  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN4llvm5APIntD2Ev.exit25, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #25
  br label %_ZN4llvm5APIntD2Ev.exit25

_ZN4llvm5APIntD2Ev.exit25:                        ; preds = %_ZN4llvmcoENS_5APIntE.exit, %_ZN4llvmcoENS_5APIntE.exit.thread, %_ZN4llvm5APIntD2Ev.exit, %bb.e, %bb.f
  %.0.i5861 = phi i64 [ %.0.i.else.val, %bb.f ], [ %.0.i.else.val, %_ZN4llvm5APIntD2Ev.exit ], [ %.0.i.else.val, %bb.e ], [ %.pre1.i, %_ZN4llvmcoENS_5APIntE.exit ], [ %i.w, %_ZN4llvmcoENS_5APIntE.exit.thread ] ; 7 uses
  %.not.i26 = icmp eq i64 %.0.i5861, 0
  br i1 %.not.i26, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit, label %_ZN4llvm16isShiftedMask_64Em.exit

_ZN4llvm16isShiftedMask_64Em.exit:                ; preds = %_ZN4llvm5APIntD2Ev.exit25
  %i.ac = add i64 %.0.i5861, -1
  %i.ad = or i64 %i.ac, %.0.i5861                 ; 2 uses
  %i.ae = add i64 %i.ad, 1
  %i.af = and i64 %i.ae, %i.ad
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.g, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.g:                                             ; preds = %_ZN4llvm16isShiftedMask_64Em.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !331
  switch i32 %i.ai, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit [
    i32 193, label %bb.h
    i32 198, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !332
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.c ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.ak, align 8, !tbaa !333 ; 4 uses
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !335 ; 2 uses
  store i16 %.sroa.0.0.copyload.i.i.i, ptr %10, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %.sroa.21.0.copyload.i.i.i, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !337 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !338
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !331
  switch i32 %i.ar, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit [
    i32 37, label %bb.i
    i32 12, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h
  %.sroa.046.0.copyload.i = load ptr, ptr %i.an, align 8, !tbaa !421 ; 4 uses
  %.sroa.952.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.952.0.copyload.i = load i32, ptr %.sroa.952.0..sroa_idx.i, align 8, !tbaa !201
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload.i, i64 24
  %i.at = load i32, ptr %i.as, align 8, !tbaa !331 ; 2 uses
  %i.au = icmp eq i32 %i.at, 198
  br i1 %i.au, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload.i, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !337 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !338 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !331
  switch i32 %i.ba, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit [
    i32 37, label %bb.k
    i32 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !425 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !428
  %i.bg = icmp ult i32 %i.bf, 65
  %i.bh = load ptr, ptr %i.bd, align 8
  %spec.select.i.i.i.i.i31.i = select i1 %i.bg, ptr %i.bd, ptr %i.bh
  %.0.i.i.i.i.i32.i = load i64, ptr %spec.select.i.i.i.i.i31.i, align 8, !tbaa !430
  %.sroa.044.0.copyload.i = load ptr, ptr %i.aw, align 8, !tbaa !421
  %.sroa.645.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.645.0.copyload.i = load i32, ptr %.sroa.645.0..sroa_idx.i, align 8, !tbaa !201
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 8
  %i.bi = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.bi, i1 false
  %i.bj = icmp eq i32 %i.at, 229
  %or.cond67.i = and i1 %.not4.i.i, %i.bj
  br i1 %or.cond67.i, label %bb.m, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.m:                                             ; preds = %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload.i, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !337
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !338 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !331
  %i.bp = icmp eq i32 %i.bo, 198
  br i1 %i.bp, label %bb.n, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !337 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !338 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !331
  switch i32 %i.bv, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit [
    i32 37, label %bb.o
    i32 12, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !425 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !428
  %i.cb = icmp ult i32 %i.ca, 65
  %i.cc = load ptr, ptr %i.by, align 8
  %spec.select.i.i.i.i.i34.i = select i1 %i.cb, ptr %i.by, ptr %i.cc
  %.0.i.i.i.i.i35.i = load i64, ptr %spec.select.i.i.i.i.i34.i, align 8, !tbaa !430
  %.sroa.013.0.copyload.i = load ptr, ptr %i.br, align 8, !tbaa !421 ; 3 uses
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.214.0.copyload.i = load i32, ptr %.sroa.214.0..sroa_idx.i, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 72
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !342
  store i64 %i.ce, ptr %7, align 8, !tbaa !342
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.013.0.copyload.i, i64 68
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !343
  store i32 %i.ch, ptr %i.cf, align 8, !tbaa !344
  %i.ci = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null) #22
  store ptr %i.ci, ptr %8, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !201
  store ptr %.sroa.013.0.copyload.i, ptr %9, align 8, !tbaa !421
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %.sroa.214.0.copyload.i, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !tbaa !201
  %i.cj = call { ptr, i32 } @_ZN4llvm12SelectionDAG21getTargetInsertSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueES5_(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %8, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #22 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %.fca.0.extract9.i = extractvalue { ptr, i32 } %i.cj, 0
  %.fca.1.extract10.i = extractvalue { ptr, i32 } %i.cj, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.k
  %.057.i = phi i64 [ %.0.i.i.i.i.i32.i, %bb.k ], [ %.0.i.i.i.i.i35.i, %bb.o ] ; 2 uses
  %.sroa.645.0.i = phi i32 [ %.sroa.645.0.copyload.i, %bb.k ], [ %.fca.1.extract10.i, %bb.o ]
  %.sroa.044.0.i = phi ptr [ %.sroa.044.0.copyload.i, %bb.k ], [ %.fca.0.extract9.i, %bb.o ]
  br i1 %3, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload.i, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.ck, align 8, !tbaa !758 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit, label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.co, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.cl, align 8, !tbaa !758 ; 2 uses
  %.not.i.i37.i = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i37.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.q, %bb.r
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.r ], [ %.sroa.018.022.i.i.i, %bb.q ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.r ], [ 1, %bb.q ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !341
  %i.co = icmp ne i32 %i.cn, %.sroa.952.0.copyload.i ; 2 uses
  %i.cp = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %cond.i.i.i, label %bb.r, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.r
  %i.cq = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.cq, label %bb.s, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.s:                                             ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %bb.p
  %i.cr = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i5861, i1 true) ; 2 uses
  %i.cs = trunc nuw nsw i64 %i.cr to i32
  store i32 %i.cs, ptr %5, align 4, !tbaa !201
  %i.ct = lshr exact i64 %.0.i5861, %i.cr
  %i.cu = xor i64 %i.ct, -1
  %i.cv = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.cu, i1 false)
  %i.cw = trunc nuw nsw i64 %i.cv to i32          ; 2 uses
  store i32 %i.cw, ptr %6, align 4, !tbaa !201
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = zext i16 %.sroa.0.0.copyload.i.i.i to i64
  %i.cy = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cx ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 -16
  %.sroa.0.0.copyload.i.i38.i = load i64, ptr %i.cz, align 16
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.cy, i64 -8
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.fca.0.insert.i.i39.i = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i38.i, 0
  %.fca.1.insert.i.i40.i = insertvalue { i64, i8 } %.fca.0.insert.i.i39.i, i8 %.sroa.2.0.copyload.i.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

bb.u:                                             ; preds = %bb.s
  %i.da = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i

_ZNK4llvm3EVT13getSizeInBitsEv.exit.i:            ; preds = %bb.u, %bb.t
  %.pn.i.i = phi { i64, i8 } [ %.fca.1.insert.i.i40.i, %bb.t ], [ %i.da, %bb.u ] ; 2 uses
  %.fca.1.extract6.i = extractvalue { i64, i8 } %.pn.i.i, 1
  %i.db = trunc nuw i8 %.fca.1.extract6.i to i1
  br i1 %i.db, label %bb.v, label %_ZNK4llvm8TypeSizecvmEv.exit.i

bb.v:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit.i:                   ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit.i
  %.fca.0.extract5.i = extractvalue { i64, i8 } %.pn.i.i, 0
  %i.dc = trunc i64 %.fca.0.extract5.i to i32
  %.not.i27 = icmp slt i32 %i.cw, %i.dc
  br i1 %.not.i27, label %bb.w, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.w:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit.i
  %i.dd = load i32, ptr %5, align 4, !tbaa !201   ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp eq i64 %.057.i, %i.de
  %or.cond.i = or i1 %3, %i.df
  br i1 %or.cond.i, label %bb.x, label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.x:                                             ; preds = %bb.w
  %i.dg = trunc i64 %.057.i to i32
  %i.dh = sub i32 %i.dg, %i.dd
  %i.di = call fastcc { ptr, i32 } @_ZL12getLeftShiftPN4llvm12SelectionDAGENS_7SDValueEi(ptr noundef nonnull %0, ptr %.sroa.044.0.i, i32 %.sroa.645.0.i, i32 noundef %i.dh) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.di, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.di, 1
  store ptr %.fca.0.extract.i, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !201
  br label %_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

_ZL30isBitfieldPositioningOpFromAndPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit: ; preds = %.lr.ph.i.i.i, %bb.h, %bb.j, %bb.l, %bb.m, %bb.n, %bb.q, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %_ZNK4llvm8TypeSizecvmEv.exit.i, %bb.w, %bb.x
  %.1.i = phi i1 [ false, %bb.q ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ], [ true, %bb.x ], [ false, %_ZNK4llvm8TypeSizecvmEv.exit.i ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.j ], [ false, %bb.w ], [ false, %bb.m ], [ false, %bb.h ], [ false, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.y:                                             ; preds = %bb.g
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !337 ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !338 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !331
  switch i32 %i.do, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit [
    i32 37, label %bb.z
    i32 12, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 88
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !425 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !428
  %i.du = icmp ult i32 %i.dt, 65
  %i.dv = load ptr, ptr %i.dr, align 8
  %spec.select.i.i.i.i.i.i = select i1 %i.du, ptr %i.dr, ptr %i.dv
  %.0.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !430 ; 4 uses
  br i1 %3, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.018.022.i.i.i29 = load ptr, ptr %i.dw, align 8, !tbaa !758 ; 2 uses
  %.not23.i.i.i30 = icmp eq ptr %.sroa.018.022.i.i.i29, null
  br i1 %.not23.i.i.i30, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit, label %.lr.ph.i.i.i31

bb.ab:                                            ; preds = %.lr.ph.i.i.i31
  %.214.i.i.i35 = select i1 %i.ea, i32 %.01224.i.i.i33, i32 0 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i32, i64 32
  %.sroa.018.0.i.i.i36 = load ptr, ptr %i.dx, align 8, !tbaa !758 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.018.0.i.i.i36, null
  br i1 %.not.i.i.i37, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i38, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %bb.aa, %bb.ab
  %.sroa.018.025.i.i.i32 = phi ptr [ %.sroa.018.0.i.i.i36, %bb.ab ], [ %.sroa.018.022.i.i.i29, %bb.aa ] ; 2 uses
  %.01224.i.i.i33 = phi i32 [ %.214.i.i.i35, %bb.ab ], [ 1, %bb.aa ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i32, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !341
  %i.ea = icmp ne i32 %i.dz, %2                   ; 2 uses
  %i.eb = icmp ne i32 %.01224.i.i.i33, 0
  %cond.i.i.i34 = select i1 %i.ea, i1 true, i1 %i.eb
  br i1 %cond.i.i.i34, label %bb.ab, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

_ZNK4llvm7SDValue9hasOneUseEv.exit.i38:           ; preds = %bb.ab
  %i.ec = icmp eq i32 %.214.i.i.i35, 0
  br i1 %i.ec, label %bb.ac, label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.ac:                                            ; preds = %_ZNK4llvm7SDValue9hasOneUseEv.exit.i38, %bb.z
  %.sroa.0.0.copyload.i.i39 = load ptr, ptr %i.dk, align 8, !tbaa !421 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i39, i64 24
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !331
  %i.ef = icmp eq i32 %i.ee, 193
  br i1 %i.ef, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i39, i64 40
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !337 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !338 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !331
  switch i32 %i.el, label %bb.af [
    i32 37, label %bb.ae
    i32 12, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad, %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 88
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !425 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !428
  %i.er = icmp ult i32 %i.eq, 65
  %i.es = load ptr, ptr %i.eo, align 8
  %spec.select.i.i.i.i.i.i.i = select i1 %i.er, ptr %i.eo, ptr %i.es
  %.0.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i, align 8, !tbaa !430
  %i.et = lshr i64 -1, %.0.i.i.i.i.i.i
  %i.eu = and i64 %.0.i.i.i.i.i.i.i, %i.et        ; 4 uses
  %.not.i.i24.i = icmp ne i64 %i.eu, 0
  %i.ev = add i64 %i.eu, 1
  %i.ew = and i64 %i.ev, %i.eu
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = and i1 %.not.i.i24.i, %i.ex
  br i1 %i.ey, label %_ZL33isSeveralBitsPositioningOpFromShlmN4llvm7SDValueERS0_RiS2_.exit.i, label %bb.af

_ZL33isSeveralBitsPositioningOpFromShlmN4llvm7SDValueERS0_RiS2_.exit.i: ; preds = %bb.ae
  %i.ez = xor i64 %i.eu, -1
  %i.fa = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.ez, i1 false)
  %i.fb = trunc nuw nsw i64 %i.fa to i32
  store i32 %i.fb, ptr %6, align 4, !tbaa !201
  %i.fc = trunc i64 %.0.i.i.i.i.i.i to i32
  store i32 %i.fc, ptr %5, align 4, !tbaa !201
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.eh, i64 12, i1 false), !tbaa.struct !458
  br label %_ZL30isBitfieldPositioningOpFromShlPN4llvm12SelectionDAGENS_7SDValueEbmRS2_RiS4_.exit

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.fd = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.i5861, i1 true) ; 2 uses
  %i.fe = trunc nuw nsw i64 %i.fd to i32
  store i32 %i.fe, ptr %5, align 4, !tbaa !201
  %i.ff = lshr exact i64 %.0.i5861, %i.fd
  %i.fg = xor i64 %i.ff, -1
end_hunk_4
begin_hunk_5_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln8ELl7EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_:bb.a
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !201
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !342
  store i64 %i.ao, ptr %6, align 8, !tbaa !342
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !343
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !344
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !421
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !421 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !331
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !337
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !425 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !428 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !430
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !430
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !425 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !428 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !430
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !430
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !141 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !896
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !897 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 8
  %or.cond = icmp ult i64 %i.cx, 16
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !458
  %i.cy = load ptr, ptr %3, align 8, !tbaa !338   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !331
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !467 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !891
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !892
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !893
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !469 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !421
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !201
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !342
  store i64 %i.dx, ptr %7, align 8, !tbaa !342
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !343
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !344
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel23SelectSVERegRegAddrModeEN4llvm7SDValueEjRS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 noundef range(i32 0, 5) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca [1 x %"class.llvm::SDValue"], align 16 ; 4 uses
  %7 = alloca %"class.llvm::ArrayRef", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !331
  %.not = icmp eq i32 %i.b, 59
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.046.0.copyload = load ptr, ptr %i.e, align 8, !tbaa !421 ; 4 uses
  %i.f = icmp eq i32 %2, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.g = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.8.sroa.0.0.extract.trunc = trunc i64 %i.g to i32
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  store ptr %.sroa.046.0.copyload, ptr %4, align 8, !tbaa !421
  %.sroa.8.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.sroa.8.sroa.0.0.extract.trunc, ptr %.sroa.8.0..sroa_idx51, align 8, !tbaa !201
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !331
  switch i32 %i.i, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
    i32 198, label %bb.h
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit: ; preds = %bb.d, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !425  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !428  ; 3 uses
  %i.o = icmp ult i32 %i.n, 65
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.p = load i64, ptr %i.l, align 8, !tbaa !430
  %i.q = icmp eq i32 %i.n, 0
  %i.r = sub nuw nsw i32 64, %i.n
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = shl i64 %i.p, %i.s
  %i.u = ashr exact i64 %i.t, %i.s
  %.0.i.i.i.i = select i1 %i.q, i64 0, i64 %i.u
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.f:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !430
  %i.w = load i64, ptr %i.v, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.e, %bb.f
  %.0.i.i.i37 = phi i64 [ %.0.i.i.i.i, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.x = shl nuw nsw i32 1, %2
  %i.y = zext nneg i32 %i.x to i64
  %i.z = add nsw i64 %i.y, -1
  %i.aa = and i64 %.0.i.i.i37, %i.z
  %.not34 = icmp eq i64 %i.aa, 0
  br i1 %.not34, label %bb.g, label %.thread

bb.g:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !342
  store i64 %i.ac, ptr %5, align 8, !tbaa !342
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !343
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !344
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !318
  %i.ai = zext nneg i32 %2 to i64
  %i.aj = ashr i64 %.0.i.i.i37, %i.ai
  %i.ak = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.ah, i64 noundef %i.aj, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ak, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ak, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false), !tbaa.struct !458
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !318
  store ptr %6, ptr %7, align 8, !tbaa !417
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 1, ptr %i.am, align 8, !tbaa !420
  %i.an = call noundef ptr @_ZN4llvm12SelectionDAG14getMachineNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %i.al, i32 noundef 1131, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef") align 8 %7) #22
  store ptr %i.an, ptr %4, align 8, !tbaa !421
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %.thread

bb.h:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 40 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !337
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.aq, align 8, !tbaa !421 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !331
  switch i32 %i.as, label %.thread [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39: ; preds = %bb.h, %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 88
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !425 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !428
  %i.ay = icmp ult i32 %i.ax, 65
  %i.az = load ptr, ptr %i.av, align 8
  %spec.select.i.i.i = select i1 %i.ay, ptr %i.av, ptr %i.az
  %.0.i.i.i40 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !430
  %i.ba = zext nneg i32 %2 to i64
  %i.bb = icmp eq i64 %.0.i.i.i40, %i.ba
  br i1 %i.bb, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false)
  %i.bc = load ptr, ptr %i.ao, align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 8 dereferenceable(12) %i.bc, i64 12, i1 false), !tbaa.struct !458
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.g, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.h, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39, %bb.i, %bb.d, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %bb.c ], [ false, %bb.d ], [ true, %bb.g ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit ], [ true, %bb.i ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit39 ], [ false, %bb.h ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i16, ptr } @_ZL16getMemVTFromNodeRN4llvm11LLVMContextEPNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %3 = alloca %"struct.llvm::EVT", align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 2
  %.not.i.i = icmp eq i8 %i.c, 0
  %.not.not178 = icmp eq ptr %1, null
  %.not.not = or i1 %.not.not178, %.not.i.i
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.d, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4llvm9MemSDNode7classofEPKNS_6SDNodeE(ptr noundef nonnull align 8 dereferenceable(88) %1)
  br i1 %i.e, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0.0.copyload.i66 = load i16, ptr %i.f, align 8, !tbaa !333 ; 3 uses
  %.sroa.21.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.21.0.copyload.i68 = load ptr, ptr %.sroa.21.0..sroa_idx.i67, align 8, !tbaa !335
  store i16 %.sroa.0.0.copyload.i66, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.21.0.copyload.i68, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !331
  switch i32 %i.j, label %bb.h [
    i32 316, label %bb.e
    i32 384, label %bb.f
    i32 317, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !332
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !332
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !337  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !338
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !341
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !332
  %i.w = zext i32 %i.t to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !337  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !338
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !341
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !332
  %i.ag = zext i32 %i.ad to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.e
  %.sink = phi ptr [ %i.n, %bb.f ], [ %i.ah, %bb.h ], [ %i.x, %bb.g ], [ %i.l, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i78.sink = load i16, ptr %.sink, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %.sroa.21.0.copyload.i80 = load ptr, ptr %.sroa.21.0..sroa_idx.i79, align 8, !tbaa !335
  store i16 %.sroa.0.0.copyload.i78.sink, ptr %3, align 8, !tbaa !333
  store ptr %.sroa.21.0.copyload.i80, ptr %i.h, align 8, !tbaa !335
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i66, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = zext i16 %.sroa.0.0.copyload.i66 to i64
  %i.aj = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.ai
  %i.ak = getelementptr i8, ptr %i.aj, i64 -2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !333
  %i.am = insertvalue { i16, ptr } poison, i16 %i.al, 0
  %i.an = insertvalue { i16, ptr } %i.am, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ao = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.j, %bb.k
  %.fca.1.insert.merged.i = phi { i16, ptr } [ %i.an, %bb.j ], [ %i.ao, %bb.k ] ; 2 uses
  %i.ap = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 0
  %i.aq = extractvalue { i16, ptr } %.fca.1.insert.merged.i, 1
  %i.ar = call { i16, ptr } @_ZNK4llvm3EVT23changeVectorElementTypeERNS_11LLVMContextES0_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i16 %i.ap, ptr %i.aq) ; 2 uses
  %i.as = extractvalue { i16, ptr } %i.ar, 0
  %i.at = extractvalue { i16, ptr } %i.ar, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.ae

bb.l:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !331 ; 2 uses
  switch i32 %i.av, label %bb.o [
    i32 693, label %bb.m
    i32 692, label %bb.m
    i32 710, label %bb.m
    i32 709, label %bb.m
    i32 814, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !337
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !338 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %.sroa.0.0.copyload.i90 = load i16, ptr %i.ba, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %.sroa.21.0.copyload.i92 = load ptr, ptr %.sroa.21.0..sroa_idx.i91, align 8, !tbaa !335
  br label %bb.ae

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !337
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !338 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  %.sroa.0.0.copyload.i95 = load i16, ptr %i.bf, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.be, i64 96
  %.sroa.21.0.copyload.i97 = load ptr, ptr %.sroa.21.0..sroa_idx.i96, align 8, !tbaa !335
  br label %bb.ae

bb.o:                                             ; preds = %bb.l
  %i.bg = add i32 %i.av, -51
  %or.cond = icmp ult i32 %i.bg, -2
  br i1 %or.cond, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !337 ; 12 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !338
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !425 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !428
  %i.bq = icmp ult i32 %i.bp, 65
  %i.br = load ptr, ptr %i.bn, align 8
  %spec.select.i.i.i.i = select i1 %i.bq, ptr %i.bn, ptr %i.br
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !430
  switch i64 %.0.i.i.i.i, label %bb.q [
    i64 942, label %bb.ae
    i64 1089, label %bb.ae
    i64 1712, label %bb.r
    i64 1642, label %bb.s
    i64 1643, label %bb.s
    i64 1975, label %bb.t
    i64 1644, label %bb.u
    i64 1645, label %bb.u
    i64 1977, label %bb.v
    i64 1646, label %bb.w
    i64 1647, label %bb.w
    i64 1979, label %bb.x
    i64 1633, label %bb.y
    i64 1662, label %bb.y
    i64 1634, label %bb.z
    i64 1663, label %bb.z
    i64 1960, label %bb.aa
    i64 1981, label %bb.aa
    i64 1961, label %bb.ab
    i64 1982, label %bb.ab
    i64 1640, label %bb.ac
    i64 1969, label %bb.ac
    i64 1641, label %bb.ad
    i64 1973, label %bb.ad
  ]

bb.q:                                             ; preds = %bb.p
  br label %bb.ae

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 80
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln256ELl255EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_:bb.a
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !201
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !342
  store i64 %i.ao, ptr %6, align 8, !tbaa !342
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !343
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !344
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !421
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !421 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !331
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !337
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !425 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !428 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !430
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !430
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !425 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !428 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !430
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !430
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !141 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !896
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !897 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 256
  %or.cond = icmp ult i64 %i.cx, 512
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !458
  %i.cy = load ptr, ptr %3, align 8, !tbaa !338   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !331
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !467 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !891
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !892
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !893
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !469 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !421
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !201
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !342
  store i64 %i.dx, ptr %7, align 8, !tbaa !342
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !343
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !344
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectAddrModeIndexedUImmILj2ELj63EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !338    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !331
  switch i32 %i.d, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !428  ; 3 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = load i64, ptr %i.g, align 8, !tbaa !430
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %i.k, %i.n
  %i.p = ashr exact i64 %i.o, %i.n
  br i1 %i.l, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !430
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i25 = phi i64 [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp sgt i64 %.0.i.i.i25, 63
  br i1 %i.s, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

.critedge:                                        ; preds = %bb.b, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !421
  %.sroa.419.0..0.16.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.419.0..0.16.sroa_idx, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !342
  store i64 %i.w, ptr %5, align 8, !tbaa !342
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !343
  store i32 %i.z, ptr %i.x, align 8, !tbaa !344
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel29SelectNEONSplatOfSVEAddSubImmEN4llvm7SDValueERS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::optional.523", align 8 ; 9 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 5 uses
  %7 = alloca %"struct.llvm::EVT", align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call fastcc void @_ZL17GetNEONSplatValueN4llvm7SDValueE(ptr dead_on_unwind noalias writable align 8 %5, ptr %1, i32 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !926, !range !446, !noundef !316
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !342
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !343
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !428  ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !428
  %i.l = icmp ult i32 %i.k, 65
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %5, align 8, !tbaa !430
  store i64 %i.m, ptr %6, align 8, !tbaa !430
  br label %_ZN4llvm5APIntC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %5) #22
  br label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !332
  %i.p = zext i32 %2 to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.q, align 8, !tbaa !333 ; 5 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !335
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.r, align 8
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i.i, label %_ZNK4llvm3EVT8isVectorEv.exit.i, label %.split.i

.split.i:                                         ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.s = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i.i = icmp ult i16 %i.s, 197
  br i1 %spec.select.i.i.i, label %bb.e, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT8isVectorEv.exit.i:                  ; preds = %_ZN4llvm5APIntC2ERKS0_.exit
  %i.t = call noundef zeroext i1 @_ZNK4llvm3EVT16isExtendedVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  br i1 %i.t, label %bb.f, label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.e:                                             ; preds = %.split.i
  %i.u = zext nneg i16 %.sroa.0.0.copyload.i.i to i64
  %i.v = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -2
  %i.x = load i16, ptr %i.w, align 2, !tbaa !333
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

bb.f:                                             ; preds = %_ZNK4llvm3EVT8isVectorEv.exit.i
  %i.y = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #22
  %i.z = extractvalue { i16, ptr } %i.y, 0
  br label %_ZNK4llvm3EVT13getScalarTypeEv.exit

_ZNK4llvm3EVT13getScalarTypeEv.exit:              ; preds = %.split.i, %_ZNK4llvm3EVT8isVectorEv.exit.i, %bb.e, %bb.f
  %.fca.1.insert.merged.i = phi i16 [ %i.z, %bb.f ], [ %i.x, %bb.e ], [ 0, %_ZNK4llvm3EVT8isVectorEv.exit.i ], [ %.sroa.0.0.copyload.i.i, %.split.i ]
  %i.aa = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel18SelectSVEAddSubImmEN4llvm5SDLocENS1_5APIntENS1_3MVTERNS1_7SDValueES6_b(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %i.f, i32 %i.h, ptr nofree noundef align 8 dereferenceable(16) %6, i16 %.fca.1.insert.merged.i, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i1 noundef zeroext false) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.ab = load i32, ptr %i.i, align 8, !tbaa !428
  %i.ac = icmp ugt i32 %i.ab, 64
  br i1 %i.ac, label %bb.g, label %_ZN4llvm5APIntD2Ev.exit

bb.g:                                             ; preds = %_ZNK4llvm3EVT13getScalarTypeEv.exit
  %i.ad = load ptr, ptr %6, align 8, !tbaa !430   ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4llvm5APIntD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ad) #25
  br label %_ZN4llvm5APIntD2Ev.exit

_ZN4llvm5APIntD2Ev.exit:                          ; preds = %bb.h, %bb.g, %_ZNK4llvm3EVT13getScalarTypeEv.exit, %bb.a
  %.08 = phi i1 [ undef, %bb.a ], [ %i.aa, %_ZNK4llvm3EVT13getScalarTypeEv.exit ], [ %i.aa, %bb.g ], [ %i.aa, %bb.h ]
  %i.af = load i8, ptr %i.a, align 8, !tbaa !926, !range !446, !noundef !316
  %i.ag = trunc nuw i8 %i.af to i1
  store i8 0, ptr %i.a, align 8, !tbaa !926
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp ugt i32 %i.ai, 64
  %or.cond.i.i.i = select i1 %i.ag, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i, label %bb.i, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

bb.i:                                             ; preds = %_ZN4llvm5APIntD2Ev.exit
  %i.ak = load ptr, ptr %5, align 8, !tbaa !430   ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #25
  br label %_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm5APIntELb0ELb0EED2Ev.exit: ; preds = %_ZN4llvm5APIntD2Ev.exit, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %spec.select = and i1 %.08, %i.c
  ret i1 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectAddrModeIndexedUImmILj1ELj63EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !338    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !331
end_hunk_6
begin_hunk_7_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel27SelectArithExtendedRegisterEN4llvm7SDValueERS2_S3_:bb.a
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.aq, align 8, !tbaa !333 ; 3 uses
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !335
  store i16 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.21.0.copyload.i.i, ptr %i.ar, align 8
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 0
  br i1 %.not.i, label %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, label %.split

.split:                                           ; preds = %bb.j
  %i.as = add i16 %.sroa.0.0.copyload.i.i, -19
  %spec.select.i.i = icmp ult i16 %i.as, 144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %spec.select.i.i, label %.critedge65, label %.thread

_ZNK4llvm3EVT19isFixedLengthVectorEv.exit:        ; preds = %bb.j
  %i.at = call noundef zeroext i1 @_ZNK4llvm3EVT27isExtendedFixedLengthVectorEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.at, label %.critedge65, label %.thread

.critedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.thread

.thread:                                          ; preds = %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, %.critedge, %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !458
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br label %.critedge4

bb.k:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.aa, i64 12, i1 false), !tbaa.struct !458
  %i.au = icmp eq i32 %i.w, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br i1 %i.au, label %bb.l, label %.critedge4

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %3, align 8, !tbaa !338   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !332 ; 2 uses
  %.sroa.0.0.copyload.i = load i16, ptr %i.ax, align 8, !tbaa !333 ; 3 uses
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  store i16 %.sroa.0.0.copyload.i, ptr %8, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.sroa.21.0.copyload.i, ptr %i.ay, align 8
  %.not.i71 = icmp eq i16 %.sroa.0.0.copyload.i, 0
  br i1 %.not.i71, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = zext i16 %.sroa.0.0.copyload.i to i64
  %i.ba = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.az ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 -16
  %.sroa.0.0.copyload.i.i72 = load i64, ptr %i.bb, align 16
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ba, i64 -8
  %.sroa.2.0.copyload.i.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.fca.0.insert.i.i73 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i72, 0
  %.fca.1.insert.i.i74 = insertvalue { i64, i8 } %.fca.0.insert.i.i73, i8 %.sroa.2.0.copyload.i.i, 1
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #26
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.m, %bb.n
  %.pn.i = phi { i64, i8 } [ %.fca.1.insert.i.i74, %bb.m ], [ %i.bc, %bb.n ] ; 2 uses
  %.fca.1.extract25 = extractvalue { i64, i8 } %.pn.i, 1
  %i.bd = trunc nuw i8 %.fca.1.extract25 to i1
  br i1 %i.bd, label %bb.o, label %_ZNK4llvm8TypeSizecvmEv.exit

bb.o:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.4) #23
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit:                     ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  %.fca.0.extract24 = extractvalue { i64, i8 } %.pn.i, 0
  %i.be = icmp eq i64 %.fca.0.extract24, 32
  br i1 %i.be, label %bb.p, label %.critedge4

bb.p:                                             ; preds = %_ZNK4llvm8TypeSizecvmEv.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !331
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  switch i32 %i.bg, label %.critedge65 [
    i32 230, label %.critedge69
    i32 52, label %.critedge69
    i32 8, label %.critedge69
    i32 5, label %.critedge69
    i32 4, label %.critedge69
    i32 3, label %.critedge69
    i32 55, label %.critedge69
  ]

.critedge4:                                       ; preds = %.thread, %bb.k, %_ZNK4llvm8TypeSizecvmEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.critedge69

.critedge69:                                      ; preds = %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %bb.p, %.critedge4, %bb.d
  %.156 = phi i32 [ %i.s, %bb.d ], [ %i.w, %.critedge4 ], [ 7, %bb.p ], [ 7, %bb.p ], [ 7, %bb.p ], [ 7, %bb.p ], [ 7, %bb.p ], [ 7, %bb.p ], [ 7, %bb.p ]
  %.154 = phi i32 [ %i.q, %bb.d ], [ 0, %.critedge4 ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.p ], [ 0, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !318 ; 2 uses
  %.sroa.015.0.copyload = load ptr, ptr %3, align 8, !tbaa !421 ; 5 uses
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.216.0.copyload = load i32, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !201 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !332
  %i.bl = zext i32 %.sroa.216.0.copyload to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.bm, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.21.0.copyload.i.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i.i, align 8, !tbaa !335
  %.not.i.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 7
  %i.bn = icmp eq ptr %.sroa.21.0.copyload.i.i.i, null
  %.not4.i.i = select i1 %.not.i.i.i, i1 %i.bn, i1 false
  br i1 %.not4.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.critedge69
  %i.bo = insertvalue { ptr, i32 } poison, ptr %.sroa.015.0.copyload, 0
  %i.bp = insertvalue { ptr, i32 } %i.bo, i32 %.sroa.216.0.copyload, 1
  br label %_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit

bb.r:                                             ; preds = %.critedge69
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 72
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !342
  store i64 %i.br, ptr %5, align 8, !tbaa !342
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 68
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !343
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !344
  store ptr %.sroa.015.0.copyload, ptr %6, align 8, !tbaa !421
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %.sroa.216.0.copyload, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !201
  %i.bv = call { ptr, i32 } @_ZN4llvm12SelectionDAG22getTargetExtractSubregEiRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %i.bi, i32 noundef 20, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre94 = load ptr, ptr %i.bh, align 8, !tbaa !318
  br label %_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit

_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit: ; preds = %bb.q, %bb.r
  %i.bw = phi ptr [ %i.bi, %bb.q ], [ %.pre94, %bb.r ]
  %.fca.1.insert.merged.i = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.fca.0.extract11 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 0
  %.fca.1.extract12 = extractvalue { ptr, i32 } %.fca.1.insert.merged.i, 1
  store ptr %.fca.0.extract11, ptr %3, align 8, !tbaa !421
  store i32 %.fca.1.extract12, ptr %.sroa.216.0..sroa_idx, align 8, !tbaa !201
  %switch.tableidx.i.i = shl nuw nsw i32 %.156, 3
  %i.bx = add nsw i32 %switch.tableidx.i.i, -40
  %i.by = or disjoint i32 %i.bx, %.154
  %i.bz = zext i32 %i.by to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !342
  store i64 %i.cb, ptr %9, align 8, !tbaa !342
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !343
  store i32 %i.ce, ptr %i.cc, align 8, !tbaa !344
  %i.cf = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.bw, i64 noundef %i.bz, ptr noundef nonnull align 8 dereferenceable(12) %9, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.cf, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.cf, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !318
  %i.ch = call noundef zeroext i1 @_ZNK4llvm12SelectionDAG16shouldOptForSizeEv(ptr noundef nonnull align 8 dereferenceable(920) %i.cg) #22
  br i1 %i.ch, label %.critedge65, label %bb.s

bb.s:                                             ; preds = %_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.018.022.i.i.i = load ptr, ptr %i.ci, align 8, !tbaa !758 ; 2 uses
  %.not23.i.i.i = icmp eq ptr %.sroa.018.022.i.i.i, null
  br i1 %.not23.i.i.i, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, label %.lr.ph.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i
  %.214.i.i.i = select i1 %i.cm, i32 %.01224.i.i.i, i32 0 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 32
  %.sroa.018.0.i.i.i = load ptr, ptr %i.cj, align 8, !tbaa !758 ; 2 uses
  %.not.i.i.i75 = icmp eq ptr %.sroa.018.0.i.i.i, null
  br i1 %.not.i.i.i75, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.s, %bb.t
  %.sroa.018.025.i.i.i = phi ptr [ %.sroa.018.0.i.i.i, %bb.t ], [ %.sroa.018.022.i.i.i, %bb.s ] ; 2 uses
  %.01224.i.i.i = phi i32 [ %.214.i.i.i, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.018.025.i.i.i, i64 8
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !341
  %i.cm = icmp ne i32 %i.cl, %2                   ; 2 uses
  %i.cn = icmp ne i32 %.01224.i.i.i, 0
  %cond.i.i.i = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %cond.i.i.i, label %bb.t, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.i:             ; preds = %bb.t
  %i.co = icmp eq i32 %.214.i.i.i, 0
  br i1 %i.co, label %.critedge65, label %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i

_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i:      ; preds = %.lr.ph.i.i.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %bb.s
  br label %.critedge65

.critedge65:                                      ; preds = %bb.p, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit, %.split, %bb.b, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i, %_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit, %bb.c, %bb.e
  %.4 = phi i1 [ true, %_ZNK4llvm7SDValue9hasOneUseEv.exit.i ], [ false, %bb.e ], [ false, %bb.b ], [ false, %_ZNK4llvm3EVT19isFixedLengthVectorEv.exit ], [ false, %bb.c ], [ false, %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRKT0_.exit ], [ false, %_ZNK4llvm7SDValue9hasOneUseEv.exit.thread.i ], [ true, %_ZL14narrowIfNeededPN4llvm12SelectionDAGENS_7SDValueE.exit ], [ false, %.split ], [ false, %bb.p ]
  ret i1 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel19SelectNegArithImmedEN4llvm7SDValueERS2_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !331
  switch i32 %i.b, label %bb.g [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !425  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !428
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i.i = load i64, ptr %spec.select.i.i.i.i, align 8, !tbaa !430 ; 2 uses
  %i.j = icmp eq i64 %.0.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !332
  %i.m = zext i32 %2 to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.n, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !335
  %.not.i.i = icmp eq i16 %.sroa.0.0.copyload.i.i, 7
  %i.o = icmp eq ptr %.sroa.21.0.copyload.i.i, null
  %.not4.i = select i1 %.not.i.i, i1 %i.o, i1 false
  %i.p = sub i64 0, %.0.i.i.i.i                   ; 2 uses
  %i.q = and i64 %i.p, 4294967295
  %.013 = select i1 %.not4.i, i64 %i.q, i64 %i.p  ; 2 uses
  %.not = icmp ult i64 %.013, 16777216
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !342
  store i64 %i.u, ptr %6, align 8, !tbaa !342
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.x = load i32, ptr %i.w, align 4, !tbaa !343
  store i32 %i.x, ptr %i.v, align 8, !tbaa !344
  %i.y = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.s, i64 noundef %.013, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 7, ptr null, i1 noundef zeroext false, i1 noundef zeroext false) #22
  %.fca.0.extract = extractvalue { ptr, i32 } %i.y, 0 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !331
  switch i32 %i.aa, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit [
    i32 37, label %bb.e
    i32 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 88
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !425 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !428
  %i.ag = icmp ult i32 %i.af, 65
  %i.ah = load ptr, ptr %i.ad, align 8
  %spec.select.i.i.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.ah
  %.0.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i, align 8, !tbaa !430 ; 3 uses
  %i.ai = icmp ult i64 %.0.i.i.i.i.i, 4096        ; 2 uses
  %i.aj = and i64 %.0.i.i.i.i.i, -16773121
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = or i1 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit

bb.f:                                             ; preds = %bb.e
  %i.am = select i1 %i.ai, i64 0, i64 12          ; 2 uses
  %i.an = lshr i64 %.0.i.i.i.i.i, %i.am
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.ao = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !342
  store i64 %i.ap, ptr %5, align 8, !tbaa !342
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 68
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !343
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !344
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !318
  %i.au = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.at, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract2.i = extractvalue { ptr, i32 } %i.au, 0
  %.fca.1.extract3.i = extractvalue { ptr, i32 } %i.au, 1
  store ptr %.fca.0.extract2.i, ptr %3, align 8, !tbaa !421
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract3.i, ptr %.sroa.47.0..sroa_idx.i, align 8, !tbaa !201
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !318
  %i.aw = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.av, i64 noundef %i.am, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.aw, 0
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.aw, 1
  store ptr %.fca.0.extract.i, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit

_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.1.i = phi i1 [ false, %bb.d ], [ false, %bb.e ], [ true, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit, %bb.b, %bb.c
  %.1 = phi i1 [ false, %bb.a ], [ %.1.i, %_ZN12_GLOBAL__N_119AArch64DAGToDAGISel16SelectArithImmedEN4llvm7SDValueERS2_S3_.exit ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel8ImmToRegILj300ELj0EEEbN4llvm7SDValueERS3_(ptr %.72.val, ptr nofree readonly captures(none) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !331
  switch i32 %i.b, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit [
    i32 37, label %bb.b
    i32 12, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !425  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !428
  %i.h = icmp ult i32 %i.g, 65
  %i.i = load ptr, ptr %i.e, align 8
  %spec.select.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.i
  %.0.i.i.i13 = load i64, ptr %spec.select.i.i.i, align 8, !tbaa !430
  %.not12 = icmp eq i64 %.0.i.i.i13, 0
  br i1 %.not12, label %bb.c, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = tail call { ptr, i32 } @_ZN4llvm12SelectionDAG11getRegisterENS_8RegisterENS_3EVTE(ptr noundef nonnull align 8 dereferenceable(920) %.72.val, i32 300, i16 1, ptr null) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.j, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.j, 1
  store ptr %.fca.0.extract, ptr %1, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  br label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.k = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel29SelectNEONSplatOfSVEArithSImmEN4llvm7SDValueERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, i32 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 7 uses
  %5 = alloca %"class.std::optional.523", align 8 ; 9 uses
  %6 = alloca %"class.llvm::APInt", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call fastcc void @_ZL17GetNEONSplatValueN4llvm7SDValueE(ptr dead_on_unwind noalias writable align 8 %5, ptr %1, i32 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !926, !range !446, !noundef !316
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN4llvm5APIntD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !342
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.h = load i32, ptr %i.g, align 4, !tbaa !343  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !428  ; 3 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !428
  %i.l = icmp ult i32 %i.k, 65
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br i1 %i.l, label %_ZN4llvm5APIntC2ERKS0_.exit.thread, label %_ZN4llvm5APIntC2ERKS0_.exit

_ZN4llvm5APIntC2ERKS0_.exit.thread:               ; preds = %bb.b
  %i.o = load i64, ptr %5, align 8, !tbaa !430    ; 2 uses
  store i64 %i.o, ptr %6, align 8, !tbaa !430
  %.val11 = load ptr, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.f, ptr %4, align 8
  store i32 %i.h, ptr %i.n, align 8
  br label %bb.c

_ZN4llvm5APIntC2ERKS0_.exit:                      ; preds = %bb.b
  call void @_ZN4llvm5APInt12initSlowCaseERKS0_(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %5) #22
  %.pr = load i32, ptr %i.i, align 8, !tbaa !428  ; 3 uses
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr %i.f, ptr %4, align 8
  store i32 %i.h, ptr %i.n, align 8
end_hunk_7
begin_hunk_8_@_ZN12_GLOBAL__N_119AArch64DAGToDAGISel24SelectAddrModeIndexedSVEILln32ELl31EEEbPN4llvm6SDNodeENS2_7SDValueERS5_S6_:bb.a
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract45, ptr %.sroa.450.0..sroa_idx, align 8, !tbaa !201
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !342
  store i64 %i.ao, ptr %6, align 8, !tbaa !342
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !343
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !344
  %i.as = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.am, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %6, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract34 = extractvalue { ptr, i32 } %i.as, 0
  %.fca.1.extract35 = extractvalue { ptr, i32 } %i.as, 1
  store ptr %.fca.0.extract34, ptr %4, align 8, !tbaa !421
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract35, ptr %.sroa.442.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not.i.i = icmp ne i16 %i.f, 0                 ; 2 uses
  %i.at = icmp ne ptr %i.h, null
  %.not4.i.not106 = select i1 %.not.i.i, i1 true, i1 %i.at
  %.not = icmp eq i32 %i.r, 59
  %or.cond104 = and i1 %.not, %.not4.i.not106
  br i1 %or.cond104, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !337 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.086.0.copyload = load ptr, ptr %i.aw, align 8, !tbaa !421 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 24
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !331
  switch i32 %i.ay, label %.critedge [
    i32 396, label %bb.f
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 40
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !337
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !338
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !425 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !428 ; 3 uses
  %i.bh = icmp ult i32 %i.bg, 65
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bi = load i64, ptr %i.be, align 8, !tbaa !430
  %i.bj = icmp eq i32 %i.bg, 0
  %i.bk = sub nuw nsw i32 64, %i.bg
  %i.bl = zext nneg i32 %i.bk to i64              ; 2 uses
  %i.bm = shl i64 %i.bi, %i.bl
  %i.bn = ashr exact i64 %i.bm, %i.bl
  %.0.i.i.i.i = select i1 %i.bj, i64 0, i64 %i.bn
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.h:                                             ; preds = %bb.f
  %i.bo = load ptr, ptr %i.be, align 8, !tbaa !430
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.e, %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.086.0.copyload, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !425 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !428 ; 3 uses
  %i.bv = icmp ult i32 %i.bu, 65
  br i1 %i.bv, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.bw = load i64, ptr %i.bs, align 8, !tbaa !430
  %i.bx = icmp eq i32 %i.bu, 0
  %i.by = sub nuw nsw i32 64, %i.bu
  %i.bz = zext nneg i32 %i.by to i64              ; 2 uses
  %i.ca = shl i64 %i.bw, %i.bz
  %i.cb = ashr exact i64 %i.ca, %i.bz
  %.0.i.i.i.i82 = select i1 %i.bx, i64 0, i64 %i.cb
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

bb.j:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.cc = load ptr, ptr %i.bs, align 8, !tbaa !430
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83: ; preds = %bb.i, %bb.j
  %.0.i.i.i81 = phi i64 [ %.0.i.i.i.i82, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 952
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !141 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 876
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !896
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 880
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !897 ; 2 uses
  %i.ck = icmp ne i32 %i.ch, %i.cj
  %i.cl = lshr i32 %i.cj, 7                       ; 2 uses
  %.not77107 = icmp eq i32 %i.cl, 0
  %.not77 = or i1 %i.ck, %.not77107
  br i1 %.not77, label %.critedge, label %bb.k

bb.k:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = srem i64 %.0.i.i.i81, %i.cm
  %i.co = sdiv i64 %.0.i.i.i81, %i.cm
  %.not78 = icmp eq i64 %i.cn, 0
  br i1 %.not78, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, label %.critedge

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.k, %bb.h, %bb.g
  %.272 = phi i64 [ %i.bp, %bb.h ], [ %.0.i.i.i.i, %bb.g ], [ %i.co, %bb.k ] ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cp = zext i16 %i.f to i64
  %i.cq = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -16
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.cr, align 16
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

bb.m:                                             ; preds = %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit
  %i.cs = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  %i.ct = extractvalue { i64, i8 } %i.cs, 0
  br label %_ZNK4llvm3EVT13getSizeInBitsEv.exit

_ZNK4llvm3EVT13getSizeInBitsEv.exit:              ; preds = %bb.l, %bb.m
  %.pn.i = phi i64 [ %.sroa.0.0.copyload.i.i, %bb.l ], [ %i.ct, %bb.m ]
  %i.cu = sdiv i64 %.pn.i, 8                      ; 2 uses
  %i.cv = srem i64 %.272, %i.cu
  %i.cw = sdiv i64 %.272, %i.cu                   ; 2 uses
  %.not79 = icmp eq i64 %i.cv, 0
  %i.cx = add i64 %i.cw, 32
  %or.cond = icmp ult i64 %i.cx, 64
  %or.cond1 = select i1 %.not79, i1 %or.cond, i1 false
  br i1 %or.cond1, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZNK4llvm3EVT13getSizeInBitsEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %i.av, i64 12, i1 false), !tbaa.struct !458
  %i.cy = load ptr, ptr %3, align 8, !tbaa !338   ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !331
  %i.db = icmp eq i32 %i.da, 16
  br i1 %i.db, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !467 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !891
  %i.dh = add i32 %i.dg, %i.dd
  %i.di = zext i32 %i.dh to i64
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !892
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dj, i64 %i.di
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 21
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !893
  switch i8 %i.dm, label %bb.q [
    i8 4, label %bb.p
    i8 2, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !318
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !469 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call i16 %i.ds(ptr noundef nonnull align 8 dereferenceable(518435) %i.dp, ptr noundef nonnull align 8 dereferenceable(912) %i.l, i32 noundef 0) #22
  %i.du = call { ptr, i32 } @_ZN4llvm12SelectionDAG13getFrameIndexEiNS_3EVTEb(ptr noundef nonnull align 8 dereferenceable(920) %i.dn, i32 noundef %i.dd, i16 %i.dt, ptr null, i1 noundef zeroext true) #22 ; 2 uses
  %.fca.0.extract6 = extractvalue { ptr, i32 } %i.du, 0
  %.fca.1.extract7 = extractvalue { ptr, i32 } %i.du, 1
  store ptr %.fca.0.extract6, ptr %3, align 8, !tbaa !421
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract7, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !201
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !342
  store i64 %i.dx, ptr %7, align 8, !tbaa !342
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !343
  store i32 %i.ea, ptr %i.dy, align 8, !tbaa !344
  %i.eb = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.dv, i64 noundef %i.cw, ptr noundef nonnull align 8 dereferenceable(12) %7, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.eb, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.eb, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83, %bb.q, %_ZNK4llvm3EVT13getSizeInBitsEv.exit, %bb.e, %bb.b, %bb.d, %bb.c
  %.6 = phi i1 [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ], [ false, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit83 ], [ true, %bb.q ], [ false, %bb.k ], [ false, %_ZNK4llvm3EVT13getSizeInBitsEv.exit ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  ret i1 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectAddrModeIndexedUImmILj8ELj63EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr %1, i32 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel21SelectAddrModeIndexedEN4llvm7SDValueEjRS2_S3_(ptr noundef nonnull align 8 dereferenceable(960) %0, ptr %1, i32 %2, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4)
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %4, align 8, !tbaa !338    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !331
  switch i32 %i.d, label %.critedge [
    i32 37, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
    i32 12, label %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  ]

_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit: ; preds = %bb.b, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !425  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !428  ; 3 uses
  %i.j = icmp ult i32 %i.i, 65
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.k = load i64, ptr %i.g, align 8, !tbaa !430
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sub nuw nsw i32 64, %i.i
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = shl i64 %i.k, %i.n
  %i.p = ashr exact i64 %i.o, %i.n
  br i1 %i.l, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

bb.d:                                             ; preds = %_ZN4llvm8dyn_castINS_14ConstantSDNodeENS_7SDValueEEEDcRT0_.exit
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !430
  %i.r = load i64, ptr %i.q, align 8, !tbaa !14
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit:   ; preds = %bb.c, %bb.d
  %.0.i.i.i25 = phi i64 [ %i.p, %bb.c ], [ %i.r, %bb.d ]
  %i.s = icmp sgt i64 %.0.i.i.i25, 63
  br i1 %i.s, label %.critedge, label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

.critedge:                                        ; preds = %bb.b, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %bb.a
  store ptr %1, ptr %3, align 8, !tbaa !421
  %.sroa.419.0..0.16.sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %.sroa.419.0..0.16.sroa_idx, align 8, !tbaa !201
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !tbaa !342
  store i64 %i.w, ptr %5, align 8, !tbaa !342
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.z = load i32, ptr %i.y, align 4, !tbaa !343
  store i32 %i.z, ptr %i.x, align 8, !tbaa !344
  %i.aa = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.u, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 8, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.aa, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.aa, 1
  store ptr %.fca.0.extract, ptr %4, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread

_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit.thread: ; preds = %bb.c, %_ZNK4llvm14ConstantSDNode12getSExtValueEv.exit, %.critedge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectCmpBranchExtOperandILb1EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !331
  %.off = add i32 %i.b, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 5
  %i.h = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not38 = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %.not38, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !458
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !342
  store i64 %i.l, ptr %4, align 8, !tbaa !342
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !343
  store i32 %i.o, ptr %i.m, align 8, !tbaa !344
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.j, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.p, 0
  %.fca.1.extract11 = extractvalue { ptr, i32 } %i.p, 1
  store ptr %.fca.0.extract10, ptr %3, align 8, !tbaa !421
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract11, ptr %.sroa.418.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.q = tail call fastcc noundef i32 @_ZL20getExtendTypeForNodeN4llvm7SDValueEb(ptr nonnull %1, i1 noundef zeroext false) ; 4 uses
  %i.r = icmp eq i32 %i.q, 5
  %i.s = icmp eq i32 %i.q, 9
  %or.cond = or i1 %i.r, %i.s                     ; 2 uses
  switch i32 %i.q, label %bb.f [
    i32 9, label %bb.e
    i32 5, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !337
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.u, i64 12, i1 false), !tbaa.struct !458
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !318
  %switch.tableidx.i = add nsw i32 %i.q, -5
  %i.x = zext nneg i32 %switch.tableidx.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !342
  store i64 %i.z, ptr %5, align 8, !tbaa !342
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !343
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !344
  %i.ad = call { ptr, i32 } @_ZN4llvm12SelectionDAG11getConstantEmRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.w, i64 noundef %i.x, ptr noundef nonnull align 8 dereferenceable(12) %5, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ad, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ad, 1
  store ptr %.fca.0.extract, ptr %3, align 8, !tbaa !421
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.b, %bb.e, %bb.d
  %.2 = phi i1 [ %or.cond, %bb.e ], [ %or.cond, %bb.d ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_119AArch64DAGToDAGISel25SelectCmpBranchExtOperandILb0EEEbN4llvm7SDValueERS3_S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(960) %0, ptr nofree readonly captures(none) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %5 = alloca %"class.llvm::SDLoc", align 8       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !331
  %.off = add i32 %i.b, -3
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !337  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !338  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %.sroa.0.0.copyload.i = load i16, ptr %i.g, align 8, !tbaa !333
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %.sroa.21.0.copyload.i = load ptr, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !335
  %.not.i = icmp eq i16 %.sroa.0.0.copyload.i, 6
  %i.h = icmp eq ptr %.sroa.21.0.copyload.i, null
  %.not38 = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %.not38, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %i.d, i64 12, i1 false), !tbaa.struct !458
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !318
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !342
  store i64 %i.l, ptr %4, align 8, !tbaa !342
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !343
  store i32 %i.o, ptr %i.m, align 8, !tbaa !344
  %i.p = call { ptr, i32 } @_ZN4llvm12SelectionDAG17getSignedConstantElRKNS_5SDLocENS_3EVTEbb(ptr noundef nonnull align 8 dereferenceable(920) %i.j, i64 noundef -1, ptr noundef nonnull align 8 dereferenceable(12) %4, i16 7, ptr null, i1 noundef zeroext true, i1 noundef zeroext false) #22 ; 2 uses
  %.fca.0.extract10 = extractvalue { ptr, i32 } %i.p, 0
end_hunk_8
