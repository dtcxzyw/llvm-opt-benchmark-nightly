Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ocr_hmm_decoder?download=true
inline.NumInlined: 2610
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN2cv4text17OCRHMMDecoderImpl3runERNS_3MatES3_RNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorINS_5Rect_IiEESaISD_EEPSB_IS9_SaIS9_EEPSB_IfSaIfEEi:bb.a

bb.et:                                            ; preds = %._crit_edge1868
  %i.rg = ptrtoint ptr %.sroa.15876.1 to i64
  %i.rh = ptrtoint ptr %.sroa.0866.1 to i64       ; 2 uses
  %i.ri = sub i64 %i.rg, %i.rh                    ; 2 uses
  %i.rj = ashr exact i64 %i.ri, 4
  %i.rk = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.rj, i1 true)
  %i.rl = shl nuw nsw i64 %i.rk, 1
  %i.rm = xor i64 %i.rl, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_T1_(ptr %.sroa.0866.1, ptr nonnull %.sroa.15876.1, i64 noundef %i.rm, ptr nonnull @_ZN2cv4text15sort_rect_horizENS_5Rect_IiEES2_)
          to label %.noexc476 unwind label %bb.fr

.noexc476:                                        ; preds = %bb.et
  %i.rn = icmp sgt i64 %i.ri, 256
  %scevgep.i = getelementptr i8, ptr %.sroa.0866.1, i64 16 ; 2 uses
  br i1 %i.rn, label %.lr.ph.i.i, label %.preheader.i27.i

.lr.ph.i.i:                                       ; preds = %.noexc476, %bb.ey
  %.sroa.0.021.i.idx.i = phi i64 [ %.sroa.0.021.i.add.i, %bb.ey ], [ 16, %.noexc476 ] ; 4 uses
  %.pn20.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.ey ], [ %.sroa.0866.1, %.noexc476 ] ; 4 uses
  %.sroa.0.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.0866.1, i64 %.sroa.0.021.i.idx.i ; 5 uses
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.021.i.ptr.i, align 4 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %.sroa.0866.1, align 4
  %.sroa.01.0.extract.trunc.i779 = trunc i64 %.sroa.01.0.copyload.i.i.i to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i780 = trunc i64 %.sroa.0.0.copyload.i.i.i to i32
  %i.ro = icmp slt i32 %.sroa.01.0.extract.trunc.i779, %.sroa.0.0.extract.trunc.i780
  br i1 %i.ro, label %bb.eu, label %bb.ex

bb.eu:                                            ; preds = %.lr.ph.i.i
  %.sroa.0.0.copyload = load <4 x i32>, ptr %.sroa.0.021.i.ptr.i, align 4
  %i.rp = icmp samesign ugt i64 %.sroa.0.021.i.idx.i, 16
  br i1 %i.rp, label %bb.ev, label %bb.ew, !prof !175

bb.ev:                                            ; preds = %bb.eu
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0866.1, i64 %.sroa.0.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.ew:                                            ; preds = %bb.eu
  %i.rq = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.rq, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0866.1, i64 16, i1 false), !tbaa.struct !173
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.ew, %bb.ev
  store <4 x i32> %.sroa.0.0.copyload, ptr %.sroa.0866.1, align 4
  br label %bb.ey

bb.ex:                                            ; preds = %.lr.ph.i.i
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 24
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 4
  %.sroa.0.0.copyload.i12.i.i.i = load i64, ptr %.pn20.i.i, align 4
  %.sroa.0.0.extract.trunc.i778 = trunc i64 %.sroa.0.0.copyload.i12.i.i.i to i32
  %i.rr = icmp slt i32 %.sroa.01.0.extract.trunc.i779, %.sroa.0.0.extract.trunc.i778
  br i1 %i.rr, label %.lr.ph.i.i.i766, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i766:                                  ; preds = %bb.ex, %.lr.ph.i.i.i766
  %.sroa.0.016.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i766 ], [ %.pn20.i.i, %bb.ex ] ; 4 uses
  %.sroa.08.015.i.i.i = phi ptr [ %.sroa.0.016.i.i.i, %.lr.ph.i.i.i766 ], [ %.sroa.0.021.i.ptr.i, %bb.ex ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.015.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.016.i.i.i, i64 16, i1 false), !tbaa.struct !173
  %.sroa.0.0.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i, align 4
  %.sroa.0.0.extract.trunc.i776 = trunc i64 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.rs = icmp slt i32 %.sroa.01.0.extract.trunc.i779, %.sroa.0.0.extract.trunc.i776
  br i1 %i.rs, label %.lr.ph.i.i.i766, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i.i, !llvm.loop !11

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i766, %bb.ex
  %.sroa.08.0.lcssa.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i, %bb.ex ], [ %.sroa.0.016.i.i.i, %.lr.ph.i.i.i766 ] ; 2 uses
  store i64 %.sroa.01.0.copyload.i.i.i, ptr %.sroa.08.0.lcssa.i.i.i, align 4
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i.i, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 4
  br label %bb.ey

