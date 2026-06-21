inline.NumInlined: 8566
inline.NumDeleted: 3991
begin_hunk_0_@_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE17_M_realloc_insertIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  br i1 %.not10.i.i.i.i31, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32

.lr.ph.i.i.i.i32:                                 ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38
  %.012.i.i.i.i33 = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 6 uses
  %.0911.i.i.i.i34 = phi ptr [ %i.bz, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ], [ %1, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 16 ; 3 uses
  store ptr %i.bj, ptr %.012.i.i.i.i33, align 8, !tbaa !11, !alias.scope !1616, !noalias !1619
  %i.bk = load ptr, ptr %.0911.i.i.i.i34, align 8, !tbaa !16, !alias.scope !1619, !noalias !1616 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35

bb.i:                                             ; preds = %.lr.ph.i.i.i.i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !19, !alias.scope !1619, !noalias !1616 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false), !alias.scope !1621
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i.i32
  store ptr %i.bk, ptr %.012.i.i.i.i33, align 8, !tbaa !16, !alias.scope !1616, !noalias !1619
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !18, !alias.scope !1619, !noalias !1616
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !18, !alias.scope !1616, !noalias !1619
  %.phi.trans.insert.i.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %.pre.i.i.i.i.i37 = load i64, ptr %.phi.trans.insert.i.i.i.i.i36, align 8, !tbaa !19, !alias.scope !1619, !noalias !1616
  br label %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38

_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35, %bb.i
  %i.bs = phi i64 [ %.pre.i.i.i.i.i37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i35 ], [ %i.bo, %bb.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 8
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !19, !alias.scope !1616, !noalias !1619
  store ptr %i.bl, ptr %.0911.i.i.i.i34, align 8, !tbaa !16, !alias.scope !1619, !noalias !1616
  store i64 0, ptr %i.bt, align 8, !tbaa !19, !alias.scope !1619, !noalias !1616
  store i8 0, ptr %i.bl, align 8, !tbaa !18, !alias.scope !1619, !noalias !1616
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 32 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 40
  %i.by = load <2 x ptr>, ptr %i.bw, align 8, !tbaa !267, !alias.scope !1619, !noalias !1616
  store ptr null, ptr %i.bx, align 8, !tbaa !266, !alias.scope !1619, !noalias !1616
  store <2 x ptr> %i.by, ptr %i.bv, align 8, !tbaa !267, !alias.scope !1616, !noalias !1619
  store ptr null, ptr %i.bw, align 8, !tbaa !277, !alias.scope !1619, !noalias !1616
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i34, i64 48 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i33, i64 48 ; 2 uses
  %.not.i.i.i.i39 = icmp eq ptr %i.bz, %i.c
  br i1 %.not.i.i.i.i39, label %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, label %.lr.ph.i.i.i.i32, !llvm.loop !1603

_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41: ; preds = %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i40 = phi ptr [ %i.bi, %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.ca, %_ZSt19__relocate_object_aIN6duckdb12OpenFileInfoES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i38 ]
  %.not.i42 = icmp eq ptr %i.d, null
  br i1 %.not.i42, label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41
  call void @_ZdlPv(ptr noundef nonnull %i.d) #34
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb12OpenFileInfoESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit41, %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %0, align 8, !tbaa !192
  store ptr %.0.lcssa.i.i.i.i40, ptr %i.b, align 8, !tbaa !189
  %i.cc = getelementptr inbounds nuw [48 x i8], ptr %i.r, i64 %i.m
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !276
  ret void

.body:                                            ; preds = %.noexc.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  %i.cf = call ptr @__cxa_begin_catch(ptr %i.ce) #32 ; 0 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread, label %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread: ; preds = %.body
  call void @_ZN6duckdb12OpenFileInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.s) #32
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

bb.k:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.m

_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.r) #34
  br label %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44

_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44: ; preds = %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit, %_ZSt8_DestroyIPN6duckdb12OpenFileInfoES1_EvT_S3_RSaIT0_E.exit.thread
  invoke void @__cxa_rethrow() #33
          to label %bb.n unwind label %bb.k

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %i.cg

