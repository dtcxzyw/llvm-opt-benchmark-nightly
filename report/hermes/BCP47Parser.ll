Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/BCP47Parser?download=true
inline.NumInlined: 1092
inline.NumDeleted: 420
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6hermes13platform_intl12_GLOBAL__N_116splitIntoSubtagsERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a
bb.a:
  %1 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8 ; 5 uses
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.30", align 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  store ptr %.0.val, ptr %1, align 8
  %i.a = getelementptr inbounds nuw [2 x i8], ptr %.0.val, i64 %.8.val ; 4 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.q, %bb.a
  %.sroa.02.0.copyload = phi ptr [ %i.ba, %bb.q ], [ %.0.val, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %i.e = ptrtoint ptr %.sroa.02.0.copyload to i64 ; 2 uses
  %i.f = sub i64 %i.b, %i.e                       ; 3 uses
  %i.g = ashr i64 %i.f, 3                         ; 2 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.i = and i64 %i.f, -8
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.02.0.copyload, i64 %i.i ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %i.v, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.02.0.copyload, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 9 uses
  %i.j = load i16, ptr %.sroa.032.051.i.i.i, align 2, !tbaa !24
  %i.k = icmp eq i16 %i.j, 45
  br i1 %i.k, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24
  %i.n = icmp eq i16 %i.m, 45
  br i1 %i.n, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  %i.p = load i16, ptr %i.o, align 2, !tbaa !24
  %i.q = icmp eq i16 %i.p, 45
  br i1 %i.q, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24
  %i.t = icmp eq i16 %i.s, 45
  br i1 %i.t, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.v = add nsw i64 %.052.i.i.i, -1
  %i.w = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.w, label %bb.c, label %._crit_edge.loopexit.i.i.i, !llvm.loop !26

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.g
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %i.b, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.b
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.f, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.02.0.copyload, %bb.b ] ; 5 uses
  %i.x = ashr exact i64 %.pre-phi61.i.i.i, 1
  switch i64 %i.x, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.y = load i16, ptr %.sroa.032.0.lcssa.i.i.i, align 2, !tbaa !24
  %i.z = icmp eq i16 %i.y, 45
  br i1 %i.z, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 2
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.aa, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ab = load i16, ptr %.sroa.032.1.i.i.i, align 2, !tbaa !24
  %i.ac = icmp eq i16 %i.ab, 45
  br i1 %i.ac, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 2
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.j
  %.sroa.032.2.i.i.i = phi ptr [ %i.ad, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.ae = load i16, ptr %.sroa.032.2.i.i.i, align 2, !tbaa !24
  %i.af = icmp eq i16 %i.ae, 45
  %spec.select.i.i.i = select i1 %i.af, ptr %.sroa.032.2.i.i.i, ptr %i.a
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 2
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21: ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 6
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23, %._crit_edge.i.i.i, %bb.h, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %i.a, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.h ], [ %i.ai, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit23 ], [ %i.ah, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit21 ], [ %i.ag, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.c ] ; 2 uses
  store ptr %.sroa.08.0.in.sroa.speculated.i.i.i, ptr %2, align 8
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !27  ; 6 uses
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i, label %bb.p, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 2 uses
  store i64 0, ptr %i.am, align 8, !tbaa !13
  %i.an = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.ao = sub i64 %i.an, %i.e                     ; 4 uses
  %i.ap = ashr exact i64 %i.ao, 1                 ; 5 uses
  %i.aq = icmp ugt i64 %i.ap, 7
  br i1 %i.aq, label %bb.l, label %._crit_edge.i.i.i5

bb.l:                                             ; preds = %bb.k
  %i.ar = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.ar, label %bb.m, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i: ; preds = %bb.l
  %i.as = add nuw nsw i64 %i.ao, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #17 ; 2 uses
  store ptr %i.at, ptr %i.aj, align 8, !tbaa !7
  store i64 %i.ap, ptr %i.al, align 8, !tbaa !19
  br label %._crit_edge.i.i.i5

._crit_edge.i.i.i5:                               ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i, %bb.k
  %.pre11.i.i.i = phi ptr [ %i.at, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i.i ], [ %i.al, %bb.k ] ; 3 uses
  switch i64 %i.ap, label %bb.o [
    i64 1, label %bb.n
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i
  ]

bb.n:                                             ; preds = %._crit_edge.i.i.i5
  %i.au = load i16, ptr %.sroa.02.0.copyload, align 2, !tbaa !24
  store i16 %i.au, ptr %.pre11.i.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre11.i.i.i, ptr align 2 %.sroa.02.0.copyload, i64 %i.ao, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i: ; preds = %bb.o, %bb.n, %._crit_edge.i.i.i5
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw i8, ptr %.pre11.i.i.i, i64 %i.ao
  store i16 0, ptr %i.av, align 2, !tbaa !24
  %i.aw = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  store ptr %i.ax, ptr %i.c, align 8, !tbaa !27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit

bb.p:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEEDsET_SB_SB_RKT0_.exit
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE17_M_realloc_insertIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEEvNSA_IPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IN9__gnu_cxx17__normal_iteratorIPKDsS4_EEvEET_SB_RKS3_.exit.i, %bb.p
  %i.ay = load ptr, ptr %2, align 8, !tbaa !29    ; 2 uses
  %i.az = icmp eq ptr %i.ay, %i.a
  br i1 %i.az, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 2 ; 2 uses
  store ptr %i.ba, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br label %bb.b

