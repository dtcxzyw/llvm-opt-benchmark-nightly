Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/dssp?download=true
inline.NumInlined: 2059
inline.NumDeleted: 969
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a
  %index.next716 = add nuw i64 %index706, 16      ; 2 uses
  %i.btz = icmp eq i64 %index.next716, %n.vec704
  br i1 %i.btz, label %middle.block717, label %vector.body705, !llvm.loop !359

middle.block717:                                  ; preds = %vector.body705
  %bin.rdx718 = add <4 x i64> %i.btw, %i.btv
  %bin.rdx719 = add <4 x i64> %i.btx, %bin.rdx718
  %bin.rdx720 = add <4 x i64> %i.bty, %bin.rdx719
  %i.bua = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx720) ; 3 uses
  %cmp.n721 = icmp eq i64 %i.btg, %n.vec704
  br i1 %cmp.n721, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8, label %vec.epilog.iter.check727

vec.epilog.iter.check727:                         ; preds = %middle.block717
  %min.epilog.iters.check728 = icmp eq i64 %i.bti, 0
  br i1 %min.epilog.iters.check728, label %.lr.ph.i.i25.8.preheader, label %vec.epilog.ph729, !prof !142

vec.epilog.ph729:                                 ; preds = %vector.main.loop.iter.check701, %vec.epilog.iter.check727
  %vec.epilog.resume.val722 = phi i64 [ %n.vec704, %vec.epilog.iter.check727 ], [ 0, %vector.main.loop.iter.check701 ]
  %bc.merge.rdx723 = phi i64 [ %i.bua, %vec.epilog.iter.check727 ], [ 0, %vector.main.loop.iter.check701 ]
  %n.vec730 = and i64 %i.btg, -4                  ; 3 uses
  %i.bub = getelementptr i8, ptr %i.btf, i64 %n.vec730
  %i.buc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx723, i64 0
  br label %vec.epilog.vector.body731

vec.epilog.vector.body731:                        ; preds = %vec.epilog.vector.body731, %vec.epilog.ph729
  %index732 = phi i64 [ %vec.epilog.resume.val722, %vec.epilog.ph729 ], [ %index.next736, %vec.epilog.vector.body731 ] ; 2 uses
  %vec.phi733 = phi <4 x i64> [ %i.buc, %vec.epilog.ph729 ], [ %i.buf, %vec.epilog.vector.body731 ]
  %next.gep734 = getelementptr i8, ptr %i.btf, i64 %index732
  %wide.load735 = load <4 x i8>, ptr %next.gep734, align 1, !tbaa !75
  %i.bud = icmp eq <4 x i8> %wide.load735, splat (i8 66)
  %i.bue = zext <4 x i1> %i.bud to <4 x i64>
  %i.buf = add <4 x i64> %vec.phi733, %i.bue      ; 2 uses
  %index.next736 = add nuw i64 %index732, 4       ; 2 uses
  %i.bug = icmp eq i64 %index.next736, %n.vec730
  br i1 %i.bug, label %vec.epilog.middle.block737, label %vec.epilog.vector.body731, !llvm.loop !360

vec.epilog.middle.block737:                       ; preds = %vec.epilog.vector.body731
  %i.buh = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.buf) ; 2 uses
  %cmp.n738 = icmp eq i64 %i.btg, %n.vec730
  br i1 %cmp.n738, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8, label %.lr.ph.i.i25.8.preheader

.lr.ph.i.i25.8.preheader:                         ; preds = %iter.check725, %vec.epilog.iter.check727, %vec.epilog.middle.block737
  %.07.i.i.8.ph = phi i64 [ 0, %iter.check725 ], [ %i.bua, %vec.epilog.iter.check727 ], [ %i.buh, %vec.epilog.middle.block737 ]
  %.sroa.03.06.i.i.8.ph = phi ptr [ %i.btf, %iter.check725 ], [ %i.btj, %vec.epilog.iter.check727 ], [ %i.bub, %vec.epilog.middle.block737 ]
  br label %.lr.ph.i.i25.8

