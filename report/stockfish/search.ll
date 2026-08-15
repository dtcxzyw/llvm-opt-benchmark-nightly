inline.NumInlined: 4324
inline.NumDeleted: 1738
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_SD_T1_T2_:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !190
  store ptr %i.m, ptr %i.i, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.p) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.s = add nsw i64 %.012.i.i.i.i.i, -1
  %i.t = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %bb.b
  %.08.lcssa.i.i.i.i.i = phi ptr [ %5, %bb.b ], [ %i.r, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ]
  tail call void @_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_less_iterEEvT_SC_T0_SD_T1_T2_(ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i, ptr %1, ptr %2, ptr %0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.u = ptrtoint ptr %2 to i64
  %i.v = ptrtoint ptr %1 to i64
  %i.w = sub i64 %i.u, %i.v                       ; 2 uses
  %i.x = icmp sgt i64 %i.w, 0
  br i1 %i.x, label %.lr.ph.preheader.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit27

.lr.ph.preheader.i.i.i.i.i20:                     ; preds = %bb.d
  %i.y = udiv exact i64 %i.w, 72
  br label %.lr.ph.i.i.i.i.i21

.lr.ph.i.i.i.i.i21:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26, %.lr.ph.preheader.i.i.i.i.i20
  %.012.i.i.i.i.i22 = phi i64 [ %i.am, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26 ], [ %i.y, %.lr.ph.preheader.i.i.i.i.i20 ] ; 2 uses
  %.0811.i.i.i.i.i23 = phi ptr [ %i.al, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26 ], [ %5, %.lr.ph.preheader.i.i.i.i.i20 ] ; 4 uses
  %.0910.i.i.i.i.i24 = phi ptr [ %i.ak, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26 ], [ %1, %.lr.ph.preheader.i.i.i.i.i20 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i23, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i24, i64 44, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 48 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !189 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 64 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !190
  %i.ae = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !291
  store <2 x ptr> %i.ae, ptr %i.z, align 8, !tbaa !291
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !190
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i25 = icmp eq ptr %i.ab, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i25, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i21
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.aj) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26: ; preds = %bb.e, %.lr.ph.i.i.i.i.i21
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i24, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i23, i64 72 ; 2 uses
  %i.am = add nsw i64 %.012.i.i.i.i.i22, -1
  %i.an = icmp sgt i64 %.012.i.i.i.i.i22, 1
  br i1 %i.an, label %.lr.ph.i.i.i.i.i21, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit27, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit27: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26, %bb.d
  %.08.lcssa.i.i.i.i.i19 = phi ptr [ %5, %bb.d ], [ %i.al, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i26 ]
  tail call void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_S9_NS0_5__ops15_Iter_less_iterEEvT_SC_T0_SD_T1_T2_(ptr %0, ptr %1, ptr noundef %5, ptr noundef %.08.lcssa.i.i.i.i.i19, ptr %2)
  br label %bb.f

bb.f:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit27, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.0 = alloca { i64, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }, align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.09.018 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not19 = icmp eq ptr %.sroa.09.018, %1
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = ptrtoint ptr %0 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.09.021 = phi ptr [ %.sroa.09.018, %.lr.ph ], [ %.sroa.09.0, %bb.g ] ; 6 uses
  %.pn20 = phi ptr [ %0, %.lr.ph ], [ %.sroa.09.021, %bb.g ] ; 5 uses
  %i.g = load i32, ptr %i.b, align 8, !tbaa !238  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn20, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, %i.i
  %i.j = icmp slt i32 %i.g, %i.i
  %i.k = load i32, ptr %i.c, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.pn20, i64 84
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp slt i32 %i.k, %i.m
  %i.o = select i1 %.not.i.i, i1 %i.n, i1 %i.j
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.09.021, i64 44, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.pn20, i64 120 ; 2 uses
  %i.q = load <2 x ptr>, ptr %i.p, align 8, !tbaa !291
  %i.r = getelementptr inbounds nuw i8, ptr %.pn20, i64 136
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %i.t = ptrtoint ptr %.sroa.09.021 to i64
  %i.u = sub i64 %i.t, %i.d                       ; 2 uses
  %i.v = icmp sgt i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20, i64 144
  %i.x = udiv exact i64 %i.u, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.al, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.x, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.z, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.w, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.y, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.09.021, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.y, i64 44, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !189 ; 3 uses
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !190
  %i.af = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !291
  store <2 x ptr> %i.af, ptr %i.aa, align 8, !tbaa !291
  %i.ag = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !190
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = ptrtoint ptr %i.ac to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ak) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.al = add nsw i64 %.010.i.i.i.i.i, -1
  %i.am = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !799

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, i64 44, i1 false)
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !189 ; 3 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !190
  store <2 x ptr> %i.q, ptr %i.e, align 8, !tbaa !291
  store ptr %i.s, ptr %i.f, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #38
  br label %_ZN9Stockfish6Search8RootMoveD2Ev.exit

