Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfTileOffsets?download=true
inline.NumInlined: 552
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK7Imf_3_411TileOffsets12getTileOrderEPiS1_S1_S1_:bb.a
  %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i11.i.i.i, i64 16, i1 false), !tbaa.struct !114
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i.i.i, i64 -24 ; 2 uses
  %.val2.i10.i.i12.i.i.i = load i64, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !50
  %i.dn = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i10.i.i12.i.i.i
  br i1 %i.dn, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i

.lr.ph.i.i17.i.i.i:                               ; preds = %.lr.ph.i10.i.i.i, %.lr.ph.i.i17.i.i.i
  %.sroa.0.012.i.i18.i.i.i = phi ptr [ %.sroa.0.0.i.i20.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i10.i.i.i ] ; 4 uses
  %.sroa.08.011.i.i19.i.i.i = phi ptr [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ], [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i18.i.i.i, i64 24, i1 false), !tbaa.struct !48
  %.sroa.0.0.i.i20.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i18.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i21.i.i.i = load i64, ptr %.sroa.0.0.i.i20.i.i.i, align 8, !tbaa !50
  %i.do = icmp ult i64 %.sroa.06.0.copyload.i.i.i.i.i, %.val2.i.i.i21.i.i.i
  br i1 %i.do, label %.lr.ph.i.i17.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i: ; preds = %.lr.ph.i.i17.i.i.i, %.lr.ph.i10.i.i.i
  %.sroa.08.0.lcssa.i.i14.i.i.i = phi ptr [ %.sroa.0.05.i.i.i.i, %.lr.ph.i10.i.i.i ], [ %.sroa.0.012.i.i18.i.i.i, %.lr.ph.i.i17.i.i.i ] ; 2 uses
  store i64 %.sroa.06.0.copyload.i.i.i.i.i, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, align 8, !tbaa !38
  %.sroa.5.0..val.sroa_idx.i.i15.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i14.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i15.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i9.i.i.i, i64 16, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i9.i.i.i)
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i16.i.i.i = icmp eq ptr %i.dp, %.0.i.i.i.i.i
  br i1 %.not.i16.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i10.i.i.i, !llvm.loop !100

bb.i:                                             ; preds = %bb.c
  %.not17.i25.i.i.i = icmp eq ptr %scevgep.i.i.i, %.0.i.i.i.i.i
  br i1 %.not17.i25.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i

.lr.ph.i26.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.019.i27.i.i.i = phi ptr [ %.sroa.0.0.i36.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 7 uses
  %.pn18.i28.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.o ], [ %.sroa.0107.0, %bb.i ] ; 5 uses
  %.val2.i.i29.i.i.i = load i64, ptr %.sroa.0.019.i27.i.i.i, align 8, !tbaa !50 ; 4 uses
  %.val3.i.i30.i.i.i = load i64, ptr %.sroa.0107.0, align 8, !tbaa !50
  %i.dq = icmp ult i64 %.val2.i.i29.i.i.i, %.val3.i.i30.i.i.i
  br i1 %i.dq, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.019.i27.i.i.i, i64 24, i1 false), !tbaa.struct !48
  %i.dr = ptrtoint ptr %.sroa.0.019.i27.i.i.i to i64
  %i.ds = sub i64 %i.dr, %i.da                    ; 4 uses
  %i.dt = icmp sgt i64 %i.ds, 24
  br i1 %i.dt, label %bb.k, label %bb.l, !prof !113

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 48
  %.neg23.i44.i.i.i = udiv exact i64 %i.ds, 24
  %.neg23.neg.i45.i.i.i = sub nsw i64 0, %.neg23.i44.i.i.i
  %i.dv = getelementptr inbounds [24 x i8], ptr %i.du, i64 %.neg23.neg.i45.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dv, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0107.0, i64 %i.ds, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.dw = icmp eq i64 %i.ds, 24
  br i1 %i.dw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dx = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0107.0, i64 24, i1 false), !tbaa.struct !48
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0107.0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !48
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i26.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i = getelementptr inbounds nuw i8, ptr %.pn18.i28.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val3.sroa_idx.i.i31.i.i.i, i64 16, i1 false), !tbaa.struct !114
  %.val2.i10.i.i32.i.i.i = load i64, ptr %.pn18.i28.i.i.i, align 8, !tbaa !50
  %i.dy = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i10.i.i32.i.i.i
  br i1 %i.dy, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i