bb.m:                                             ; preds = %bb.k
  %i.ch = landingpad { ptr, i32 }
          catch ptr null
  %i.ci = extractvalue { ptr, i32 } %i.ch, 0
  call void @__clang_call_terminate(ptr %i.ci) #35
  unreachable

bb.n:                                             ; preds = %_ZNSt12_Vector_baseIN6duckdb12OpenFileInfoESaIS1_EE13_M_deallocateEPS1_m.exit44
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 14 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 768
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph69

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit
  %i.l = icmp eq i64 %i.eb, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph69, !llvm.loop !1622

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge35.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.019.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_RT0_(ptr %0, ptr %storemerge35.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.lr.ph.i8.i

.lr.ph.i8.i:                                      ; preds = %._crit_edge, %.lr.ph.i8.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i8.i ], [ %storemerge35.lcssa, %._crit_edge ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -48 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_RT0_(ptr %0, ptr nonnull %i.m, ptr nonnull %i.m, ptr noundef nonnull align 1 dereferenceable(1) %5)
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.a
  %i.p = icmp sgt i64 %i.o, 48
  br i1 %i.p, label %.lr.ph.i8.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit, !llvm.loop !1623

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_.exit: ; preds = %.lr.ph.i8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %.loopexit

.lr.ph69:                                         ; preds = %.lr.ph, %bb.b
  %storemerge3568 = phi ptr [ %.sroa.019.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03667 = phi i64 [ %i.eb, %bb.b ], [ %2, %.lr.ph ]
  %i.q = phi i64 [ %i.ed, %bb.b ], [ %i.c, %.lr.ph ]
  %i.r = udiv i64 %i.q, 96
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %storemerge3568, i64 -48
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_(ptr %0, ptr nonnull %i.e, ptr %i.s, ptr nonnull %i.t)
  br label %bb.c

bb.c:                                             ; preds = %_ZSt4swapIN6duckdb12OpenFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit, %.lr.ph69
  %.sroa.019.0.i.i = phi ptr [ %i.e, %.lr.ph69 ], [ %i.ad, %_ZSt4swapIN6duckdb12OpenFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge3568, %.lr.ph69 ], [ %.sroa.0.1.i.i, %_ZSt4swapIN6duckdb12OpenFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_.exit ]
  %i.u = load i64, ptr %i.f, align 8, !tbaa !19   ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i, %bb.c
  %.sroa.019.1.i.i = phi ptr [ %.sroa.019.0.i.i, %bb.c ], [ %i.ad, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i ] ; 15 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !19   ; 5 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.x = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !16
  %i.z = load ptr, ptr %.sroa.019.1.i.i, align 8, !tbaa !16
  %i.aa = call i32 @memcmp(ptr noundef %i.z, ptr noundef %i.y, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.d
  %i.ab = sub i64 %i.w, %i.u
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ab, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.aa, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ac = icmp slt i32 %.0.i.i.i.i.i.i, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 48 ; 2 uses
  br i1 %i.ac, label %bb.d, label %.preheader.i.i.preheader, !llvm.loop !1624

.preheader.i.i.preheader:                         ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 8 ; 4 uses
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.preheader ] ; 6 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -48 ; 12 uses
  %i.af = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !19 ; 2 uses
  %.sroa.speculated.i.i.i.i8.i.i = call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.u) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i8.i.i, 0
  br i1 %i.ah, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i12.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9.i.i: ; preds = %.preheader.i.i
  %i.ai = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  %i.aj = load ptr, ptr %0, align 8, !tbaa !16
  %i.ak = call i32 @memcmp(ptr noundef %i.aj, ptr noundef %i.ai, i64 noundef %.sroa.speculated.i.i.i.i8.i.i) #32 ; 2 uses
  %.not.i.i.i.i10.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i.i.i10.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i12.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i12.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9.i.i, %.preheader.i.i
  %i.al = sub i64 %i.u, %i.ag
  %spec.select7.i.i.i.i.i13.i.i = call i64 @llvm.smax.i64(i64 %i.al, i64 -2147483648)
  %.08.i.i.i.i.i14.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i13.i.i, i64 2147483647)
  %.0.i6.i.i.i.i15.i.i = trunc nsw i64 %.08.i.i.i.i.i14.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i12.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9.i.i
  %.0.i.i.i.i11.i.i = phi i32 [ %i.ak, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i9.i.i ], [ %.0.i6.i.i.i.i15.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i12.i.i ]
  %i.am = icmp slt i32 %.0.i.i.i.i11.i.i, 0
  br i1 %i.am, label %.preheader.i.i, label %bb.e, !llvm.loop !1625

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit16.i.i
  %i.an = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -40 ; 7 uses
  %i.ao = icmp ult ptr %.sroa.019.1.i.i, %.sroa.0.1.i.i
  br i1 %i.ao, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEET_SB_SB_T0_.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.g, ptr %3, align 8, !tbaa !11
  %i.ap = load ptr, ptr %.sroa.019.1.i.i, align 8, !tbaa !16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 16 ; 9 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.as = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.w, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.aq, i64 %i.at, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  store ptr %i.ap, ptr %3, align 8, !tbaa !16
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !18
  store i64 %i.au, ptr %i.g, align 8, !tbaa !18
  %.pre.i = load i64, ptr %i.ae, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %6 = phi i64 [ %i.w, %bb.g ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  store i64 %6, ptr %i.h, align 8, !tbaa !19
  store ptr %i.aq, ptr %.sroa.019.1.i.i, align 8, !tbaa !16
  store i64 0, ptr %i.ae, align 8, !tbaa !19
  store i8 0, ptr %i.aq, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 32 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.019.1.i.i, i64 40 ; 2 uses
  %i.ax = load <2 x ptr>, ptr %i.av, align 8, !tbaa !267
  store ptr null, ptr %i.aw, align 8, !tbaa !266
  store <2 x ptr> %i.ax, ptr %i.i, align 8, !tbaa !267
  store ptr null, ptr %i.av, align 8, !tbaa !277
  %i.ay = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !16 ; 4 uses
  %i.az = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -32 ; 8 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %i.bb = load i64, ptr %i.an, align 8, !tbaa !19 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  call void @llvm.assume(i1 %i.bc)
  switch i64 %i.bb, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.bd = load i8, ptr %i.ay, align 1, !tbaa !18
  store i8 %i.bd, ptr %i.aq, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr align 1 %i.ay, i64 %i.bb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24: ; preds = %bb.j, %bb.i, %bb.h
  %i.be = load i64, ptr %i.an, align 8, !tbaa !19 ; 2 uses
  store i64 %i.be, ptr %i.ae, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.be
  store i8 0, ptr %i.bf, align 1, !tbaa !18
  %.pre.i.i25 = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i18

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  store ptr %i.ay, ptr %.sroa.019.1.i.i, align 8, !tbaa !16
  %i.bg = load i64, ptr %i.an, align 8, !tbaa !19
  store i64 %i.bg, ptr %i.ae, align 8, !tbaa !19
  %i.bh = load i64, ptr %i.az, align 8, !tbaa !18
  store i64 %i.bh, ptr %i.aq, align 8, !tbaa !18
  store ptr %i.az, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i18: ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24
  %i.bi = phi ptr [ %.pre.i.i25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i24 ], [ %i.az, %bb.k ]
  store i64 0, ptr %i.an, align 8, !tbaa !19
  store i8 0, ptr %i.bi, align 1, !tbaa !18
  %i.bj = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16 ; 3 uses
  %i.bk = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.bl = load <2 x ptr>, ptr %i.bj, align 8, !tbaa !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, i8 0, i64 16, i1 false)
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !266 ; 8 uses
  store <2 x ptr> %i.bl, ptr %i.av, align 8, !tbaa !267
  %.not.i.i.i.i.i19 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i19, label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28, label %bb.l

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.bn, align 8, !tbaa !268
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !270
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #32, !inline_history !1626
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !20
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #32, !inline_history !1626
  br label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28

