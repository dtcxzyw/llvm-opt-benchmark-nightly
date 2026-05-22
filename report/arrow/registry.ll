inline.NumInlined: 1105
inline.NumDeleted: 468
begin_hunk_0_@_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a

bb.l:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %.noexc6.i.i, %.noexc.i.i
  %i.bo = landingpad { ptr, i32 }
          catch ptr null
  %i.bp = extractvalue { ptr, i32 } %i.bo, 0
  %i.bq = tail call ptr @__cxa_begin_catch(ptr %i.bp) #26 ; 0 uses
  %i.br = shl nuw nsw i64 %i.l, 5
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.br) #25
  invoke void @__cxa_rethrow() #27
          to label %bb.p unwind label %bb.l

bb.n:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.bn

bb.o:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          catch ptr null
  %i.bt = extractvalue { ptr, i32 } %i.bs, 0
  tail call void @__clang_call_terminate(ptr %i.bt) #28
  unreachable

bb.p:                                             ; preds = %bb.m
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 16
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph47

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit
  %i.j = icmp eq i64 %i.bj, 0
  br i1 %i.j, label %._crit_edge, label %.lr.ph47, !llvm.loop !228

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.021.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.k, %.lr.ph.i8.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.k = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -32 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr nonnull %i.k, ptr nonnull %i.k, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.b
  %i.n = icmp sgt i64 %i.m, 32
  br i1 %i.n, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit, !llvm.loop !229

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph47:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1746 = phi ptr [ %.sroa.021.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01845 = phi i64 [ %i.bj, %bb.b ], [ %2, %.lr.ph ]
  %i.o = phi i64 [ %i.bm, %bb.b ], [ %i.e, %.lr.ph ]
  %i.p = lshr i64 %i.o, 1
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.p
  %i.r = getelementptr inbounds i8, ptr %storemerge1746, i64 -32
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr nonnull %i.g, ptr %i.q, ptr nonnull %i.r)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge, %.lr.ph47
  %.sroa.021.0.i.i = phi ptr [ %i.g, %.lr.ph47 ], [ %i.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge1746, %.lr.ph47 ], [ %.sroa.0.1.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge ]
  %i.s = load i64, ptr %i.h, align 8, !tbaa !121  ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit
  %.sroa.021.1.i.i = phi ptr [ %.sroa.021.0.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit ], [ %i.ab, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i ] ; 15 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !121  ; 7 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.s, i64 %i.u) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !96
  %i.x = load ptr, ptr %.sroa.021.1.i.i, align 8, !tbaa !96
  %i.y = tail call i32 @memcmp(ptr noundef %i.x, ptr noundef %i.w, i64 noundef %.sroa.speculated.i.i.i.i.i) #26 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.c
  %i.z = sub i64 %i.u, %i.s
  %spec.select7.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i.i, i64 32 ; 2 uses
  br i1 %i.aa, label %bb.c, label %.preheader.i.i.preheader, !llvm.loop !230

.preheader.i.i.preheader:                         ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i.i, i64 8 ; 5 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 5 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 10 uses
  %i.ad = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121 ; 8 uses
  %.sroa.speculated.i.i.i10.i.i = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.s) ; 2 uses
  %i.af = icmp eq i64 %.sroa.speculated.i.i.i10.i.i, 0
  br i1 %i.af, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i.i: ; preds = %.preheader.i.i
  %i.ag = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  %i.ah = load ptr, ptr %0, align 8, !tbaa !96
  %i.ai = tail call i32 @memcmp(ptr noundef %i.ah, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i10.i.i) #26 ; 2 uses
  %.not.i.i.i12.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i.i.i12.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i.i, %.preheader.i.i
  %i.aj = sub i64 %i.s, %i.ae
  %spec.select7.i.i.i.i15.i.i = tail call i64 @llvm.smax.i64(i64 %i.aj, i64 -2147483648)
  %.08.i.i.i.i16.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i15.i.i, i64 2147483647)
  %.0.i6.i.i.i17.i.i = trunc nsw i64 %.08.i.i.i.i16.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i.i
  %.0.i.i.i13.i.i = phi i32 [ %i.ai, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i11.i.i ], [ %.0.i6.i.i.i17.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i14.i.i ]
  %i.ak = icmp slt i32 %.0.i.i.i13.i.i, 0
  br i1 %i.ak, label %.preheader.i.i, label %bb.d, !llvm.loop !231

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit18.i.i
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 5 uses
  %.not.i.i = icmp ult ptr %.sroa.021.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.e, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %.sroa.021.1.i.i, align 8, !tbaa !96 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.021.1.i.i, i64 16 ; 11 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ap = icmp ult i64 %i.u, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !96 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 8 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.g, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i