.lr.ph.i.i38.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i38.i.i.i
  %.sroa.0.012.i.i39.i.i.i = phi ptr [ %.sroa.0.0.i.i41.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.pn18.i28.i.i.i, %bb.n ] ; 4 uses
  %.sroa.08.011.i.i40.i.i.i = phi ptr [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ], [ %.sroa.0.019.i27.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.011.i.i40.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.012.i.i39.i.i.i, i64 24, i1 false), !tbaa.struct !48
  %.sroa.0.0.i.i41.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.012.i.i39.i.i.i, i64 -24 ; 2 uses
  %.val2.i.i.i42.i.i.i = load i64, ptr %.sroa.0.0.i.i41.i.i.i, align 8, !tbaa !50
  %i.dz = icmp ult i64 %.val2.i.i29.i.i.i, %.val2.i.i.i42.i.i.i
  br i1 %i.dz, label %.lr.ph.i.i38.i.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, !llvm.loop !98

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i: ; preds = %.lr.ph.i.i38.i.i.i, %bb.n
  %.sroa.08.0.lcssa.i.i34.i.i.i = phi ptr [ %.sroa.0.019.i27.i.i.i, %bb.n ], [ %.sroa.0.012.i.i39.i.i.i, %.lr.ph.i.i38.i.i.i ] ; 2 uses
  store i64 %.val2.i.i29.i.i.i, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, align 8, !tbaa !38
  %.sroa.5.0..val.sroa_idx.i.i35.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i34.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..val.sroa_idx.i.i35.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i22.i.i.i, i64 16, i1 false), !tbaa.struct !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i22.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i33.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i43.i.i.i
  %.sroa.0.0.i36.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i27.i.i.i, i64 24 ; 2 uses
  %.not.i37.i.i.i = icmp eq ptr %.sroa.0.0.i36.i.i.i, %.0.i.i.i.i.i
  br i1 %.not.i37.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i26.i.i.i, !llvm.loop !99

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i13.i.i.i, %._crit_edge134, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit.i.i.i, %bb.i
  br i1 %.not.i.i.i.i189, label %._crit_edge137, label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %xtraiter = and i64 %.069.lcssa185188, 1
  %i.ea = icmp eq i64 %.069.lcssa185188, 1
  br i1 %i.ea, label %.lr.ph136.epil.preheader, label %.lr.ph136.preheader.new

.lr.ph136.preheader.new:                          ; preds = %.lr.ph136.preheader
  %unroll_iter = and i64 %.069.lcssa185188, 576460752303423486
  br label %.lr.ph136

