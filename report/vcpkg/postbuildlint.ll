Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/vcpkg/original/postbuildlint?download=true
inline.NumInlined: 4847
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5vcpkg7Strings6concatIJA9_cS2_NSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA18_cS8_cEEES8_DpRKT_:bb.a

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.c = load i8, ptr %6, align 1, !tbaa !45
  invoke void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef signext %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %0, align 8, !tbaa !44     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.g = load i64, ptr %i.a, align 8, !tbaa !45
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d

bb.h:                                             ; preds = %bb.f
  ret void
}

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

declare void @_ZN5vcpkg7Strings7details15append_internalERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %.fr.i19 = freeze i64 %i.c                      ; 2 uses
  %i.d = icmp sgt i64 %.fr.i19, 32
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph35

.lr.ph:                                           ; preds = %.lr.ph35
  %i.f = icmp eq i64 %i.ba, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph35, !llvm.loop !793

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.fr.i22.lcssa = phi i64 [ %.fr.i19, %.lr.ph.preheader ], [ %.fr.i, %.lr.ph ] ; 2 uses
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.bb, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = lshr i64 %.fr.i22.lcssa, 1               ; 2 uses
  %i.h = add nsw i64 %i.g, -2                     ; 3 uses
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = add nsw i64 %i.g, -1
  %i.k = lshr i64 %i.j, 1                         ; 2 uses
  %i.l = and i64 %.fr.i22.lcssa, 2
  %i.m = icmp eq i64 %i.l, 0
  %i.n = or disjoint i64 %i.h, 1                  ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i, %.lr.ph._crit_edge
  %.010.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.az, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i ] ; 8 uses
  %i.q = getelementptr inbounds [2 x i8], ptr %0, i64 %.010.i.i
  %.sroa.03.0.copyload.i.i = load i16, ptr %i.q, align 1 ; 3 uses
  %i.r = icmp slt i64 %.010.i.i, %i.k
  br i1 %i.r, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i
  %.041.i.i.i = phi i64 [ %i.ag, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i ], [ %.010.i.i, %bb.b ] ; 2 uses
  %i.s = shl i64 %.041.i.i.i, 1                   ; 2 uses
  %i.t = add i64 %i.s, 2                          ; 3 uses
  %i.u = getelementptr inbounds [2 x i8], ptr %0, i64 %i.t ; 2 uses
  %i.v = or disjoint i64 %i.s, 1                  ; 2 uses
  %i.w = getelementptr inbounds [2 x i8], ptr %0, i64 %i.v ; 2 uses
  %i.x = load i8, ptr %i.u, align 1, !tbaa !146   ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !146   ; 2 uses
  %i.z = icmp slt i8 %i.x, %i.y
  br i1 %i.z, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aa = icmp sgt i8 %i.x, %i.y
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.i: ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !250, !range !84, !noundef !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !250, !range !84, !noundef !85
  %i.af = icmp samesign ult i8 %i.ac, %i.ae
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.i, %.lr.ph.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.i, %bb.c
  %i.ag = phi i64 [ %i.v, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i.i.i ], [ %i.t, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i.i.i ], [ %i.t, %bb.c ] ; 4 uses
  %i.ah = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ag
  %i.ai = getelementptr inbounds [2 x i8], ptr %0, i64 %.041.i.i.i
  %i.aj = load i16, ptr %i.ah, align 1
  store i16 %i.aj, ptr %i.ai, align 1
  %i.ak = icmp slt i64 %i.ag, %i.k
  br i1 %i.ak, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !24