bb.r:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE12emplace_backIJRN9__gnu_cxx17__normal_iteratorIPKDsS5_EESE_EEERS5_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_129isUnicodeExtensionKeyTypeItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !tbaa !13 ; 4 uses
  %i.b = add i64 %.val1, -9
  %or.cond.i = icmp ult i64 %i.b, -6
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 4 uses
  %.idx = shl nuw nsw i64 %.val1, 1               ; 2 uses
  %1 = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx ; 3 uses
  %i.c = lshr i64 %.val1, 2                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %2 = shl nuw nsw i64 %i.c, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.val, i64 %2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.aj, %bb.f ], [ %i.c, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.ai, %bb.f ], [ %.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.d = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.e = and i16 %i.d, -33
  %i.f = add i16 %i.e, -65
  %i.g = icmp ult i16 %i.f, 26
  %i.h = add i16 %i.d, -48
  %i.i = icmp ult i16 %i.h, 10
  %i.j = or i1 %i.i, %i.g
  br i1 %i.j, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !24   ; 2 uses
  %i.m = and i16 %i.l, -33
  %i.n = add i16 %i.m, -65
  %i.o = icmp ult i16 %i.n, 26
  %i.p = add i16 %i.l, -48
  %i.q = icmp ult i16 %i.p, 10
  %i.r = or i1 %i.q, %i.o
  br i1 %i.r, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.t = load i16, ptr %i.s, align 2, !tbaa !24   ; 2 uses
  %i.u = and i16 %i.t, -33
  %i.v = add i16 %i.u, -65
  %i.w = icmp ult i16 %i.v, 26
  %i.x = add i16 %i.t, -48
  %i.y = icmp ult i16 %i.x, 10
  %i.z = or i1 %i.y, %i.w
  br i1 %i.z, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !24 ; 2 uses
  %i.ac = and i16 %i.ab, -33
  %i.ad = add i16 %i.ac, -65
  %i.ae = icmp ult i16 %i.ad, 26
  %i.af = add i16 %i.ab, -48
  %i.ag = icmp ult i16 %i.af, 10
  %i.ah = or i1 %i.ag, %i.ae
  br i1 %i.ah, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.aj = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.ak = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %2
  %i.al = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.al, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val1, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.am = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.an = and i16 %i.am, -33
  %i.ao = add i16 %i.an, -65
  %i.ap = icmp ult i16 %i.ao, 26
  %i.aq = add i16 %i.am, -48
  %i.ar = icmp ult i16 %i.aq, 10
  %i.as = or i1 %i.ar, %i.ap
  br i1 %i.as, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.at, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.au = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.av = and i16 %i.au, -33
  %i.aw = add i16 %i.av, -65
  %i.ax = icmp ult i16 %i.aw, 26
  %i.ay = add i16 %i.au, -48
  %i.az = icmp ult i16 %i.ay, 10
  %i.ba = or i1 %i.az, %i.ax
  br i1 %i.ba, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bc = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bd = and i16 %i.bc, -33
  %i.be = add i16 %i.bd, -65
  %i.bf = icmp ult i16 %i.be, 26
  %i.bg = add i16 %i.bc, -48
  %i.bh = icmp ult i16 %i.bg, 10
  %i.bi = or i1 %i.bh, %i.bf
  %spec.select.i.i.i.i.i.i = select i1 %i.bi, ptr %1, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14: ; preds = %bb.d
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16: ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %1, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit16 ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit14 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = icmp eq ptr %1, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bn = phi i1 [ %i.bm, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13platform_intl17LanguageTagParserC2ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(536) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::vector", align 16      ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !13
  store i16 0, ptr %i.a, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i16 0, ptr %i.d, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 0, ptr %i.h, align 8, !tbaa !13
  store i16 0, ptr %i.g, align 8, !tbaa !24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store i32 0, ptr %i.i, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr null, ptr %i.j, align 8, !tbaa !36
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.i, ptr %i.k, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.i, ptr %i.l, align 8, !tbaa !38
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 0, ptr %i.m, align 8, !tbaa !39
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  store i32 0, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr null, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.n, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %i.n, ptr %i.q, align 8, !tbaa !38
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.r, align 8, !tbaa !39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  store i32 0, ptr %i.s, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.t, align 8, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.s, ptr %i.u, align 8, !tbaa !37
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.s, ptr %i.v, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i64 0, ptr %i.w, align 8, !tbaa !39
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 0, ptr %i.z, align 8, !tbaa !13
  store i16 0, ptr %i.y, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !28
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 0, ptr %i.ac, align 8, !tbaa !13
  store i16 0, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !28
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 0, ptr %i.af, align 8, !tbaa !13
  store i16 0, ptr %i.ae, align 8, !tbaa !24
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  store i32 0, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr null, ptr %i.ah, align 8, !tbaa !36
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !38
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 376
  store i64 0, ptr %i.ak, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  store i32 0, ptr %i.al, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr null, ptr %i.am, align 8, !tbaa !36
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.al, ptr %i.an, align 8, !tbaa !37
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 416
  store ptr %i.al, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i64 0, ptr %i.ap, align 8, !tbaa !39
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 3 uses
  store i32 0, ptr %i.aq, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 448
  store ptr null, ptr %i.ar, align 8, !tbaa !36
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 464
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %i.au, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store ptr %i.aw, ptr %i.av, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 0, ptr %i.ax, align 8, !tbaa !13
  store i16 0, ptr %i.aw, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  %.val = load ptr, ptr %1, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val11 = load i64, ptr %i.az, align 8, !tbaa !13
  call fastcc void @_ZN6hermes13platform_intl12_GLOBAL__N_116splitIntoSubtagsERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias writable align 8 %2, ptr %.val, i64 %.val11)
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !21 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load <2 x ptr>, ptr %2, align 16, !tbaa !14
  store <2 x ptr> %i.bg, ptr %i.ay, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !23
  store ptr %i.bi, ptr %i.bd, align 8, !tbaa !23
  %.not4.i.i.i.i.i = icmp eq ptr %i.ba, %i.bc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_ZN6hermes13platform_intl12_GLOBAL__N_123isUnicodeLanguageSubtagERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE:bb.a
  %i.y = add i16 %i.x, -65
  %i.z = icmp ult i16 %i.y, 26
  br i1 %i.z, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i9
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !24
  %i.ac = and i16 %i.ab, -33
  %i.ad = add i16 %i.ac, -65
  %i.ae = icmp ult i16 %i.ad, 26
  br i1 %i.ae, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !24
  %i.ah = and i16 %i.ag, -33
  %i.ai = add i16 %i.ah, -65
  %i.aj = icmp ult i16 %i.ai, 26
  br i1 %i.aj, label %bb.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !24
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  br i1 %i.ao, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 8 ; 6 uses
  %i.aq = add nsw i64 %.052.i.i.i.i.i.i10, -1
  %i.ar = icmp sgt i64 %.052.i.i.i.i.i.i10, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i9, label %._crit_edge.loopexit.i.i.i.i.i.i17, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i17:               ; preds = %bb.j
  %.pre.i.i.i.i.i.i18 = ptrtoint ptr %i.ap to i64
  %.pre57.i.i.i.i.i.i19 = sub i64 %i.u, %.pre.i.i.i.i.i.i18
  %i.as = ashr exact i64 %.pre57.i.i.i.i.i.i19, 1
  switch i64 %i.as, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i17
  %i.at = load i16, ptr %i.ap, align 2, !tbaa !24
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  br i1 %i.aw, label %bb.l, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.1.i.i.i.i.i.i25 = phi ptr [ %i.ax, %bb.l ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 3 uses
  %i.ay = load i16, ptr %.sroa.032.1.i.i.i.i.i.i25, align 2, !tbaa !24
  %i.az = and i16 %i.ay, -33
  %i.ba = add i16 %i.az, -65
  %i.bb = icmp ult i16 %i.ba, 26
  br i1 %i.bb, label %bb.n, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i25, i64 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.032.2.i.i.i.i.i.i23 = phi ptr [ %i.bc, %bb.n ], [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i17 ] ; 2 uses
  %i.bd = load i16, ptr %.sroa.032.2.i.i.i.i.i.i23, align 2, !tbaa !24
  %i.be = and i16 %i.bd, -33
  %i.bf = add i16 %i.be, -65
  %i.bg = icmp ult i16 %i.bf, 26
  %spec.select.i.i.i.i.i.i24 = select i1 %i.bg, ptr %i.t, ptr %.sroa.032.2.i.i.i.i.i.i23
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit: ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18: ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20: ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i11, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12: ; preds = %.lr.ph.i.i.i.i.i.i9, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20, %bb.o, %bb.m, %bb.k, %._crit_edge.loopexit.i.i.i.i.i.i17
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13 = phi ptr [ %.sroa.032.1.i.i.i.i.i.i25, %bb.m ], [ %spec.select.i.i.i.i.i.i24, %bb.o ], [ %i.t, %._crit_edge.loopexit.i.i.i.i.i.i17 ], [ %i.ap, %bb.k ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit20 ], [ %i.bh, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12.loopexit.split.loop.exit18 ], [ %.sroa.032.051.i.i.i.i.i.i11, %.lr.ph.i.i.i.i.i.i9 ]
  %i.bk = icmp eq ptr %i.t, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i13
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit26: ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread
  %i.bl = phi i1 [ %i.r, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit ], [ false, %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit.thread ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i12 ]
  ret i1 %i.bl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6hermes13platform_intl17LanguageTagParser16getCurrentSubtagB5cxx11Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -32 ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !27
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !7    ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.e, align 8, !tbaa !19
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 2
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.i) #15
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !14
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESaIS5_EE8pop_backEv.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.j = phi ptr [ %.pre, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.m = icmp ne ptr %i.l, %i.j
  ret i1 %i.m
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser21parseUnicodeExtensionEv(ptr noundef nonnull align 8 dereferenceable(536) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.std::pair.22", align 8     ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = load i64, ptr %i.b, align 8, !tbaa !39
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 11 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !14   ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 -24
  %.val1038 = load i64, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.l = add i64 %.val1038, -9
  %or.cond.i.i39 = icmp ult i64 %i.l, -6
  br i1 %or.cond.i.i39, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 512
  br label %bb.d

bb.c:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.n = getelementptr i8, ptr %i.cu, i64 -24
  %.val10 = load i64, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.o = add i64 %.val10, -9
  %or.cond.i.i = icmp ult i64 %i.o, -6
  br i1 %or.cond.i.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader, label %bb.d, !llvm.loop !49

_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader: ; preds = %bb.c, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i, %.preheader
  %i.p = phi ptr [ %i.j, %.preheader ], [ %.pn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ %i.cu, %bb.c ] ; 3 uses
  %.08.lcssa = phi i1 [ false, %.preheader ], [ %.0840, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i ], [ true, %bb.c ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !14
  %.not2346 = icmp eq ptr %i.r, %i.p
  br i1 %.not2346, label %.critedge, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 -24
  %.val12108 = load i64, ptr %i.x, align 8, !tbaa !13
  %i.y = icmp eq i64 %.val12108, 2
  br i1 %i.y, label %.lr.ph111, label %.critedge

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.val1042 = phi i64 [ %.val1038, %.lr.ph ], [ %.val10, %bb.c ] ; 3 uses
  %.pn = phi ptr [ %i.j, %.lr.ph ], [ %i.cu, %bb.c ] ; 2 uses
  %.0840 = phi i1 [ false, %.lr.ph ], [ true, %bb.c ]
  %i.z = getelementptr inbounds i8, ptr %.pn, i64 -32 ; 2 uses
  %.val41 = load ptr, ptr %i.z, align 8           ; 4 uses
  %.idx.i = shl nuw nsw i64 %.val1042, 1          ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.val41, i64 %.idx.i ; 2 uses
  %i.aa = lshr i64 %.val1042, 2                   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.i.preheader.i:                   ; preds = %bb.d
  %4 = shl nuw nsw i64 %i.aa, 3                   ; 2 uses
  %scevgep.i = getelementptr i8, ptr %.val41, i64 %4
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.preheader.i
  %.052.i.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i.i = phi ptr [ %i.bg, %bb.h ], [ %.val41, %.lr.ph.i.i.i.i.i.i.preheader.i ] ; 9 uses
  %i.ab = load i16, ptr %.sroa.032.051.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.ac = and i16 %i.ab, -33
  %i.ad = add i16 %i.ac, -65
  %i.ae = icmp ult i16 %i.ad, 26
  %i.af = add i16 %i.ab, -48
  %i.ag = icmp ult i16 %i.af, 10
  %i.ah = or i1 %i.ag, %i.ae
  br i1 %i.ah, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !24 ; 2 uses
  %i.ak = and i16 %i.aj, -33
  %i.al = add i16 %i.ak, -65
  %i.am = icmp ult i16 %i.al, 26
  %i.an = add i16 %i.aj, -48
  %i.ao = icmp ult i16 %i.an, 10
  %i.ap = or i1 %i.ao, %i.am
  br i1 %i.ap, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !24 ; 2 uses
  %i.as = and i16 %i.ar, -33
  %i.at = add i16 %i.as, -65
  %i.au = icmp ult i16 %i.at, 26
  %i.av = add i16 %i.ar, -48
  %i.aw = icmp ult i16 %i.av, 10
  %i.ax = or i1 %i.aw, %i.au
  br i1 %i.ax, label %bb.g, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit90

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !24 ; 2 uses
  %i.ba = and i16 %i.az, -33
  %i.bb = add i16 %i.ba, -65
  %i.bc = icmp ult i16 %i.bb, 26
  %i.bd = add i16 %i.az, -48
  %i.be = icmp ult i16 %i.bd, 10
  %i.bf = or i1 %i.be, %i.bc
  br i1 %i.bf, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit92

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 8
  %i.bh = add nsw i64 %.052.i.i.i.i.i.i.i, -1
  %i.bi = icmp sgt i64 %.052.i.i.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i.i:               ; preds = %bb.h
  %gepdiff.i = sub nsw i64 %.idx.i, %4
  %i.bj = ashr exact i64 %gepdiff.i, 1
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i, %bb.d
  %.pre-phi58.i.i.i.i.i.i.i = phi i64 [ %i.bj, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val1042, %bb.d ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %scevgep.i, %._crit_edge.loopexit.i.i.i.i.i.i.i ], [ %.val41, %bb.d ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread [
    i64 3, label %bb.i
    i64 2, label %bb.k
    i64 1, label %bb.m
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.bk = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bl = and i16 %i.bk, -33
  %i.bm = add i16 %i.bl, -65
  %i.bn = icmp ult i16 %i.bm, 26
  %i.bo = add i16 %i.bk, -48
  %i.bp = icmp ult i16 %i.bo, 10
  %i.bq = or i1 %i.bp, %i.bn
  br i1 %i.bq, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i.i = phi ptr [ %i.br, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 3 uses
  %i.bs = load i16, ptr %.sroa.032.1.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bt = and i16 %i.bs, -33
  %i.bu = add i16 %i.bt, -65
  %i.bv = icmp ult i16 %i.bu, 26
  %i.bw = add i16 %i.bs, -48
  %i.bx = icmp ult i16 %i.bw, 10
  %i.by = or i1 %i.bx, %i.bv
  br i1 %i.by, label %bb.l, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

bb.l:                                             ; preds = %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i.i = phi ptr [ %i.bz, %bb.l ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ca = load i16, ptr %.sroa.032.2.i.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.cb = and i16 %i.ca, -33
  %i.cc = add i16 %i.cb, -65
  %i.cd = icmp ult i16 %i.cc, 26
  %i.ce = add i16 %i.ca, -48
  %i.cf = icmp ult i16 %i.ce, 10
  %i.cg = or i1 %i.cf, %i.cd
  %spec.select.i.i.i.i.i.i.i = select i1 %i.cg, ptr %3, ptr %.sroa.032.2.i.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit: ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit90: ; preds = %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit92: ; preds = %bb.g
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit90, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit92, %bb.m, %bb.k, %bb.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i.i, %bb.k ], [ %spec.select.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i.i, %bb.i ], [ %i.cj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit92 ], [ %i.ci, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit90 ], [ %i.ch, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ck = icmp eq ptr %3, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i.i
  br i1 %i.ck, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread, label %_ZN6hermes13platform_intl12_GLOBAL__N_127isUnicodeExtensionAttributeERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit.preheader

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread: ; preds = %._crit_edge.i.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i
  %i.cl = tail call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_St9_IdentityIS5_ESt4lessIS5_ESaIS5_EE16_M_insert_uniqueIRKS5_EESt4pairISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.z) ; 0 uses
  %i.cm = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -32 ; 3 uses
  store ptr %i.cn, ptr %i.i, align 8, !tbaa !27
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !7  ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cm, i64 -16 ; 2 uses
  %i.cq = icmp eq ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread
  %i.cr = load i64, ptr %i.cp, align 8, !tbaa !19
  %i.cs = shl i64 %i.cr, 1
  %i.ct = add i64 %i.cs, 2
  tail call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.ct) #15
  %.pre.i = load ptr, ptr %i.i, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i
  %i.cu = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ %i.cn, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.i.thread ] ; 4 uses
  %i.cv = load ptr, ptr %i.m, align 8, !tbaa !14
  %.not = icmp eq ptr %i.cv, %i.cu
  br i1 %.not, label %.critedge, label %bb.c, !llvm.loop !49

bb.n:                                             ; preds = %.critedge2
  %i.cw = getelementptr i8, ptr %i.gi, i64 -24
  %.val12 = load i64, ptr %i.cw, align 8, !tbaa !13
  %i.cx = icmp eq i64 %.val12, 2
  br i1 %i.cx, label %.lr.ph111, label %.critedge, !llvm.loop !50

.lr.ph111:                                        ; preds = %.lr.ph48, %bb.n
  %.pn116 = phi ptr [ %i.gi, %bb.n ], [ %i.p, %.lr.ph48 ]
  %.1947109 = phi i1 [ true, %bb.n ], [ %.08.lcssa, %.lr.ph48 ] ; 2 uses
  %i.cy = getelementptr inbounds i8, ptr %.pn116, i64 -32 ; 2 uses
  %.val11110 = load ptr, ptr %i.cy, align 8       ; 2 uses
  %i.cz = load i16, ptr %.val11110, align 2, !tbaa !24 ; 2 uses
  %i.da = and i16 %i.cz, -33
  %i.db = add i16 %i.da, -65
  %i.dc = icmp ult i16 %i.db, 26
  %i.dd = add i16 %i.cz, -48
  %i.de = icmp ult i16 %i.dd, 10
  %i.df = or i1 %i.de, %i.dc
  br i1 %i.df, label %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeExtensionKeyERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit, label %.critedge

_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeExtensionKeyERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit: ; preds = %.lr.ph111
  %i.dg = getelementptr i8, ptr %.val11110, i64 2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !24
  %i.di = and i16 %i.dh, -33
  %i.dj = add i16 %i.di, -65
  %i.dk = icmp ult i16 %i.dj, 26
  br i1 %i.dk, label %bb.o, label %.critedge

bb.o:                                             ; preds = %_ZN6hermes13platform_intl12_GLOBAL__N_121isUnicodeExtensionKeyERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %i.s, ptr %2, align 8, !tbaa !28
  store i64 0, ptr %i.t, align 8, !tbaa !13
  store i16 0, ptr %i.s, align 8, !tbaa !24
  call void @_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.cy, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.dl = call { ptr, i8 } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIS5_ESaIS8_EE16_M_insert_uniqueIS8_EES6_ISt17_Rb_tree_iteratorIS8_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %.fr = freeze { ptr, i8 } %i.dl                 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %.fr, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %.fr, 1
  %i.dm = load ptr, ptr %i.u, align 8, !tbaa !7   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.v
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.o
  %i.do = load i64, ptr %i.v, align 8, !tbaa !19
  %i.dp = shl i64 %i.do, 1
  %i.dq = add i64 %i.dp, 2
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i
  %i.dr = load ptr, ptr %1, align 8, !tbaa !7     ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.w
  br i1 %i.ds, label %_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_ED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i
  %i.dt = load i64, ptr %i.w, align 8, !tbaa !19
  %i.du = shl i64 %i.dt, 1
  %i.dv = add i64 %i.du, 2
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #15
  br label %_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_ED2Ev.exit

_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_ED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i1.i
  %i.dw = load ptr, ptr %2, align 8, !tbaa !7     ; 2 uses
  %i.dx = icmp eq ptr %i.dw, %i.s
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_ED2Ev.exit
  %i.dy = load i64, ptr %i.s, align 8, !tbaa !19
  %i.dz = shl i64 %i.dy, 1
  %i.ea = add i64 %i.dz, 2
  call void @_ZdlPvm(ptr noundef %i.dw, i64 noundef %i.ea) #15
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit: ; preds = %_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_ED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  %i.eb = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 64 ; 6 uses
  %i.ec = trunc i8 %.fca.1.extract to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 72 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 80 ; 4 uses
  br i1 %i.ec, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.us, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.preheader

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.preheader: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.us: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit.us
  %i.ef = load ptr, ptr %i.i, align 8, !tbaa !27  ; 2 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 -32 ; 3 uses
  store ptr %i.eg, ptr %i.i, align 8, !tbaa !27
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !7  ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %i.ef, i64 -16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit16.us, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i13.us

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i13.us: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.us
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !19
  %i.el = shl i64 %i.ek, 1
  %i.em = add i64 %i.el, 2
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.em) #15
  %.pre.i14.us = load ptr, ptr %i.i, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit16.us

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit16.us: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.us, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i13.us
  %i.en = phi ptr [ %.pre.i14.us, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i13.us ], [ %i.eg, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit.split.us ] ; 6 uses
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !14
  %.not24.us = icmp eq ptr %i.eo, %i.en           ; 3 uses
  br i1 %.not24.us, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit16.us
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -32
end_hunk_1
begin_hunk_2_@_ZN6hermes13platform_intl17LanguageTagParser19parseOtherExtensionEDs:_ZNSt4pairIKDsNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEC2IS0_S6_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS0_RKS6_.exit
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.ae
  store i16 0, ptr %i.an, align 2, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit, %bb.c
  %i.ao = phi i64 [ %i.ae, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ 0, %bb.c ] ; 5 uses
  %i.ap = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEpLEDs.exit ], [ %i.ab, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !7  ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ap, i64 -24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !13 ; 6 uses
  %i.au = sub i64 2305843009213693951, %i.ao
  %i.av = icmp ult i64 %i.au, %i.at
  br i1 %i.av, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.f
  %i.aw = add i64 %i.ao, %i.at                    ; 3 uses
  %i.ax = load ptr, ptr %i.x, align 8, !tbaa !7   ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %i.z
  br i1 %i.ay, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i
  %i.az = icmp ult i64 %i.ao, 8
  call void @llvm.assume(i1 %i.az)
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ba = load i64, ptr %i.z, align 8, !tbaa !19
  br label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.bb = phi i64 [ %i.ba, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i ], [ 7, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.aw, %i.bb
  br i1 %.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not8.i.i.i, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ao ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.at, 1
  br i1 %cond.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bd = load i16, ptr %i.ar, align 2, !tbaa !24
  store i16 %i.bd, ptr %i.bc, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.k:                                             ; preds = %bb.i
  %i.be = shl i64 %i.at, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.bc, ptr align 2 %i.ar, i64 %i.be, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.ao, i64 noundef 0, ptr noundef %i.ar, i64 noundef %i.at)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit: ; preds = %bb.h, %bb.j, %bb.k, %bb.l
  store i64 %i.aw, ptr %i.y, align 8, !tbaa !13
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !7
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.bf, i64 %i.aw
  store i16 0, ptr %i.bg, align 2, !tbaa !24
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !27  ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -32 ; 3 uses
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !27
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !7  ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bh, i64 -16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i10

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !19
  %i.bn = shl i64 %i.bm, 1
  %i.bo = add i64 %i.bn, 2
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bo) #15
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !14
  br label %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit

_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i10
  %i.bp = phi ptr [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i10 ], [ %i.bi, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit ] ; 4 uses
  %i.bq = load ptr, ptr %i.aa, align 8, !tbaa !14
  %.not = icmp eq ptr %i.bq, %i.bp
  br i1 %.not, label %.critedge, label %bb.m

bb.m:                                             ; preds = %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -32
  %.val = load ptr, ptr %i.br, align 8
  %i.bs = getelementptr i8, ptr %i.bp, i64 -24
  %.val5 = load i64, ptr %i.bs, align 8, !tbaa !13
  %i.bt = call fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_116isOtherExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr %.val, i64 %.val5)
  br i1 %i.bt, label %bb.c, label %.critedge, !llvm.loop !56

.critedge:                                        ; preds = %bb.m, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit, %bb.a
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEED2Ev.exit ], [ false, %bb.a ], [ true, %_ZN6hermes13platform_intl17LanguageTagParser10nextSubtagEv.exit ], [ true, %bb.m ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEES5_EC2IS6_S5_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairISA_SB_EEEbE4typeELb1EEERS6_SE_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !28
  %i.b = load ptr, ptr %1, align 8, !tbaa !7      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13   ; 6 uses
  %.idx.i = shl nuw nsw i64 %i.d, 1               ; 3 uses
  %i.e = icmp ugt i64 %i.d, 7
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.f, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.g = add nuw nsw i64 %.idx.i, 2
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #17 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !7
  store i64 %i.d, ptr %i.a, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.i = load i16, ptr %i.b, align 2, !tbaa !24
  store i16 %i.i, ptr %.pre7.i.i, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %i.b, i64 %.idx.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %i.j, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx.i
  store i16 0, ptr %i.k, align 2, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %i.m, ptr %i.l, align 8, !tbaa !28
  %i.n = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13   ; 6 uses
  %.idx.i3 = shl nuw nsw i64 %i.p, 1              ; 3 uses
  %i.q = icmp ugt i64 %i.p, 7
  br i1 %i.q, label %bb.f, label %._crit_edge.i.i4

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  %i.r = icmp ugt i64 %i.p, 2305843009213693951
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.5) #16
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6: ; preds = %bb.f
  %i.s = add nuw nsw i64 %.idx.i3, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #17 ; 2 uses
  store ptr %i.t, ptr %i.l, align 8, !tbaa !7
  store i64 %i.p, ptr %i.m, align 8, !tbaa !19
  br label %._crit_edge.i.i4

._crit_edge.i.i4:                                 ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit
  %.pre7.i.i5 = phi ptr [ %i.t, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i6 ], [ %i.m, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit ] ; 3 uses
  switch i64 %i.p, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7
  ]