bb.n:                                             ; preds = %bb.l
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i20 = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21

bb.p:                                             ; preds = %bb.n
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i.i.i.i22 = phi i32 [ %i.bq, %bb.o ], [ %i.ca, %bb.p ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i22, 1
  br i1 %i.cb, label %bb.q, label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28, !prof !159

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #32
  br label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28

_ZN6duckdb12OpenFileInfoaSEOS0_.exit28:           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i18, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i21, %bb.q
  %i.cc = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !16 ; 6 uses
  %i.cd = icmp eq ptr %i.cc, %i.az
  %i.ce = load ptr, ptr %3, align 8, !tbaa !16    ; 6 uses
  %i.cf = icmp eq ptr %i.ce, %i.g                 ; 2 uses
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28
  br i1 %i.cf, label %bb.r, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN6duckdb12OpenFileInfoaSEOS0_.exit28
  br i1 %i.cf, label %bb.r, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.cg = load i64, ptr %i.h, align 8, !tbaa !19  ; 3 uses
  %i.ch = icmp ult i64 %i.cg, 16
  call void @llvm.assume(i1 %i.ch)
  %.not21.i.i = icmp eq ptr %3, %.sroa.0.1.i.i
  br i1 %.not21.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, label %bb.s, !prof !159

bb.s:                                             ; preds = %bb.r
  switch i64 %i.cg, label %bb.u [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  %i.ci = load i8, ptr %i.ce, align 1, !tbaa !18
  store i8 %i.ci, ptr %i.cc, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.ce, i64 %i.cg, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.u, %bb.t, %bb.s
  %i.cj = load i64, ptr %i.h, align 8, !tbaa !19  ; 2 uses
  store i64 %i.cj, ptr %i.an, align 8, !tbaa !19
  %i.ck = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 0, ptr %i.cl, align 1, !tbaa !18
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  store ptr %i.ce, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  %i.cm = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.cm, ptr %i.an, align 8, !tbaa !19
  %i.cn = load i64, ptr %i.g, align 8, !tbaa !18
  store i64 %i.cn, ptr %i.az, align 8, !tbaa !18
  br label %bb.w

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.co = load i64, ptr %i.az, align 8, !tbaa !18
  store ptr %i.ce, ptr %.sroa.0.1.i.i, align 8, !tbaa !16
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !19
  store i64 %i.cp, ptr %i.an, align 8, !tbaa !19
  %i.cq = load i64, ptr %i.g, align 8, !tbaa !18
  store i64 %i.cq, ptr %i.az, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.cc, ptr %3, align 8, !tbaa !16
  store i64 %i.co, ptr %i.g, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.g, ptr %3, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.w, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.r
  %i.cr = phi ptr [ %i.cc, %bb.v ], [ %i.g, %bb.w ], [ %i.ce, %bb.r ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  store i64 0, ptr %i.h, align 8, !tbaa !19
  store i8 0, ptr %i.cr, align 1, !tbaa !18
  %i.cs = load <2 x ptr>, ptr %i.i, align 8, !tbaa !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.ct = load ptr, ptr %i.bk, align 8, !tbaa !266 ; 8 uses
  store <2 x ptr> %i.cs, ptr %i.bj, align 8, !tbaa !267
  %.not.i.i.i.i.i11 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i.i11, label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 4 uses
  %i.cv = load atomic i64, ptr %i.cu acquire, align 8 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 4294967297
  %i.cx = trunc i64 %i.cv to i32                  ; 2 uses
  br i1 %i.cw, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.cu, align 8, !tbaa !268
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 12
  store i32 0, ptr %i.cy, align 4, !tbaa !270
  %i.cz = load ptr, ptr %i.ct, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_SB_SB_T0_:bb.a
  %.0.i6.i.i.i.i42 = trunc nsw i64 %.08.i.i.i.i.i41 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit43

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit43: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i36, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39
  %.0.i.i.i.i38 = phi i32 [ %i.v, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i36 ], [ %.0.i6.i.i.i.i42, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i39 ]
  %i.x = icmp slt i32 %.0.i.i.i.i38, 0
  %. = select i1 %i.x, ptr %3, ptr %1
  br label %bb.f

bb.d:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  %.sroa.speculated.i.i.i.i44 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.b) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i44, 0
  br i1 %i.y, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45: ; preds = %bb.d
  %i.z = load ptr, ptr %3, align 8, !tbaa !16
  %i.aa = load ptr, ptr %1, align 8, !tbaa !16
  %i.ab = tail call i32 @memcmp(ptr noundef %i.aa, ptr noundef %i.z, i64 noundef %.sroa.speculated.i.i.i.i44) #32 ; 2 uses
  %.not.i.i.i.i46 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i.i46, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45, %bb.d
  %i.ac = sub i64 %i.b, %i.l
  %spec.select7.i.i.i.i.i49 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 -2147483648)
  %.08.i.i.i.i.i50 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i49, i64 2147483647)
  %.0.i6.i.i.i.i51 = trunc nsw i64 %.08.i.i.i.i.i50 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48
  %.0.i.i.i.i47 = phi i32 [ %i.ab, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i45 ], [ %.0.i6.i.i.i.i51, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i48 ]
  %i.ad = icmp slt i32 %.0.i.i.i.i47, 0
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52
  %.sroa.speculated.i.i.i.i53 = tail call i64 @llvm.umin.i64(i64 %i.l, i64 %i.d) ; 2 uses
  %i.ae = icmp eq i64 %.sroa.speculated.i.i.i.i53, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54: ; preds = %bb.e
  %i.af = load ptr, ptr %3, align 8, !tbaa !16
  %i.ag = load ptr, ptr %2, align 8, !tbaa !16
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i53) #32 ; 2 uses
  %.not.i.i.i.i55 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i55, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit61

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54, %bb.e
  %i.ai = sub i64 %i.d, %i.l
  %spec.select7.i.i.i.i.i58 = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i59 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i58, i64 2147483647)
  %.0.i6.i.i.i.i60 = trunc nsw i64 %.08.i.i.i.i.i59 to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit61

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit61: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57
  %.0.i.i.i.i56 = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i54 ], [ %.0.i6.i.i.i.i60, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i57 ]
  %i.aj = icmp slt i32 %.0.i.i.i.i56, 0
  %.66 = select i1 %i.aj, ptr %3, ptr %2
  br label %bb.f