bb.ey:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  %.sroa.0.021.i.add.i = add nuw nsw i64 %.sroa.0.021.i.idx.i, 16 ; 2 uses
  %.not.i.i765 = icmp eq i64 %.sroa.0.021.i.add.i, 256
  br i1 %.not.i.i765, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !12

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i: ; preds = %bb.ey
  %i.rt = getelementptr inbounds nuw i8, ptr %.sroa.0866.1, i64 256 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.rt, %.sroa.15876.1
  br i1 %.not7.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit, label %.lr.ph.i10.i

.lr.ph.i10.i:                                     ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i
  %.sroa.0.08.i.i = phi ptr [ %i.rx, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i ], [ %i.rt, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i ] ; 7 uses
  %i.ru = load <2 x i64>, ptr %.sroa.0.08.i.i, align 4
  %.sroa.03.0.copyload.i.i11.i = load i64, ptr %.sroa.0.08.i.i, align 4
  %.sroa.0.011.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i12.i.i13.i = load i64, ptr %.sroa.0.011.i.i.i, align 4
  %.sroa.01.0.extract.trunc.i773 = trunc i64 %.sroa.03.0.copyload.i.i11.i to i32 ; 2 uses
  %.sroa.0.0.extract.trunc.i774 = trunc i64 %.sroa.0.0.copyload.i12.i.i13.i to i32
  %i.rv = icmp slt i32 %.sroa.01.0.extract.trunc.i773, %.sroa.0.0.extract.trunc.i774
  br i1 %i.rv, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i

.lr.ph.i.i20.i:                                   ; preds = %.lr.ph.i10.i, %.lr.ph.i.i20.i
  %.sroa.0.016.i.i21.i = phi ptr [ %.sroa.0.0.i.i23.i, %.lr.ph.i.i20.i ], [ %.sroa.0.011.i.i.i, %.lr.ph.i10.i ] ; 4 uses
  %.sroa.08.015.i.i22.i = phi ptr [ %.sroa.0.016.i.i21.i, %.lr.ph.i.i20.i ], [ %.sroa.0.08.i.i, %.lr.ph.i10.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.015.i.i22.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.016.i.i21.i, i64 16, i1 false), !tbaa.struct !173
  %.sroa.0.0.i.i23.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i21.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i24.i = load i64, ptr %.sroa.0.0.i.i23.i, align 4
  %.sroa.0.0.extract.trunc.i772 = trunc i64 %.sroa.0.0.copyload.i.i.i24.i to i32
  %i.rw = icmp slt i32 %.sroa.01.0.extract.trunc.i773, %.sroa.0.0.extract.trunc.i772
  br i1 %i.rw, label %.lr.ph.i.i20.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i, !llvm.loop !11

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i: ; preds = %.lr.ph.i.i20.i, %.lr.ph.i10.i
  %.sroa.08.0.lcssa.i.i17.i = phi ptr [ %.sroa.0.08.i.i, %.lr.ph.i10.i ], [ %.sroa.0.016.i.i21.i, %.lr.ph.i.i20.i ]
  store <2 x i64> %i.ru, ptr %.sroa.08.0.lcssa.i.i17.i, align 4
  %i.rx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 16
  %.not.i19.i = icmp eq ptr %.sroa.0.08.i.i, %.0.lcssa.i.i.i.i.i.i490.pn
  br i1 %.not.i19.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit, label %.lr.ph.i10.i, !llvm.loop !13

.preheader.i27.i:                                 ; preds = %.noexc476
  %.not19.i29.i = icmp eq ptr %.sroa.0866.1, %.0.lcssa.i.i.i.i.i.i490.pn
  br i1 %.not19.i29.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit, label %.lr.ph.i30.i

.lr.ph.i30.i:                                     ; preds = %.preheader.i27.i, %bb.fe
  %.sroa.0.021.i32.i = phi ptr [ %.sroa.0.0.i47.i, %bb.fe ], [ %scevgep.i, %.preheader.i27.i ] ; 8 uses
  %.pn20.i33.i = phi ptr [ %.sroa.0.021.i32.i, %bb.fe ], [ %.sroa.0866.1, %.preheader.i27.i ] ; 5 uses
  %.sroa.01.0.copyload.i.i34.i = load i64, ptr %.sroa.0.021.i32.i, align 4 ; 2 uses
  %.sroa.0.0.copyload.i.i37.i = load i64, ptr %.sroa.0866.1, align 4
  %.sroa.01.0.extract.trunc.i769 = trunc i64 %.sroa.01.0.copyload.i.i34.i to i32 ; 3 uses
  %.sroa.0.0.extract.trunc.i770 = trunc i64 %.sroa.0.0.copyload.i.i37.i to i32
  %i.ry = icmp slt i32 %.sroa.01.0.extract.trunc.i769, %.sroa.0.0.extract.trunc.i770
  br i1 %i.ry, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %.lr.ph.i30.i
  %.sroa.04231.0.copyload = load <4 x i32>, ptr %.sroa.0.021.i32.i, align 4
  %i.rz = ptrtoint ptr %.sroa.0.021.i32.i to i64
  %i.sa = sub i64 %i.rz, %i.rh                    ; 3 uses
  %i.sb = ashr exact i64 %i.sa, 4                 ; 2 uses
  %i.sc = icmp sgt i64 %i.sb, 1
  br i1 %i.sc, label %bb.fa, label %bb.fb, !prof !175