bb.h:                                             ; preds = %._crit_edge.i.i4
  %i.u = load i16, ptr %i.n, align 2, !tbaa !24
  store i16 %i.u, ptr %.pre7.i.i5, align 2, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7

bb.i:                                             ; preds = %._crit_edge.i.i4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i5, ptr align 2 %i.n, i64 %.idx.i3, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2ERKS4_.exit7: ; preds = %._crit_edge.i.i4, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.p, ptr %i.v, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %.pre7.i.i5, i64 %.idx.i3
  store i16 0, ptr %i.w, align 2, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_132isTransformedExtensionTValueItemERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -6
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %0 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.b = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %1 = shl nuw nsw i64 %i.b, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.c = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.d = and i16 %i.c, -33
  %i.e = add i16 %i.d, -65
  %i.f = icmp ult i16 %i.e, 26
  %i.g = add i16 %i.c, -48
  %i.h = icmp ult i16 %i.g, 10
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !24   ; 2 uses
  %i.l = and i16 %i.k, -33
  %i.m = add i16 %i.l, -65
  %i.n = icmp ult i16 %i.m, 26
  %i.o = add i16 %i.k, -48
  %i.p = icmp ult i16 %i.o, 10
  %i.q = or i1 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24   ; 2 uses
  %i.t = and i16 %i.s, -33
  %i.u = add i16 %i.t, -65
  %i.v = icmp ult i16 %i.u, 26
  %i.w = add i16 %i.s, -48
  %i.x = icmp ult i16 %i.w, 10
  %i.y = or i1 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24  ; 2 uses
  %i.ab = and i16 %i.aa, -33
  %i.ac = add i16 %i.ab, -65
  %i.ad = icmp ult i16 %i.ac, 26
  %i.ae = add i16 %i.aa, -48
  %i.af = icmp ult i16 %i.ae, 10
  %i.ag = or i1 %i.af, %i.ad
  br i1 %i.ag, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ai = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %1
  %i.ak = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.al = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  %i.ap = add i16 %i.al, -48
  %i.aq = icmp ult i16 %i.ap, 10
  %i.ar = or i1 %i.aq, %i.ao
  br i1 %i.ar, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.at = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  %i.ax = add i16 %i.at, -48
  %i.ay = icmp ult i16 %i.ax, 10
  %i.az = or i1 %i.ay, %i.aw
  br i1 %i.az, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bb = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %i.bf = add i16 %i.bb, -48
  %i.bg = icmp ult i16 %i.bf, 10
  %i.bh = or i1 %i.bg, %i.be
  %spec.select.i.i.i.i.i.i = select i1 %i.bh, ptr %0, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %0, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = icmp eq ptr %0, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bm = phi i1 [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_121isPrivateUseExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -8
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %0 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.b = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %1 = shl nuw nsw i64 %i.b, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.c = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.d = and i16 %i.c, -33
  %i.e = add i16 %i.d, -65
  %i.f = icmp ult i16 %i.e, 26
  %i.g = add i16 %i.c, -48
  %i.h = icmp ult i16 %i.g, 10
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !24   ; 2 uses
  %i.l = and i16 %i.k, -33
  %i.m = add i16 %i.l, -65
  %i.n = icmp ult i16 %i.m, 26
  %i.o = add i16 %i.k, -48
  %i.p = icmp ult i16 %i.o, 10
  %i.q = or i1 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24   ; 2 uses
  %i.t = and i16 %i.s, -33
  %i.u = add i16 %i.t, -65
  %i.v = icmp ult i16 %i.u, 26
  %i.w = add i16 %i.s, -48
  %i.x = icmp ult i16 %i.w, 10
  %i.y = or i1 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24  ; 2 uses
  %i.ab = and i16 %i.aa, -33
  %i.ac = add i16 %i.ab, -65
  %i.ad = icmp ult i16 %i.ac, 26
  %i.ae = add i16 %i.aa, -48
  %i.af = icmp ult i16 %i.ae, 10
  %i.ag = or i1 %i.af, %i.ad
  br i1 %i.ag, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ai = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %1
  %i.ak = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.al = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  %i.ap = add i16 %i.al, -48
  %i.aq = icmp ult i16 %i.ap, 10
  %i.ar = or i1 %i.aq, %i.ao
  br i1 %i.ar, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.at = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  %i.ax = add i16 %i.at, -48
  %i.ay = icmp ult i16 %i.ax, 10
  %i.az = or i1 %i.ay, %i.aw
  br i1 %i.az, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bb = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %i.bf = add i16 %i.bb, -48
  %i.bg = icmp ult i16 %i.bf, 10
  %i.bh = or i1 %i.bg, %i.be
  %spec.select.i.i.i.i.i.i = select i1 %i.bh, ptr %0, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %0, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = icmp eq ptr %0, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bm = phi i1 [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bm
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @_ZN6hermes13platform_intl12_GLOBAL__N_116isOtherExtensionERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #3 {
bb.a:
  %i.a = add i64 %.8.val, -9
  %or.cond.i = icmp ult i64 %i.a, -7
  br i1 %or.cond.i, label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = shl nuw nsw i64 %.8.val, 1              ; 2 uses
  %0 = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx ; 3 uses
  %i.b = lshr i64 %.8.val, 2                      ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %1 = shl nuw nsw i64 %i.b, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %.0.val, i64 %1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %bb.f
  %.052.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.f ], [ %i.b, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.032.051.i.i.i.i.i.i = phi ptr [ %i.ah, %bb.f ], [ %.0.val, %.lr.ph.i.i.i.i.i.i.preheader ] ; 9 uses
  %i.c = load i16, ptr %.sroa.032.051.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.d = and i16 %i.c, -33
  %i.e = add i16 %i.d, -65
  %i.f = icmp ult i16 %i.e, 26
  %i.g = add i16 %i.c, -48
  %i.h = icmp ult i16 %i.g, 10
  %i.i = or i1 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !tbaa !24   ; 2 uses
  %i.l = and i16 %i.k, -33
  %i.m = add i16 %i.l, -65
  %i.n = icmp ult i16 %i.m, 26
  %i.o = add i16 %i.k, -48
  %i.p = icmp ult i16 %i.o, 10
  %i.q = or i1 %i.p, %i.n
  br i1 %i.q, label %bb.d, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !24   ; 2 uses
  %i.t = and i16 %i.s, -33
  %i.u = add i16 %i.t, -65
  %i.v = icmp ult i16 %i.u, 26
  %i.w = add i16 %i.s, -48
  %i.x = icmp ult i16 %i.w, 10
  %i.y = or i1 %i.x, %i.v
  br i1 %i.y, label %bb.e, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !24  ; 2 uses
  %i.ab = and i16 %i.aa, -33
  %i.ac = add i16 %i.ab, -65
  %i.ad = icmp ult i16 %i.ac, 26
  %i.ae = add i16 %i.aa, -48
  %i.af = icmp ult i16 %i.ae, 10
  %i.ag = or i1 %i.af, %i.ad
  br i1 %i.ag, label %bb.f, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 8
  %i.ai = add nsw i64 %.052.i.i.i.i.i.i, -1
  %i.aj = icmp sgt i64 %.052.i.i.i.i.i.i, 1
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !30

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.f
  %gepdiff = sub nsw i64 %.idx, %1
  %i.ak = ashr exact i64 %gepdiff, 1
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %bb.b
  %.pre-phi58.i.i.i.i.i.i = phi i64 [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.8.val, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i.i.i = phi ptr [ %scevgep, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %.0.val, %bb.b ] ; 5 uses
  switch i64 %.pre-phi58.i.i.i.i.i.i, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i [
    i64 3, label %bb.g
    i64 2, label %bb.i
    i64 1, label %bb.k
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.al = load i16, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.am = and i16 %i.al, -33
  %i.an = add i16 %i.am, -65
  %i.ao = icmp ult i16 %i.an, 26
  %i.ap = add i16 %i.al, -48
  %i.aq = icmp ult i16 %i.ap, 10
  %i.ar = or i1 %i.aq, %i.ao
  br i1 %i.ar, label %bb.h, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i.i.i, i64 2
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.at = load i16, ptr %.sroa.032.1.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.au = and i16 %i.at, -33
  %i.av = add i16 %i.au, -65
  %i.aw = icmp ult i16 %i.av, 26
  %i.ax = add i16 %i.at, -48
  %i.ay = icmp ult i16 %i.ax, 10
  %i.az = or i1 %i.ay, %i.aw
  br i1 %i.az, label %bb.j, label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i.i.i, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i.i
  %.sroa.032.2.i.i.i.i.i.i = phi ptr [ %i.ba, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.bb = load i16, ptr %.sroa.032.2.i.i.i.i.i.i, align 2, !tbaa !24 ; 2 uses
  %i.bc = and i16 %i.bb, -33
  %i.bd = add i16 %i.bc, -65
  %i.be = icmp ult i16 %i.bd, 26
  %i.bf = add i16 %i.bb, -48
  %i.bg = icmp ult i16 %i.bf, 10
  %i.bh = or i1 %i.bg, %i.be
  %spec.select.i.i.i.i.i.i = select i1 %i.bh, ptr %0, ptr %.sroa.032.2.i.i.i.i.i.i
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 2
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13: ; preds = %bb.d
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 4
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15: ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i.i.i, i64 6
  br label %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i

_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15, %bb.k, %bb.i, %bb.g, %._crit_edge.i.i.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i.i.i, %bb.i ], [ %spec.select.i.i.i.i.i.i, %bb.k ], [ %0, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i.i.i, %bb.g ], [ %i.bk, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit15 ], [ %i.bi, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit ], [ %i.bj, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i.loopexit.split.loop.exit13 ], [ %.sroa.032.051.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %i.bl = icmp eq ptr %0, %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i
  br label %_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit

_ZN6hermes13platform_intl12_GLOBAL__N_110isCharTypeIPFbDsEEEbRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEmmT_.exit: ; preds = %bb.a, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i
  %i.bm = phi i1 [ %i.bl, %_ZN4llvh6all_ofIRKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEPFbDsEEEbOT_T0_.exit.i ], [ false, %bb.a ]
  ret i1 %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes13platform_intl22ParsedLocaleIdentifier5parseERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr dead_on_unwind noalias writable sret(%"class.std::optional") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.hermes::platform_intl::LanguageTagParser", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @_ZN6hermes13platform_intl17LanguageTagParserC2ERKNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEE(ptr noundef nonnull align 8 dereferenceable(536) %2, ptr noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.a = call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser22parseUnicodeLanguageIdEb(ptr noundef nonnull align 8 dereferenceable(536) %2, i1 noundef zeroext false), !noalias !57
  br i1 %i.a, label %bb.b, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = call noundef zeroext i1 @_ZN6hermes13platform_intl17LanguageTagParser15parseExtensionsEv(ptr noundef nonnull align 8 dereferenceable(536) %2), !noalias !57
  br i1 %i.b, label %bb.c, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14, !noalias !57
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14, !noalias !57
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(536) %2)
  br label %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit

_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i8 %.sink.i, ptr %i.g, align 8, !tbaa !45, !alias.scope !57
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 512 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i ], [ %i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit ] ; 3 uses
  %i.l = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !19
  %i.p = shl i64 %i.o, 1
  %i.q = add i64 %i.p, 2
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.q) #15
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.k
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !20

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exitthread-pre-split.i.i ], [ %i.i, %_ZN6hermes13platform_intl17LanguageTagParser20parseUnicodeLocaleIdEv.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 528
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !23
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #15
  br label %_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit

_ZN6hermes13platform_intl17LanguageTagParserD2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEvT_S7_.exit.i.i, %bb.e
  call void @_ZN6hermes13platform_intl22ParsedLocaleIdentifierD2Ev(ptr noundef nonnull align 8 dead_on_return(512) dereferenceable(536) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK6hermes13platform_intl22ParsedLocaleIdentifier12canonicalizeB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(512) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [2 x i16], align 4                ; 6 uses
  %i.b = alloca [2 x i16], align 4                ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %i.c = alloca [2 x i16], align 4                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 43 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 25 uses
  store i64 0, ptr %i.e, align 8, !tbaa !13
  store i16 0, ptr %i.d, align 8, !tbaa !24
  %i.f = load ptr, ptr %1, align 8, !tbaa !7      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13   ; 12 uses
  %i.i = icmp ugt i64 %i.h, 2305843009213693951
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #16
  unreachable

_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp samesign ugt i64 %i.h, 7
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  switch i64 %i.h, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.j = load i16, ptr %i.f, align 2, !tbaa !24
  store i16 %i.j, ptr %i.d, align 8, !tbaa !24
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.k = shl nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.d, ptr align 2 %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_mutateEmmPKDsm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.h)
  %.pre = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE6appendERKS4_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.l = phi ptr [ %i.d, %bb.c ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %.pre, %bb.f ] ; 3 uses
  store i64 %i.h, ptr %i.e, align 8, !tbaa !13
end_hunk_2