_ZN9Stockfish6Search8RootMoveD2Ev.exit:           ; preds = %bb.e, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  tail call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.09.021)
  br label %bb.g

bb.g:                                             ; preds = %_ZN9Stockfish6Search8RootMoveD2Ev.exit, %bb.f
  %.sroa.09.0 = getelementptr inbounds nuw i8, ptr %.sroa.09.021, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.09.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !800

.loopexit:                                        ; preds = %bb.g, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #4 comdat {
bb.a:
  %.sroa.6.sroa.0 = alloca <32 x i8>, align 32    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  %.sroa.05.0.copyload = load i64, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(28) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(28) %.sroa.6.0..sroa_idx, i64 28, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !291
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds i8, ptr %0, i64 -64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !238  ; 2 uses
  %.not.i.i19 = icmp eq i32 %i.f, %.sroa.4.0.copyload
  %i.g = icmp slt i32 %i.f, %.sroa.4.0.copyload
  %i.h = getelementptr inbounds i8, ptr %0, i64 -60
  %i.i = load i32, ptr %i.h, align 4
  %i.j = icmp slt i32 %i.i, %.sroa.5.0.copyload
  %i.k = select i1 %.not.i.i19, i1 %i.j, i1 %i.g
  br i1 %i.k, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit
  %.sroa.015.020 = phi ptr [ %.sroa.0.021, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit ], [ %0, %bb.a ] ; 10 uses
  %.sroa.0.021 = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015.020, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.021, i64 44, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 48 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -24 ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !189  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.015.020, i64 64 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.q = load <2 x ptr>, ptr %i.m, align 8, !tbaa !291
  store <2 x ptr> %i.q, ptr %i.l, align 8, !tbaa !291
  %i.r = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !190
  store ptr %i.s, ptr %i.o, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = ptrtoint ptr %i.n to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.v) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit:        ; preds = %.lr.ph, %bb.b
  %i.w = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -136
  %i.x = load i32, ptr %i.w, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq i32 %i.x, %.sroa.4.0.copyload
  %i.y = icmp slt i32 %i.x, %.sroa.4.0.copyload
  %i.z = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -132
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = icmp slt i32 %i.aa, %.sroa.5.0.copyload
  %i.ac = select i1 %.not.i.i, i1 %i.ab, i1 %i.y
  br i1 %i.ac, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !801

._crit_edge.loopexit:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit
  %.phi.trans.insert = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !189
  %.phi.trans.insert22 = getelementptr inbounds i8, ptr %.sroa.015.020, i64 -8
  %.pre23 = load ptr, ptr %.phi.trans.insert22, align 8, !tbaa !190
  %i.ad = ptrtoint ptr %.pre23 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.ae = phi i64 [ 0, %bb.a ], [ %i.ad, %._crit_edge.loopexit ]
  %i.af = phi ptr [ null, %bb.a ], [ %.pre, %._crit_edge.loopexit ] ; 3 uses
  %.sroa.015.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.021, %._crit_edge.loopexit ] ; 6 uses
  store i64 %.sroa.05.0.copyload, ptr %.sroa.015.0.lcssa, align 8
  %.sroa.4.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 8
  store i32 %.sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx7, align 8
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 12
  store i32 %.sroa.5.0.copyload, ptr %.sroa.5.0..sroa_idx9, align 4
  %.sroa.6.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %.sroa.6.0..sroa_idx11, ptr noundef nonnull align 32 dereferenceable(28) %.sroa.6.sroa.0, i64 28, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.0.lcssa, i64 64
  store <2 x ptr> %i.b, ptr %i.ag, align 8, !tbaa !291
  store ptr %i.d, ptr %i.ah, align 8, !tbaa !190
  %.not.i.i.i.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i1, label %_ZN9Stockfish6Search8RootMoveD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ae, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #38
  br label %_ZN9Stockfish6Search8RootMoveD2Ev.exit