bb.fa:                                            ; preds = %bb.ez
  %i.sd = getelementptr inbounds nuw i8, ptr %.pn20.i33.i, i64 32
  %i.se = sub nsw i64 0, %i.sb
  %i.sf = getelementptr inbounds [16 x i8], ptr %i.sd, i64 %i.se
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.sf, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0866.1, i64 %i.sa, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i56.i

bb.fb:                                            ; preds = %bb.ez
  %i.sg = icmp eq i64 %i.sa, 16
  br i1 %i.sg, label %bb.fc, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i56.i

bb.fc:                                            ; preds = %bb.fb
  %i.sh = getelementptr inbounds nuw i8, ptr %.pn20.i33.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.sh, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0866.1, i64 16, i1 false), !tbaa.struct !173
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i56.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i56.i: ; preds = %bb.fc, %bb.fb, %bb.fa
  store <4 x i32> %.sroa.04231.0.copyload, ptr %.sroa.0866.1, align 4
  br label %bb.fe

bb.fd:                                            ; preds = %.lr.ph.i30.i
  %.sroa.22.0..sroa_idx.i.i35.i = getelementptr inbounds nuw i8, ptr %.pn20.i33.i, i64 24
  %.sroa.5.0.copyload.i.i40.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i35.i, align 4
  %.sroa.0.0.copyload.i12.i.i41.i = load i64, ptr %.pn20.i33.i, align 4
  %.sroa.0.0.extract.trunc.i768 = trunc i64 %.sroa.0.0.copyload.i12.i.i41.i to i32
  %i.si = icmp slt i32 %.sroa.01.0.extract.trunc.i769, %.sroa.0.0.extract.trunc.i768
  br i1 %i.si, label %.lr.ph.i.i49.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i44.i

.lr.ph.i.i49.i:                                   ; preds = %bb.fd, %.lr.ph.i.i49.i
  %.sroa.0.016.i.i50.i = phi ptr [ %.sroa.0.0.i.i52.i, %.lr.ph.i.i49.i ], [ %.pn20.i33.i, %bb.fd ] ; 4 uses
  %.sroa.08.015.i.i51.i = phi ptr [ %.sroa.0.016.i.i50.i, %.lr.ph.i.i49.i ], [ %.sroa.0.021.i32.i, %bb.fd ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.08.015.i.i51.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.0.016.i.i50.i, i64 16, i1 false), !tbaa.struct !173
  %.sroa.0.0.i.i52.i = getelementptr inbounds i8, ptr %.sroa.0.016.i.i50.i, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i.i.i53.i = load i64, ptr %.sroa.0.0.i.i52.i, align 4
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload.i.i.i53.i to i32
  %i.sj = icmp slt i32 %.sroa.01.0.extract.trunc.i769, %.sroa.0.0.extract.trunc.i
  br i1 %i.sj, label %.lr.ph.i.i49.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i44.i, !llvm.loop !11

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i44.i: ; preds = %.lr.ph.i.i49.i, %bb.fd
  %.sroa.08.0.lcssa.i.i45.i = phi ptr [ %.sroa.0.021.i32.i, %bb.fd ], [ %.sroa.0.016.i.i50.i, %.lr.ph.i.i49.i ] ; 2 uses
  store i64 %.sroa.01.0.copyload.i.i34.i, ptr %.sroa.08.0.lcssa.i.i45.i, align 4
  %.sroa.5.0..sroa_idx5.i.i46.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i45.i, i64 8
  store i64 %.sroa.5.0.copyload.i.i40.i, ptr %.sroa.5.0..sroa_idx5.i.i46.i, align 4
  br label %bb.fe

bb.fe:                                            ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i44.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i56.i
  %.sroa.0.0.i47.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i32.i, i64 16
  %.not.i48.i = icmp eq ptr %.sroa.0.021.i32.i, %.0.lcssa.i.i.i.i.i.i490.pn
  br i1 %.not.i48.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit, label %.lr.ph.i30.i, !llvm.loop !12

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit: ; preds = %bb.fe, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i, %bb.es, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i, %.preheader.i27.i, %._crit_edge1868
  %.sroa.26.0.lcssa2730 = phi ptr [ %.sroa.26.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i ], [ null, %bb.es ], [ %.sroa.26.1, %._crit_edge1868 ], [ %.sroa.26.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i ], [ %.sroa.26.1, %.preheader.i27.i ], [ %.sroa.26.1, %bb.fe ] ; 6 uses
  %.sroa.15876.0.lcssa2729 = phi ptr [ %.sroa.15876.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i ], [ null, %bb.es ], [ %.sroa.15876.1, %._crit_edge1868 ], [ %.sroa.15876.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i ], [ %.sroa.15876.1, %.preheader.i27.i ], [ %.sroa.15876.1, %bb.fe ] ; 2 uses
  %.sroa.0866.0.lcssa2719 = phi ptr [ %.sroa.0866.1, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_comp_iterIPFbS4_S4_EEEEvT_T0_.exit.i16.i ], [ null, %bb.es ], [ %.sroa.0866.1, %._crit_edge1868 ], [ %.sroa.0866.1, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIPFbS4_S4_EEEEvT_SF_T0_.exit.i ], [ %.sroa.0866.1, %.preheader.i27.i ], [ %.sroa.0866.1, %bb.fe ] ; 11 uses
  %i.sk = load ptr, ptr %i.cd, align 8, !tbaa !113
  %i.sl = load ptr, ptr %19, align 8, !tbaa !114
  %i.sm = ptrtoint ptr %i.sk to i64
  %i.sn = ptrtoint ptr %i.sl to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = sdiv exact i64 %i.so, 24
  %i.sq = trunc i64 %i.sp to i32
  %i.sr = icmp sgt i32 %i.sq, 0
  br i1 %i.sr, label %.lr.ph1876, label %._crit_edge1877

