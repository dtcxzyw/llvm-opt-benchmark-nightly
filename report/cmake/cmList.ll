inline.NumInlined: 3829
inline.NumDeleted: 1568
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6cmList11RemoveItemsEOSt6vectorIlSaIlEE:bb.a
bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %.sroa.0.019.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn18.i.i.i.i, i64 8
  store i64 %i.z, ptr %i.ac, align 8, !tbaa !9
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ad = load i64, ptr %.pn18.i.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.ae = icmp ugt i64 %i.y, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f, %.lr.ph.i.i.i.i.i
  %i.af = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %i.ad, %bb.f ]
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn18.i.i.i.i, %bb.f ] ; 3 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.f ]
  store i64 %i.af, ptr %.sroa.04.08.i.i.i.i.i, align 8, !tbaa !9
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.ah = icmp ugt i64 %i.y, %i.ag
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i, !llvm.loop !307

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i.i = phi ptr [ %i.j, %bb.e ], [ %i.j, %bb.d ], [ %.sroa.0.019.i.ptr.i.i.i, %bb.f ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  store i64 %i.y, ptr %.sink.i.i.i.i, align 8, !tbaa !9
  %.sroa.0.019.i.add.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i29 = icmp eq i64 %.sroa.0.019.i.add.i.i.i, 128
  br i1 %.not.i.i.i.i29, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !308

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_.exit.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i.i.i
  %cond = icmp eq i64 %.0.i.i.i.i.i.idx, 120
  br i1 %cond, label %.lr.ph98, label %.lr.ph.i12.i.i.i.preheader

.lr.ph.i12.i.i.i.preheader:                       ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_.exit.i.i.i"
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 128 ; 4 uses
  %i.aj = and i64 %.0.i.i.i.i.i.idx, 8
  %lcmp.mod.not.not = icmp eq i64 %i.aj, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i12.i.i.i.prol, label %.lr.ph.i12.i.i.i.prol.loopexit

.lr.ph.i12.i.i.i.prol:                            ; preds = %.lr.ph.i12.i.i.i.preheader
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !9  ; 3 uses
  %.sroa.0.07.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 2 uses
  %i.al = load i64, ptr %.sroa.0.07.i.i.i.i.i.prol, align 8, !tbaa !9 ; 2 uses
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.i.i14.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.prol"

.lr.ph.i.i14.i.i.i.prol:                          ; preds = %.lr.ph.i12.i.i.i.prol, %.lr.ph.i.i14.i.i.i.prol
  %i.an = phi i64 [ %i.ao, %.lr.ph.i.i14.i.i.i.prol ], [ %i.al, %.lr.ph.i12.i.i.i.prol ]
  %.sroa.0.09.i.i15.i.i.i.prol = phi ptr [ %.sroa.0.0.i.i17.i.i.i.prol, %.lr.ph.i.i14.i.i.i.prol ], [ %.sroa.0.07.i.i.i.i.i.prol, %.lr.ph.i12.i.i.i.prol ] ; 3 uses
  %.sroa.04.08.i.i16.i.i.i.prol = phi ptr [ %.sroa.0.09.i.i15.i.i.i.prol, %.lr.ph.i.i14.i.i.i.prol ], [ %i.ai, %.lr.ph.i12.i.i.i.prol ]
  store i64 %i.an, ptr %.sroa.04.08.i.i16.i.i.i.prol, align 8, !tbaa !9
  %.sroa.0.0.i.i17.i.i.i.prol = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i.i.i.prol, i64 -8 ; 2 uses
  %i.ao = load i64, ptr %.sroa.0.0.i.i17.i.i.i.prol, align 8, !tbaa !9 ; 2 uses
  %i.ap = icmp ugt i64 %i.ak, %i.ao
  br i1 %i.ap, label %.lr.ph.i.i14.i.i.i.prol, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.prol", !llvm.loop !307

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.prol": ; preds = %.lr.ph.i.i14.i.i.i.prol, %.lr.ph.i12.i.i.i.prol
  %.sroa.04.0.lcssa.i.i.i.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i12.i.i.i.prol ], [ %.sroa.0.09.i.i15.i.i.i.prol, %.lr.ph.i.i14.i.i.i.prol ]
  store i64 %i.ak, ptr %.sroa.04.0.lcssa.i.i.i.i.i.prol, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  br label %.lr.ph.i12.i.i.i.prol.loopexit