_ZN9Stockfish6Search8RootMoveD2Ev.exit:           ; preds = %bb.c, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond28 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond28, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.031 = phi ptr [ %i.aj, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %.sroa.024.030 = phi ptr [ %.sroa.024.1, %bb.f ], [ %0, %bb.a ] ; 7 uses
  %.sroa.020.029 = phi ptr [ %.sroa.020.1, %bb.f ], [ %2, %bb.a ] ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !238  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !238  ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, %i.f
  %i.g = icmp slt i32 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp slt i32 %i.i, %i.k
  %i.m = select i1 %.not.i.i, i1 %i.l, i1 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %.031, i64 48 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.031, i64 64 ; 4 uses
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.031, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.020.029, i64 44, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 48 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !189  ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.s = load <2 x ptr>, ptr %i.p, align 8, !tbaa !291
  store <2 x ptr> %i.s, ptr %i.n, align 8, !tbaa !291
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190
  store ptr %i.u, ptr %i.o, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.q, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit:        ; preds = %bb.b, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 72
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.031, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.024.030, i64 44, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !189 ; 3 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !190
  %i.ac = load <2 x ptr>, ptr %i.z, align 8, !tbaa !291
  store <2 x ptr> %i.ac, ptr %i.n, align 8, !tbaa !291
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !190
  store ptr %i.ae, ptr %i.o, align 8, !tbaa !190
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.aa, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i9, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = ptrtoint ptr %i.ab to i64
  %i.ag = ptrtoint ptr %i.aa to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ah) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10:      ; preds = %bb.d, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 72
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit
  %.sroa.020.1 = phi ptr [ %i.y, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit ], [ %.sroa.020.029, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10 ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.030, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit ], [ %i.ai, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.031, i64 72 ; 2 uses
  %i.ak = icmp ne ptr %.sroa.024.1, %1
  %i.al = icmp ne ptr %.sroa.020.1, %3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !794

.critedge:                                        ; preds = %bb.f, %bb.a
  %.sroa.020.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.020.1, %bb.f ] ; 2 uses
  %.sroa.024.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.024.1, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aj, %bb.f ] ; 2 uses
  %i.am = ptrtoint ptr %1 to i64
  %i.an = ptrtoint ptr %.sroa.024.0.lcssa to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.aq = udiv exact i64 %i.ao, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.be, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.aq, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bc, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.024.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 44, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48 ; 2 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !190
  %i.aw = load <2 x ptr>, ptr %i.as, align 8, !tbaa !291
  store <2 x ptr> %i.aw, ptr %i.ar, align 8, !tbaa !291
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !190
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.be = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bf = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.bd, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ] ; 2 uses
  %i.bg = ptrtoint ptr %3 to i64
  %i.bh = ptrtoint ptr %.sroa.020.0.lcssa to i64
  %i.bi = sub i64 %i.bg, %i.bh                    ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.preheader.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19