.lr.ph1876:                                       ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit
  %i.ss = ptrtoint ptr %.sroa.15876.0.lcssa2729 to i64
  %i.st = ptrtoint ptr %.sroa.0866.0.lcssa2719 to i64
  %i.su = sub i64 %i.ss, %i.st
  %i.sv = ashr exact i64 %i.su, 4                 ; 3 uses
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0962.8, i64 %indvars.iv2500 ; 2 uses
  %67 = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  %exitcond2448.not3686 = icmp eq ptr %.sroa.15876.0.lcssa2729, %.sroa.0866.0.lcssa2719
  br i1 %exitcond2448.not3686, label %.lr.ph1876._crit_edge, label %.lr.ph3691

bb.ff:                                            ; preds = %bb.er
  %i.sx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit718

.lr.ph1867:                                       ; preds = %bb.es, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495
  %indvars.iv2442 = phi i64 [ %indvars.iv.next2443, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495 ], [ 0, %bb.es ] ; 2 uses
  %i.sy = phi ptr [ %i.ua, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495 ], [ %i.qz, %bb.es ]
  %.sroa.26.01864 = phi ptr [ %.sroa.26.1, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495 ], [ null, %bb.es ] ; 6 uses
  %.sroa.15876.01863 = phi ptr [ %.sroa.15876.1, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495 ], [ null, %bb.es ] ; 4 uses
  %.sroa.0866.01862 = phi ptr [ %.sroa.0866.1, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495 ], [ null, %bb.es ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  %i.sz = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %indvars.iv2442 ; 3 uses
  store i32 0, ptr %i.nc, align 8, !tbaa !102
  store i32 0, ptr %i.nd, align 4, !tbaa !103
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !110
  %i.tc = load ptr, ptr %i.sz, align 8, !tbaa !111
  %i.td = ptrtoint ptr %i.tb to i64
  %i.te = ptrtoint ptr %i.tc to i64
  %i.tf = sub i64 %i.td, %i.te
  %i.tg = ashr exact i64 %i.tf, 3                 ; 2 uses
  %.not.i478 = icmp ugt i64 %i.tg, 2147483647
  br i1 %.not.i478, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.lr.ph1867
  invoke void @_ZN2cv6detail17check_failed_autoEmmRKNS0_12CheckContextE(i64 noundef %i.tg, i64 noundef 2147483647, ptr noundef nonnull align 8 dereferenceable(48) @_ZZN2cv11_InputArrayC1INS_6Point_IiEEEERKSt6vectorIT_SaIS5_EEE15__cv_check__174) #24
          to label %.noexc479 unwind label %bb.fn

.noexc479:                                        ; preds = %bb.fg
  unreachable

bb.fh:                                            ; preds = %.lr.ph1867
  store i32 -2130509788, ptr %53, align 8, !tbaa !104
  store ptr %i.sz, ptr %i.ne, align 8, !tbaa !59
  %i.th = invoke { i64, i64 } @_ZN2cv12boundingRectERKNS_11_InputArrayE(ptr noundef nonnull align 8 dereferenceable(24) %53)
          to label %bb.fi unwind label %.loopexit1043 ; 2 uses

bb.fi:                                            ; preds = %bb.fh
  %i.ti = extractvalue { i64, i64 } %i.th, 0      ; 2 uses
  %i.tj = extractvalue { i64, i64 } %i.th, 1      ; 2 uses
  %.not.i.i480 = icmp eq ptr %.sroa.15876.01863, %.sroa.26.01864
  br i1 %.not.i.i480, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  store i64 %i.ti, ptr %.sroa.15876.01863, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.15876.01863, i64 8
  store i64 %i.tj, ptr %.sroa.6.0..sroa_idx, align 4
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495

bb.fk:                                            ; preds = %bb.fi
  %i.tk = ptrtoint ptr %.sroa.26.01864 to i64
  %i.tl = ptrtoint ptr %.sroa.0866.01862 to i64
  %i.tm = sub i64 %i.tk, %i.tl                    ; 4 uses
  %i.tn = icmp eq i64 %i.tm, 9223372036854775792
  br i1 %i.tn, label %bb.fl, label %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i481

bb.fl:                                            ; preds = %bb.fk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc493 unwind label %.loopexit.split-lp1044

.noexc493:                                        ; preds = %bb.fl
  unreachable

_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i481: ; preds = %bb.fk
  %i.to = ashr exact i64 %i.tm, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i482 = call i64 @llvm.umax.i64(i64 %i.to, i64 1)
  %i.tp = add nsw i64 %.sroa.speculated.i.i.i.i482, %i.to ; 2 uses
  %i.tq = icmp ult i64 %i.tp, %i.to
  %i.tr = call i64 @llvm.umin.i64(i64 %i.tp, i64 576460752303423487)
  %i.ts = select i1 %i.tq, i64 576460752303423487, i64 %i.tr ; 3 uses
  %.not.i.i.i.i483 = icmp ne i64 %i.ts, 0
  call void @llvm.assume(i1 %.not.i.i.i.i483)
  %i.tt = shl nuw nsw i64 %i.ts, 4
  %i.tu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tt) #26
          to label %.noexc494 unwind label %.loopexit1043 ; 5 uses