bb.g:                                             ; preds = %bb.f
  %i.at = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.at)
  %.not.i = icmp eq i64 %i.u, 0
  %.not38.i = icmp eq i64 %i.ae, 0                ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not38.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i:       ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.au = add nuw nsw i64 %i.ae, 1                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.au, i1 false)
  %i.av = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.av, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.au, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  br i1 %.not38.i, label %bb.k, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i:       ; preds = %bb.i
  %i.aw = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.aw, i1 false)
  %.pre52.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  %.pre51.i = load i64, ptr %i.al, align 8, !tbaa !121
  store i64 %.pre51.i, ptr %i.ac, align 8, !tbaa !121
  store i64 0, ptr %i.al, align 8, !tbaa !121
  store i8 0, ptr %.pre52.i, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i, %bb.k
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit, !llvm.loop !232

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44.i:       ; preds = %bb.h
  %i.ax = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.ax, i1 false)
  %.pre50.i = load ptr, ptr %.sroa.021.1.i.i, align 8, !tbaa !96
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !121
  store i64 %.pre.i, ptr %i.al, align 8, !tbaa !121
  store i64 0, ptr %i.ac, align 8, !tbaa !121
  store i8 0, ptr %.pre50.i, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i:       ; preds = %bb.f
  %i.ay = load i64, ptr %i.ar, align 8, !tbaa !70
  %i.az = add nuw nsw i64 %i.u, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.az, i1 false)
  store ptr %i.aq, ptr %.sroa.021.1.i.i, align 8, !tbaa !96
  store ptr %i.ar, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  store i64 %i.ay, ptr %i.an, align 8, !tbaa !70
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  %i.ba = load i64, ptr %i.an, align 8, !tbaa !70
  %i.bb = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !96 ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 4 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i:       ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.be = icmp ult i64 %i.ae, 16
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = add nuw nsw i64 %i.ae, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false)
  store ptr %i.am, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  store ptr %i.an, ptr %.sroa.021.1.i.i, align 8, !tbaa !96
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.bb, ptr %.sroa.021.1.i.i, align 8, !tbaa !96
  store ptr %i.am, ptr %.sroa.0.1.i.i, align 8, !tbaa !96
  %i.bg = load i64, ptr %i.bc, align 8, !tbaa !70
  store i64 %i.bg, ptr %i.an, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47.i
  store i64 %i.ba, ptr %i.bc, align 8, !tbaa !70
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45.i, %bb.i, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42.i
  %i.bh = load i64, ptr %i.ac, align 8, !tbaa !121
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !121
  store i64 %i.bi, ptr %i.ac, align 8, !tbaa !121
  store i64 %i.bh, ptr %i.al, align 8, !tbaa !121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_.exit.backedge

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit: ; preds = %bb.d
  %i.bj = add nsw i64 %.01845, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_less_iterEEvT_SF_T0_T1_(ptr %.sroa.021.1.i.i, ptr %storemerge1746, i64 noundef %i.bj)
  %i.bk = ptrtoint ptr %.sroa.021.1.i.i to i64
  %i.bl = sub i64 %i.bk, %i.b
  %i.bm = ashr exact i64 %i.bl, 5                 ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 16
  br i1 %i.bn, label %bb.b, label %.loopexit, !llvm.loop !228

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEET_SF_SF_T0_.exit, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  %i.l = getelementptr inbounds [32 x i8], ptr %0, i64 %.08 ; 8 uses
  store ptr %i.h, ptr %3, align 8, !tbaa !120
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 7 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121  ; 3 uses
  %i.r = icmp ult i64 %i.q, 16
  call void @llvm.assume(i1 %i.r)
  %i.s = add nuw nsw i64 %i.q, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.n, i64 %i.s, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !96
  store i64 0, ptr %i.t, align 8, !tbaa !121
  store i8 0, ptr %i.n, align 8, !tbaa !70
  store ptr %i.j, ptr %4, align 8, !tbaa !120
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c
  %i.u = load i64, ptr %i.n, align 8, !tbaa !70
  store i64 %i.u, ptr %i.h, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !121 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.l, align 8, !tbaa !96
  store i64 0, ptr %i.v, align 8, !tbaa !121
  store i8 0, ptr %i.n, align 8, !tbaa !70
  store ptr %i.j, ptr %4, align 8, !tbaa !120
  %i.w = icmp eq ptr %i.m, %i.h
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.x = phi i64 [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.z, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.m, ptr %4, align 8, !tbaa !96
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !70
  store i64 %i.aa, ptr %i.j, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
  %i.ab = phi i64 [ %i.x, %bb.d ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9 ]
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !121
  store ptr %i.h, ptr %3, align 8, !tbaa !96
  store i64 0, ptr %i.i, align 8, !tbaa !121
  store i8 0, ptr %i.h, align 8, !tbaa !70
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_less_iterEEvT_T0_SG_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.ac = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.j
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.ae = load i64, ptr %i.j, align 8, !tbaa !70
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.not = icmp eq i64 %.08, 0
  %i.ag = add nsw i64 %.08, -1
  %i.ah = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.h
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.h, align 8, !tbaa !70
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !233

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit10
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %4, align 8, !tbaa !96    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.j
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.f
  %i.ao = load i64, ptr %i.j, align 8, !tbaa !70
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  %i.aq = load ptr, ptr %3, align 8, !tbaa !96    ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.h
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
  %i.as = load i64, ptr %i.h, align 8, !tbaa !70
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  resume { ptr, i32 } %i.al

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 12 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !120
  %i.b = load ptr, ptr %2, align 8, !tbaa !96     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !121  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %4, align 8, !tbaa !96
  %i.i = load i64, ptr %i.c, align 8, !tbaa !70
  store i64 %i.i, ptr %i.a, align 8, !tbaa !70
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !121
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %bb.b
  %i.j = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ %i.f, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  store i64 %i.j, ptr %i.l, align 8, !tbaa !121
  store ptr %i.c, ptr %2, align 8, !tbaa !96
  store i64 0, ptr %i.k, align 8, !tbaa !121
  store i8 0, ptr %i.c, align 8, !tbaa !70
  %i.m = load ptr, ptr %0, align 8, !tbaa !96     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !121  ; 3 uses
end_hunk_0
begin_hunk_1_@_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops14_Iter_less_valEEvT_T0_SG_T1_RT2_:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit18: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14, %bb.n, %bb.o
  %i.be = phi ptr [ %.pre.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i14 ], [ %i.ah, %bb.n ], [ %i.al, %bb.o ], [ %i.ak, %bb.j ]
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.bf, align 8, !tbaa !121
  store i8 0, ptr %i.be, align 1, !tbaa !70
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_SF_SF_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !121  ; 6 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %i.f = load ptr, ptr %2, align 8, !tbaa !96
  %i.g = load ptr, ptr %1, align 8, !tbaa !96
  %i.h = tail call i32 @memcmp(ptr noundef %i.g, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.a
  %i.i = sub i64 %i.b, %i.d
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.i, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.h, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.j = icmp slt i32 %.0.i.i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !121  ; 8 uses
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %.sroa.speculated.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i26, 0
  br i1 %i.m, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27: ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8, !tbaa !96
  %i.o = load ptr, ptr %2, align 8, !tbaa !96
  %i.p = tail call i32 @memcmp(ptr noundef %i.o, ptr noundef %i.n, i64 noundef %.sroa.speculated.i.i.i26) #26 ; 2 uses
  %.not.i.i.i28 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i28, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %bb.b
  %i.q = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i31 = tail call i64 @llvm.smax.i64(i64 %i.q, i64 -2147483648)
  %.08.i.i.i.i32 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i31, i64 2147483647)
  %.0.i6.i.i.i33 = trunc nsw i64 %.08.i.i.i.i32 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30
  %.0.i.i.i29 = phi i32 [ %i.p, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i27 ], [ %.0.i6.i.i.i33, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i30 ]
  %i.r = icmp slt i32 %.0.i.i.i29, 0
  br i1 %i.r, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sroa.speculated.i.i.i35 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.s = icmp eq i64 %.sroa.speculated.i.i.i35, 0
  br i1 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36: ; preds = %bb.c
  %i.t = load ptr, ptr %3, align 8, !tbaa !96
  %i.u = load ptr, ptr %1, align 8, !tbaa !96
  %i.v = tail call i32 @memcmp(ptr noundef %i.u, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i35) #26 ; 2 uses
  %.not.i.i.i37 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i37, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36, %bb.c
  %i.w = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i40 = tail call i64 @llvm.smax.i64(i64 %i.w, i64 -2147483648)
  %.08.i.i.i.i41 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i40, i64 2147483647)
  %.0.i6.i.i.i42 = trunc nsw i64 %.08.i.i.i.i41 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39
  %.0.i.i.i38 = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i36 ], [ %.0.i6.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i39 ]
  %i.x = icmp slt i32 %.0.i.i.i38, 0
  %. = select i1 %i.x, ptr %3, ptr %1
  br label %bb.f

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  %.sroa.speculated.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i44, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45: ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8, !tbaa !96
  %i.aa = load ptr, ptr %1, align 8, !tbaa !96
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i44) #26 ; 2 uses
  %.not.i.i.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %bb.d
  %i.ac = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i51 = trunc nsw i64 %.08.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48
  %.0.i.i.i47 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i45 ], [ %.0.i6.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i48 ]
  %i.ad = icmp slt i32 %.0.i.i.i47, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i53, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !96
  %i.ag = load ptr, ptr %2, align 8, !tbaa !96
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i53) #26 ; 2 uses
  %.not.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i60 = trunc nsw i64 %.08.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57
  %.0.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i54 ], [ %.0.i6.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit43 ]
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !96     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !121  ; 5 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121  ; 4 uses
  %i.n = icmp ult i64 %i.m, 16
  tail call void @llvm.assume(i1 %i.n)
  %.not = icmp eq i64 %i.g, 0
  %.not38 = icmp eq i64 %i.m, 0                   ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not38, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42