.lr.ph.preheader.i.i.i.i.i12:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.bk = udiv exact i64 %i.bi, 72
  br label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, %.lr.ph.preheader.i.i.i.i.i12
  %.012.i.i.i.i.i14 = phi i64 [ %i.by, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %i.bk, %.lr.ph.preheader.i.i.i.i.i12 ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.bx, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i12 ] ; 4 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.bw, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %.sroa.020.0.lcssa, %.lr.ph.preheader.i.i.i.i.i12 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i16, i64 44, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 48 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8, !tbaa !189 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !190
  %i.bq = load <2 x ptr>, ptr %i.bm, align 8, !tbaa !291
  store <2 x ptr> %i.bq, ptr %i.bl, align 8, !tbaa !291
  %i.br = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 64
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !190
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.bn, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = ptrtoint ptr %i.bn to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bv) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18: ; preds = %bb.h, %.lr.ph.i.i.i.i.i13
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 72 ; 2 uses
  %i.by = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.bz = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %.08.lcssa.i.i.i.i.i11 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit ], [ %i.bx, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ]
  ret ptr %.08.lcssa.i.i.i.i.i11
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local ptr @_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_less_iterEET0_T_SD_SD_SD_SC_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.034 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 7 uses
  %.01633 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 7 uses
  %.sroa.0.032 = phi ptr [ %i.ak, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.034, i64 8
end_hunk_0
begin_hunk_1_@"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_SO_T0_SP_T1_T2_":bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i29, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i.i25
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = ptrtoint ptr %i.bv to i64
  %i.cd = sub i64 %i.cb, %i.cc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.cd) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30: ; preds = %bb.l, %.lr.ph.i.i.i.i.i25
  %i.ce = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i28, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i27, i64 72 ; 2 uses
  %i.cg = add nsw i64 %.012.i.i.i.i.i26, -1
  %i.ch = icmp sgt i64 %.012.i.i.i.i.i26, 1
  br i1 %i.ch, label %.lr.ph.i.i.i.i.i25, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit31, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit31: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30, %bb.k
  %.08.lcssa.i.i.i.i.i23 = phi ptr [ %5, %bb.k ], [ %i.cf, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i30 ] ; 4 uses
  %i.ci = icmp eq ptr %0, %1
  br i1 %i.ci, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit31
  %i.cj = ptrtoint ptr %.08.lcssa.i.i.i.i.i23 to i64
  %i.ck = ptrtoint ptr %5 to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = icmp sgt i64 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.preheader.i.i.i.i.i.i36, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i.i36:                   ; preds = %bb.m
  %i.cn = udiv exact i64 %i.cl, 72
  br label %.lr.ph.i.i.i.i.i.i37

.lr.ph.i.i.i.i.i.i37:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i36
  %.010.i.i.i.i.i.i = phi i64 [ %i.db, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39 ], [ %i.cn, %.lr.ph.preheader.i.i.i.i.i.i36 ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.cp, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39 ], [ %2, %.lr.ph.preheader.i.i.i.i.i.i36 ] ; 3 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.co, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39 ], [ %.08.lcssa.i.i.i.i.i23, %.lr.ph.preheader.i.i.i.i.i.i36 ] ; 3 uses
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -72 ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cp, ptr noundef nonnull align 8 dereferenceable(72) %i.co, i64 44, i1 false)
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24 ; 2 uses
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !189 ; 3 uses
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !190
  %i.cv = load <2 x ptr>, ptr %i.cr, align 8, !tbaa !291
  store <2 x ptr> %i.cv, ptr %i.cq, align 8, !tbaa !291
  %i.cw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !190
  store ptr %i.cx, ptr %i.ct, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i.i38 = icmp eq ptr %i.cs, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i38, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i37
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = ptrtoint ptr %i.cs to i64
  %i.da = sub i64 %i.cy, %i.cz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cs, i64 noundef %i.da) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39: ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i37
  %i.db = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.dc = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i37, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit", !llvm.loop !799

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit31
  %i.dd = icmp eq ptr %5, %.08.lcssa.i.i.i.i.i23
  br i1 %i.dd, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = getelementptr inbounds i8, ptr %.08.lcssa.i.i.i.i.i23, i64 -72
  br label %.outer

.outer:                                           ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35, %bb.p
  %.sroa.032.0.i.ph.pn = phi ptr [ %1, %bb.p ], [ %.sroa.032.0.i.ph, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35 ] ; 4 uses
  %.sroa.0.0.i.ph = phi ptr [ %2, %bb.p ], [ %i.di, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35 ]
  %.0.i.ph = phi ptr [ %i.de, %bb.p ], [ %.0.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35 ]
  %.sroa.032.0.i.ph = getelementptr inbounds i8, ptr %.sroa.032.0.i.ph.pn, i64 -72 ; 3 uses
  %i.df = getelementptr i8, ptr %.sroa.032.0.i.ph.pn, i64 -36
  br label %bb.q