.noexc494:                                        ; preds = %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i481
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 %i.tm ; 2 uses
  store i64 %i.ti, ptr %i.tv, align 4
  %.sroa.6.0..sroa_idx864 = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  store i64 %i.tj, ptr %.sroa.6.0..sroa_idx864, align 4
  %.not10.i.i.i.i.i.i484 = icmp eq ptr %.sroa.0866.01862, %.sroa.26.01864
  br i1 %.not10.i.i.i.i.i.i484, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i489, label %.lr.ph.i.i.i.i.i.i485

.lr.ph.i.i.i.i.i.i485:                            ; preds = %.noexc494, %.lr.ph.i.i.i.i.i.i485
  %.012.i.i.i.i.i.i486 = phi ptr [ %i.tx, %.lr.ph.i.i.i.i.i.i485 ], [ %i.tu, %.noexc494 ] ; 2 uses
  %.0911.i.i.i.i.i.i487 = phi ptr [ %i.tw, %.lr.ph.i.i.i.i.i.i485 ], [ %.sroa.0866.01862, %.noexc494 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i.i486, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i.i487, i64 16, i1 false), !tbaa.struct !173, !alias.scope !547
  %i.tw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i487, i64 16 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i486, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i488 = icmp eq ptr %i.tw, %.sroa.26.01864
  br i1 %.not.i.i.i.i.i.i488, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i489, label %.lr.ph.i.i.i.i.i.i485, !llvm.loop !10

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i489: ; preds = %.lr.ph.i.i.i.i.i.i485, %.noexc494
  %.0.lcssa.i.i.i.i.i.i490 = phi ptr [ %i.tu, %.noexc494 ], [ %i.tx, %.lr.ph.i.i.i.i.i.i485 ]
  %.not.i23.i.i.i491 = icmp eq ptr %.sroa.0866.01862, null
  br i1 %.not.i23.i.i.i491, label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492, label %bb.fm

bb.fm:                                            ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i489
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0866.01862, i64 noundef %i.tm) #25
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492: ; preds = %bb.fm, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i489
  %i.ty = getelementptr inbounds nuw [16 x i8], ptr %i.tu, i64 %i.ts
  br label %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495

_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE9push_backEOS2_.exit495: ; preds = %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492, %bb.fj
  %.sroa.0866.1 = phi ptr [ %i.tu, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492 ], [ %.sroa.0866.01862, %bb.fj ] ; 24 uses
  %.0.lcssa.i.i.i.i.i.i490.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i490, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492 ], [ %.sroa.15876.01863, %bb.fj ] ; 4 uses
  %.sroa.26.1 = phi ptr [ %i.ty, %_ZNSt6vectorIN2cv5Rect_IiEESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i492 ], [ %.sroa.26.01864, %bb.fj ] ; 7 uses
  %.sroa.15876.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i490.pn, i64 16 ; 10 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  %indvars.iv.next2443 = add nuw nsw i64 %indvars.iv2442, 1 ; 2 uses
  %i.tz = load ptr, ptr %i.cd, align 8, !tbaa !113
  %i.ua = load ptr, ptr %19, align 8, !tbaa !114  ; 2 uses
  %i.ub = ptrtoint ptr %i.tz to i64
  %i.uc = ptrtoint ptr %i.ua to i64
  %i.ud = sub i64 %i.ub, %i.uc
  %i.ue = sdiv exact i64 %i.ud, 24
  %sext2710 = shl i64 %i.ue, 32
  %i.uf = ashr exact i64 %sext2710, 32
  %i.ug = icmp slt i64 %indvars.iv.next2443, %i.uf
  br i1 %i.ug, label %.lr.ph1867, label %._crit_edge1868, !llvm.loop !503

bb.fn:                                            ; preds = %bb.fg
  %i.uh = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.loopexit1043:                                    ; preds = %bb.fh, %_ZNKSt6vectorIN2cv5Rect_IiEESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i481
  %lpad.loopexit1045 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

