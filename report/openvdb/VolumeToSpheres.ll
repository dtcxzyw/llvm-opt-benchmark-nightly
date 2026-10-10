Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openvdb/original/VolumeToSpheres?download=true
inline.NumInlined: 56869
inline.NumDeleted: 18802
loop-unroll.NumCompletelyUnrolled: 220
loop-unroll.NumRuntimeUnrolled: 172
loop-unroll.NumUnrolled: 788
begin_hunk_0_@_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEEclERKN3tbb6detail2d113blocked_rangeImEE:bb.a

_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i: ; preds = %bb.ak, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i = phi i32 [ %i.jo, %_ZN3tbb6detail2d0L13machine_pauseEi.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.02.i.i.i.i.i.i.i, %bb.ak ]
  %i.jq = atomicrmw xchg ptr %i.jf, i8 1 seq_cst, align 1, !noalias !4669
  %i.jr = trunc i8 %i.jq to i1
  br i1 %i.jr, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i, !llvm.loop !17

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i: ; preds = %_ZN3tbb6detail2d014atomic_backoff5pauseEv.exit.i.i.i.i.i.i.i, %bb.ai
  %i.js = load ptr, ptr %i.hx, align 8, !tbaa !548, !noalias !4669 ; 2 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.al, label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i.i

bb.al:                                            ; preds = %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i
  %i.ju = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znam(i64 noundef 2048) #30
          to label %bb.am unwind label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i, !noalias !4669 ; 2 uses

bb.am:                                            ; preds = %bb.al
  store ptr %i.ju, ptr %i.hx, align 8, !tbaa !548, !noalias !4669
  br label %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i.i

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit.i.i.i.i: ; preds = %bb.al
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i.i: ; preds = %bb.am, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i
  %i.jw = phi ptr [ %i.ju, %bb.am ], [ %i.js, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEEC2ERS3_.exit.i.i.i.i ]
  store atomic i8 0, ptr %i.jf release, align 4, !noalias !4669
  br label %_ZNK7openvdb5v13_04tree8LeafNodeIjLj3EE13cbeginValueOnEv.exit

_ZNK7openvdb5v13_04tree8LeafNodeIjLj3EE13cbeginValueOnEv.exit: ; preds = %_ZNK7openvdb5v13_04tree10LeafBufferIjLj3EE10loadValuesEv.exit.i.i.i.i, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i.i
  %i.jx = phi ptr [ %i.jw, %_ZN3tbb6detail2d118unique_scoped_lockINS1_10spin_mutexEED2Ev.exit6.i.i.i.i ], [ %i.jd, %_ZNK7openvdb5v13_04tree10LeafBufferIjLj3EE10loadValuesEv.exit.i.i.i.i ]
  %.not16.i = icmp eq i32 %i.ja, 512
  br i1 %.not16.i, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %_ZNK7openvdb5v13_04tree8LeafNodeIjLj3EE13cbeginValueOnEv.exit
  %i.jy = load ptr, ptr %i.m, align 8, !tbaa !869, !nonnull !616, !align !617
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !870
  %i.ka = load ptr, ptr %i.d, align 8, !tbaa !858, !nonnull !616, !align !617
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !551
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.039122 ; 2 uses
  %.pre.i43 = load float, ptr %i.kc, align 4, !tbaa !558
  br label %bb.an

bb.an:                                            ; preds = %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i, %.lr.ph.i42
  %i.kd = phi float [ %.pre.i43, %.lr.ph.i42 ], [ %i.kp, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i ] ; 2 uses
  %.sroa.410.017.i = phi i32 [ %i.ja, %.lr.ph.i42 ], [ %.118.i.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i ] ; 2 uses
  %i.ke = zext i32 %.sroa.410.017.i to i64
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.ke
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !521
  %i.kh = zext i32 %i.kg to i64                   ; 2 uses
  %i.ki = getelementptr inbounds nuw [12 x i8], ptr %i.jz, i64 %i.kh ; 2 uses
  %.sroa.0.0.copyload4.i.i = load <2 x float>, ptr %i.ki, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %.sroa.6.0.copyload.i.i = load float, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %foldExtExtBinop = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.ic
  %i.kj = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop192 = fsub <2 x float> %.sroa.0.0.copyload4.i.i, %i.ic ; 2 uses
  %i.kk = fsub float %.sroa.6.0.copyload.i.i, %i.if ; 2 uses
  %foldExtExtBinop194 = fmul <2 x float> %foldExtExtBinop192, %foldExtExtBinop192
  %i.kl = extractelement <2 x float> %foldExtExtBinop194, i64 1
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.kl)
  %i.kn = tail call noundef float @llvm.fmuladd.f32(float %i.kk, float %i.kk, float %i.km) ; 3 uses
  %i.ko = fcmp olt float %i.kn, %i.kd
  br i1 %i.ko, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store float %i.kn, ptr %i.kc, align 4, !tbaa !558
  store i64 %i.kh, ptr %i.l, align 8, !tbaa !699
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.kp = phi float [ %i.kn, %bb.ao ], [ %i.kd, %bb.an ]
  %i.kq = add i32 %.sroa.410.017.i, 1             ; 4 uses
  %i.kr = lshr i32 %i.kq, 6                       ; 3 uses
  %i.ks = icmp ugt i32 %i.kq, 511
  br i1 %i.ks, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kt = and i32 %i.kq, 63
  %i.ku = zext nneg i32 %i.kr to i64              ; 8 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %i.ku
  %i.kw = load i64, ptr %i.kv, align 8, !tbaa !699 ; 2 uses
  %i.kx = zext nneg i32 %i.kt to i64              ; 2 uses
  %i.ky = shl nuw i64 1, %i.kx
  %i.kz = and i64 %i.kw, %i.ky
  %.not.i.i.i.i.i = icmp eq i64 %i.kz, 0
  br i1 %.not.i.i.i.i.i, label %bb.ar, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.la = shl nsw i64 -1, %i.kx
  %i.lb = and i64 %i.kw, %i.la                    ; 2 uses
  %.not2226.i.i.i.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not2226.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader, label %.critedge.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.ar
  %exitcond.not.i.i.i.i.i188 = icmp eq i32 %i.kr, 7
  br i1 %exitcond.not.i.i.i.i.i188, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph190
  %exitcond.not.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.1