bb.f:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit61, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit43, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit34
  %.sink = phi ptr [ %2, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit34 ], [ %1, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit52 ], [ %.66, %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit61 ], [ %., %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit43 ]
  tail call void @_ZSt4swapIN6duckdb12OpenFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %.sink) #32
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZSt4swapIN6duckdb12OpenFileInfoEENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS5_ESt18is_move_assignableIS5_EEE5valueEvE4typeERS5_SE_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !11
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZN6duckdb12OpenFileInfoC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %2, align 8, !tbaa !16
  %i.i = load i64, ptr %i.c, align 8, !tbaa !18
  store i64 %i.i, ptr %i.a, align 8, !tbaa !18
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !19
  br label %_ZN6duckdb12OpenFileInfoC2EOS0_.exit

_ZN6duckdb12OpenFileInfoC2EOS0_.exit:             ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !19
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  store i64 0, ptr %i.k, align 8, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load <2 x ptr>, ptr %i.n, align 8, !tbaa !267
  store ptr null, ptr %i.p, align 8, !tbaa !266
  store <2 x ptr> %i.q, ptr %i.m, align 8, !tbaa !267
  store ptr null, ptr %i.n, align 8, !tbaa !277
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb12OpenFileInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #32 ; 0 uses
  %i.s = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb12OpenFileInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) #32 ; 0 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !266  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb12OpenFileInfoC2EOS0_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.v = load atomic i64, ptr %i.u acquire, align 8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 4294967297
  %i.x = trunc i64 %i.v to i32                    ; 2 uses
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.u, align 8, !tbaa !268
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  store i32 0, ptr %i.y, align 4, !tbaa !270
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #32, !inline_history !272
  %i.ac = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #32, !inline_history !272
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.x, -1
  store i32 %i.ag, ptr %i.u, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ah = atomicrmw volatile add ptr %i.u, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.x, %bb.f ], [ %i.ah, %bb.g ]
  %i.ai = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ai, label %bb.h, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, !prof !159

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.t) #32
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %_ZN6duckdb12OpenFileInfoC2EOS0_.exit
  %i.aj = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.a
  br i1 %i.ak, label %_ZN6duckdb12OpenFileInfoD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.aj) #34
  br label %_ZN6duckdb12OpenFileInfoD2Ev.exit