.preheader113:                                    ; preds = %.preheader113.preheader, %._crit_edge126
  %indvars.iv165 = phi i64 [ 0, %.preheader113.preheader ], [ %indvars.iv.next166, %._crit_edge126 ] ; 3 uses
  %.175128 = phi i64 [ %.074132, %.preheader113.preheader ], [ %.2.lcssa, %._crit_edge126 ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [24 x i8], ptr %i.ct, i64 %indvars.iv165 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !36 ; 2 uses
  %i.ee = load ptr, ptr %i.eb, align 8, !tbaa !33 ; 3 uses
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = ashr exact i64 %i.eh, 3
  %.not147 = icmp eq ptr %i.ed, %i.ee
  br i1 %.not147, label %._crit_edge126, label %.lr.ph125.preheader

.lr.ph125.preheader:                              ; preds = %.preheader113
  %i.ej = trunc nuw i64 %indvars.iv165 to i32
  br label %.lr.ph125

._crit_edge130:                                   ; preds = %._crit_edge126, %.preheader114
  %.175.lcssa = phi i64 [ %.074132, %.preheader114 ], [ %.2.lcssa, %._crit_edge126 ]
  %indvars.iv.next170 = add i64 %indvars.iv169, 1 ; 2 uses
  %i.ek = and i64 %indvars.iv.next170, 4294967295
  %i.el = icmp ugt i64 %i.cp, %i.ek
  br i1 %i.el, label %.preheader114, label %._crit_edge134, !llvm.loop !101

._crit_edge126:                                   ; preds = %.lr.ph125, %.preheader113
  %.2.lcssa = phi i64 [ %.175128, %.preheader113 ], [ %i.ev, %.lr.ph125 ] ; 2 uses
  %indvars.iv.next166 = add i64 %indvars.iv165, 1 ; 2 uses
  %i.em = and i64 %indvars.iv.next166, 4294967295
  %i.en = icmp ugt i64 %i.cx, %i.em
  br i1 %i.en, label %.preheader113, label %._crit_edge130, !llvm.loop !102

.lr.ph125:                                        ; preds = %.lr.ph125.preheader, %.lr.ph125
  %indvars.iv161 = phi i64 [ 0, %.lr.ph125.preheader ], [ %indvars.iv.next162, %.lr.ph125 ] ; 3 uses
  %.2123 = phi i64 [ %.175128, %.lr.ph125.preheader ], [ %i.ev, %.lr.ph125 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv161
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !38
  %i.eq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.2123 ; 4 uses
  store i64 %i.ep, ptr %i.eq, align 8, !tbaa !50
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = trunc nuw i64 %indvars.iv161 to i32
  store i32 %i.es, ptr %i.er, align 8, !tbaa !115
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 12
  store i32 %i.ej, ptr %i.et, align 4, !tbaa !116
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store i32 %i.cy, ptr %i.eu, align 8, !tbaa !117
  %i.ev = add i64 %.2123, 1                       ; 2 uses
  %indvars.iv.next162 = add i64 %indvars.iv161, 1 ; 2 uses
  %i.ew = and i64 %indvars.iv.next162, 4294967295
  %i.ex = icmp ugt i64 %i.ei, %i.ew
  br i1 %i.ex, label %.lr.ph125, label %._crit_edge126, !llvm.loop !103

._crit_edge137.loopexit.unr-lcssa:                ; preds = %.lr.ph136
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge137, label %.lr.ph136.epil.preheader

.lr.ph136.epil.preheader:                         ; preds = %._crit_edge137.loopexit.unr-lcssa, %.lr.ph136.preheader
  %.068135.epil.init = phi i64 [ 0, %.lr.ph136.preheader ], [ %i.jk, %._crit_edge137.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod242 = trunc i64 %.069.lcssa185188 to i1
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.ey = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068135.epil.init ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !115
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068135.epil.init
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !26
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !116
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068135.epil.init
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !26
  br label %._crit_edge137

._crit_edge137:                                   ; preds = %.lr.ph136.epil.preheader, %._crit_edge137.loopexit.unr-lcssa, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN7Imf_3_412_GLOBAL__N_17tileposESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.ff = load i32, ptr %0, align 8, !tbaa !22
  switch i32 %i.ff, label %.loopexit [
    i32 0, label %.preheader
    i32 1, label %.preheader108
    i32 2, label %.preheader110
    i32 3, label %bb.q
  ]

.preheader110:                                    ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph139

.lr.ph139:                                        ; preds = %.preheader110
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 9 uses
  %min.iters.check208 = icmp ult i64 %.069.lcssa185188, 5
  br i1 %min.iters.check208, label %scalar.ph207.preheader, label %vector.memcheck

scalar.ph207.preheader:                           ; preds = %vector.body218, %vector.memcheck, %.lr.ph139
  %.0138.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph139 ], [ %n.vec217, %vector.body218 ] ; 7 uses
  %i.fh = sub i64 %.069.lcssa185188, %.0138.ph
  %.neg = add i64 %.0138.ph, 1
  %xtraiter243 = and i64 %i.fh, 1
  %lcmp.mod244.not = icmp eq i64 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %scalar.ph207.prol.loopexit, label %scalar.ph207.prol

scalar.ph207.prol:                                ; preds = %scalar.ph207.preheader
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.0138.ph
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !117 ; 2 uses
  %i.fl = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.fm = srem i32 %i.fk, %i.fl
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0138.ph
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !26
  %i.fo = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.fp = sdiv i32 %i.fk, %i.fo
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0138.ph
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !26
  %i.fr = add nuw nsw i64 %.0138.ph, 1
  br label %scalar.ph207.prol.loopexit

scalar.ph207.prol.loopexit:                       ; preds = %scalar.ph207.prol, %scalar.ph207.preheader
  %.0138.unr = phi i64 [ %.0138.ph, %scalar.ph207.preheader ], [ %i.fr, %scalar.ph207.prol ]
  %i.fs = icmp eq i64 %.069.lcssa185188, %.neg
  br i1 %i.fs, label %.loopexit.thread, label %scalar.ph207

vector.memcheck:                                  ; preds = %.lr.ph139
  %i.ft = shl nuw nsw i64 %.069.lcssa185188, 2    ; 2 uses
  %i.fu = getelementptr i8, ptr %3, i64 %i.ft     ; 2 uses
  %i.fv = getelementptr i8, ptr %4, i64 %i.ft     ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %bound0 = icmp ult ptr %3, %i.fv
  %bound1 = icmp ult ptr %4, %i.fu
  %found.conflict = and i1 %bound0, %bound1
  %bound0209 = icmp ult ptr %3, %i.fw
  %bound1210 = icmp ult ptr %i.fg, %i.fu
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx = or i1 %found.conflict, %found.conflict211
  %bound0212 = icmp ult ptr %4, %i.fw
  %bound1213 = icmp ult ptr %i.fg, %i.fv
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %conflict.rdx, %found.conflict214
  br i1 %conflict.rdx215, label %scalar.ph207.preheader, label %vector.ph216

vector.ph216:                                     ; preds = %vector.memcheck
  %i.fx = and i64 %.069.lcssa185188, 3            ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = select i1 %i.fy, i64 4, i64 %i.fx
  %n.vec217 = sub nsw i64 %.069.lcssa185188, %i.fz ; 2 uses
  %i.ga = load i32, ptr %i.fg, align 4, !tbaa !23, !alias.scope !118 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert220 = insertelement <4 x i32> poison, i32 %i.ga, i64 0
  %broadcast.splat221 = shufflevector <4 x i32> %broadcast.splatinsert220, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body218

vector.body218:                                   ; preds = %vector.body218, %vector.ph216
  %index219 = phi i64 [ 0, %vector.ph216 ], [ %index.next222, %vector.body218 ] ; 7 uses
  %i.gb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.ge = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index219
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ge, i64 88
  %i.gj = load i32, ptr %i.gf, align 8, !tbaa !117
  %i.gk = load i32, ptr %i.gg, align 8, !tbaa !117
  %i.gl = load i32, ptr %i.gh, align 8, !tbaa !117
  %i.gm = load i32, ptr %i.gi, align 8, !tbaa !117
  %i.gn = insertelement <4 x i32> poison, i32 %i.gj, i64 0
  %i.go = insertelement <4 x i32> %i.gn, i32 %i.gk, i64 1
  %i.gp = insertelement <4 x i32> %i.go, i32 %i.gl, i64 2
  %i.gq = insertelement <4 x i32> %i.gp, i32 %i.gm, i64 3 ; 2 uses
  %i.gr = srem <4 x i32> %i.gq, %broadcast.splat
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index219
  store <4 x i32> %i.gr, ptr %i.gs, align 4, !tbaa !26, !alias.scope !119, !noalias !120
  %i.gt = sdiv <4 x i32> %i.gq, %broadcast.splat221
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index219
  store <4 x i32> %i.gt, ptr %i.gu, align 4, !tbaa !26, !alias.scope !121, !noalias !118
  %index.next222 = add nuw i64 %index219, 4       ; 2 uses
  %i.gv = icmp eq i64 %index.next222, %n.vec217
  br i1 %i.gv, label %scalar.ph207.preheader, label %vector.body218, !llvm.loop !108

.preheader108:                                    ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph141.preheader

.lr.ph141.preheader:                              ; preds = %.preheader108
  %min.iters.check227 = icmp ult i64 %.069.lcssa185188, 9
  %i.gw = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.gw, -32
  %or.cond = or i1 %min.iters.check227, %diff.check
  br i1 %or.cond, label %.lr.ph141.preheader235, label %vector.ph228

.lr.ph141.preheader235:                           ; preds = %vector.body230, %.lr.ph141.preheader
  %.066140.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec229, %vector.body230 ] ; 7 uses
  %i.gx = sub i64 %.069.lcssa185188, %.066140.ph
  %.neg247 = add i64 %.066140.ph, 1
  %xtraiter245 = and i64 %i.gx, 1
  %lcmp.mod246.not = icmp eq i64 %xtraiter245, 0
  br i1 %lcmp.mod246.not, label %.lr.ph141.prol.loopexit, label %.lr.ph141.prol

.lr.ph141.prol:                                   ; preds = %.lr.ph141.preheader235
  %i.gy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.066140.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !117 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066140.ph
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !26
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066140.ph
  store i32 %i.ha, ptr %i.hc, align 4, !tbaa !26
  %i.hd = add nuw nsw i64 %.066140.ph, 1
  br label %.lr.ph141.prol.loopexit

.lr.ph141.prol.loopexit:                          ; preds = %.lr.ph141.prol, %.lr.ph141.preheader235
  %.066140.unr = phi i64 [ %.066140.ph, %.lr.ph141.preheader235 ], [ %i.hd, %.lr.ph141.prol ]
  %i.he = icmp eq i64 %.069.lcssa185188, %.neg247
  br i1 %i.he, label %.loopexit.thread, label %.lr.ph141

vector.ph228:                                     ; preds = %.lr.ph141.preheader
  %i.hf = and i64 %.069.lcssa185188, 7            ; 2 uses
  %i.hg = icmp eq i64 %i.hf, 0
  %i.hh = select i1 %i.hg, i64 8, i64 %i.hf
  %n.vec229 = sub nsw i64 %.069.lcssa185188, %i.hh ; 2 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph228
  %index231 = phi i64 [ 0, %vector.ph228 ], [ %index.next232, %vector.body230 ] ; 11 uses
  %i.hi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hk = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.ho = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %index231
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hj, i64 40
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hl, i64 88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hm, i64 112
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 136
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 160
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 184
  %i.hy = load i32, ptr %i.hq, align 8, !tbaa !117
  %i.hz = load i32, ptr %i.hr, align 8, !tbaa !117
  %i.ia = load i32, ptr %i.hs, align 8, !tbaa !117
  %i.ib = load i32, ptr %i.ht, align 8, !tbaa !117
  %i.ic = insertelement <4 x i32> poison, i32 %i.hy, i64 0
  %i.id = insertelement <4 x i32> %i.ic, i32 %i.hz, i64 1
  %i.ie = insertelement <4 x i32> %i.id, i32 %i.ia, i64 2
  %i.if = insertelement <4 x i32> %i.ie, i32 %i.ib, i64 3 ; 2 uses
  %i.ig = load i32, ptr %i.hu, align 8, !tbaa !117
  %i.ih = load i32, ptr %i.hv, align 8, !tbaa !117
  %i.ii = load i32, ptr %i.hw, align 8, !tbaa !117
  %i.ij = load i32, ptr %i.hx, align 8, !tbaa !117
  %i.ik = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %i.il = insertelement <4 x i32> %i.ik, i32 %i.ih, i64 1
  %i.im = insertelement <4 x i32> %i.il, i32 %i.ii, i64 2
  %i.in = insertelement <4 x i32> %i.im, i32 %i.ij, i64 3 ; 2 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index231 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <4 x i32> %i.if, ptr %i.io, align 4, !tbaa !26
  store <4 x i32> %i.in, ptr %i.ip, align 4, !tbaa !26
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index231 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store <4 x i32> %i.if, ptr %i.iq, align 4, !tbaa !26
  store <4 x i32> %i.in, ptr %i.ir, align 4, !tbaa !26
  %index.next232 = add nuw i64 %index231, 8       ; 2 uses
  %i.is = icmp eq i64 %index.next232, %n.vec229
  br i1 %i.is, label %.lr.ph141.preheader235, label %vector.body230, !llvm.loop !109

.preheader:                                       ; preds = %._crit_edge137
  br i1 %.not.i.i.i.i189, label %.loopexit, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.preheader
  %i.it = shl nuw nsw i64 %.069.lcssa185188, 2    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %3, i8 0, i64 %i.it, i1 false), !tbaa !26
  tail call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 %i.it, i1 false), !tbaa !26
  br label %.loopexit