._crit_edge.i.i.i:                                ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i, %bb.b
  %.0.lcssa.i.i.i = phi i64 [ %.010.i.i, %bb.b ], [ %i.ag, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread38.i.i.i ] ; 2 uses
  %i.al = icmp eq i64 %.0.lcssa.i.i.i, %i.i
  %or.cond.i.i = select i1 %i.m, i1 %i.al, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.am = load i16, ptr %i.o, align 1
  store i16 %i.am, ptr %i.p, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.sroa.012.0.extract.trunc.i.i.i.i = trunc i16 %.sroa.03.0.copyload.i.i to i8 ; 2 uses
  %.sroa.3.0.extract.shift.i.i.i.i = lshr i16 %.sroa.03.0.copyload.i.i, 8
  %.sroa.3.0.extract.trunc.i.i.i.i = trunc nuw i16 %.sroa.3.0.extract.shift.i.i.i.i to i8
  %i.an = icmp sgt i64 %.1.i.i.i, %.010.i.i
  br i1 %i.an, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %.0924.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.1.i.i.i, %bb.e ] ; 4 uses
  %.0924.in.i.i.i.i = add nsw i64 %.023.i.i.i.i, -1
  %.0924.i.i.i.i = sdiv i64 %.0924.in.i.i.i.i, 2  ; 4 uses
  %i.ao = getelementptr inbounds [2 x i8], ptr %0, i64 %.0924.i.i.i.i ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !146 ; 2 uses
  %i.aq = icmp slt i8 %i.ap, %.sroa.012.0.extract.trunc.i.i.i.i
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ar = icmp sgt i8 %i.ap, %.sroa.012.0.extract.trunc.i.i.i.i
  br i1 %i.ar, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i.i.i: ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !250, !range !84, !noundef !85
  %i.au = icmp samesign ult i8 %i.at, %.sroa.3.0.extract.trunc.i.i.i.i
  br i1 %i.au, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i