.lr.ph.i.i25.8:                                   ; preds = %.lr.ph.i.i25.8.preheader, %.lr.ph.i.i25.8
  %.07.i.i.8 = phi i64 [ %spec.select.i.i26.8, %.lr.ph.i.i25.8 ], [ %.07.i.i.8.ph, %.lr.ph.i.i25.8.preheader ]
  %.sroa.03.06.i.i.8 = phi ptr [ %i.bul, %.lr.ph.i.i25.8 ], [ %.sroa.03.06.i.i.8.ph, %.lr.ph.i.i25.8.preheader ] ; 2 uses
  %i.bui = load i8, ptr %.sroa.03.06.i.i.8, align 1, !tbaa !75
  %i.buj = icmp eq i8 %i.bui, 66
  %i.buk = zext i1 %i.buj to i64
  %spec.select.i.i26.8 = add nuw nsw i64 %.07.i.i.8, %i.buk ; 2 uses
  %i.bul = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.8, i64 1 ; 2 uses
  %.not.i.i27.8 = icmp eq ptr %i.bul, %i.bth
  br i1 %.not.i.i27.8, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8, label %.lr.ph.i.i25.8, !llvm.loop !361

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8: ; preds = %.lr.ph.i.i25.8, %vec.epilog.middle.block737, %middle.block717
  %spec.select.i.i26.8.lcssa = phi i64 [ %i.buh, %vec.epilog.middle.block737 ], [ %i.bua, %middle.block717 ], [ %spec.select.i.i26.8, %.lr.ph.i.i25.8 ]
  %i.bum = uitofp nneg i64 %spec.select.i.i26.8.lcssa to float
  br label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.8

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.8: ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.7
  %.0.lcssa.i.i.8 = phi float [ 0.000000e+00, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.7 ], [ %i.bum, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.8 ]
  call void @_ZN3gmx18AnalysisDataHandle8setPointEmfb(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 8, float noundef %.0.lcssa.i.i.8, i1 noundef zeroext true)
  %i.bun = load ptr, ptr %i.bip, align 8, !tbaa !80 ; 6 uses
  %i.buo = load i64, ptr %i.biq, align 8, !tbaa !74 ; 9 uses
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bun, i64 %i.buo
  %.not5.i.i.9 = icmp samesign eq i64 %i.buo, 0
  br i1 %.not5.i.i.9, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.9, label %iter.check766

iter.check766:                                    ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.8
  %min.iters.check741 = icmp ult i64 %i.buo, 4
  br i1 %min.iters.check741, label %.lr.ph.i.i25.9.preheader, label %vector.main.loop.iter.check742

vector.main.loop.iter.check742:                   ; preds = %iter.check766
  %min.iters.check743 = icmp ult i64 %i.buo, 16
  br i1 %min.iters.check743, label %vec.epilog.ph770, label %vector.ph744

vector.ph744:                                     ; preds = %vector.main.loop.iter.check742
  %i.buq = and i64 %i.buo, 12
  %n.vec745 = and i64 %i.buo, -16                 ; 4 uses
  %i.bur = getelementptr i8, ptr %i.bun, i64 %n.vec745
  br label %vector.body746

vector.body746:                                   ; preds = %vector.ph744, %vector.body746
  %index747 = phi i64 [ 0, %vector.ph744 ], [ %index.next757, %vector.body746 ] ; 2 uses
  %vec.phi748 = phi <4 x i64> [ zeroinitializer, %vector.ph744 ], [ %i.bvd, %vector.body746 ]
  %vec.phi749 = phi <4 x i64> [ zeroinitializer, %vector.ph744 ], [ %i.bve, %vector.body746 ]
  %vec.phi750 = phi <4 x i64> [ zeroinitializer, %vector.ph744 ], [ %i.bvf, %vector.body746 ]
  %vec.phi751 = phi <4 x i64> [ zeroinitializer, %vector.ph744 ], [ %i.bvg, %vector.body746 ]
  %next.gep752 = getelementptr i8, ptr %i.bun, i64 %index747 ; 4 uses
  %i.bus = getelementptr i8, ptr %next.gep752, i64 4
  %i.but = getelementptr i8, ptr %next.gep752, i64 8
  %i.buu = getelementptr i8, ptr %next.gep752, i64 12
  %wide.load753 = load <4 x i8>, ptr %next.gep752, align 1, !tbaa !75
  %wide.load754 = load <4 x i8>, ptr %i.bus, align 1, !tbaa !75
  %wide.load755 = load <4 x i8>, ptr %i.but, align 1, !tbaa !75
  %wide.load756 = load <4 x i8>, ptr %i.buu, align 1, !tbaa !75
  %i.buv = icmp eq <4 x i8> %wide.load753, splat (i8 72)
  %i.buw = icmp eq <4 x i8> %wide.load754, splat (i8 72)
  %i.bux = icmp eq <4 x i8> %wide.load755, splat (i8 72)
  %i.buy = icmp eq <4 x i8> %wide.load756, splat (i8 72)
  %i.buz = zext <4 x i1> %i.buv to <4 x i64>
  %i.bva = zext <4 x i1> %i.buw to <4 x i64>
  %i.bvb = zext <4 x i1> %i.bux to <4 x i64>
  %i.bvc = zext <4 x i1> %i.buy to <4 x i64>
  %i.bvd = add <4 x i64> %vec.phi748, %i.buz      ; 2 uses
  %i.bve = add <4 x i64> %vec.phi749, %i.bva      ; 2 uses
  %i.bvf = add <4 x i64> %vec.phi750, %i.bvb      ; 2 uses
  %i.bvg = add <4 x i64> %vec.phi751, %i.bvc      ; 2 uses
  %index.next757 = add nuw i64 %index747, 16      ; 2 uses
  %i.bvh = icmp eq i64 %index.next757, %n.vec745
  br i1 %i.bvh, label %middle.block758, label %vector.body746, !llvm.loop !362