.lr.ph190.1:                                      ; preds = %.lr.ph.i.i.i.i.i
  %indvars.iv.next.i.i.i.i.i.1 = add nuw nsw i64 %i.ku, 2 ; 3 uses
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.1
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.1 = icmp eq i64 %i.ld, 0
  br i1 %.not22.i.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.1:                               ; preds = %.lr.ph190.1
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.i.1, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.2

.lr.ph190.2:                                      ; preds = %.lr.ph.i.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.i.2 = add nuw nsw i64 %i.ku, 3 ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.2
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.2 = icmp eq i64 %i.lf, 0
  br i1 %.not22.i.i.i.i.i.2, label %.lr.ph.i.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.2:                               ; preds = %.lr.ph190.2
  %exitcond.not.i.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.i.2, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.3

.lr.ph190.3:                                      ; preds = %.lr.ph.i.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.i.3 = add nuw nsw i64 %i.ku, 4 ; 3 uses
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.3
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.3 = icmp eq i64 %i.lh, 0
  br i1 %.not22.i.i.i.i.i.3, label %.lr.ph.i.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.3:                               ; preds = %.lr.ph190.3
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.i.3, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.4

.lr.ph190.4:                                      ; preds = %.lr.ph.i.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.i.4 = add nuw nsw i64 %i.ku, 5 ; 3 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.4
  %i.lj = load i64, ptr %i.li, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.4 = icmp eq i64 %i.lj, 0
  br i1 %.not22.i.i.i.i.i.4, label %.lr.ph.i.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.4:                               ; preds = %.lr.ph190.4
  %exitcond.not.i.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.i.4, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.5

.lr.ph190.5:                                      ; preds = %.lr.ph.i.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.i.5 = add nuw nsw i64 %i.ku, 6 ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.5
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.5 = icmp eq i64 %i.ll, 0
  br i1 %.not22.i.i.i.i.i.5, label %.lr.ph.i.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.i.5:                               ; preds = %.lr.ph190.5
  %exitcond.not.i.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.i.5, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.lr.ph190.6

.lr.ph190.6:                                      ; preds = %.lr.ph.i.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.i.6 = add nuw nsw i64 %i.ku, 7 ; 2 uses
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i.6
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i.6 = icmp eq i64 %i.ln, 0
  br i1 %.not22.i.i.i.i.i.6, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.lr.ph190:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %i.ku, 1 ; 3 uses
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv.next.i.i.i.i.i
  %i.lp = load i64, ptr %i.lo, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.i = icmp eq i64 %i.lp, 0
  br i1 %.not22.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.critedge.loopexit.i.i.i.i.i, !llvm.loop !9