.loopexit.split-lp1044:                           ; preds = %bb.fl
  %lpad.loopexit.split-lp1046 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fo:                                            ; preds = %.loopexit1043, %.loopexit.split-lp1044, %bb.fn
  %.pn337 = phi { ptr, i32 } [ %i.uh, %bb.fn ], [ %lpad.loopexit1045, %.loopexit1043 ], [ %lpad.loopexit.split-lp1046, %.loopexit.split-lp1044 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #23
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit714

._crit_edge1877.loopexit:                         ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit541
  %i.ui = ptrtoint ptr %.sroa.14.1 to i64
  br label %._crit_edge1877

._crit_edge1877:                                  ; preds = %._crit_edge1877.loopexit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit
  %.sroa.0889.0.lcssa = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit ], [ %.sroa.0889.2, %._crit_edge1877.loopexit ] ; 10 uses
  %.sroa.14.0.lcssa = phi i64 [ 0, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit ], [ %i.ui, %._crit_edge1877.loopexit ]
  %.sroa.19.0.lcssa = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN2cv5Rect_IiEESt6vectorIS4_SaIS4_EEEEPFbS4_S4_EEvT_SC_T0_.exit ], [ %.sroa.19.2, %._crit_edge1877.loopexit ] ; 5 uses
  %i.uj = load i64, ptr %i.nx, align 8, !tbaa !41 ; 5 uses
  %i.uk = icmp ugt i64 %i.uj, 1152921504606846975
  br i1 %i.uk, label %bb.fp, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

bb.fp:                                            ; preds = %._crit_edge1877
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc497 unwind label %.loopexit.split-lp1049

.noexc497:                                        ; preds = %bb.fp
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge1877
  %.not.i.i.i.i496 = icmp eq i64 %i.uj, 0
  br i1 %.not.i.i.i.i496, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %bb.fq

bb.fq:                                            ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ul = shl nuw nsw i64 %i.uj, 3
  %i.um = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ul) #26
          to label %.noexc498 unwind label %.loopexit1048 ; 5 uses

.noexc498:                                        ; preds = %bb.fq
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.um, i64 %i.uj ; 2 uses
  store double 0.000000e+00, ptr %i.um, align 8, !tbaa !122
  %i.uo = add nsw i64 %i.uj, -1                   ; 2 uses
  %i.up = icmp eq i64 %i.uo, 0
  br i1 %i.up, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc498
  %i.uq = getelementptr i8, ptr %i.um, i64 8
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.uo, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.uq, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !122
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

bb.fr:                                            ; preds = %bb.et
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit714

bb.fs:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit541
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %54, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %55, i8 0, i64 24, i1 false)
  %exitcond2448.not = icmp eq i64 %indvars.iv.next2446, %i.sv
  br i1 %exitcond2448.not, label %.lr.ph1876._crit_edge, label %.lr.ph3691, !llvm.loop !504

.lr.ph1876._crit_edge:                            ; preds = %.lr.ph1876, %bb.fs
  %.sroa.19.01874.lcssa = phi ptr [ %.sroa.19.2, %bb.fs ], [ null, %.lr.ph1876 ]
  %.sroa.0889.01872.lcssa = phi ptr [ %.sroa.0889.2, %bb.fs ], [ null, %.lr.ph1876 ]
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.41, i64 noundef %i.sv, i64 noundef %i.sv) #24
          to label %.noexc500 unwind label %bb.gg

.noexc500:                                        ; preds = %.lr.ph1876._crit_edge
  unreachable

.lr.ph3691:                                       ; preds = %.lr.ph1876, %bb.fs
  %.sroa.0889.018723690 = phi ptr [ %.sroa.0889.2, %bb.fs ], [ null, %.lr.ph1876 ] ; 10 uses
  %.sroa.14.018733689 = phi ptr [ %.sroa.14.1, %bb.fs ], [ null, %.lr.ph1876 ] ; 4 uses
  %.sroa.19.018743688 = phi ptr [ %.sroa.19.2, %bb.fs ], [ null, %.lr.ph1876 ] ; 8 uses
  %indvars.iv24453687 = phi i64 [ %indvars.iv.next2446, %bb.fs ], [ 0, %.lr.ph1876 ] ; 2 uses
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0866.0.lcssa2719, i64 %indvars.iv24453687 ; 4 uses
  %68 = load i32, ptr %i.us, align 4, !tbaa !124
  %69 = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %70 = load i32, ptr %69, align 4, !tbaa !126    ; 2 uses
  %71 = sdiv i32 %70, 2
  %72 = add nsw i32 %71, %68
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %73 = load i32, ptr %i.ut, align 4, !tbaa !125
  %74 = getelementptr inbounds nuw i8, ptr %i.us, i64 12
  %75 = load i32, ptr %74, align 4, !tbaa !127    ; 2 uses
  %76 = sdiv i32 %75, 2
  %77 = add nsw i32 %76, %73
  %78 = load i32, ptr %i.sw, align 4, !tbaa !124
  %79 = add nsw i32 %72, %78
  %80 = load i32, ptr %67, align 4, !tbaa !125
  %81 = add nsw i32 %77, %80
  %i.uu = call i32 @llvm.smax.i32(i32 %70, i32 %75) ; 2 uses
  %i.uv = sitofp i32 %i.uu to double
  %i.uw = fmul nnan double %i.uv, 6.000000e-01
  %i.ux = fptosi double %i.uw to i32
  %i.uy = add nsw i32 %i.uu, %i.ux                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #23
  %.neg1930 = sdiv i32 %i.uy, -2                  ; 2 uses
  %i.uz = add i32 %79, %.neg1930                  ; 3 uses
  %i.va = add i32 %81, %.neg1930                  ; 3 uses
  %i.vb = load i32, ptr %i.v, align 4, !tbaa !107 ; 3 uses
  %i.vc = load i32, ptr %i.y, align 8, !tbaa !106 ; 3 uses
  %i.vd = icmp slt i32 %i.uy, 1
  br i1 %i.vd, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, label %bb.ft