_ZNSt11char_traitsIcE4copyEPcPKcm.exit42:         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = add nuw nsw i64 %i.m, 1                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.p, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.o, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  br i1 %.not38, label %bb.h, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43

_ZNSt11char_traitsIcE4copyEPcPKcm.exit43:         ; preds = %bb.f
  %i.q = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %.pre52 = load ptr, ptr %1, align 8, !tbaa !96
  %.pre51 = load i64, ptr %i.l, align 8, !tbaa !121
  store i64 %.pre51, ptr %i.f, align 8, !tbaa !121
  store i64 0, ptr %i.l, align 8, !tbaa !121
  store i8 0, ptr %.pre52, align 1, !tbaa !70
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit44:         ; preds = %bb.e
  %i.r = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.r, i1 false)
  %.pre50 = load ptr, ptr %0, align 8, !tbaa !96
  %.pre = load i64, ptr %i.f, align 8, !tbaa !121
  store i64 %.pre, ptr %i.l, align 8, !tbaa !121
  store i64 0, ptr %i.f, align 8, !tbaa !121
  store i8 0, ptr %.pre50, align 1, !tbaa !70
  br label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit45:         ; preds = %bb.c
  %i.s = load i64, ptr %i.j, align 8, !tbaa !70
  %i.t = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.t, i1 false)
  store ptr %i.i, ptr %0, align 8, !tbaa !96
  store ptr %i.j, ptr %1, align 8, !tbaa !96
  store i64 %i.s, ptr %i.d, align 8, !tbaa !70
  br label %bb.h

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit: ; preds = %bb.b
  %i.u = load i64, ptr %i.d, align 8, !tbaa !70
  %i.v = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46