.critedge.loopexit.i.i.i.i.i:                     ; preds = %.lr.ph190.6, %.lr.ph190.5, %.lr.ph190.4, %.lr.ph190.3, %.lr.ph190.2, %.lr.ph190.1, %.lr.ph190
  %indvars.iv.next.i.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.lr.ph190 ], [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph190.1 ], [ %indvars.iv.next.i.i.i.i.i.2, %.lr.ph190.2 ], [ %indvars.iv.next.i.i.i.i.i.3, %.lr.ph190.3 ], [ %indvars.iv.next.i.i.i.i.i.4, %.lr.ph190.4 ], [ %indvars.iv.next.i.i.i.i.i.5, %.lr.ph190.5 ], [ %indvars.iv.next.i.i.i.i.i.6, %.lr.ph190.6 ]
  %.lcssa200 = phi i64 [ %i.lp, %.lr.ph190 ], [ %i.ld, %.lr.ph190.1 ], [ %i.lf, %.lr.ph190.2 ], [ %i.lh, %.lr.ph190.3 ], [ %i.lj, %.lr.ph190.4 ], [ %i.ll, %.lr.ph190.5 ], [ %i.ln, %.lr.ph190.6 ]
  %i.lq = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %.critedge.loopexit.i.i.i.i.i, %bb.ar
  %.016.lcssa.i.i.i.i.i = phi i32 [ %i.kr, %bb.ar ], [ %i.lq, %.critedge.loopexit.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i = phi i64 [ %i.lb, %bb.ar ], [ %.lcssa200, %.critedge.loopexit.i.i.i.i.i ]
  %i.lr = shl nuw nsw i32 %.016.lcssa.i.i.i.i.i, 6
  %i.ls = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i.i, i1 true)
  %i.lt = trunc nuw nsw i64 %i.ls to i32
  %i.lu = or disjoint i32 %i.lr, %i.lt
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i: ; preds = %.critedge.i.i.i.i.i, %bb.aq
  %.118.i.i.i.i.i = phi i32 [ %i.lu, %.critedge.i.i.i.i.i ], [ %i.kq, %bb.aq ] ; 2 uses
  %.not.i44 = icmp eq i32 %.118.i.i.i.i.i, 512
  br i1 %.not.i44, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, label %bb.an, !llvm.loop !22

_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit: ; preds = %bb.ap, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit.i, %.lr.ph.i.i.i.i.i.preheader, %.lr.ph190.6, %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.2, %.lr.ph.i.i.i.i.i.3, %.lr.ph.i.i.i.i.i.4, %.lr.ph.i.i.i.i.i.5, %_ZNK7openvdb5v13_04tree8LeafNodeIjLj3EE13cbeginValueOnEv.exit
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !860
  %.pre60.i = load ptr, ptr %.pre.i, align 8, !tbaa !606
  br label %bb.as

bb.as:                                            ; preds = %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit, %.lr.ph59.i
  %i.lv = phi ptr [ %i.hl, %.lr.ph59.i ], [ %.pre60.i, %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit ] ; 2 uses
  %i.lw = add nuw i64 %.03456.i, 1                ; 2 uses
  %i.lx = add nuw i64 %.057.i, 1
  %i.ly = getelementptr inbounds nuw [16 x i8], ptr %i.lv, i64 %.0117
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !863
  %i.mb = icmp ult i64 %i.lw, %i.ma
  br i1 %i.mb, label %.lr.ph59.i, label %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalNodeEmm.exit, !llvm.loop !23

_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalNodeEmm.exit: ; preds = %bb.as, %_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_.exit70, %._crit_edge.i, %bb.e, %bb.d, %.lr.ph119
  %i.mc = add nuw i64 %.0117, 1                   ; 2 uses
  %exitcond134.not = icmp eq i64 %i.mc, %i.ai
  br i1 %exitcond134.not, label %._crit_edge120, label %.lr.ph119, !llvm.loop !4665

bb.at:                                            ; preds = %._crit_edge120
  %i.md = load ptr, ptr %i.m, align 8, !tbaa !869, !nonnull !616, !align !617
  %i.me = load i64, ptr %i.l, align 8, !tbaa !612
  %i.mf = load ptr, ptr %i.md, align 8, !tbaa !870
  %i.mg = getelementptr inbounds nuw [12 x i8], ptr %i.mf, i64 %i.me ; 2 uses
  %i.mh = load ptr, ptr %0, align 8, !tbaa !615, !nonnull !616, !align !617
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !556
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %i.mi, i64 %.039122 ; 2 uses
  %i.mk = load <2 x float>, ptr %i.mg, align 4, !tbaa !558
  %i.ml = fpext <2 x float> %i.mk to <2 x double>
  store <2 x double> %i.ml, ptr %i.mj, align 8, !tbaa !701
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mg, i64 8
  %i.mn = load float, ptr %i.mm, align 4, !tbaa !558
  %i.mo = fpext float %i.mn to double
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store double %i.mo, ptr %i.mp, align 8, !tbaa !701
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge120
  %i.mq = add i64 %.039122, 1                     ; 2 uses
  %i.mr = load i64, ptr %1, align 8, !tbaa !619
  %.not = icmp eq i64 %i.mq, %i.mr
  br i1 %.not, label %._crit_edge125, label %bb.b, !llvm.loop !4666
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS6_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEE3runERKS4_RKSD_RSF_RNS1_18task_group_contextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(120) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(128) %3) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.tbb::detail::d1::small_object_allocator", align 8 ; 5 uses
  %5 = alloca %"struct.tbb::detail::d1::wait_node", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !620
  %i.c = load i64, ptr %0, align 8, !tbaa !619
  %.not = icmp ult i64 %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !824
  %i.d = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEm(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256) ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS6_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.d, align 64, !tbaa !523
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !825
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 88 ; 2 uses
  call void @_ZN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(120) %i.g, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 208 ; 2 uses
  store ptr null, ptr %i.h, align 16, !tbaa !872
  %i.i = invoke noundef i32 @_ZN3tbb6detail2r115max_concurrencyEPKNS0_2d115task_arena_baseE(ptr noundef null)
          to label %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS8_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEEJRKS6_RKSF_RSH_RS2_EEEPT_DpOT0_.exit unwind label %common.resume