_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.av = getelementptr inbounds [2 x i8], ptr %0, i64 %.023.i.i.i.i
  %i.aw = load i16, ptr %i.ao, align 1
  store i16 %i.aw, ptr %i.av, align 1
  %i.ax = icmp sgt i64 %.0924.i.i.i.i, %.010.i.i
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i, !llvm.loop !25

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i.i.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %.023.i.i.i.i, %bb.f ], [ %.0924.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.thread.i.i.i.i ], [ %.023.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEES8_EEbT_RT0_.exit.i.i.i.i ]
  %i.ay = getelementptr inbounds [2 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i16 %.sroa.03.0.copyload.i.i, ptr %i.ay, align 1
  %.not.i.i = icmp eq i64 %.010.i.i, 0
  %i.az = add nsw i64 %.010.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_T0_.exit, label %bb.b, !llvm.loop !794

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_T0_SF_T1_T2_.exit.i.i
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_RT0_(ptr nonnull %0, ptr %storemerge20.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.loopexit

.lr.ph35:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge2034 = phi ptr [ %i.bb, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02133 = phi i64 [ %i.ba, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.ba = add nsw i64 %.02133, -1                 ; 3 uses
  %i.bb = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEET_SE_SE_T0_(ptr %0, ptr %storemerge2034) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_T1_(ptr %i.bb, ptr %storemerge2034, i64 noundef %i.ba)
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.a
  %.fr.i = freeze i64 %i.bd                       ; 2 uses
  %i.be = icmp sgt i64 %.fr.i, 32
  br i1 %i.be, label %.lr.ph, label %.loopexit, !llvm.loop !793

.loopexit:                                        ; preds = %.lr.ph35, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 32
  br i1 %i.d, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre23.i = load i8, ptr %0, align 1, !tbaa !146
  %scevgep = getelementptr i8, ptr %0, i64 2
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %2 = phi i8 [ %.pre23.i, %.lr.ph.i ], [ %4, %bb.h ] ; 2 uses
  %.sroa.0.022.i.idx = phi i64 [ 2, %.lr.ph.i ], [ %.sroa.0.022.i.add, %bb.h ] ; 4 uses
  %.pn21.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.022.i.ptr, %bb.h ] ; 2 uses
  %.sroa.0.022.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.022.i.idx ; 5 uses
  %i.f = load i8, ptr %.sroa.0.022.i.ptr, align 1, !tbaa !146 ; 2 uses
  %i.g = icmp slt i8 %i.f, %2
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp sgt i8 %i.f, %2
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !250, !range !84, !noundef !85
  %i.k = load i8, ptr %i.e, align 1, !tbaa !250, !range !84, !noundef !85
  %i.l = icmp samesign ult i8 %i.j, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %bb.b
  %i.m = load i16, ptr %.sroa.0.022.i.ptr, align 1 ; 2 uses
  %i.n = icmp samesign ugt i64 %.sroa.0.022.i.idx, 2
  br i1 %i.n, label %bb.d, label %bb.e, !prof !230

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %.sroa.0.022.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %.pn21.i, i64 2
  %i.p = load i16, ptr %0, align 1
  store i16 %i.p, ptr %i.o, align 1
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i: ; preds = %bb.e, %bb.d
  store i16 %i.m, ptr %0, align 1
  %3 = trunc i16 %i.m to i8
  br label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %bb.c
  %i.q = load i16, ptr %.sroa.0.022.i.ptr, align 1 ; 3 uses
  %.sroa.03.0.extract.trunc.i.i = trunc i16 %i.q to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i = lshr i16 %i.q, 8
  %.sroa.5.0.extract.trunc.i.i = trunc nuw i16 %.sroa.5.0.extract.shift.i.i to i8
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i
  %.sroa.05.0.i.i = phi ptr [ %.sroa.0.022.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i ] ; 4 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -2 ; 3 uses
  %i.r = load i8, ptr %.sroa.0.0.i.i, align 1, !tbaa !146 ; 2 uses
  %i.s = icmp sgt i8 %i.r, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = icmp slt i8 %i.r, %.sroa.03.0.extract.trunc.i.i
  br i1 %i.t, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i: ; preds = %bb.g
  %i.u = getelementptr inbounds i8, ptr %.sroa.05.0.i.i, i64 -1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !250, !range !84, !noundef !85
  %i.w = icmp samesign ugt i8 %i.v, %.sroa.5.0.extract.trunc.i.i
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, %bb.f
  %i.x = load i16, ptr %.sroa.0.0.i.i, align 1
  store i16 %i.x, ptr %.sroa.05.0.i.i, align 1
  br label %bb.f, !llvm.loop !795

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i, %bb.g
  store i16 %i.q, ptr %.sroa.05.0.i.i, align 1
  %.pre.i = load i8, ptr %0, align 1, !tbaa !146
  br label %bb.h

bb.h:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i
  %4 = phi i8 [ %3, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i ], [ %.pre.i, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i ]
  %.sroa.0.022.i.add = add nuw nsw i64 %.sroa.0.022.i.idx, 2 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.022.i.add, 32
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %bb.b, !llvm.loop !796

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.not6.i = icmp eq ptr %i.y, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19
  %.sroa.0.07.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19 ], [ %i.y, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit ] ; 3 uses
  %i.z = load i16, ptr %.sroa.0.07.i, align 1     ; 3 uses
  %.sroa.03.0.extract.trunc.i.i13 = trunc i16 %i.z to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i14 = lshr i16 %i.z, 8
  %.sroa.5.0.extract.trunc.i.i15 = trunc nuw i16 %.sroa.5.0.extract.shift.i.i14 to i8
  br label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i21, %.lr.ph.i12
  %.sroa.05.0.i.i16 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i17, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i21 ] ; 4 uses
  %.sroa.0.0.i.i17 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i16, i64 -2 ; 3 uses
  %i.aa = load i8, ptr %.sroa.0.0.i.i17, align 1, !tbaa !146 ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, %.sroa.03.0.extract.trunc.i.i13
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i21, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = icmp slt i8 %i.aa, %.sroa.03.0.extract.trunc.i.i13
  br i1 %i.ac, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i18

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i18: ; preds = %bb.j
  %i.ad = getelementptr inbounds i8, ptr %.sroa.05.0.i.i16, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !250, !range !84, !noundef !85
  %i.af = icmp samesign ugt i8 %i.ae, %.sroa.5.0.extract.trunc.i.i15
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i21, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i21: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i18, %bb.i
  %i.ag = load i16, ptr %.sroa.0.0.i.i17, align 1
  store i16 %i.ag, ptr %.sroa.05.0.i.i16, align 1
  br label %bb.i, !llvm.loop !795

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i18, %bb.j
  store i16 %i.z, ptr %.sroa.05.0.i.i16, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 2 ; 2 uses
  %.not.i20 = icmp eq ptr %i.ah, %1
  br i1 %.not.i20, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %.lr.ph.i12, !llvm.loop !797

bb.k:                                             ; preds = %bb.a
  %i.ai = icmp eq ptr %0, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %.preheader.i22

.preheader.i22:                                   ; preds = %bb.k
  %.sroa.0.019.i23 = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %.not20.i24 = icmp eq ptr %.sroa.0.019.i23, %1
  br i1 %.not20.i24, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %.lr.ph.i25

.lr.ph.i25:                                       ; preds = %.preheader.i22
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre23.i26 = load i8, ptr %0, align 1, !tbaa !146
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph.i25
  %5 = phi i8 [ %.pre23.i26, %.lr.ph.i25 ], [ %7, %bb.s ] ; 2 uses
  %.pn21.i27 = phi ptr [ %.sroa.0.019.i23, %.lr.ph.i25 ], [ %.sroa.0.0.i37, %bb.s ] ; 7 uses
  %.pn21.i28 = phi ptr [ %0, %.lr.ph.i25 ], [ %.pn21.i27, %bb.s ] ; 3 uses
  %i.ak = load i8, ptr %.pn21.i27, align 1, !tbaa !146 ; 2 uses
  %i.al = icmp slt i8 %i.ak, %5
  br i1 %i.al, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i40, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp sgt i8 %i.ak, %5
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i29, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i28

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i28: ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.pn21.i28, i64 3
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !250, !range !84, !noundef !85
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !250, !range !84, !noundef !85
  %i.aq = icmp samesign ult i8 %i.ao, %i.ap
  br i1 %i.aq, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i40, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i29

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i40: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i28, %bb.l
  %i.ar = load i16, ptr %.pn21.i27, align 1       ; 2 uses
  %i.as = ptrtoint ptr %.pn21.i27 to i64
  %i.at = sub i64 %i.as, %i.b                     ; 3 uses
  %i.au = ashr exact i64 %i.at, 1                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 1
  br i1 %i.av, label %bb.n, label %bb.o, !prof !230

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i40
  %i.aw = getelementptr inbounds nuw i8, ptr %.pn21.i28, i64 4
  %i.ax = sub nsw i64 0, %i.au
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.aw, i64 %i.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ay, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.at, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

bb.o:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i40
  %i.az = icmp eq i64 %i.at, 2
  br i1 %i.az, label %bb.p, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn21.i28, i64 2
  %i.bb = load i16, ptr %0, align 1
  store i16 %i.bb, ptr %i.ba, align 1
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41: ; preds = %bb.p, %bb.o, %bb.n
  store i16 %i.ar, ptr %0, align 1
  %6 = trunc i16 %i.ar to i8
  br label %bb.s

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i29: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i28, %bb.m
  %i.bc = load i16, ptr %.pn21.i27, align 1       ; 3 uses
  %.sroa.03.0.extract.trunc.i.i30 = trunc i16 %i.bc to i8 ; 2 uses
  %.sroa.5.0.extract.shift.i.i31 = lshr i16 %i.bc, 8
  %.sroa.5.0.extract.trunc.i.i32 = trunc nuw i16 %.sroa.5.0.extract.shift.i.i31 to i8
  br label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i39, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i29
  %.sroa.05.0.i.i33 = phi ptr [ %.pn21.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread17.i29 ], [ %.sroa.0.0.i.i34, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i39 ] ; 4 uses
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.05.0.i.i33, i64 -2 ; 3 uses
  %i.bd = load i8, ptr %.sroa.0.0.i.i34, align 1, !tbaa !146 ; 2 uses
  %i.be = icmp sgt i8 %i.bd, %.sroa.03.0.extract.trunc.i.i30
  br i1 %i.be, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i39, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = icmp slt i8 %i.bd, %.sroa.03.0.extract.trunc.i.i30
  br i1 %i.bf, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i36, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i35: ; preds = %bb.r
  %i.bg = getelementptr inbounds i8, ptr %.sroa.05.0.i.i33, i64 -1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !250, !range !84, !noundef !85
  %i.bi = icmp samesign ugt i8 %i.bh, %.sroa.5.0.extract.trunc.i.i32
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i36

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.thread.i.i39: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i35, %bb.q
  %i.bj = load i16, ptr %.sroa.0.0.i.i34, align 1
  store i16 %i.bj, ptr %.sroa.05.0.i.i33, align 1
  br label %bb.q, !llvm.loop !795

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i36: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIvEEclIN5vcpkg19LinkageAndBuildTypeENS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEEEEbRT_T0_.exit.i.i35, %bb.r
  store i16 %i.bc, ptr %.sroa.05.0.i.i33, align 1
  %.pre.i38 = load i8, ptr %0, align 1, !tbaa !146
  br label %bb.s

bb.s:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i36, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41
  %7 = phi i8 [ %6, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEES8_ET0_T_SA_S9_.exit.i41 ], [ %.pre.i38, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i36 ]
  %.sroa.0.0.i37 = getelementptr inbounds nuw i8, ptr %.pn21.i27, i64 2 ; 2 uses
  %.not.i38 = icmp eq ptr %.sroa.0.0.i37, %1
  br i1 %.not.i38, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit, label %bb.l, !llvm.loop !796

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit: ; preds = %bb.s, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterISt4lessIvEEEEvT_T0_.exit.i19, %.preheader.i22, %bb.k, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEET_SE_SE_T0_(ptr %0, ptr %1) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 1
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [2 x i8], ptr %0, i64 %i.e ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -2 ; 6 uses
  %i.i = load i8, ptr %i.g, align 1, !tbaa !146   ; 6 uses
  %i.j = load i8, ptr %i.f, align 1, !tbaa !146   ; 6 uses
  %i.k = icmp slt i8 %i.i, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i8 %i.i, %i.j
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.n = load i8, ptr %i.m, align 1, !tbaa !250, !range !84, !noundef !85
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !250, !range !84, !noundef !85
  %i.q = icmp samesign ult i8 %i.n, %i.p
  br i1 %i.q, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %bb.a
  %i.r = load i8, ptr %i.h, align 1, !tbaa !146   ; 4 uses
  %i.s = icmp slt i8 %i.j, %i.r
  br i1 %i.s, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i
  %i.t = icmp sgt i8 %i.j, %i.r
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.i: ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !250, !range !84, !noundef !85
  %i.w = getelementptr inbounds i8, ptr %1, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !250, !range !84, !noundef !85
  %i.y = icmp samesign ult i8 %i.v, %i.x
  br i1 %i.y, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.i, %bb.c
  %i.z = icmp slt i8 %i.i, %i.r
  br i1 %i.z, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i
  %i.aa = icmp sgt i8 %i.i, %i.r
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.thread41.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !250, !range !84, !noundef !85
  %i.ad = getelementptr inbounds i8, ptr %1, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !250, !range !84, !noundef !85
  %i.af = icmp samesign ult i8 %i.ac, %i.ae
  br i1 %i.af, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.thread41.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.thread41.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.i, %bb.d
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i, %bb.b
  %i.ag = load i8, ptr %i.h, align 1, !tbaa !146  ; 4 uses
  %i.ah = icmp slt i8 %i.i, %i.ag
  br i1 %i.ah, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i
  %i.ai = icmp sgt i8 %i.i, %i.ag
  br i1 %i.ai, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.i: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !250, !range !84, !noundef !85
  %i.al = getelementptr inbounds i8, ptr %1, i64 -1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !250, !range !84, !noundef !85
  %i.an = icmp samesign ult i8 %i.ak, %i.am
  br i1 %i.an, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.i, %bb.e
  %i.ao = icmp slt i8 %i.j, %i.ag
  br i1 %i.ao, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i
  %i.ap = icmp sgt i8 %i.j, %i.ag
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.thread47.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.i: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !250, !range !84, !noundef !85
  %i.as = getelementptr inbounds i8, ptr %1, i64 -1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !250, !range !84, !noundef !85
  %i.au = icmp samesign ult i8 %i.ar, %i.at
  br i1 %i.au, label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.thread47.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.thread47.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.i, %bb.f
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.thread41.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.thread47.i
  %.sink55.i = phi ptr [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.thread47.i ], [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.i ], [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit29.thread41.i ], [ %i.f, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i ], [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit27.thread38.i ], [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread35.i ], [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit31.thread44.i ], [ %i.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit33.i ] ; 2 uses
  %i.av = load i16, ptr %0, align 1
  %i.aw = load i16, ptr %.sink55.i, align 1
  store i16 %i.aw, ptr %0, align 1
  store i16 %i.av, ptr %.sink55.i, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit
  %.sroa.012.0.i = phi ptr [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit ], [ %i.br, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_SE_T0_.exit ], [ %.sroa.0.1.i, %bb.k ]
  %i.ay = load i8, ptr %0, align 1, !tbaa !146    ; 4 uses
  br label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i14, %bb.g
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %bb.g ], [ %i.bg, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i14 ] ; 8 uses
  %i.az = load i8, ptr %.sroa.012.1.i, align 1, !tbaa !146 ; 2 uses
  %i.ba = icmp slt i8 %i.az, %i.ay
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i14, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = icmp sgt i8 %i.az, %i.ay
  br i1 %i.bb, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.preheader, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i13

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.preheader: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i13, %bb.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i13: ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !250, !range !84, !noundef !85
  %i.be = load i8, ptr %i.ax, align 1, !tbaa !250, !range !84, !noundef !85
  %i.bf = icmp samesign ult i8 %i.bd, %i.be
  br i1 %i.bf, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i14, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread.i14: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.i13, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 2
  br label %bb.h, !llvm.loop !798

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.preheader
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.0.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.preheader ], [ %.sroa.0.1.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.backedge ] ; 2 uses
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -2 ; 6 uses
  %i.bh = load i8, ptr %.sroa.0.1.i, align 1, !tbaa !146 ; 2 uses
  %i.bi = icmp slt i8 %i.ay, %i.bh
  br i1 %i.bi, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.backedge, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i
  %i.bj = icmp sgt i8 %i.ay, %i.bh
  br i1 %i.bj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.thread19.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i: ; preds = %bb.j
  %i.bk = load i8, ptr %i.ax, align 1, !tbaa !250, !range !84, !noundef !85
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !250, !range !84, !noundef !85
  %i.bn = icmp samesign ult i8 %i.bk, %i.bm
  br i1 %i.bn, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.thread19.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit.thread16.i, !llvm.loop !799

_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.thread19.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.i, %bb.j
  %i.bo = icmp ult ptr %.sroa.012.1.i, %.sroa.0.1.i
  br i1 %i.bo, label %bb.k, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEET_SE_SE_SE_T0_.exit

bb.k:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.thread19.i
  %i.bp = load i16, ptr %.sroa.012.1.i, align 1
  %i.bq = load i16, ptr %.sroa.0.1.i, align 1
  store i16 %i.bq, ptr %.sroa.012.1.i, align 1
  store i16 %i.bp, ptr %.sroa.0.1.i, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 2
  br label %bb.g, !llvm.loop !800

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEET_SE_SE_SE_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIvEEclINS_17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS8_SaIS8_EEEESD_EEbT_T0_.exit9.thread19.i
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 2
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_RT0_.exit
  %.sroa.0.05 = phi ptr [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5vcpkg19LinkageAndBuildTypeESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterISt4lessIvEEEEvT_SE_SE_RT0_.exit ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -2 ; 4 uses
  %.sroa.03.0.copyload.i = load i16, ptr %i.e, align 1 ; 3 uses
  %i.f = load i16, ptr %0, align 1
  store i16 %i.f, ptr %i.e, align 1
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.g, %i.a                       ; 3 uses
end_hunk_0