middle.block758:                                  ; preds = %vector.body746
  %bin.rdx759 = add <4 x i64> %i.bve, %i.bvd
  %bin.rdx760 = add <4 x i64> %i.bvf, %bin.rdx759
  %bin.rdx761 = add <4 x i64> %i.bvg, %bin.rdx760
  %i.bvi = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx761) ; 3 uses
  %cmp.n762 = icmp eq i64 %i.buo, %n.vec745
  br i1 %cmp.n762, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9, label %vec.epilog.iter.check768

vec.epilog.iter.check768:                         ; preds = %middle.block758
  %min.epilog.iters.check769 = icmp eq i64 %i.buq, 0
  br i1 %min.epilog.iters.check769, label %.lr.ph.i.i25.9.preheader, label %vec.epilog.ph770, !prof !142

vec.epilog.ph770:                                 ; preds = %vector.main.loop.iter.check742, %vec.epilog.iter.check768
  %vec.epilog.resume.val763 = phi i64 [ %n.vec745, %vec.epilog.iter.check768 ], [ 0, %vector.main.loop.iter.check742 ]
  %bc.merge.rdx764 = phi i64 [ %i.bvi, %vec.epilog.iter.check768 ], [ 0, %vector.main.loop.iter.check742 ]
  %n.vec771 = and i64 %i.buo, -4                  ; 3 uses
  %i.bvj = getelementptr i8, ptr %i.bun, i64 %n.vec771
  %i.bvk = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx764, i64 0
  br label %vec.epilog.vector.body772

vec.epilog.vector.body772:                        ; preds = %vec.epilog.vector.body772, %vec.epilog.ph770
  %index773 = phi i64 [ %vec.epilog.resume.val763, %vec.epilog.ph770 ], [ %index.next777, %vec.epilog.vector.body772 ] ; 2 uses
  %vec.phi774 = phi <4 x i64> [ %i.bvk, %vec.epilog.ph770 ], [ %i.bvn, %vec.epilog.vector.body772 ]
  %next.gep775 = getelementptr i8, ptr %i.bun, i64 %index773
  %wide.load776 = load <4 x i8>, ptr %next.gep775, align 1, !tbaa !75
  %i.bvl = icmp eq <4 x i8> %wide.load776, splat (i8 72)
  %i.bvm = zext <4 x i1> %i.bvl to <4 x i64>
  %i.bvn = add <4 x i64> %vec.phi774, %i.bvm      ; 2 uses
  %index.next777 = add nuw i64 %index773, 4       ; 2 uses
  %i.bvo = icmp eq i64 %index.next777, %n.vec771
  br i1 %i.bvo, label %vec.epilog.middle.block778, label %vec.epilog.vector.body772, !llvm.loop !363

vec.epilog.middle.block778:                       ; preds = %vec.epilog.vector.body772
  %i.bvp = call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bvn) ; 2 uses
  %cmp.n779 = icmp eq i64 %i.buo, %n.vec771
  br i1 %cmp.n779, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9, label %.lr.ph.i.i25.9.preheader