common.resume:                                    ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.g) #21
  resume { ptr, i32 } %i.j

_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS8_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEEJRKS6_RKSF_RSH_RS2_EEEPT_DpOT0_.exit: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  store i32 0, ptr %i.m, align 32, !tbaa !836
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 228
  store i8 5, ptr %i.n, align 4, !tbaa !837
  %i.o = shl nsw i64 %i.l, 1
  %i.p = and i64 %i.o, 9223372036854775806
  store i64 %i.p, ptr %i.k, align 8, !tbaa !838
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  %i.r = load i64, ptr %4, align 8, !tbaa !839
  store i64 %i.r, ptr %i.q, align 8, !tbaa !839
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr null, ptr %5, align 8, !tbaa !815
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 1, ptr %i.s, align 8, !tbaa !816
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i64 1, ptr %i.t, align 8, !tbaa !820
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 1, ptr %i.u, align 8, !tbaa !821
  store ptr %5, ptr %i.h, align 16, !tbaa !872
  call void @_ZN3tbb6detail2r116execute_and_waitERNS0_2d14taskERNS2_18task_group_contextERNS2_12wait_contextES6_(ptr noundef nonnull align 64 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(128) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.c

bb.c:                                             ; preds = %_ZN3tbb6detail2d122small_object_allocator10new_objectINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS8_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEEJRKS6_RKSF_RSH_RS2_EEEPT_DpOT0_.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !552  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !551  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775804
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, !prof !662

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #29
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #30
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i ] ; 6 uses
  store ptr %i.k, ptr %i.a, align 8, !tbaa !551
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !552
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !604
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !4670 ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !4670
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 4
  br i1 %i.t, label %bb.d, label %bb.e, !prof !855

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.k, ptr align 4 %i.o, i64 %i.s, i1 false)
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.u = icmp eq i64 %i.s, 4
  br i1 %i.u, label %bb.f, label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load float, ptr %i.o, align 4, !tbaa !558
  store float %i.v, ptr %i.k, align 4, !tbaa !558
  br label %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit

_ZNSt6vectorIfSaIfEEC2ERKS1_.exit:                ; preds = %bb.d, %bb.e, %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !552
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !552 ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !551 ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  %.not.i.i.i.i6 = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i6, label %.noexc9, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.af = icmp ugt i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %.noexc.i.i8, label %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i7, !prof !662

.noexc.i.i8:                                      ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.noexc.i.i8
  unreachable

_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i7: ; preds = %bb.g
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #30
          to label %.noexc9 unwind label %bb.l

.noexc9:                                          ; preds = %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i7, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit
  %i.ah = phi ptr [ null, %_ZNSt6vectorIfSaIfEEC2ERKS1_.exit ], [ %i.ag, %_ZNSt15__new_allocatorIfE8allocateEmPKv.exit.i.i.i.i7 ] ; 6 uses
  store ptr %i.ah, ptr %i.x, align 8, !tbaa !551
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !552
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !604
  %i.al = load ptr, ptr %i.y, align 8, !tbaa !4670 ; 3 uses
  %i.am = load ptr, ptr %i.z, align 8, !tbaa !4670
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN3tbb6detail2d122dynamic_grainsize_modeINS1_13adaptive_modeINS1_19auto_partition_typeEEEE12work_balanceINS1_9start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINSC_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEESA_EEvRT_RT0_RNS1_14execution_dataE:bb.a
  %.pre26 = zext i8 %.pre24 to i64
  br label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

bb.h:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit
  %i.bh = add i8 %i.s, 1                          ; 2 uses
  store i8 %i.bh, ptr %i.h, align 4, !tbaa !837
  %i.bi = icmp ugt i8 %.pr, 1
  br i1 %i.bi, label %.noexc, label %bb.i