.lr.ph.i12.i.i.i.prol.loopexit:                   ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.prol", %.lr.ph.i12.i.i.i.preheader
  %.sroa.0.07.i.i.i.i.unr = phi ptr [ %i.ai, %.lr.ph.i12.i.i.i.preheader ], [ %i.aq, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.prol" ]
  %cond112 = icmp eq i64 %.0.i.i.i.i.i.idx, 128
  br i1 %cond112, label %.lr.ph98, label %.lr.ph.i12.i.i.i

.lr.ph.i12.i.i.i:                                 ; preds = %.lr.ph.i12.i.i.i.prol.loopexit, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.be, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1" ], [ %.sroa.0.07.i.i.i.i.unr, %.lr.ph.i12.i.i.i.prol.loopexit ] ; 8 uses
  %i.ar = load i64, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !9 ; 3 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %i.as = load i64, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %.lr.ph.i.i14.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i14.i.i.i:                               ; preds = %.lr.ph.i12.i.i.i, %.lr.ph.i.i14.i.i.i
  %i.au = phi i64 [ %i.av, %.lr.ph.i.i14.i.i.i ], [ %i.as, %.lr.ph.i12.i.i.i ]
  %.sroa.0.09.i.i15.i.i.i = phi ptr [ %.sroa.0.0.i.i17.i.i.i, %.lr.ph.i.i14.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i12.i.i.i ] ; 3 uses
  %.sroa.04.08.i.i16.i.i.i = phi ptr [ %.sroa.0.09.i.i15.i.i.i, %.lr.ph.i.i14.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ]
  store i64 %i.au, ptr %.sroa.04.08.i.i16.i.i.i, align 8, !tbaa !9
  %.sroa.0.0.i.i17.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i.i.i, i64 -8 ; 2 uses
  %i.av = load i64, ptr %.sroa.0.0.i.i17.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.aw = icmp ugt i64 %i.ar, %i.av
  br i1 %i.aw, label %.lr.ph.i.i14.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i", !llvm.loop !307

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i14.i.i.i, %.lr.ph.i12.i.i.i
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i12.i.i.i ], [ %.sroa.0.09.i.i15.i.i.i, %.lr.ph.i.i14.i.i.i ]
  store i64 %i.ar, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 3 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !9  ; 3 uses
  %i.az = load i64, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.ba = icmp ugt i64 %i.ay, %i.az
  br i1 %i.ba, label %.lr.ph.i.i14.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1"