bb.ft:                                            ; preds = %.lr.ph3691
  %i.ve = icmp slt i32 %i.vb, 1
  %i.vf = icmp slt i32 %i.vc, 1
  %i.vg = select i1 %i.ve, i1 true, i1 %i.vf
  br i1 %i.vg, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.vh = icmp slt i32 %i.uz, 0                   ; 3 uses
  %i.vi = call i32 @llvm.smin.i32(i32 %i.uz, i32 0) ; 2 uses
  %i.vj = call i32 @llvm.smax.i32(i32 %i.uz, i32 0) ; 3 uses
  %i.vk = add nsw i32 %i.vi, %i.uy
  %i.vl = icmp slt i32 %i.vk, %i.vj
  %or.cond = select i1 %i.vh, i1 %i.vl, i1 false
  br i1 %or.cond, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.vm = icmp slt i32 %i.va, 0
  br i1 %i.vm, label %bb.fw, label %._crit_edge.i

bb.fw:                                            ; preds = %bb.fv
  %i.vn = add nsw i32 %i.va, %i.uy                ; 2 uses
  %i.vo = icmp slt i32 %i.vn, 0
  br i1 %i.vo, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.fv, %bb.fw
  %.sroa.speculated = phi i32 [ %i.vc, %bb.fw ], [ %i.uy, %bb.fv ]
  %.neg49.pre-phi.i = phi i32 [ %i.vn, %bb.fw ], [ %i.vc, %bb.fv ]
  %i.vp = phi i32 [ 0, %bb.fw ], [ %i.va, %bb.fv ] ; 2 uses
  %.sroa.speculated844 = select i1 %i.vh, i32 %i.uy, i32 %i.vb
  %.neg.i = sub i32 %i.vi, %i.vj
  %i.vq = add i32 %.neg.i, %.sroa.speculated844
  %.sroa.speculated838 = select i1 %i.vh, i32 %i.vb, i32 %i.uy
  %.sroa.speculated53.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated838, i32 %i.vq) ; 2 uses
  store i32 %.sroa.speculated53.i, ptr %i.ng, align 4, !tbaa !126
  %i.vr = sub nsw i32 %.neg49.pre-phi.i, %i.vp
  %.sroa.speculated.i = call i32 @llvm.smin.i32(i32 %.sroa.speculated, i32 %i.vr) ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.nh, align 4, !tbaa !127
  store i32 %i.vj, ptr %56, align 4, !tbaa !124
  store i32 %i.vp, ptr %i.nf, align 4, !tbaa !125
  %i.vs = icmp slt i32 %.sroa.speculated53.i, 1
  %i.vt = icmp slt i32 %.sroa.speculated.i, 1
  %i.vu = select i1 %i.vs, i1 true, i1 %i.vt
  br i1 %i.vu, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split: ; preds = %._crit_edge.i, %bb.fw, %bb.fu, %.lr.ph3691, %bb.ft
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %56, i8 0, i64 16, i1 false)
  br label %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit

_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit:         ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit.sink.split, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %57) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %58, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 4 dereferenceable(16) %56)
          to label %bb.fx unwind label %bb.gh

bb.fx:                                            ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  store i64 0, ptr %i.nj, align 8
  store i32 33619968, ptr %59, align 8, !tbaa !104
  store ptr %57, ptr %i.ni, align 8, !tbaa !59
  invoke void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208) %58, ptr noundef nonnull align 8 dereferenceable(24) %59)
          to label %bb.fy unwind label %bb.gi

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  %i.vv = load ptr, ptr %i.nk, align 8, !tbaa !97 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  store i32 0, ptr %i.nl, align 8, !tbaa !102
  store i32 0, ptr %i.nm, align 4, !tbaa !103
  store i32 16842752, ptr %60, align 8, !tbaa !104
  store ptr %57, ptr %i.nn, align 8, !tbaa !59
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !61
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 16
  %i.vy = load ptr, ptr %i.vx, align 8
  invoke void %i.vy(ptr noundef nonnull align 8 dereferenceable(8) %i.vv, ptr noundef nonnull align 8 dereferenceable(24) %60, ptr noundef nonnull align 8 dereferenceable(24) %54, ptr noundef nonnull align 8 dereferenceable(24) %55)
          to label %bb.fz unwind label %bb.gk

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  %i.vz = load ptr, ptr %54, align 8, !tbaa !176  ; 3 uses
  %i.wa = load ptr, ptr %i.no, align 8, !tbaa !176
  %i.wb = icmp eq ptr %i.vz, %i.wa
  br i1 %i.wb, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit527, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %.not.i518 = icmp eq ptr %.sroa.14.018733689, %.sroa.19.018743688
  br i1 %.not.i518, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.wc = load i32, ptr %i.vz, align 4, !tbaa !93
  store i32 %i.wc, ptr %.sroa.14.018733689, align 4, !tbaa !93
  %i.wd = getelementptr inbounds nuw i8, ptr %.sroa.14.018733689, i64 4
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit527