bb.q:                                             ; preds = %.outer, %bb.x
  %.sroa.0.0.i = phi ptr [ %i.di, %bb.x ], [ %.sroa.0.0.i.ph, %.outer ] ; 3 uses
  %.0.i = phi ptr [ %i.fa, %bb.x ], [ %.0.i.ph, %.outer ] ; 8 uses
  %i.dg = getelementptr i8, ptr %.0.i, i64 36
  %.0.val.i32 = load i32, ptr %i.dg, align 4, !tbaa !188
  %.val2.i.i = load i32, ptr %i.df, align 4, !tbaa !188
  %i.dh = icmp sgt i32 %.0.val.i32, %.val2.i.i
  %i.di = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -72 ; 5 uses
  %i.dj = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -24 ; 4 uses
  %i.dk = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -8 ; 4 uses
  br i1 %i.dh, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.di, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.032.0.i.ph, i64 44, i1 false)
  %i.dl = getelementptr inbounds i8, ptr %.sroa.032.0.i.ph.pn, i64 -24 ; 2 uses
  %i.dm = load ptr, ptr %i.dj, align 8, !tbaa !189 ; 3 uses
  %i.dn = load ptr, ptr %i.dk, align 8, !tbaa !190
  %i.do = load <2 x ptr>, ptr %i.dl, align 8, !tbaa !291
  store <2 x ptr> %i.do, ptr %i.dj, align 8, !tbaa !291
  %i.dp = getelementptr inbounds i8, ptr %.sroa.032.0.i.ph.pn, i64 -8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !190
  store ptr %i.dq, ptr %i.dk, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i34 = icmp eq ptr %i.dm, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i34, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dr = ptrtoint ptr %i.dn to i64
  %i.ds = ptrtoint ptr %i.dm to i64
  %i.dt = sub i64 %i.dr, %i.ds
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dt) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35:    ; preds = %bb.s, %bb.r
  %i.du = icmp eq ptr %0, %.sroa.032.0.i.ph
  br i1 %i.du, label %bb.t, label %.outer, !llvm.loop !827

bb.t:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i35
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.i, i64 72 ; 2 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = ptrtoint ptr %5 to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 2 uses
  %i.dz = icmp sgt i64 %i.dy, 0
  br i1 %i.dz, label %.lr.ph.preheader.i.i.i.i.i19.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %bb.t
  %i.ea = udiv exact i64 %i.dy, 72
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.010.i.i.i.i.i21.i = phi i64 [ %i.eo, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i ], [ %i.ea, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.069.i.i.i.i.i22.i = phi ptr [ %i.ec, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i ], [ %i.di, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.078.i.i.i.i.i23.i = phi ptr [ %i.eb, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i ], [ %i.dv, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -72 ; 2 uses
  %i.ec = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ec, ptr noundef nonnull align 8 dereferenceable(72) %i.eb, i64 44, i1 false)
  %i.ed = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -24 ; 2 uses
  %i.ee = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -24 ; 2 uses
  %i.ef = load ptr, ptr %i.ed, align 8, !tbaa !189 ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.069.i.i.i.i.i22.i, i64 -8 ; 2 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !190
  %i.ei = load <2 x ptr>, ptr %i.ee, align 8, !tbaa !291
  store <2 x ptr> %i.ei, ptr %i.ed, align 8, !tbaa !291
  %i.ej = getelementptr inbounds i8, ptr %.078.i.i.i.i.i23.i, i64 -8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !190
  store ptr %i.ek, ptr %i.eg, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i24.i = icmp eq ptr %i.ef, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i24.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i20.i
  %i.el = ptrtoint ptr %i.eh to i64
  %i.em = ptrtoint ptr %i.ef to i64
  %i.en = sub i64 %i.el, %i.em
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ef, i64 noundef %i.en) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i: ; preds = %bb.u, %.lr.ph.i.i.i.i.i20.i
  %i.eo = add nsw i64 %.010.i.i.i.i.i21.i, -1
  %i.ep = icmp sgt i64 %.010.i.i.i.i.i21.i, 1
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i20.i, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit", !llvm.loop !799

bb.v:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.di, ptr noundef nonnull align 8 dereferenceable(72) %.0.i, i64 44, i1 false)
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i, i64 48 ; 2 uses
  %i.er = load ptr, ptr %i.dj, align 8, !tbaa !189 ; 3 uses
  %i.es = load ptr, ptr %i.dk, align 8, !tbaa !190
  %i.et = load <2 x ptr>, ptr %i.eq, align 8, !tbaa !291
  store <2 x ptr> %i.et, ptr %i.dj, align 8, !tbaa !291
  %i.eu = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !190
  store ptr %i.ev, ptr %i.dk, align 8, !tbaa !190
  %.not.i.i.i.i.i.i27.i = icmp eq ptr %i.er, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.eq, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i27.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit28.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = ptrtoint ptr %i.er to i64
  %i.ey = sub i64 %i.ew, %i.ex
  tail call void @_ZdlPvm(ptr noundef nonnull %i.er, i64 noundef %i.ey) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit28.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit28.i:    ; preds = %bb.w, %bb.v
  %i.ez = icmp eq ptr %5, %.0.i
  br i1 %i.ez, label %"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit", label %bb.x