.lr.ph.i.i14.i.i.i.1:                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i", %.lr.ph.i.i14.i.i.i.1
  %i.bb = phi i64 [ %i.bc, %.lr.ph.i.i14.i.i.i.1 ], [ %i.az, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i" ]
  %.sroa.0.09.i.i15.i.i.i.1 = phi ptr [ %.sroa.0.0.i.i17.i.i.i.1, %.lr.ph.i.i14.i.i.i.1 ], [ %.sroa.0.07.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i" ] ; 3 uses
  %.sroa.04.08.i.i16.i.i.i.1 = phi ptr [ %.sroa.0.09.i.i15.i.i.i.1, %.lr.ph.i.i14.i.i.i.1 ], [ %i.ax, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i" ]
  store i64 %i.bb, ptr %.sroa.04.08.i.i16.i.i.i.1, align 8, !tbaa !9
  %.sroa.0.0.i.i17.i.i.i.1 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i15.i.i.i.1, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %.sroa.0.0.i.i17.i.i.i.1, align 8, !tbaa !9 ; 2 uses
  %i.bd = icmp ugt i64 %i.ay, %i.bc
  br i1 %i.bd, label %.lr.ph.i.i14.i.i.i.1, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1", !llvm.loop !307

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1": ; preds = %.lr.ph.i.i14.i.i.i.1, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i"
  %.sroa.04.0.lcssa.i.i.i.i.i.1 = phi ptr [ %i.ax, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i" ], [ %.sroa.0.09.i.i15.i.i.i.1, %.lr.ph.i.i14.i.i.i.1 ]
  store i64 %i.ay, ptr %.sroa.04.0.lcssa.i.i.i.i.i.1, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 16 ; 2 uses
  %.not.i13.i.i.i.1 = icmp eq ptr %i.be, %.0.i.i.i.i.i.ptr
  br i1 %.not.i13.i.i.i.1, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit", label %.lr.ph.i12.i.i.i, !llvm.loop !309

bb.g:                                             ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPKlSt6vectorIlSaIlEEEENS1_IPmS4_ImSaImEEEEZN6cmList11RemoveItemsEOS6_E3$_0ET0_T_SG_SF_T1_.exit"
  %cond99 = icmp eq i64 %.0.i.i.i.i.i.idx, 0
  br i1 %cond99, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %.lr.ph.i21.i.i.i

.lr.ph.i21.i.i.i:                                 ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i
  %.sroa.0.019.i22.i.i.i = phi ptr [ %.sroa.0.0.i26.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i ], [ %i.k, %bb.g ] ; 6 uses
  %.pn18.i23.i.i.i = phi ptr [ %.sroa.0.019.i22.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i ], [ %i.j, %bb.g ] ; 4 uses
  %i.bf = load i64, ptr %.sroa.0.019.i22.i.i.i, align 8, !tbaa !9 ; 4 uses
  %i.bg = load i64, ptr %i.j, align 8, !tbaa !9   ; 2 uses
  %i.bh = icmp ugt i64 %i.bf, %i.bg
  br i1 %i.bh, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i21.i.i.i
  %i.bi = ptrtoint ptr %.sroa.0.019.i22.i.i.i to i64
  %i.bj = sub i64 %i.bi, %i.r                     ; 3 uses
  %i.bk = ashr exact i64 %i.bj, 3                 ; 2 uses
  %i.bl = icmp sgt i64 %i.bk, 1
  br i1 %i.bl, label %bb.i, label %bb.j, !prof !306

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.pn18.i23.i.i.i, i64 16
  %i.bn = sub nsw i64 0, %i.bk
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bm, i64 %i.bn
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bo, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.bj, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bp = icmp eq i64 %i.bj, 8
  br i1 %i.bp, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn18.i23.i.i.i, i64 8
  store i64 %i.bg, ptr %i.bq, align 8, !tbaa !9
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i

bb.l:                                             ; preds = %.lr.ph.i21.i.i.i
  %i.br = load i64, ptr %.pn18.i23.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.bs = icmp ugt i64 %i.bf, %i.br
  br i1 %i.bs, label %.lr.ph.i.i28.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i

.lr.ph.i.i28.i.i.i:                               ; preds = %bb.l, %.lr.ph.i.i28.i.i.i
  %i.bt = phi i64 [ %i.bu, %.lr.ph.i.i28.i.i.i ], [ %i.br, %bb.l ]
  %.sroa.0.09.i.i29.i.i.i = phi ptr [ %.sroa.0.0.i.i31.i.i.i, %.lr.ph.i.i28.i.i.i ], [ %.pn18.i23.i.i.i, %bb.l ] ; 3 uses
  %.sroa.04.08.i.i30.i.i.i = phi ptr [ %.sroa.0.09.i.i29.i.i.i, %.lr.ph.i.i28.i.i.i ], [ %.sroa.0.019.i22.i.i.i, %bb.l ]
  store i64 %i.bt, ptr %.sroa.04.08.i.i30.i.i.i, align 8, !tbaa !9
  %.sroa.0.0.i.i31.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i29.i.i.i, i64 -8 ; 2 uses
  %i.bu = load i64, ptr %.sroa.0.0.i.i31.i.i.i, align 8, !tbaa !9 ; 2 uses
  %i.bv = icmp ugt i64 %i.bf, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i28.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i, !llvm.loop !307

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i: ; preds = %.lr.ph.i.i28.i.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i25.i.i.i = phi ptr [ %i.j, %bb.k ], [ %i.j, %bb.i ], [ %i.j, %bb.j ], [ %.sroa.0.019.i22.i.i.i, %bb.l ], [ %.sroa.0.09.i.i29.i.i.i, %.lr.ph.i.i28.i.i.i ]
  store i64 %i.bf, ptr %.sink.i25.i.i.i, align 8, !tbaa !9
  %.sroa.0.0.i26.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i22.i.i.i, i64 8 ; 2 uses
  %.not.i27.i.i.i = icmp eq ptr %.sroa.0.0.i26.i.i.i, %.0.i.i.i.i.i.ptr
  br i1 %.not.i27.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit", label %.lr.ph.i21.i.i.i, !llvm.loop !308

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i24.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops14_Val_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_T0_.exit.i.i.i.i.1"
  %.not.i.i.i96 = icmp eq i64 %.0.i.i.i.i.i.idx, 0
  br i1 %.not.i.i.i96, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph.i12.i.i.i.prol.loopexit, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EEEvT_SF_T0_.exit.i.i.i", %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.m

.preheader.i.i.i:                                 ; preds = %bb.m
  %i.bx = getelementptr inbounds nuw i8, ptr %i.by, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bx, %.0.i.i.i.i.i.ptr
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %bb.m, !llvm.loop !310

bb.m:                                             ; preds = %.lr.ph98, %.preheader.i.i.i
  %indvar = phi i64 [ 0, %.lr.ph98 ], [ %indvar.next, %.preheader.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.bw, %.lr.ph98 ], [ %i.bx, %.preheader.i.i.i ] ; 3 uses
  %.sroa.09.0.i.i.i97 = phi ptr [ %i.j, %.lr.ph98 ], [ %i.by, %.preheader.i.i.i ] ; 5 uses
  %i.bz = load i64, ptr %.sroa.09.0.i.i.i97, align 8, !tbaa !9 ; 3 uses
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !9
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !310

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i97, i64 16 ; 3 uses
  %.not18.i.i = icmp eq ptr %i.cc, %.0.i.i.i.i.i.ptr
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %i.cd = add nsw i64 %.0.i.i.i.i.i.idx, -16
  %2 = shl i64 %indvar, 3
  %3 = sub i64 %i.cd, %2                          ; 2 uses
  %4 = lshr exact i64 %3, 3
  %i.ce = add nuw nsw i64 %4, 1
  %xtraiter104 = and i64 %i.ce, 3                 ; 2 uses
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %bb.o
  %i.cf = phi i64 [ %i.ch, %bb.o ], [ %i.bz, %.lr.ph.i.i.preheader ]
  %i.cg = phi ptr [ %i.ck, %bb.o ], [ %i.cc, %.lr.ph.i.i.preheader ] ; 2 uses
  %.sroa.0.019.i.i.prol = phi ptr [ %.sroa.0.1.i.i.prol, %bb.o ], [ %.sroa.09.0.i.i.i97, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %bb.o ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !9  ; 4 uses
  %i.ci = icmp eq i64 %i.cf, %i.ch
  br i1 %i.ci, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.prol
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.prol, i64 8 ; 2 uses
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i.prol
  %.sroa.0.1.i.i.prol = phi ptr [ %.sroa.0.019.i.i.prol, %.lr.ph.i.i.prol ], [ %i.cj, %bb.n ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter104
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !311

.lr.ph.i.i.prol.loopexit:                         ; preds = %bb.o, %.lr.ph.i.i.preheader
  %.sroa.0.1.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.o ]
  %.unr = phi i64 [ %i.bz, %.lr.ph.i.i.preheader ], [ %i.ch, %bb.o ]
  %.unr106 = phi ptr [ %i.cc, %.lr.ph.i.i.preheader ], [ %i.ck, %bb.o ]
  %.sroa.0.019.i.i.unr = phi ptr [ %.sroa.09.0.i.i.i97, %.lr.ph.i.i.preheader ], [ %.sroa.0.1.i.i.prol, %bb.o ]
  %i.cl = icmp ult i64 %3, 24
  br i1 %i.cl, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %bb.t
  %i.cm = phi i64 [ %i.da, %bb.t ], [ %.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.cn = phi ptr [ %i.dd, %bb.t ], [ %.unr106, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i.3, %bb.t ], [ %.sroa.0.019.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !9  ; 3 uses
  %i.cp = icmp eq i64 %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph.i.i.1, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 8 ; 2 uses
  store i64 %i.co, ptr %i.cq, align 8, !tbaa !9
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.cq, %bb.p ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !9  ; 3 uses
  %i.ct = icmp eq i64 %i.co, %i.cs
  br i1 %i.ct, label %.lr.ph.i.i.2, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i.1
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.cu, align 8, !tbaa !9
  br label %.lr.ph.i.i.2

.lr.ph.i.i.2:                                     ; preds = %bb.q, %.lr.ph.i.i.1
  %.sroa.0.1.i.i.1 = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.1 ], [ %i.cu, %bb.q ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !9  ; 3 uses
  %i.cx = icmp eq i64 %i.cs, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.3, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.2
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.1, i64 8 ; 2 uses
  store i64 %i.cw, ptr %i.cy, align 8, !tbaa !9
  br label %.lr.ph.i.i.3

.lr.ph.i.i.3:                                     ; preds = %bb.r, %.lr.ph.i.i.2
  %.sroa.0.1.i.i.2 = phi ptr [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.2 ], [ %i.cy, %bb.r ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !9  ; 3 uses
  %i.db = icmp eq i64 %i.cw, %i.da
  br i1 %i.db, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.i.3
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.2, i64 8 ; 2 uses
  store i64 %i.da, ptr %i.dc, align 8, !tbaa !9
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i.i.3
  %.sroa.0.1.i.i.3 = phi ptr [ %.sroa.0.1.i.i.2, %.lr.ph.i.i.3 ], [ %i.dc, %bb.s ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cn, i64 32 ; 2 uses
  %.not.i.i30.3 = icmp eq ptr %i.dd, %.0.i.i.i.i.i.ptr
  br i1 %.not.i.i30.3, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !313

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %bb.t, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i97, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.0.1.i.i.3, %bb.t ]
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 8 ; 2 uses
  %.not.i.i31 = icmp eq ptr %i.de, %.0.i.i.i.i.i.ptr
  br i1 %.not.i.i31, label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i: ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = sub i64 %i.df, %i.r
  %i.dh = getelementptr inbounds i8, ptr %i.j, i64 %i.dg
  br label %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit

_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.g, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit", %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit
  %.sroa.13.0 = phi ptr [ %.0.i.i.i.i.i.ptr, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEET_S7_S7_.exit ], [ %i.dh, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES6_ET0_T_S8_S7_.exit.i.i ], [ %.0.i.i.i.i.i.ptr, %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN6cmList11RemoveItemsEOS3_IlSaIlEEE3$_1EvT_SC_T0_.exit" ], [ %.0.i.i.i.i.i.ptr, %bb.g ], [ %.0.i.i.i.i.i.ptr, %.preheader.i.i.i ] ; 2 uses
  %.not64 = icmp eq ptr %i.j, %.sroa.13.0
  br i1 %.not64, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE.exit, %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.g) #37
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.u:                                             ; preds = %.lr.ph.i
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit36

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE.exit
  %.sroa.040.065 = phi ptr [ %i.dn, %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE.exit ], [ %i.j, %_ZNSt6vectorImSaImEE5eraseEN9__gnu_cxx17__normal_iteratorIPKmS1_EES6_.exit ] ; 2 uses
  %i.dj = load i64, ptr %.sroa.040.065, align 8, !tbaa !9
  %i.dk = load ptr, ptr %0, align 8, !tbaa !44
  %i.dl = getelementptr inbounds [32 x i8], ptr %i.dk, i64 %i.dj
  %i.dm = invoke ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.dl)
          to label %_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE.exit unwind label %bb.v ; 0 uses

_ZN6cmList5eraseEN9__gnu_cxx17__normal_iteratorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEE.exit: ; preds = %.lr.ph
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.040.065, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dn, %.sroa.13.0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit36

_ZNSt6vectorImSaImEED2Ev.exit36:                  ; preds = %bb.v, %bb.u
  %.pn.pn = phi { ptr, i32 } [ %i.di, %bb.u ], [ %i.do, %bb.v ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.g) #37
  resume { ptr, i32 } %.pn.pn

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN6cmList11RemoveItemsEOSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EE(ptr noundef nonnull returned align 8 dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %class.cmRange, align 8             ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !44     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 6 uses
  %.not.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 5
  %i.h = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %i.a, ptr %i.c, i64 noundef %i.j)
  %i.k = icmp sgt i64 %i.f, 512
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 512 ; 3 uses
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %i.a, ptr nonnull %i.l)
  %.not4.i.i.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.sroa.0.05.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i ], [ %i.l, %bb.c ] ; 2 uses
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.05.i.i.i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !77

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %i.a, ptr %i.c)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEEEvT_SD_.exit: ; preds = %.lr.ph.i.i.i.i, %bb.a, %bb.c, %bb.d
  %i.n = load ptr, ptr %1, align 8, !tbaa !44
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !44
  %i.p = tail call ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops19_Iter_equal_to_iterEET_SF_SF_T0_(ptr %i.n, ptr %i.o)
  %i.q = load ptr, ptr %1, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  store ptr %i.q, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = load ptr, ptr %0, align 8, !tbaa !44
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = call ptr @_ZSt11__remove_ifIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops10_Iter_predIN19ContainerAlgorithms14BinarySearcherI7cmRangeISC_EEEEEET_SL_SL_T0_(ptr %i.s, ptr %i.u, ptr nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.x = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.y = ptrtoint ptr %i.v to i64
  %i.z = ptrtoint ptr %i.x to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = getelementptr inbounds i8, ptr %i.x, i64 %i.aa
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ac, %i.z
  %i.ae = getelementptr inbounds i8, ptr %i.x, i64 %i.ad
  %i.af = call ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS5_S7_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.ab, ptr %i.ae) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local ptr @_ZN6cmList6InsertERSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EEOS6_NS_14ExpandElementsENS_13EmptyElementsE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 21 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !44     ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = sub i64 %i.b, %i.c                       ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 6 uses
  %i.f = icmp eq i32 %3, 1
  br i1 %i.f, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %4, 0
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = icmp eq i64 %i.i, 0
  %or.cond = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext 59, i64 noundef 0) #35
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %bb.d, label %bb.j
end_hunk_0