bb.gc:                                            ; preds = %bb.ga
  %i.we = ptrtoint ptr %.sroa.19.018743688 to i64
  %i.wf = ptrtoint ptr %.sroa.0889.018723690 to i64
  %i.wg = sub i64 %i.we, %i.wf                    ; 6 uses
  %i.wh = icmp eq i64 %i.wg, 9223372036854775804
  br i1 %i.wh, label %bb.gd, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519

bb.gd:                                            ; preds = %bb.gc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.31) #24
          to label %.noexc525 unwind label %.loopexit.split-lp1036

.noexc525:                                        ; preds = %bb.gd
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519: ; preds = %bb.gc
  %i.wi = ashr exact i64 %i.wg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i520 = call i64 @llvm.umax.i64(i64 %i.wi, i64 1)
  %i.wj = add nsw i64 %.sroa.speculated.i.i.i520, %i.wi ; 2 uses
  %i.wk = icmp ult i64 %i.wj, %i.wi
  %i.wl = call i64 @llvm.umin.i64(i64 %i.wj, i64 2305843009213693951)
  %i.wm = select i1 %i.wk, i64 2305843009213693951, i64 %i.wl ; 3 uses
  %.not.i.i.i521 = icmp ne i64 %i.wm, 0
  call void @llvm.assume(i1 %.not.i.i.i521)
  %i.wn = shl nuw nsw i64 %i.wm, 2
  %i.wo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wn) #26
          to label %.noexc526 unwind label %.loopexit1035 ; 4 uses

.noexc526:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519
  %i.wp = getelementptr inbounds i8, ptr %i.wo, i64 %i.wg ; 2 uses
  %i.wq = load i32, ptr %i.vz, align 4, !tbaa !93
  store i32 %i.wq, ptr %i.wp, align 4, !tbaa !93
  %i.wr = icmp sgt i64 %i.wg, 0
  br i1 %i.wr, label %bb.ge, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i522

bb.ge:                                            ; preds = %.noexc526
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.wo, ptr align 4 %.sroa.0889.018723690, i64 %i.wg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i522

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i522: ; preds = %bb.ge, %.noexc526
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wp, i64 4
  %.not.i17.i.i523 = icmp eq ptr %.sroa.0889.018723690, null
  br i1 %.not.i17.i.i523, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524, label %bb.gf

bb.gf:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i522
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0889.018723690, i64 noundef %i.wg) #25
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524: ; preds = %bb.gf, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i522
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.wo, i64 %i.wm
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit527

bb.gg:                                            ; preds = %.lr.ph1876._crit_edge
  %i.wu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

bb.gh:                                            ; preds = %_ZN2cvaNIiEERNS_5Rect_IT_EES4_RKS3_.exit
  %i.wv = landingpad { ptr, i32 }
          cleanup
  br label %bb.gj

bb.gi:                                            ; preds = %bb.fx
  %i.ww = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %58) #23
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %.pn327.pn = phi { ptr, i32 } [ %i.ww, %bb.gi ], [ %i.wv, %bb.gh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #23
  br label %bb.gz

bb.gk:                                            ; preds = %bb.fy
  %i.wx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  br label %bb.gz

.loopexit1035:                                    ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i, %bb.gq, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i, %bb.gw
  %.sroa.0889.1.ph = phi ptr [ %.sroa.0889.018723690, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519 ], [ %.sroa.0889.2, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.0889.2, %bb.gq ], [ %.sroa.0889.2, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.0889.2, %bb.gw ]
  %.sroa.19.1.ph = phi ptr [ %.sroa.19.018743688, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i519 ], [ %.sroa.19.2, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.19.2, %bb.gq ], [ %.sroa.19.2, %_ZNSt15__new_allocatorIdE8allocateEmPKv.exit.i.i.i.i.i ], [ %.sroa.19.2, %bb.gw ]
  %lpad.loopexit1039 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

.loopexit.split-lp1036:                           ; preds = %.noexc.i.i.i.invoke, %bb.gd
  %.sroa.0889.1.ph1037 = phi ptr [ %.sroa.0889.2, %.noexc.i.i.i.invoke ], [ %.sroa.0889.018723690, %bb.gd ]
  %.sroa.19.1.ph1038 = phi ptr [ %.sroa.19.2, %.noexc.i.i.i.invoke ], [ %.sroa.19.018743688, %bb.gd ]
  %lpad.loopexit.split-lp1040 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gz

_ZNSt6vectorIiSaIiEE9push_backERKi.exit527:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524, %bb.gb, %bb.fz
  %.sroa.0889.2 = phi ptr [ %.sroa.0889.018723690, %bb.fz ], [ %i.wo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524 ], [ %.sroa.0889.018723690, %bb.gb ] ; 8 uses
  %.sroa.14.1 = phi ptr [ %.sroa.14.018733689, %bb.fz ], [ %i.ws, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524 ], [ %i.wd, %bb.gb ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.018743688, %bb.fz ], [ %i.wt, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i524 ], [ %.sroa.19.018743688, %bb.gb ] ; 8 uses
  %i.wy = load ptr, ptr %i.np, align 8, !tbaa !138 ; 6 uses
  %i.wz = load ptr, ptr %i.nq, align 8, !tbaa !137
end_hunk_0