bb.p:                                             ; preds = %bb.r
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

.lr.ph136:                                        ; preds = %.lr.ph136, %.lr.ph136.preheader.new
  %.068135 = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %i.jk, %.lr.ph136 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph136.preheader.new ], [ %niter.next.1, %.lr.ph136 ]
  %i.iv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.068135 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !115
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.068135
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !26
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !116
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.068135
  store i32 %i.ja, ptr %i.jb, align 4, !tbaa !26
  %i.jc = or disjoint i64 %.068135, 1             ; 3 uses
  %i.jd = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.jc ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !115
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.jc
  store i32 %i.jf, ptr %i.jg, align 4, !tbaa !26
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !116
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jc
  store i32 %i.ji, ptr %i.jj, align 4, !tbaa !26
  %i.jk = add nuw nsw i64 %.068135, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge137.loopexit.unr-lcssa, label %.lr.ph136, !llvm.loop !110

.lr.ph141:                                        ; preds = %.lr.ph141.prol.loopexit, %.lr.ph141
  %.066140 = phi i64 [ %i.jw, %.lr.ph141 ], [ %.066140.unr, %.lr.ph141.prol.loopexit ] ; 5 uses
  %i.jl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.066140
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !117 ; 2 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.066140
  store i32 %i.jn, ptr %i.jo, align 4, !tbaa !26
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.066140
  store i32 %i.jn, ptr %i.jp, align 4, !tbaa !26
  %i.jq = add nuw nsw i64 %.066140, 1             ; 3 uses
  %i.jr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !117 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jq
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !26
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jq
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !26
  %i.jw = add nuw nsw i64 %.066140, 2             ; 2 uses
  %exitcond174.not.1 = icmp eq i64 %i.jw, %.069.lcssa185188
  br i1 %exitcond174.not.1, label %.loopexit.thread, label %.lr.ph141, !llvm.loop !111