.noexc:                                           ; preds = %.thread, %bb.h
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !877
  %i.bk = zext i8 %i.bj to i64                    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !548
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr null, ptr %4, align 8, !tbaa !824
  %i.bn = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 256, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4676 ; 10 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.bk
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bp, i8 0, i64 56, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3tbb6detail2d19start_forINS1_13blocked_rangeImEEN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS6_4tree8LeafNodeIjLj3EEEEEKNS1_16auto_partitionerEEE, i64 16), ptr %i.bn, align 64, !tbaa !523
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa.struct !825
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 88
  call void @_ZN7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(120) %i.br, ptr noundef nonnull align 8 dereferenceable(120) %i.p), !inline_history !4676
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 208 ; 2 uses
  store ptr null, ptr %i.bs, align 16, !tbaa !872
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 216
  %i.bu = load i64, ptr %i.q, align 8, !tbaa !838
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.q, align 8, !tbaa !838
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !838
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 224
  store i32 2, ptr %i.bw, align 32, !tbaa !836
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 228
  %i.by = load i8, ptr %i.r, align 4, !tbaa !837
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 232
  %i.ca = load i64, ptr %4, align 8, !tbaa !839
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !839
  %i.cb = sub i8 %i.by, %i.bm
  store i8 %i.cb, ptr %i.bx, align 4, !tbaa !837
  %i.cc = call noundef ptr @_ZN3tbb6detail2r18allocateERPNS0_2d117small_object_poolEmRKNS2_14execution_dataE(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 32, ptr noundef nonnull align 8 dereferenceable(12) %3), !inline_history !4676 ; 6 uses
  %i.cd = load ptr, ptr %i.o, align 16, !tbaa !851
  store ptr %i.cd, ptr %i.cc, align 8, !tbaa !815
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 2, ptr %i.ce, align 8, !tbaa !816
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = load i64, ptr %4, align 8, !tbaa !839
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !839
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i8 0, ptr %i.ch, align 8, !tbaa !852
  store ptr %i.cc, ptr %i.o, align 16, !tbaa !872
  store ptr %i.cc, ptr %i.bs, align 16, !tbaa !872
  %i.ci = load ptr, ptr %3, align 8, !tbaa !854
  call void @_ZN3tbb6detail2r15spawnERNS0_2d14taskERNS2_18task_group_contextE(ptr noundef nonnull align 64 dereferenceable(240) %i.bn, ptr noundef nonnull align 8 dereferenceable(128) %i.ci), !inline_history !4676
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.cj = load i8, ptr %i.l, align 2, !tbaa !875
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.l, align 2, !tbaa !875
  %i.cl = load i8, ptr %i.k, align 1, !tbaa !877
  %i.cm = add i8 %i.cl, 1
  %i.cn = and i8 %i.cm, 7
  store i8 %i.cn, ptr %i.k, align 1, !tbaa !877
  br label %thread-pre-split23