.lr.ph.i.i25.9.preheader:                         ; preds = %iter.check766, %vec.epilog.iter.check768, %vec.epilog.middle.block778
  %.07.i.i.9.ph = phi i64 [ 0, %iter.check766 ], [ %i.bvi, %vec.epilog.iter.check768 ], [ %i.bvp, %vec.epilog.middle.block778 ]
  %.sroa.03.06.i.i.9.ph = phi ptr [ %i.bun, %iter.check766 ], [ %i.bur, %vec.epilog.iter.check768 ], [ %i.bvj, %vec.epilog.middle.block778 ]
  br label %.lr.ph.i.i25.9

.lr.ph.i.i25.9:                                   ; preds = %.lr.ph.i.i25.9.preheader, %.lr.ph.i.i25.9
  %.07.i.i.9 = phi i64 [ %spec.select.i.i26.9, %.lr.ph.i.i25.9 ], [ %.07.i.i.9.ph, %.lr.ph.i.i25.9.preheader ]
  %.sroa.03.06.i.i.9 = phi ptr [ %i.bvt, %.lr.ph.i.i25.9 ], [ %.sroa.03.06.i.i.9.ph, %.lr.ph.i.i25.9.preheader ] ; 2 uses
  %i.bvq = load i8, ptr %.sroa.03.06.i.i.9, align 1, !tbaa !75
  %i.bvr = icmp eq i8 %i.bvq, 72
  %i.bvs = zext i1 %i.bvr to i64
  %spec.select.i.i26.9 = add nuw nsw i64 %.07.i.i.9, %i.bvs ; 2 uses
  %i.bvt = getelementptr inbounds nuw i8, ptr %.sroa.03.06.i.i.9, i64 1 ; 2 uses
  %.not.i.i27.9 = icmp eq ptr %i.bvt, %i.bup
  br i1 %.not.i.i27.9, label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9, label %.lr.ph.i.i25.9, !llvm.loop !364

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9: ; preds = %.lr.ph.i.i25.9, %vec.epilog.middle.block778, %middle.block758
  %spec.select.i.i26.9.lcssa = phi i64 [ %i.bvp, %vec.epilog.middle.block778 ], [ %i.bvi, %middle.block758 ], [ %spec.select.i.i26.9, %.lr.ph.i.i25.9 ]
  %i.bvu = uitofp nneg i64 %spec.select.i.i26.9.lcssa to float
  br label %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.9

_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.9: ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.8
  %.0.lcssa.i.i.9 = phi float [ 0.000000e+00, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.8 ], [ %i.bvu, %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.loopexit.9 ]
  call void @_ZN3gmx18AnalysisDataHandle8setPointEmfb(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 9, float noundef %.0.lcssa.i.i.9, i1 noundef zeroext true)
  call void @_ZN3gmx18AnalysisDataHandle11finishFrameEv(ptr noundef nonnull align 8 dereferenceable(8) %14)
  br label %bb.jm

bb.jm:                                            ; preds = %_ZSt5countIN9__gnu_cxx17__normal_iteratorIPKcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEcENSt15iterator_traitsIT_E15difference_typeESC_SC_RKT0_.exit.9, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  ret void
}

declare void @_ZN3gmx24TrajectoryAnalysisModule12finishFramesEPNS_28TrajectoryAnalysisModuleDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp14finishAnalysisEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !395
  tail call void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.a, ptr noundef nonnull @.str.75)
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !395
  tail call void @_Z11please_citeP8_IO_FILEPKc(ptr noundef %i.b, ptr noundef nonnull @.str.76)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_14Dssp11writeOutputEv(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::vector.18", align 8    ; 8 uses
  %2 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZNSt10filesystem7__cxx114pathC2INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 noundef zeroext 2)
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_Z10gmx_ffopenRKNSt10filesystem7__cxx114pathEPKc(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull @.str.77)
          to label %bb.c unwind label %bb.r       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !163  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.e) #28
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.d, %bb.c
  %i.f = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.i = load i64, ptr %i.g, align 8, !tbaa !75
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val30.i = load ptr, ptr %i.k, align 8, !tbaa !82 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val31.i = load ptr, ptr %i.l, align 8, !tbaa !83 ; 4 uses
  %i.m = ptrtoint ptr %.val31.i to i64
  %i.n = ptrtoint ptr %.val30.i to i64
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.not52 = icmp eq ptr %.val31.i, %.val30.i
  br i1 %.not52, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit
  %i.q = sdiv exact i64 %i.o, 40
  %i.r = icmp ugt i64 %i.q, 230584300921369395
  br i1 %i.r, label %bb.f, label %.lr.ph.i.i.i.i.i.preheader.i, !prof !152

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #30
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.f
  unreachable

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %bb.e
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27
          to label %.lr.ph.i.i.i.i.i.i unwind label %bb.t ; 6 uses

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.i
  %.014.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.i ], [ %i.s, %.lr.ph.i.i.i.i.i.preheader.i ] ; 6 uses
  %.sroa.010.013.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %.val30.i, %.lr.ph.i.i.i.i.i.preheader.i ] ; 4 uses
  %i.t = load i32, ptr %.sroa.010.013.i.i.i.i.i.i, align 8, !tbaa !161
  store i32 %i.t, ptr %.014.i.i.i.i.i.i, align 8, !tbaa !161
  %i.u = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i.i, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 24 ; 3 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !73
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !80   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !74   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 %i.z, ptr %i.a, align 8, !tbaa !81
  %i.aa = icmp ugt i64 %i.z, 15
  br i1 %i.aa, label %.noexc.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ab = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i.i.i.i.i unwind label %bb.j ; 2 uses