bb.x:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit28.i
  %i.fa = getelementptr inbounds i8, ptr %.0.i, i64 -72
  br label %bb.q, !llvm.loop !827

"_ZSt21__move_merge_adaptiveIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEES9_NS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEEvT_SO_T0_SP_T1_T2_.exit": ; preds = %bb.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit28.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i25.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i.i39, %bb.b, %bb.t, %bb.o, %bb.m, %.critedge.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEEvT_SO_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #4 {
bb.a:
  %.sroa.0 = alloca { i64, i32, i32, i32, i32, i32, i8, i8, i32, i32, i32 }, align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.010.020 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.not21 = icmp eq ptr %.sroa.010.020, %1
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr i8, ptr %0, i64 36
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.010.023 = phi ptr [ %.sroa.010.020, %.lr.ph ], [ %.sroa.010.0, %bb.i ] ; 8 uses
  %.pn22 = phi ptr [ %0, %.lr.ph ], [ %.sroa.010.023, %bb.i ] ; 8 uses
  %i.f = getelementptr i8, ptr %.pn22, i64 108
  %.val.i = load i32, ptr %i.f, align 4, !tbaa !188 ; 4 uses
  %.val1.i = load i32, ptr %i.b, align 4, !tbaa !188
  %i.g = icmp sgt i32 %.val.i, %.val1.i
  br i1 %i.g, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.010.023, i64 44, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.pn22, i64 120 ; 2 uses
  %i.i = load <2 x ptr>, ptr %i.h, align 8, !tbaa !291
  %i.j = getelementptr inbounds nuw i8, ptr %.pn22, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  %i.l = ptrtoint ptr %.sroa.010.023 to i64
  %i.m = sub i64 %i.l, %i.c                       ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.pn22, i64 144
  %i.p = udiv exact i64 %i.m, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.ad, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.p, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.r, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.078.i.i.i.i.i = phi ptr [ %i.q, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.010.023, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -72 ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -72 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.r, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 44, i1 false)
  %i.s = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !189  ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  %i.x = load <2 x ptr>, ptr %i.t, align 8, !tbaa !291
  store <2 x ptr> %i.x, ptr %i.s, align 8, !tbaa !291
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !190
  store ptr %i.z, ptr %i.v, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = ptrtoint ptr %i.u to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.ac) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ad = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, !llvm.loop !799

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(44) %.sroa.0, i64 44, i1 false)
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !189 ; 3 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !190
  store <2 x ptr> %i.i, ptr %i.d, align 8, !tbaa !291
  store ptr %i.k, ptr %i.e, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #38
  br label %_ZN9Stockfish6Search8RootMoveD2Ev.exit

_ZN9Stockfish6Search8RootMoveD2Ev.exit:           ; preds = %bb.e, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %.sroa.05.i.sroa.0.0.copyload = load <36 x i8>, ptr %.sroa.010.023, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn22, i64 112
  %i.ak = load i32, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %.pn22, i64 120 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !291
  %i.an = getelementptr inbounds nuw i8, ptr %.pn22, i64 136
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !190
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  %i.ap = getelementptr i8, ptr %.pn22, i64 36
  %.val2.i16.i = load i32, ptr %i.ap, align 4, !tbaa !188
  %i.aq = icmp sgt i32 %.val.i, %.val2.i16.i
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i
  %.sroa.012.017.i = phi ptr [ %.sroa.0.018.i, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i ], [ %.sroa.010.023, %bb.f ] ; 8 uses
  %.sroa.0.018.i = getelementptr inbounds i8, ptr %.sroa.012.017.i, i64 -72 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.012.017.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.018.i, i64 44, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 48 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.012.017.i, i64 -24 ; 3 uses
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.017.i, i64 64 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !190
  %i.aw = load <2 x ptr>, ptr %i.as, align 8, !tbaa !291
  store <2 x ptr> %i.aw, ptr %i.ar, align 8, !tbaa !291
  %i.ax = getelementptr inbounds i8, ptr %.sroa.012.017.i, i64 -8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !190
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = ptrtoint ptr %i.at to i64
  %i.bb = sub i64 %i.az, %i.ba
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.bb) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i:      ; preds = %bb.g, %.lr.ph.i
  %i.bc = getelementptr i8, ptr %.sroa.012.017.i, i64 -108
  %.val2.i.i = load i32, ptr %i.bc, align 4, !tbaa !188
  %i.bd = icmp sgt i32 %.val.i, %.val2.i.i
  br i1 %i.bd, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !828