scalar.ph207:                                     ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207
  %.0138 = phi i64 [ %i.kq, %scalar.ph207 ], [ %.0138.unr, %scalar.ph207.prol.loopexit ] ; 5 uses
  %i.jx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %.0138
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %i.jz = load i32, ptr %i.jy, align 8, !tbaa !117 ; 2 uses
  %i.ka = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.kb = srem i32 %i.jz, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0138
  store i32 %i.kb, ptr %i.kc, align 4, !tbaa !26
  %i.kd = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.ke = sdiv i32 %i.jz, %i.kd
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.0138
  store i32 %i.ke, ptr %i.kf, align 4, !tbaa !26
  %i.kg = add nuw nsw i64 %.0138, 1               ; 3 uses
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0107.0, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !117 ; 2 uses
  %i.kk = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.kl = srem i32 %i.kj, %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kg
  store i32 %i.kl, ptr %i.km, align 4, !tbaa !26
  %i.kn = load i32, ptr %i.fg, align 4, !tbaa !23
  %i.ko = sdiv i32 %i.kj, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.kg
  store i32 %i.ko, ptr %i.kp, align 4, !tbaa !26
  %i.kq = add nuw nsw i64 %.0138, 2               ; 2 uses
  %exitcond173.not.1 = icmp eq i64 %i.kq, %.069.lcssa185188
  br i1 %exitcond173.not.1, label %.loopexit.thread, label %scalar.ph207, !llvm.loop !112