bb.i:                                             ; preds = %bb.h
  %i.co = load i8, ptr %5, align 8, !tbaa !876
  %i.cp = zext i8 %i.co to i64                    ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !548
  %i.cs = icmp ult i8 %i.cr, %i.bh
  br i1 %i.cs, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit: ; preds = %bb.i
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.cp ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !621
  %i.cw = load i64, ptr %i.ct, align 8, !tbaa !619
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !620
  %i.cz = sub i64 %i.cw, %i.cy
  %i.da = icmp ult i64 %i.cv, %i.cz
  br i1 %i.da, label %thread-pre-split23, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread: ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge, %bb.i, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit
  %.pre-phi = phi i64 [ %.pre26, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE13split_to_fillEh.exit._ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread_crit_edge ], [ %i.cp, %bb.i ], [ %i.cp, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %.pre-phi
  call void @_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEEclERKN3tbb6detail2d113blocked_rangeImEE(ptr noundef nonnull align 8 dereferenceable(120) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.db)
  %i.dc = load i8, ptr %i.l, align 2, !tbaa !875
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.l, align 2, !tbaa !875
  %i.de = load i8, ptr %5, align 8, !tbaa !876
  %i.df = add i8 %i.de, 7
  %i.dg = and i8 %i.df, 7
  store i8 %i.dg, ptr %5, align 8, !tbaa !876
  br label %thread-pre-split23

thread-pre-split23:                               ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread, %.noexc
  %i.dh = phi i8 [ %i.ck, %.noexc ], [ %i.dd, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit.thread ], [ %.pr, %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EE12is_divisibleEh.exit ]
  %i.di = icmp eq i8 %i.dh, 0
  br i1 %i.di, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit

_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit: ; preds = %thread-pre-split23
  %i.dj = load ptr, ptr %3, align 8, !tbaa !854   ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 15
  %i.dl = load atomic i8, ptr %i.dk monotonic, align 1
  %i.dm = icmp eq i8 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %.0.i.i = select i1 %i.dm, ptr %i.do, ptr %i.dj
  %i.dp = call noundef zeroext i1 @_ZN3tbb6detail2r128is_group_execution_cancelledERNS0_2d118task_group_contextE(ptr noundef nonnull align 8 dereferenceable(128) %.0.i.i)
  br i1 %i.dp, label %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, label %thread-pre-split, !llvm.loop !4677

_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22: ; preds = %thread-pre-split23, %_ZN3tbb6detail2d118task_group_context28is_group_execution_cancelledEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.j

bb.j:                                             ; preds = %_ZN3tbb6detail2d112range_vectorINS1_13blocked_rangeImEELh8EED2Ev.exit22, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalNodeEmm(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !860, !nonnull !616, !align !617 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !605
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !606  ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 4
  %.not = icmp ult i64 %2, %i.i
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !615, !nonnull !616, !align !617
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !556
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %1 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %2 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !862  ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !863  ; 2 uses
  %i.r = icmp ult i64 %i.o, %i.q
  br i1 %i.r, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !858, !nonnull !616, !align !617
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !551
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %1
  %i.v = load float, ptr %i.u, align 4, !tbaa !558
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !551
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !864, !nonnull !616, !align !617
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !859
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ab = sub nuw i64 %i.q, %i.o
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c
  br i1 %.1, label %bb.d, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.03554 = phi i64 [ 0, %.lr.ph ], [ %i.aw, %bb.c ] ; 2 uses
  %.03653 = phi i64 [ %i.o, %.lr.ph ], [ %i.av, %bb.c ] ; 3 uses
  %.03752 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.c ]
  %.03851 = phi i64 [ 0, %.lr.ph ], [ %.139, %bb.c ]
  %.04050 = phi float [ %i.v, %.lr.ph ], [ %.141, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.03554
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %.03653 ; 4 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !701
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load double, ptr %i.af, align 8, !tbaa !701
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !701
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !701
  %.sroa.0.0.copyload = load double, ptr %i.l, align 8
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0.copyload = load double, ptr %.sroa.9.0..sroa_idx, align 8
  %i.al = fsub double %.sroa.0.0.copyload, %i.ae  ; 2 uses
  %i.am = fsub double %.sroa.6.0.copyload, %i.ag  ; 2 uses
  %i.an = fsub double %.sroa.9.0.copyload, %i.ai  ; 2 uses
  %i.ao = fmul double %i.am, %i.am
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.al, double %i.al, double %i.ao)
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.ap)
  %i.ar = fsub double %i.aq, %i.ak                ; 2 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  %.sroa.speculated = select i1 %i.as, double %i.ar, double 0.000000e+00
  %i.at = fptrunc double %.sroa.speculated to float ; 3 uses
  store float %i.at, ptr %i.ac, align 4, !tbaa !558
  %i.au = fcmp ogt float %.04050, %i.at           ; 3 uses
  %.141 = select i1 %i.au, float %i.at, float %.04050
  %.139 = select i1 %i.au, i64 %.03653, i64 %.03851 ; 3 uses
  %.1 = select i1 %i.au, i1 true, i1 %.03752      ; 2 uses
  %i.av = add nuw i64 %.03653, 1
  %i.aw = add nuw i64 %.03554, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.ab
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !21