._crit_edge.loopexit.i:                           ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i
  %i.be = getelementptr inbounds i8, ptr %.sroa.012.017.i, i64 -8
  %.pre.i = load ptr, ptr %i.as, align 8, !tbaa !189
  %.pre20.i = load ptr, ptr %i.be, align 8, !tbaa !190
  %i.bf = ptrtoint ptr %.pre20.i to i64
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.f
  %i.bg = phi i64 [ 0, %bb.f ], [ %i.bf, %._crit_edge.loopexit.i ]
  %i.bh = phi ptr [ null, %bb.f ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 3 uses
  %.sroa.012.0.lcssa.i = phi ptr [ %.sroa.010.023, %bb.f ], [ %.sroa.0.018.i, %._crit_edge.loopexit.i ] ; 5 uses
  store <36 x i8> %.sroa.05.i.sroa.0.0.copyload, ptr %.sroa.012.0.lcssa.i, align 8
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i, i64 36
  store i32 %.val.i, ptr %.sroa.4.0..sroa_idx6.i, align 4
  %.sroa.5.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i, i64 40
  store i32 %i.ak, ptr %.sroa.5.0..sroa_idx8.i, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i, i64 48
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.012.0.lcssa.i, i64 64
  store <2 x ptr> %i.am, ptr %i.bi, align 8, !tbaa !291
  store ptr %i.ao, ptr %i.bj, align 8, !tbaa !190
  %.not.i.i.i.i.i.i1.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i1.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = sub i64 %i.bg, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bl) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i, %_ZN9Stockfish6Search8RootMoveD2Ev.exit
  %.sroa.010.0 = getelementptr inbounds nuw i8, ptr %.sroa.010.023, i64 72 ; 2 uses
  %.not = icmp eq ptr %.sroa.010.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !829

.loopexit:                                        ; preds = %bb.i, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterIZNS2_16syzygy_extend_pvERKNS2_10OptionsMapERKNS3_10LimitsTypeERNS2_8PositionERS4_RiE3$_1EEET0_T_SP_SP_SP_SO_T1_"(ptr %0, ptr %1, ptr %2, ptr %3, ptr nofree noundef captures(ret: address, provenance) %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %or.cond28 = select i1 %i.a, i1 %i.b, i1 false
  br i1 %or.cond28, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.031 = phi ptr [ %i.ab, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %.sroa.024.030 = phi ptr [ %.sroa.024.1, %bb.f ], [ %0, %bb.a ] ; 6 uses
  %.sroa.020.029 = phi ptr [ %.sroa.020.1, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %i.c = getelementptr i8, ptr %.sroa.020.029, i64 36
  %.val.i = load i32, ptr %i.c, align 4, !tbaa !188
  %i.d = getelementptr i8, ptr %.sroa.024.030, i64 36
  %.val1.i = load i32, ptr %i.d, align 4, !tbaa !188
  %i.e = icmp sgt i32 %.val.i, %.val1.i
  %i.f = getelementptr inbounds nuw i8, ptr %.031, i64 48 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.031, i64 64 ; 4 uses
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.031, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.020.029, i64 44, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 48 ; 2 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !189  ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.k = load <2 x ptr>, ptr %i.h, align 8, !tbaa !291
  store <2 x ptr> %i.k, ptr %i.f, align 8, !tbaa !291
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !190
  store ptr %i.m, ptr %i.g, align 8, !tbaa !190
  %.not.i.i.i.i.i.i = icmp eq ptr %i.i, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.p) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit:        ; preds = %bb.b, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.020.029, i64 72
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.031, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.024.030, i64 44, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !189  ; 3 uses
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !190
  %i.u = load <2 x ptr>, ptr %i.r, align 8, !tbaa !291
  store <2 x ptr> %i.u, ptr %i.f, align 8, !tbaa !291
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !190
  store ptr %i.w, ptr %i.g, align 8, !tbaa !190
  %.not.i.i.i.i.i.i9 = icmp eq ptr %i.s, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i9, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.z) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10:      ; preds = %bb.d, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.024.030, i64 72
  br label %bb.f