bb.q:                                             ; preds = %._crit_edge137
  %i.kr = tail call ptr @__cxa_allocate_exception(i64 72) #20 ; 3 uses
  invoke void @_ZN7Iex_3_48LogicExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.kr, ptr noundef nonnull @.str.5)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.kr, ptr nonnull @_ZTIN7Iex_3_48LogicExcE, ptr nonnull @_ZN7Iex_3_48LogicExcD1Ev) #18
          to label %bb.v unwind label %bb.p

bb.s:                                             ; preds = %bb.q
  %i.ks = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.kr) #20
  br label %bb.t

.loopexit:                                        ; preds = %.lr.ph143.preheader, %.preheader110, %.preheader108, %.preheader, %._crit_edge137
  %.not.i.i.i = icmp eq ptr %.sroa.0107.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %scalar.ph207.prol.loopexit, %scalar.ph207, %.lr.ph141.prol.loopexit, %.lr.ph141, %.loopexit
  %i.kt = ptrtoint ptr %.sroa.21.0 to i64
  %i.ku = ptrtoint ptr %.sroa.0107.0 to i64
  %i.kv = sub i64 %i.kt, %i.ku
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0107.0, i64 noundef %i.kv) #17
  br label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit

_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit: ; preds = %.loopexit, %.loopexit.thread
  ret void

bb.t:                                             ; preds = %bb.s, %bb.p
  %.pn = phi { ptr, i32 } [ %i.iu, %bb.p ], [ %i.ks, %bb.s ]
  %.not.i.i.i105 = icmp eq ptr %.sroa.0107.0, null
  br i1 %.not.i.i.i105, label %_ZNSt6vectorIN7Imf_3_412_GLOBAL__N_17tileposESaIS2_EED2Ev.exit106, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kw = ptrtoint ptr %.sroa.21.0 to i64
end_hunk_0