bb.d:                                             ; preds = %._crit_edge
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !865, !nonnull !616, !align !617
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !866
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.139
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !868
  tail call void @_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %i.bb)
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !860, !nonnull !616, !align !617
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !606 ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %2 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !862 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !863
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.d, %bb.f
  %i.bj = phi ptr [ %i.bw, %bb.f ], [ %i.bd, %bb.d ]
  %.057 = phi i64 [ %i.by, %bb.f ], [ 0, %bb.d ]  ; 2 uses
  %.03456 = phi i64 [ %i.bx, %bb.f ], [ %i.bf, %bb.d ] ; 3 uses
  %i.bk = load ptr, ptr %i.w, align 8, !tbaa !551
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.057
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !558
  %i.bn = load ptr, ptr %i.m, align 8, !tbaa !858, !nonnull !616, !align !617
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !551
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %1
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !558
  %i.br = fcmp uge float %i.bm, %i.bq
  %.not44 = icmp eq i64 %.03456, %.139
  %or.cond = select i1 %i.br, i1 true, i1 %.not44
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph59
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !865, !nonnull !616, !align !617
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !866
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.03456
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !868
  tail call void @_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %i.bv)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !860
  %.pre60 = load ptr, ptr %.pre, align 8, !tbaa !606
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph59, %bb.e
  %i.bw = phi ptr [ %i.bj, %.lr.ph59 ], [ %.pre60, %bb.e ] ; 2 uses
  %i.bx = add nuw i64 %.03456, 1                  ; 2 uses
  %i.by = add nuw i64 %.057, 1
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !863
  %i.cc = icmp ult i64 %i.bx, %i.cb
  br i1 %i.cc, label %.lr.ph59, label %.loopexit, !llvm.loop !23

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.d, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7openvdb5v13_05tools12v2s_internal16ClosestPointDistINS0_4tree8LeafNodeIjLj3EEEE8evalLeafEmRKS6_(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %3 = alloca %"struct.openvdb::v13_0::tree::LeafNode<unsigned int, 3>::ValueIter", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !615, !nonnull !616, !align !617
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !556
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !701
  %i.e = fptrunc double %i.d to float
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !701
  %i.h = fptrunc <2 x double> %i.g to <2 x float> ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZNK7openvdb5v13_04tree8LeafNodeIjLj3EE13cbeginValueOnEv(ptr dead_on_unwind nonnull writable sret(%"struct.openvdb::v13_0::tree::LeafNode<unsigned int, 3>::ValueIter") align 8 %3, ptr noundef nonnull align 8 dereferenceable(96) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !712  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !724  ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !881
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not16 = icmp eq i32 %i.k, 512
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !869, !nonnull !616, !align !617
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !870
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !858, !nonnull !616, !align !617
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !551
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %1 ; 2 uses
  %.pre = load float, ptr %i.v, align 4, !tbaa !558
  %i.w = extractelement <2 x float> %i.h, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit
  %i.x = phi float [ %.pre, %.lr.ph ], [ %i.aj, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit ] ; 2 uses
  %.sroa.410.017 = phi i32 [ %i.k, %.lr.ph ], [ %.118.i.i.i.i, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit ] ; 2 uses
  %i.y = zext i32 %.sroa.410.017 to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !521
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload4.i = load <2 x float>, ptr %i.ac, align 4 ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.6.0.copyload.i = load float, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload4.i, i64 0
  %i.ad = fsub float %.sroa.0.0.vec.extract.i, %i.e ; 2 uses
  %shift = shufflevector <2 x float> %.sroa.0.0.copyload4.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.h ; 2 uses
  %i.ae = fsub float %.sroa.6.0.copyload.i, %i.w  ; 2 uses
  %foldExtExtBinop31 = fmul <2 x float> %foldExtExtBinop, %foldExtExtBinop
  %i.af = extractelement <2 x float> %foldExtExtBinop31, i64 0
  %i.ag = call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af)
  %i.ah = call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ag) ; 3 uses
  %i.ai = fcmp olt float %i.ah, %i.x
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store float %i.ah, ptr %i.v, align 4, !tbaa !558
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !699
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aj = phi float [ %i.ah, %bb.c ], [ %i.x, %bb.b ]
  %i.ak = add i32 %.sroa.410.017, 1               ; 4 uses
  %i.al = lshr i32 %i.ak, 6                       ; 3 uses
  %i.am = icmp ugt i32 %i.ak, 511
  br i1 %i.am, label %._crit_edge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = and i32 %i.ak, 63
  %i.ao = zext nneg i32 %i.al to i64              ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.ao
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !699 ; 2 uses
  %i.ar = zext nneg i32 %i.an to i64              ; 2 uses
  %i.as = shl nuw i64 1, %i.ar
  %i.at = and i64 %i.aq, %i.as
  %.not.i.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit

bb.f:                                             ; preds = %bb.e
  %i.au = shl nsw i64 -1, %i.ar
  %i.av = and i64 %i.aq, %i.au                    ; 2 uses
  %.not2226.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not2226.i.i.i.i, label %.lr.ph.i.i.i.i.preheader, label %.critedge.i.i.i.i

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %exitcond.not.i.i.i.i27 = icmp eq i32 %i.al, 7
  br i1 %exitcond.not.i.i.i.i27, label %._crit_edge, label %.lr.ph29

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph29
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.i, label %._crit_edge, label %.lr.ph29.1

.lr.ph29.1:                                       ; preds = %.lr.ph.i.i.i.i
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %i.ao, 2 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.1
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.1 = icmp eq i64 %i.ax, 0
  br i1 %.not22.i.i.i.i.1, label %.lr.ph.i.i.i.i.1, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.1:                                 ; preds = %.lr.ph29.1
  %exitcond.not.i.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.i.1, 7
  br i1 %exitcond.not.i.i.i.i.1, label %._crit_edge, label %.lr.ph29.2

.lr.ph29.2:                                       ; preds = %.lr.ph.i.i.i.i.1
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %i.ao, 3 ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.2
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.2 = icmp eq i64 %i.az, 0
  br i1 %.not22.i.i.i.i.2, label %.lr.ph.i.i.i.i.2, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.2:                                 ; preds = %.lr.ph29.2
  %exitcond.not.i.i.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.i.i.2, 7
  br i1 %exitcond.not.i.i.i.i.2, label %._crit_edge, label %.lr.ph29.3

.lr.ph29.3:                                       ; preds = %.lr.ph.i.i.i.i.2
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %i.ao, 4 ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.3
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.3 = icmp eq i64 %i.bb, 0
  br i1 %.not22.i.i.i.i.3, label %.lr.ph.i.i.i.i.3, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.3:                                 ; preds = %.lr.ph29.3
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, 7
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge, label %.lr.ph29.4