.noexc.i.i.i.i.i.i:                               ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !80
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.ac, ptr %i.w, align 8, !tbaa !75
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ad = phi ptr [ %i.ab, %.noexc.i.i.i.i.i.i ], [ %i.w, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  switch i64 %i.z, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %bb.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !75
  store i8 %i.ae, ptr %i.ad, align 1, !tbaa !75
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %i.x, i64 %i.z, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 16
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !74
  %i.ah = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  store i8 0, ptr %i.ai, align 1, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i.i = icmp eq ptr %i.aj, %.val31.i
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !396

bb.j:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  %i.an = call ptr @__cxa_begin_catch(ptr %i.am) #28 ; 0 uses
  call fastcc void @_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvT_S5_(ptr noundef nonnull %i.s, ptr noundef nonnull %.014.i.i.i.i.i.i)
  invoke void @__cxa_rethrow() #30
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #31
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable

_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i.i: ; preds = %bb.k
  %i.ar = extractvalue { ptr, i32 } %i.ao, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %i.ar) #28 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.o) #29
  invoke void @__cxa_rethrow() #30
          to label %bb.p unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #31
  unreachable

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i.i
  unreachable

_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i: ; preds = %bb.i
  store ptr %i.s, ptr %1, align 8, !tbaa !82
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.o ; 2 uses
  store ptr %i.aw, ptr %i.p, align 8, !tbaa !85
  %i.ax = ptrtoint ptr %i.aw to i64
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNSt10filesystem7__cxx114pathD2Ev.exit, %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i
  %.val1.i = phi i64 [ %i.ax, %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ 0, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ]
  %i.ay = phi ptr [ %i.s, %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EE13_M_deallocateEPS3_m.exit.i ], [ null, %_ZNSt10filesystem7__cxx114pathD2Ev.exit ] ; 6 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.o ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %3, ptr %4, align 8, !tbaa !83
  %.not30 = icmp eq ptr %.val31.i, %.val30.i      ; 2 uses
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %5 = invoke noundef i32 @_Z11gmx_ffcloseP8_IO_FILE(ptr noundef %i.c)
          to label %bb.u unwind label %bb.t       ; 0 uses