bb.f:                                             ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit
  %.sroa.020.1 = phi ptr [ %i.q, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit ], [ %.sroa.020.029, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10 ] ; 3 uses
  %.sroa.024.1 = phi ptr [ %.sroa.024.030, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit ], [ %i.aa, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit10 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.031, i64 72 ; 2 uses
  %i.ac = icmp ne ptr %.sroa.024.1, %1
  %i.ad = icmp ne ptr %.sroa.020.1, %3
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !821

.critedge:                                        ; preds = %bb.f, %bb.a
  %.sroa.020.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.020.1, %bb.f ] ; 2 uses
  %.sroa.024.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.024.1, %bb.f ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %.sroa.024.0.lcssa to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %.critedge
  %i.ai = udiv exact i64 %i.ag, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aw, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %i.ai, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.av, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.au, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ], [ %.sroa.024.0.lcssa, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i, i64 44, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !189 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !190
  %i.ao = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !291
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !291
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !190
  store ptr %i.aq, ptr %i.am, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = ptrtoint ptr %i.al to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.at) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 2 uses
  %i.aw = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ax = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.av, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i ]
  %i.ay = ptrtoint ptr %3 to i64
  %i.az = ptrtoint ptr %.sroa.020.0.lcssa to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 2 uses
  %i.bb = icmp sgt i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader.i.i.i.i.i12, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19

.lr.ph.preheader.i.i.i.i.i12:                     ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  %i.bc = udiv exact i64 %i.ba, 72
  br label %.lr.ph.i.i.i.i.i13

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, %.lr.ph.preheader.i.i.i.i.i12
  %.012.i.i.i.i.i14 = phi i64 [ %i.bq, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %i.bc, %.lr.ph.preheader.i.i.i.i.i12 ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.bp, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %.08.lcssa.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i12 ] ; 4 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.bo, %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18 ], [ %.sroa.020.0.lcssa, %.lr.ph.preheader.i.i.i.i.i12 ] ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i16, i64 44, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 48 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 48 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !189 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 64 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !190
  %i.bi = load <2 x ptr>, ptr %i.be, align 8, !tbaa !291
  store <2 x ptr> %i.bi, ptr %i.bd, align 8, !tbaa !291
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !190
  store ptr %i.bk, ptr %i.bg, align 8, !tbaa !190
  %.not.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.bf, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17, label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i13
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = ptrtoint ptr %i.bf to i64
  %i.bn = sub i64 %i.bl, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bn) #38
  br label %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18

_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18: ; preds = %bb.h, %.lr.ph.i.i.i.i.i13
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 72
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 72
  %i.bq = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.br = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19, !llvm.loop !795

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit19: ; preds = %_ZN9Stockfish6Search8RootMoveaSEOS1_.exit.i.i.i.i.i18, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN9Stockfish6Search8RootMoveESt6vectorIS4_SaIS4_EEEES5_ET0_T_SB_SA_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt12__move_mergeIPN9Stockfish6Search8RootMoveEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEENS4_5__ops15_Iter_comp_iterIZNS0_16syzygy_extend_pvERKNS0_10OptionsMapERKNS1_10LimitsTypeERNS0_8PositionERS2_RiE3$_1EEET0_T_SP_SP_SP_SO_T1_"(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) unnamed_addr #4 {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.034 = phi ptr [ %.1, %bb.f ], [ %0, %bb.a ]   ; 6 uses
  %.01633 = phi ptr [ %.117, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %.sroa.0.032 = phi ptr [ %i.ac, %bb.f ], [ %4, %bb.a ] ; 5 uses
  %i.d = getelementptr i8, ptr %.01633, i64 36
  %.016.val = load i32, ptr %i.d, align 4, !tbaa !188
  %i.e = getelementptr i8, ptr %.034, i64 36
  %.0.val = load i32, ptr %i.e, align 4, !tbaa !188
end_hunk_1