.lr.ph29.4:                                       ; preds = %.lr.ph.i.i.i.i.3
  %indvars.iv.next.i.i.i.i.4 = add nuw nsw i64 %i.ao, 5 ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.4
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.4 = icmp eq i64 %i.bd, 0
  br i1 %.not22.i.i.i.i.4, label %.lr.ph.i.i.i.i.4, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.4:                                 ; preds = %.lr.ph29.4
  %exitcond.not.i.i.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.i.i.4, 7
  br i1 %exitcond.not.i.i.i.i.4, label %._crit_edge, label %.lr.ph29.5

.lr.ph29.5:                                       ; preds = %.lr.ph.i.i.i.i.4
  %indvars.iv.next.i.i.i.i.5 = add nuw nsw i64 %i.ao, 6 ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.5
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.5 = icmp eq i64 %i.bf, 0
  br i1 %.not22.i.i.i.i.5, label %.lr.ph.i.i.i.i.5, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph.i.i.i.i.5:                                 ; preds = %.lr.ph29.5
  %exitcond.not.i.i.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.i.i.5, 7
  br i1 %exitcond.not.i.i.i.i.5, label %._crit_edge, label %.lr.ph29.6

.lr.ph29.6:                                       ; preds = %.lr.ph.i.i.i.i.5
  %indvars.iv.next.i.i.i.i.6 = add nuw nsw i64 %i.ao, 7 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i.6
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i.6 = icmp eq i64 %i.bh, 0
  br i1 %.not22.i.i.i.i.6, label %._crit_edge, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.lr.ph29:                                         ; preds = %.lr.ph.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %i.ao, 1 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.next.i.i.i.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !699 ; 2 uses
  %.not22.i.i.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %.critedge.loopexit.i.i.i.i, !llvm.loop !9

.critedge.loopexit.i.i.i.i:                       ; preds = %.lr.ph29.6, %.lr.ph29.5, %.lr.ph29.4, %.lr.ph29.3, %.lr.ph29.2, %.lr.ph29.1, %.lr.ph29
  %indvars.iv.next.i.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph29 ], [ %indvars.iv.next.i.i.i.i.1, %.lr.ph29.1 ], [ %indvars.iv.next.i.i.i.i.2, %.lr.ph29.2 ], [ %indvars.iv.next.i.i.i.i.3, %.lr.ph29.3 ], [ %indvars.iv.next.i.i.i.i.4, %.lr.ph29.4 ], [ %indvars.iv.next.i.i.i.i.5, %.lr.ph29.5 ], [ %indvars.iv.next.i.i.i.i.6, %.lr.ph29.6 ]
  %.lcssa = phi i64 [ %i.bj, %.lr.ph29 ], [ %i.ax, %.lr.ph29.1 ], [ %i.az, %.lr.ph29.2 ], [ %i.bb, %.lr.ph29.3 ], [ %i.bd, %.lr.ph29.4 ], [ %i.bf, %.lr.ph29.5 ], [ %i.bh, %.lr.ph29.6 ]
  %i.bk = trunc nuw nsw i64 %indvars.iv.next.i.i.i.i.lcssa to i32
  br label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %.critedge.loopexit.i.i.i.i, %bb.f
  %.016.lcssa.i.i.i.i = phi i32 [ %i.al, %bb.f ], [ %i.bk, %.critedge.loopexit.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi i64 [ %i.av, %bb.f ], [ %.lcssa, %.critedge.loopexit.i.i.i.i ]
  %i.bl = shl nuw nsw i32 %.016.lcssa.i.i.i.i, 6
  %i.bm = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.0.lcssa.i.i.i.i, i1 true)
  %i.bn = trunc nuw nsw i64 %i.bm to i32
  %i.bo = or disjoint i32 %i.bl, %i.bn
  br label %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit

_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit: ; preds = %bb.e, %.critedge.i.i.i.i
  %.118.i.i.i.i = phi i32 [ %i.bo, %.critedge.i.i.i.i ], [ %i.ak, %bb.e ] ; 2 uses
  %.not = icmp eq i32 %.118.i.i.i.i, 512
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !22

._crit_edge:                                      ; preds = %bb.d, %_ZN7openvdb5v13_04tree12IteratorBaseINS0_4util14OnMaskIteratorINS3_8NodeMaskILj3EEEEEKNS1_8LeafNodeIjLj3EEEEppEv.exit, %.lr.ph.i.i.i.i.preheader, %.lr.ph29.6, %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.1, %.lr.ph.i.i.i.i.2, %.lr.ph.i.i.i.i.3, %.lr.ph.i.i.i.i.4, %.lr.ph.i.i.i.i.5, %bb.a
  ret void
}

end_hunk_1