bb.q:                                             ; preds = %bb.a
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ba, %bb.r ], [ %i.az, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %.body

bb.t:                                             ; preds = %.lr.ph.i.i.i.i.i.preheader.i, %bb.f, %._crit_edge
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.loopexit, %.lr.ph
  %.sroa.026.031 = phi ptr [ %i.bf, %.lr.ph ], [ %i.ay, %.loopexit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.026.031, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !80
  %i.be = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.78, ptr noundef %i.bd) #28 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.026.031, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bf, %3
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %._crit_edge
  br i1 %.not30, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i20

.lr.ph.i.i.i20:                                   ; preds = %bb.u, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23
  %.05.i.i.i21 = phi ptr [ %i.bm, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23 ], [ %i.ay, %bb.u ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !80 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 24 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22: ; preds = %.lr.ph.i.i.i20
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !75
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #29
  br label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23

_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23: ; preds = %.lr.ph.i.i.i20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i22
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i21, i64 40 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.bm, %3
  br i1 %.not.i.i.i24, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i20, !llvm.loop !0

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i.i23, %bb.u
  %.not.i.i2.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit.i
  %i.bn = ptrtoint ptr %i.ay to i64
  %i.bo = sub i64 %.val1.i, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef %i.bo) #29
  br label %_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit

_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

.body:                                            ; preds = %bb.t, %bb.n, %bb.s
  %.pn10 = phi { ptr, i32 } [ %.pn, %bb.s ], [ %i.bb, %bb.t ], [ %i.at, %bb.n ]
  call fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn10
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNSt6vectorIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !82     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !75
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #29
  br label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i

_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i.i
  %.val.pr = load ptr, ptr %0, align 8, !tbaa !82
  br label %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %.val = phi ptr [ %.val.pr, %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %.val, null
  br i1 %.not.i.i2, label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.k, align 8, !tbaa !85
  %i.l = ptrtoint ptr %.val1 to i64
  %i.m = ptrtoint ptr %.val to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.n) #29
  br label %_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZSt8_DestroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvT_S5_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.e = load i64, ptr %i.c, align 8, !tbaa !75
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #29
  br label %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i

_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 40 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN3gmx15analysismodules12_GLOBAL__N_116DsspStorageFrameEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx14AbstractOptionD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN3gmx26TrajectoryAnalysisSettings11setHelpTextERKNS_8ArrayRefIKPKcEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEED0Ev(ptr noundef nonnull align 8 dereferenceable(100) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 104) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZNK3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE13createStorageERKNS_22OptionManagerContainerE(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr nofree nonnull readnone align 1 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.66", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load i32, ptr %i.c, align 8, !tbaa !106
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.e, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %.val, align 8, !tbaa !75
  %i.g = trunc i64 %i.f to i32
  br label %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit

_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ -1, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.i, align 8, !tbaa !399 ; 2 uses
  %.not.i7 = icmp eq ptr %.val2, null
  br i1 %.not.i7, label %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit8, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit
  %i.j = load i64, ptr %.val2, align 8, !tbaa !75
  %i.k = trunc i64 %i.j to i32
  br label %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit8

_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit8: ; preds = %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit, %bb.c
  %i.l = phi i32 [ %i.k, %bb.c ], [ -1, %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3 = load ptr, ptr %i.m, align 8, !tbaa !100 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4 = load ptr, ptr %i.n, align 8, !tbaa !400 ; 4 uses
  %i.o = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27, !noalias !401 ; 11 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx8internal14EnumIndexStoreINS_15analysismodules12_GLOBAL__N_112HydrogenModeEEE, i64 16), ptr %i.o, align 8, !tbaa !14, !noalias !401
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false), !noalias !401
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %.val3, ptr %i.q, align 8, !tbaa !170, !noalias !401
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store ptr %.val4, ptr %i.r, align 8, !tbaa !171, !noalias !401
  %.not.i.i = icmp eq ptr %.val4, null
  br i1 %.not.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx10EnumOptionINS_15analysismodules12_GLOBAL__N_112HydrogenModeEE12convertToIntEPKS3_.exit8
  %.val.i.i = load ptr, ptr %.val4, align 8, !tbaa !172, !noalias !401 ; 2 uses
  %i.s = getelementptr i8, ptr %.val4, i64 8
  %.val11.i.i = load ptr, ptr %i.s, align 8, !tbaa !172, !noalias !401 ; 2 uses
  %.not3031.i.i = icmp eq ptr %.val.i.i, %.val11.i.i
  br i1 %.not3031.i.i, label %_ZSt11make_uniqueIN3gmx8internal14EnumIndexStoreINS0_15analysismodules12_GLOBAL__N_112HydrogenModeEEEJPS5_PSt6vectorIS5_SaIS5_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i, %.lr.ph.i.i
  %i.v = phi ptr [ null, %.lr.ph.i.i ], [ %i.at, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ] ; 5 uses
  %i.w = phi ptr [ null, %.lr.ph.i.i ], [ %i.au, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ] ; 3 uses
  %i.x = phi ptr [ null, %.lr.ph.i.i ], [ %i.av, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ] ; 3 uses
  %.sroa.029.032.i.i = phi ptr [ %.val.i.i, %.lr.ph.i.i ], [ %i.aw, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i ] ; 2 uses
  %i.y = load i64, ptr %.sroa.029.032.i.i, align 8, !tbaa !75, !noalias !401
  %i.z = trunc i64 %i.y to i32                    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

end_hunk_0