_ZN6duckdb12OpenFileInfoD2Ev.exit:                ; preds = %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 10 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.0.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.g = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.w
  %.sroa.0.022 = phi ptr [ %.sroa.0.019, %.lr.ph ], [ %.sroa.0.0, %bb.w ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.022, %bb.w ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn21, i64 56 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !19   ; 5 uses
  %i.j = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.j, i64 %i.i) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !16
  %i.m = load ptr, ptr %.sroa.0.022, align 8, !tbaa !16
  %i.n = call i32 @memcmp(ptr noundef %i.m, ptr noundef %i.l, i64 noundef %.sroa.speculated.i.i.i.i) #32 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.b
  %i.o = sub i64 %i.i, %i.j
  %spec.select7.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.o, i64 -2147483648)
  %.08.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit

_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.n, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.p = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.p, label %bb.c, label %bb.v

bb.c:                                             ; preds = %_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPN6duckdb12OpenFileInfoESt6vectorIS5_SaIS5_EEEESA_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  store ptr %i.c, ptr %2, align 8, !tbaa !11
  %i.q = load ptr, ptr %.sroa.0.022, align 8, !tbaa !16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn21, i64 64 ; 5 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.t = icmp ult i64 %i.i, 16
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.u, i1 false)
  %.pre = load i64, ptr %i.h, align 8, !tbaa !19
  br label %_ZN6duckdb12OpenFileInfoC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  store ptr %i.q, ptr %2, align 8, !tbaa !16
  %i.v = load i64, ptr %i.r, align 8, !tbaa !18
  store i64 %i.v, ptr %i.c, align 8, !tbaa !18
  br label %_ZN6duckdb12OpenFileInfoC2EOS0_.exit