_ZNSt11char_traitsIcE4copyEPcPKcm.exit47:         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !121  ; 2 uses
  %i.aa = icmp ult i64 %i.z, 16
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.w, i64 %i.ab, i1 false)
  store ptr %i.c, ptr %1, align 8, !tbaa !96
  store ptr %i.d, ptr %0, align 8, !tbaa !96
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit
  store ptr %i.v, ptr %0, align 8, !tbaa !96
  store ptr %i.c, ptr %1, align 8, !tbaa !96
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !70
  store i64 %i.ac, ptr %i.d, align 8, !tbaa !70
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit46, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit47
  store i64 %i.u, ptr %i.w, align 8, !tbaa !70
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit45, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit42, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !121
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !121
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !121
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit44, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit43, %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #19

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_less_iterEEvT_SF_T0_(ptr %0, ptr %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit19, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.020 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.020, %1
  br i1 %i.b, label %.loopexit19, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.f = ptrtoint ptr %0 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.not21.i = icmp eq ptr %2, %0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.q
  %.sroa.0.022 = phi ptr [ %.sroa.0.020, %.lr.ph ], [ %.sroa.0.0, %bb.q ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.q ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn21, i64 40 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !121  ; 5 uses
  %i.j = load i64, ptr %i.c, align 8, !tbaa !121  ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !96
  %i.m = load ptr, ptr %.sroa.0.022, align 8, !tbaa !96
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.o = sub i64 %i.i, %i.j
  %spec.select7.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS9_SaIS9_EEEESE_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.d, ptr %2, align 8, !tbaa !120
  %i.q = load ptr, ptr %.sroa.0.022, align 8, !tbaa !96 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn21, i64 48 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.u, i1 false)
  %.pre = load i64, ptr %i.h, align 8, !tbaa !121
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8, !tbaa !96
  %i.v = load i64, ptr %i.r, align 8, !tbaa !70
  store i64 %i.v, ptr %i.d, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = phi i64 [ %.pre, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  store i64 %i.w, ptr %i.e, align 8, !tbaa !121
  store ptr %i.r, ptr %.sroa.0.022, align 8, !tbaa !96
  store i64 0, ptr %i.h, align 8, !tbaa !121
  store i8 0, ptr %i.r, align 8, !tbaa !70
  %i.x = ptrtoint ptr %.sroa.0.022 to i64
  %i.y = sub i64 %i.x, %i.f
  %i.z = ashr exact i64 %i.y, 5                   ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.preheader, label %.loopexit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn21, i64 64
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %i.ab, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i ], [ %.sroa.0.022, %.lr.ph.i.i.i.i.i.preheader ] ; 6 uses
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !96 ; 6 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16 ; 4 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !96 ; 5 uses
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 6 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai                ; 2 uses
  br i1 %i.ag, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aj, label %bb.e, label %.thread.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.aj, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !121 ; 3 uses
  %i.am = icmp ult i64 %i.al, 16
  call void @llvm.assume(i1 %i.am)
  switch i64 %i.al, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.an = load i8, ptr %i.ah, align 1, !tbaa !70
  store i8 %i.an, ptr %i.ae, align 1, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ae, ptr align 1 %i.ah, i64 %i.al, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !121 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !121
  %i.aq = load ptr, ptr %i.ad, align 8, !tbaa !96
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  store i8 0, ptr %i.ar, align 1, !tbaa !70
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !96
  %i.at = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !121
  store i64 %i.au, ptr %i.as, align 8, !tbaa !121
  %i.av = load i64, ptr %i.ai, align 8, !tbaa !70
  store i64 %i.av, ptr %i.af, align 8, !tbaa !70
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !70
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !96
  %i.ax = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !121
  %i.az = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !121
  %i.ba = load i64, ptr %i.ai, align 8, !tbaa !70
  store i64 %i.ba, ptr %i.af, align 8, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !96
  store i64 %i.aw, ptr %i.ai, align 8, !tbaa !70
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i.i.i.i, %.thread.i.i.i.i.i.i
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !96
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i
  %i.bb = phi ptr [ %.pre.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i.i.i.i ], [ %i.ae, %bb.h ], [ %i.ai, %bb.i ]
  %i.bc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  store i64 0, ptr %i.bc, align 8, !tbaa !121
  store i8 0, ptr %i.bb, align 1, !tbaa !70
  %i.bd = add nsw i64 %.010.i.i.i.i.i, -1
  %i.be = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !236

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !96    ; 6 uses
  %i.bg = icmp eq ptr %i.bf, %i.g
  %i.bh = load ptr, ptr %2, align 8, !tbaa !96    ; 6 uses
  %i.bi = icmp eq ptr %i.bh, %i.d                 ; 2 uses
  %.pre25 = load i64, ptr %i.e, align 8, !tbaa !121 ; 5 uses
  br i1 %i.bg, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7: ; preds = %.loopexit
  br i1 %i.bi, label %bb.j, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %.loopexit
  br i1 %i.bi, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i7
  %i.bj = icmp ult i64 %.pre25, 16
  call void @llvm.assume(i1 %i.bj)
end_hunk_1