_ZN6duckdb12OpenFileInfoC2EOS0_.exit:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %3 = phi i64 [ %.pre, %bb.d ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  store i64 %3, ptr %i.d, align 8, !tbaa !19
  store ptr %i.r, ptr %.sroa.0.022, align 8, !tbaa !16
  store i64 0, ptr %i.h, align 8, !tbaa !19
  store i8 0, ptr %i.r, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %.pn21, i64 80 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.pn21, i64 88
  %i.y = load <2 x ptr>, ptr %i.w, align 8, !tbaa !267
  store ptr null, ptr %i.x, align 8, !tbaa !266
  store <2 x ptr> %i.y, ptr %i.e, align 8, !tbaa !267
  store ptr null, ptr %i.w, align 8, !tbaa !277
  %i.z = ptrtoint ptr %.sroa.0.022 to i64
  %i.aa = sub i64 %i.z, %i.g                      ; 2 uses
  %i.ab = icmp sgt i64 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN6duckdb12OpenFileInfoC2EOS0_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn21, i64 96
  %i.ad = udiv exact i64 %i.aa, 48
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb12OpenFileInfoaSEOS0_.exit, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.bz, %_ZN6duckdb12OpenFileInfoaSEOS0_.exit ], [ %i.ad, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.af, %_ZN6duckdb12OpenFileInfoaSEOS0_.exit ], [ %i.ac, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %.078.i.i.i.i.i = phi ptr [ %i.ae, %_ZN6duckdb12OpenFileInfoaSEOS0_.exit ], [ %.sroa.0.022, %.lr.ph.preheader.i.i.i.i.i ] ; 7 uses
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 5 uses
  %i.af = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 5 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 6 uses
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 4 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !16 ; 5 uses
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 6 uses
  %i.al = icmp eq ptr %i.aj, %i.ak                ; 2 uses
  br i1 %i.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.e, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %.lr.ph.i.i.i.i.i
  br i1 %i.al, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.am = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !19 ; 3 uses
  %i.ao = icmp ult i64 %i.an, 16
  call void @llvm.assume(i1 %i.ao)
  switch i64 %i.an, label %bb.g [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !18
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.aj, i64 %i.an, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.aq = load i64, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !19
  %i.as = load ptr, ptr %i.af, align 8, !tbaa !16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aq
  store i8 0, ptr %i.at, align 1, !tbaa !18
  %.pre.i.i = load ptr, ptr %i.ae, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  %i.au = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !16
  %i.av = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !19
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !19
  %i.ax = load i64, ptr %i.ak, align 8, !tbaa !18
  store i64 %i.ax, ptr %i.ah, align 8, !tbaa !18
  br label %bb.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ay = load i64, ptr %i.ah, align 8, !tbaa !18
  store ptr %i.aj, ptr %i.af, align 8, !tbaa !16
  %i.az = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !19
  %i.bb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !19
  %i.bc = load i64, ptr %i.ak, align 8, !tbaa !18
  store i64 %i.bc, ptr %i.ah, align 8, !tbaa !18
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !16
  store i64 %i.ay, ptr %i.ak, align 8, !tbaa !18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.ak, ptr %i.ae, align 8, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bd = phi ptr [ %i.ag, %bb.h ], [ %i.ak, %bb.i ], [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ]
  %i.be = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  store i64 0, ptr %i.be, align 8, !tbaa !19
  store i8 0, ptr %i.bd, align 1, !tbaa !18
  %i.bf = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  %i.bg = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16 ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  %i.bi = load <2 x ptr>, ptr %i.bg, align 8, !tbaa !267
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !266 ; 8 uses
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !267
  %.not.i.i.i.i.i8 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i8, label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.bl = load atomic i64, ptr %i.bk acquire, align 8 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 4294967297
  %i.bn = trunc i64 %i.bl to i32                  ; 2 uses
  br i1 %i.bm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.bk, align 8, !tbaa !268
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 0, ptr %i.bo, align 4, !tbaa !270
  %i.bp = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #32, !inline_history !1626
  %i.bs = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #32, !inline_history !1626
  br label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit

bb.l:                                             ; preds = %bb.j
  %i.bv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = add nsw i32 %i.bn, -1
  store i32 %i.bw, ptr %i.bk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bx = atomicrmw volatile add ptr %i.bk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bn, %bb.m ], [ %i.bx, %bb.n ]
  %i.by = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.by, label %bb.o, label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit, !prof !159

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bj) #32
  br label %_ZN6duckdb12OpenFileInfoaSEOS0_.exit

_ZN6duckdb12OpenFileInfoaSEOS0_.exit:             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o
  %i.bz = add nsw i64 %.010.i.i.i.i.i, -1
  %i.ca = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !1633

.loopexit:                                        ; preds = %_ZN6duckdb12OpenFileInfoaSEOS0_.exit, %_ZN6duckdb12OpenFileInfoC2EOS0_.exit
  %i.cb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN6duckdb12OpenFileInfoaSEOS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %2) #32 ; 0 uses
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !266 ; 8 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i.i7, label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 4 uses
  %i.ce = load atomic i64, ptr %i.cd acquire, align 8 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 4294967297
  %i.cg = trunc i64 %i.ce to i32                  ; 2 uses
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.cd, align 8, !tbaa !268
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %i.ch, align 4, !tbaa !270
  %i.ci = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #32, !inline_history !272
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(16) %i.cc) #32, !inline_history !272
  br label %_ZN6duckdb10shared_ptrINS_20ExtendedOpenFileInfoELb1EED2Ev.exit.i

bb.r:                                             ; preds = %bb.p
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = add nsw i32 %i.cg, -1
  store i32 %i.cp, ptr %i.cd, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

end_hunk_1
