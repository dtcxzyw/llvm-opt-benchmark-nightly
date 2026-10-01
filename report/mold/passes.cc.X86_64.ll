Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/passes.cc.X86_64?download=true
inline.NumInlined: 23987
inline.NumDeleted: 9635
loop-unroll.NumCompletelyUnrolled: 73
loop-unroll.NumRuntimeUnrolled: 105
loop-unroll.NumUnrolled: 179
begin_hunk_0_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_T1_:bb.a
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us
  %.sroa.024.029.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.024.029.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, !llvm.loop !4054

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit
  %i.i = phi i64 [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.024.029 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.024.029, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 8 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.024.029, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = load i64, ptr %4, align 8, !tbaa !177    ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.021.i, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %.sroa.024.029, i64 %i.k
  %i.n = load i64, ptr %i.l, align 8, !tbaa !594
  %i.o = load i64, ptr %i.m, align 8, !tbaa !594
  %i.p = icmp slt i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false), !tbaa.struct !1716
  %i.q = ptrtoint ptr %.sroa.0.021.i to i64
  %i.r = sub i64 %i.q, %i.i                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.c, label %bb.d, !prof !986

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.v = sub nsw i64 0, %i.s
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.029, i64 %i.r, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.r, 16
  br i1 %i.x, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.029, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.029, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false), !tbaa.struct !1716
  %i.z = getelementptr inbounds i8, ptr %7, i64 %i.k
  %i.aa = getelementptr inbounds i8, ptr %.pn20.i, i64 %i.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !594
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !594
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.09.i.i, i64 16, i1 false), !tbaa.struct !1716
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -16 ; 2 uses
  %i.ae = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %7, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 %i.ae
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !594
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !594
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i, !llvm.loop !103

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.ak, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit, label %.lr.ph.i, !llvm.loop !104

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit: ; preds = %bb.g
  %i.al = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.am = sub i64 %i.a, %i.al
  %i.an = ashr exact i64 %i.am, 4
  %.not = icmp slt i64 %i.an, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4054

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, %bb.a
  %.sroa.024.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ]
  %i.ao = icmp eq ptr %.sroa.024.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr inbounds nuw i8, ptr %.sroa.024.0.lcssa, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond27 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond27, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %._crit_edge, %bb.m
  %.sroa.0.021.i13 = phi ptr [ %.sroa.0.0.i17, %bb.m ], [ %.sroa.0.019.i11, %._crit_edge ] ; 8 uses
  %.pn20.i14 = phi ptr [ %.sroa.0.021.i13, %bb.m ], [ %.sroa.024.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = load i64, ptr %4, align 8, !tbaa !177   ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.021.i13, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %.sroa.024.0.lcssa, i64 %i.aq
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !594
  %i.au = load i64, ptr %i.as, align 8, !tbaa !594
  %i.av = icmp slt i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i13, i64 16, i1 false), !tbaa.struct !1716
  %i.aw = ptrtoint ptr %.sroa.0.021.i13 to i64
  %i.ax = sub i64 %i.aw, %.lcssa                  ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 4                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.i, label %bb.j, !prof !986

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 32
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.0.lcssa, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp eq i64 %i.ax, 16
  br i1 %i.bd, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.0.lcssa, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i13, i64 16, i1 false), !tbaa.struct !1716
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.aq
  %i.bg = getelementptr inbounds i8, ptr %.pn20.i14, i64 %i.aq
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !594
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !594
  %i.bj = icmp slt i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15

.lr.ph.i.i18:                                     ; preds = %bb.l, %.lr.ph.i.i18
  %.sroa.0.09.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.pn20.i14, %bb.l ] ; 4 uses
  %.sroa.04.08.i.i20 = phi ptr [ %.sroa.0.09.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.021.i13, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.09.i.i19, i64 16, i1 false), !tbaa.struct !1716
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i19, i64 -16 ; 2 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %5, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i21, i64 %i.bk
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !594
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !594
  %i.bp = icmp slt i64 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15, !llvm.loop !103

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15: ; preds = %.lr.ph.i.i18, %bb.l
  %.sroa.04.0.lcssa.i.i16 = phi ptr [ %.sroa.0.021.i13, %bb.l ], [ %.sroa.0.09.i.i19, %.lr.ph.i.i18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.lcssa.i.i16, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %i.bq, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23, label %.lr.ph.i12, !llvm.loop !104

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23: ; preds = %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not57 = icmp slt i64 %i.e, %i.a
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 9 uses
  %.idx52 = shl i64 %3, 5                         ; 2 uses
  %i.f = icmp eq i64 %.idx, %.idx52
  br i1 %i.f, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 16
  %i.h = icmp eq i64 %.idx, 16
  %6 = shl i64 %3, 5
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us
  %.059.us = phi ptr [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.041.058.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.041.058.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !986

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.059.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.058.us, i64 16, i1 false), !tbaa.struct !1716
  %i.j = getelementptr inbounds nuw i8, ptr %.059.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.059.us, ptr align 8 %.sroa.041.058.us, i64 %.idx, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.059.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.l = getelementptr inbounds i8, ptr %.059.us, i64 %6 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.b, %i.m
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.o, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !4055

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit
  %.059 = phi ptr [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.041.058 = phi ptr [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.041.058, i64 %.idx ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.041.058, i64 %.idx52 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.z, %bb.g ], [ %.059, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.041.058, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.p, %.lr.ph.i.preheader ] ; 4 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !177    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.018.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.014.019.i, i64 %i.r
  %i.u = load i64, ptr %i.s, align 8, !tbaa !594
  %i.v = load i64, ptr %i.t, align 8, !tbaa !594
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false), !tbaa.struct !1716
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false), !tbaa.struct !1716
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.y, %bb.f ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.014.1.i, %i.p
  %i.ab = icmp eq ptr %.sroa.010.1.i, %i.q
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !4056

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 16
  br i1 %i.af, label %bb.h, label %bb.i, !prof !986

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.ae, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ag = icmp eq i64 %i.ae, 16
  br i1 %i.ag, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 %i.ae ; 3 uses
  %i.ai = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 16
  br i1 %i.al, label %bb.k, label %bb.l, !prof !986

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ak, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i
  %i.am = icmp eq i64 %i.ak, 16
  br i1 %i.am, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 2 uses
  %i.ao = sub i64 %i.b, %i.ai
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
  %.not = icmp slt i64 %i.ap, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4055

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us, %bb.a
  %.sroa.041.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ] ; 2 uses
  %.lcssa55 = phi i64 [ %i.e, %bb.a ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.ap, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa55) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 4
  %i.aq = getelementptr inbounds i8, ptr %.sroa.041.0.lcssa, i64 %.idx53 ; 5 uses
  %i.ar = icmp eq i64 %.sroa.speculated, 0
  %i.as = icmp eq ptr %i.aq, %1
  %or.cond17.i16 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond17.i16, label %.critedge.i24, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %._crit_edge, %bb.p
  %.020.i18 = phi ptr [ %i.bb, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i19 = phi ptr [ %.sroa.014.1.i22, %bb.p ], [ %.sroa.041.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i20 = phi ptr [ %.sroa.010.1.i21, %bb.p ], [ %i.aq, %._crit_edge ] ; 4 uses
  %i.at = load i64, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.010.018.i20, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.014.019.i19, i64 %i.at
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !594
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !594
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i20, i64 16, i1 false), !tbaa.struct !1716
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i19, i64 16, i1 false), !tbaa.struct !1716
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i21 = phi ptr [ %i.az, %bb.n ], [ %.sroa.010.018.i20, %bb.o ] ; 3 uses
  %.sroa.014.1.i22 = phi ptr [ %.sroa.014.019.i19, %bb.n ], [ %i.ba, %bb.o ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.020.i18, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %.sroa.014.1.i22, %i.aq
  %i.bd = icmp eq ptr %.sroa.010.1.i21, %1
  %or.cond.i23 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i23, label %.critedge.i24, label %.lr.ph.i17, !llvm.loop !4056

.critedge.i24:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i25 = phi ptr [ %i.aq, %._crit_edge ], [ %.sroa.010.1.i21, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i26 = phi ptr [ %.sroa.041.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i22, %bb.p ] ; 3 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bb, %bb.p ] ; 3 uses
  %i.be = ptrtoint ptr %i.aq to i64
  %i.bf = ptrtoint ptr %.sroa.014.0.lcssa.i26 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 16
  br i1 %i.bh, label %bb.q, label %bb.r, !prof !986

bb.q:                                             ; preds = %.critedge.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i27, ptr align 8 %.sroa.014.0.lcssa.i26, i64 %i.bg, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

bb.r:                                             ; preds = %.critedge.i24
  %i.bi = icmp eq i64 %i.bg, 16
  br i1 %i.bi, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.0.lcssa.i26, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28: ; preds = %bb.s, %bb.r, %bb.q
  %i.bj = getelementptr inbounds i8, ptr %.0.lcssa.i27, i64 %i.bg ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.010.0.lcssa.i25 to i64
  %i.bl = sub i64 %i.b, %i.bk                     ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.t, label %bb.u, !prof !986

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bj, ptr align 8 %.sroa.010.0.lcssa.i25, i64 %i.bl, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28
  %i.bn = icmp eq i64 %i.bl, 16
  br i1 %i.bn, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.0.lcssa.i25, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_init_finiINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPZN4mold14sort_init_finiINS0_6X86_64EEEvRNS0_7ContextIT_EEE5EntryN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS7_lEEDaRS4_RT0_EUlOS4_OSN_E_EEEvS4_S4_SN_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not52 = icmp slt i64 %i.e, %i.a
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx46 = shl nsw i64 %3, 5                     ; 2 uses
  %.not47 = icmp eq i64 %.idx, %.idx46
  br i1 %.not47, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 16
  %i.i = icmp eq i64 %.idx, 16
end_hunk_0
begin_hunk_1_@_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_T1_:bb.a
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us
  %.sroa.024.029.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.024.029.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 4
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, !llvm.loop !4069

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit
  %i.i = phi i64 [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.024.029 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ], [ %0, %.lr.ph ] ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.024.029, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %.sroa.024.029, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %bb.g ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 8 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %bb.g ], [ %.sroa.024.029, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = load i64, ptr %4, align 8, !tbaa !177    ; 4 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.021.i, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %.sroa.024.029, i64 %i.k
  %i.n = load i64, ptr %i.l, align 8, !tbaa !594
  %i.o = load i64, ptr %i.m, align 8, !tbaa !594
  %i.p = icmp slt i64 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false), !tbaa.struct !1716
  %i.q = ptrtoint ptr %.sroa.0.021.i to i64
  %i.r = sub i64 %i.q, %i.i                       ; 3 uses
  %i.s = ashr exact i64 %i.r, 4                   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1
  br i1 %i.t, label %bb.c, label %bb.d, !prof !986

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.v = sub nsw i64 0, %i.s
  %i.w = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.029, i64 %i.r, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.r, 16
  br i1 %i.x, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.029, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.029, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i, i64 16, i1 false), !tbaa.struct !1716
  %i.z = getelementptr inbounds i8, ptr %7, i64 %i.k
  %i.aa = getelementptr inbounds i8, ptr %.pn20.i, i64 %i.k
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !594
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !594
  %i.ad = icmp slt i64 %i.ab, %i.ac
  br i1 %i.ad, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.0.09.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 4 uses
  %.sroa.04.08.i.i = phi ptr [ %.sroa.0.09.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.09.i.i, i64 16, i1 false), !tbaa.struct !1716
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.09.i.i, i64 -16 ; 2 uses
  %i.ae = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %7, i64 %i.ae
  %i.ag = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 %i.ae
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !594
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !594
  %i.aj = icmp slt i64 %i.ah, %i.ai
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i, !llvm.loop !107

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.0.021.i, %bb.f ], [ %.sroa.0.09.i.i, %.lr.ph.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.ak, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit, label %.lr.ph.i, !llvm.loop !108

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit: ; preds = %bb.g
  %i.al = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.am = sub i64 %i.a, %i.al
  %i.an = ashr exact i64 %i.am, 4
  %.not = icmp slt i64 %i.an, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4069

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us, %bb.a
  %.sroa.024.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ] ; 7 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.us ], [ %i.al, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit.loopexit ]
  %i.ao = icmp eq ptr %.sroa.024.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr inbounds nuw i8, ptr %.sroa.024.0.lcssa, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond27 = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond27, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %._crit_edge, %bb.m
  %.sroa.0.021.i13 = phi ptr [ %.sroa.0.0.i17, %bb.m ], [ %.sroa.0.019.i11, %._crit_edge ] ; 8 uses
  %.pn20.i14 = phi ptr [ %.sroa.0.021.i13, %bb.m ], [ %.sroa.024.0.lcssa, %._crit_edge ] ; 4 uses
  %i.aq = load i64, ptr %4, align 8, !tbaa !177   ; 4 uses
  %i.ar = getelementptr inbounds i8, ptr %.sroa.0.021.i13, i64 %i.aq
  %i.as = getelementptr inbounds i8, ptr %.sroa.024.0.lcssa, i64 %i.aq
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !594
  %i.au = load i64, ptr %i.as, align 8, !tbaa !594
  %i.av = icmp slt i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i13, i64 16, i1 false), !tbaa.struct !1716
  %i.aw = ptrtoint ptr %.sroa.0.021.i13 to i64
  %i.ax = sub i64 %i.aw, %.lcssa                  ; 3 uses
  %i.ay = ashr exact i64 %i.ax, 4                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 1
  br i1 %i.az, label %bb.i, label %bb.j, !prof !986

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 32
  %i.bb = sub nsw i64 0, %i.ay
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.ba, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.024.0.lcssa, i64 %i.ax, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

bb.j:                                             ; preds = %bb.h
  %i.bd = icmp eq i64 %i.ax, 16
  br i1 %i.bd, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

bb.k:                                             ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.0.lcssa, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22: ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.024.0.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i12
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.021.i13, i64 16, i1 false), !tbaa.struct !1716
  %i.bf = getelementptr inbounds i8, ptr %5, i64 %i.aq
  %i.bg = getelementptr inbounds i8, ptr %.pn20.i14, i64 %i.aq
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !594
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !594
  %i.bj = icmp slt i64 %i.bh, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15

.lr.ph.i.i18:                                     ; preds = %bb.l, %.lr.ph.i.i18
  %.sroa.0.09.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.pn20.i14, %bb.l ] ; 4 uses
  %.sroa.04.08.i.i20 = phi ptr [ %.sroa.0.09.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.021.i13, %bb.l ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.09.i.i19, i64 16, i1 false), !tbaa.struct !1716
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.09.i.i19, i64 -16 ; 2 uses
  %i.bk = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %5, i64 %i.bk
  %i.bm = getelementptr inbounds i8, ptr %.sroa.0.0.i.i21, i64 %i.bk
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !594
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !594
  %i.bp = icmp slt i64 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.i.i18, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15, !llvm.loop !107

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15: ; preds = %.lr.ph.i.i18, %bb.l
  %.sroa.04.0.lcssa.i.i16 = phi ptr [ %.sroa.0.021.i13, %bb.l ], [ %.sroa.0.09.i.i19, %.lr.ph.i.i18 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.0.lcssa.i.i16, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !1716
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.m

bb.m:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_SN_.exit.i15, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESE_ET0_S6_S6_SF_.exit.i22
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13, i64 16 ; 2 uses
  %i.bq = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %i.bq, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23, label %.lr.ph.i12, !llvm.loop !108

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_.exit23: ; preds = %bb.m, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEEvS6_S6_SN_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not57 = icmp slt i64 %i.e, %i.a
  br i1 %.not57, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 9 uses
  %.idx52 = shl i64 %3, 5                         ; 2 uses
  %i.f = icmp eq i64 %.idx, %.idx52
  br i1 %i.f, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 16
  %i.h = icmp eq i64 %.idx, 16
  %6 = shl i64 %3, 5
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us
  %.059.us = phi ptr [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.041.058.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.041.058.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !986

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.059.us, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.041.058.us, i64 16, i1 false), !tbaa.struct !1716
  %i.j = getelementptr inbounds nuw i8, ptr %.059.us, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.059.us, ptr align 8 %.sroa.041.058.us, i64 %.idx, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.059.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.k, ptr nonnull align 8 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.l = getelementptr inbounds i8, ptr %.059.us, i64 %6 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.b, %i.m
  %i.o = ashr exact i64 %i.n, 4                   ; 2 uses
  %.not.us = icmp slt i64 %i.o, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !4070

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit
  %.059 = phi ptr [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.041.058 = phi ptr [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.sroa.041.058, i64 %.idx ; 3 uses
  %i.q = getelementptr inbounds i8, ptr %.sroa.041.058, i64 %.idx52 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.020.i = phi ptr [ %i.z, %bb.g ], [ %.059, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %bb.g ], [ %.sroa.041.058, %.lr.ph.i.preheader ] ; 4 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %bb.g ], [ %i.p, %.lr.ph.i.preheader ] ; 4 uses
  %i.r = load i64, ptr %5, align 8, !tbaa !177    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.010.018.i, i64 %i.r
  %i.t = getelementptr inbounds i8, ptr %.sroa.014.019.i, i64 %i.r
  %i.u = load i64, ptr %i.s, align 8, !tbaa !594
  %i.v = load i64, ptr %i.t, align 8, !tbaa !594
  %i.w = icmp slt i64 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i, i64 16, i1 false), !tbaa.struct !1716
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 16
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i, i64 16, i1 false), !tbaa.struct !1716
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.010.1.i = phi ptr [ %i.x, %bb.e ], [ %.sroa.010.018.i, %bb.f ] ; 5 uses
  %.sroa.014.1.i = phi ptr [ %.sroa.014.019.i, %bb.e ], [ %i.y, %bb.f ] ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.020.i, i64 16 ; 4 uses
  %i.aa = icmp eq ptr %.sroa.014.1.i, %i.p
  %i.ab = icmp eq ptr %.sroa.010.1.i, %i.q
  %or.cond.i = select i1 %i.aa, i1 true, i1 %i.ab
  br i1 %or.cond.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !4071

.critedge.i.loopexit:                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.p to i64
  %i.ad = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp sgt i64 %i.ae, 16
  br i1 %i.af, label %bb.h, label %bb.i, !prof !986

bb.h:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.ae, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

bb.i:                                             ; preds = %.critedge.i.loopexit
  %i.ag = icmp eq i64 %i.ae, 16
  br i1 %i.ag, label %bb.j, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.1.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 %i.ae ; 3 uses
  %i.ai = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.aj = ptrtoint ptr %.sroa.010.1.i to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 16
  br i1 %i.al, label %bb.k, label %bb.l, !prof !986

bb.k:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.ak, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

bb.l:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i
  %i.am = icmp eq i64 %i.ak, 16
  br i1 %i.am, label %bb.m, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.1.i, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit: ; preds = %bb.k, %bb.l, %bb.m
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak ; 2 uses
  %i.ao = sub i64 %i.b, %i.ai
  %i.ap = ashr exact i64 %i.ao, 4                 ; 2 uses
  %.not = icmp slt i64 %i.ap, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4070

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us, %bb.a
  %.sroa.041.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.an, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ] ; 2 uses
  %.lcssa55 = phi i64 [ %i.e, %bb.a ], [ %i.o, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit.us ], [ %i.ap, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa55) ; 2 uses
  %.idx53 = shl nsw i64 %.sroa.speculated, 4
  %i.aq = getelementptr inbounds i8, ptr %.sroa.041.0.lcssa, i64 %.idx53 ; 5 uses
  %i.ar = icmp eq i64 %.sroa.speculated, 0
  %i.as = icmp eq ptr %i.aq, %1
  %or.cond17.i16 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond17.i16, label %.critedge.i24, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %._crit_edge, %bb.p
  %.020.i18 = phi ptr [ %i.bb, %bb.p ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.014.019.i19 = phi ptr [ %.sroa.014.1.i22, %bb.p ], [ %.sroa.041.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.010.018.i20 = phi ptr [ %.sroa.010.1.i21, %bb.p ], [ %i.aq, %._crit_edge ] ; 4 uses
  %i.at = load i64, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %.sroa.010.018.i20, i64 %i.at
  %i.av = getelementptr inbounds i8, ptr %.sroa.014.019.i19, i64 %i.at
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !594
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !594
  %i.ay = icmp slt i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.018.i20, i64 16, i1 false), !tbaa.struct !1716
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20, i64 16
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph.i17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.020.i18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.019.i19, i64 16, i1 false), !tbaa.struct !1716
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19, i64 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.010.1.i21 = phi ptr [ %i.az, %bb.n ], [ %.sroa.010.018.i20, %bb.o ] ; 3 uses
  %.sroa.014.1.i22 = phi ptr [ %.sroa.014.019.i19, %bb.n ], [ %i.ba, %bb.o ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.020.i18, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %.sroa.014.1.i22, %i.aq
  %i.bd = icmp eq ptr %.sroa.010.1.i21, %1
  %or.cond.i23 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond.i23, label %.critedge.i24, label %.lr.ph.i17, !llvm.loop !4071

.critedge.i24:                                    ; preds = %bb.p, %._crit_edge
  %.sroa.010.0.lcssa.i25 = phi ptr [ %i.aq, %._crit_edge ], [ %.sroa.010.1.i21, %bb.p ] ; 3 uses
  %.sroa.014.0.lcssa.i26 = phi ptr [ %.sroa.041.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i22, %bb.p ] ; 3 uses
  %.0.lcssa.i27 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bb, %bb.p ] ; 3 uses
  %i.be = ptrtoint ptr %i.aq to i64
  %i.bf = ptrtoint ptr %.sroa.014.0.lcssa.i26 to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 4 uses
  %i.bh = icmp sgt i64 %i.bg, 16
  br i1 %i.bh, label %bb.q, label %bb.r, !prof !986

bb.q:                                             ; preds = %.critedge.i24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i27, ptr align 8 %.sroa.014.0.lcssa.i26, i64 %i.bg, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

bb.r:                                             ; preds = %.critedge.i24
  %i.bi = icmp eq i64 %i.bg, 16
  br i1 %i.bi, label %bb.s, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.lcssa.i27, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.0.lcssa.i26, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28: ; preds = %bb.s, %bb.r, %bb.q
  %i.bj = getelementptr inbounds i8, ptr %.0.lcssa.i27, i64 %i.bg ; 2 uses
  %i.bk = ptrtoint ptr %.sroa.010.0.lcssa.i25 to i64
  %i.bl = sub i64 %i.b, %i.bk                     ; 3 uses
  %i.bm = icmp sgt i64 %i.bl, 16
  br i1 %i.bm, label %bb.t, label %bb.u, !prof !986

bb.t:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bj, ptr align 8 %.sroa.010.0.lcssa.i25, i64 %i.bl, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

bb.u:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_ET0_S6_S6_SF_.exit.i28
  %i.bn = icmp eq i64 %i.bl, 16
  br i1 %i.bn, label %bb.v, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.010.0.lcssa.i25, i64 16, i1 false), !tbaa.struct !1716
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPZN4mold14sort_ctor_dtorINS2_6X86_64EEEvRNS2_7ContextIT_EEE5EntrySt6vectorIS9_SaIS9_EEEESA_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS9_lEEDaRS6_RT0_EUlOS6_OSN_E_EEESN_S6_S6_S6_S6_SN_T1_.exit29: ; preds = %bb.t, %bb.u, %bb.v
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPZN4mold14sort_ctor_dtorINS0_6X86_64EEEvRNS0_7ContextIT_EEE5EntryN9__gnu_cxx17__normal_iteratorIS8_St6vectorIS7_SaIS7_EEEElNS9_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSH_4lessEMS7_lEEDaRS4_RT0_EUlOS4_OSN_E_EEEvS4_S4_SN_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %.not52 = icmp slt i64 %i.e, %i.a
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 4                           ; 10 uses
  %.idx46 = shl nsw i64 %3, 5                     ; 2 uses
  %.not47 = icmp eq i64 %.idx, %.idx46
  br i1 %.not47, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 16
  %i.i = icmp eq i64 %.idx, 16
end_hunk_1
begin_hunk_2_@_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SJ_SL_SL_T1_T2_:bb.a
  %i.bk = getelementptr inbounds i8, ptr %.0.i, i64 -8
  br label %bb.t, !llvm.loop !4284

_ZSt21__move_merge_adaptiveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_SL_T1_T2_.exit: ; preds = %bb.f, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3
  %.not27 = icmp slt i64 %i.d, %2
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl nsw i64 %2, 3                       ; 2 uses
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, label %.lr.ph.i.preheader

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us: ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us
  %.sroa.023.028.us = phi ptr [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %0, %.lr.ph ]
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.023.028.us, i64 %.idx ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = sub i64 %i.a, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %.not.us = icmp slt i64 %i.h, %2
  br i1 %.not.us, label %._crit_edge, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, !llvm.loop !4285

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit
  %i.i = phi i64 [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %i.b, %.lr.ph ]
  %.sroa.023.028 = phi ptr [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ], [ %0, %.lr.ph ] ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.023.028, i64 %.idx ; 4 uses
  %.sroa.0.019.i = getelementptr inbounds nuw i8, ptr %.sroa.023.028, i64 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %.sroa.0.021.i = phi ptr [ %.sroa.0.0.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.0.019.i, %.lr.ph.i.preheader ] ; 6 uses
  %.pn20.i = phi ptr [ %.sroa.0.021.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i ], [ %.sroa.023.028, %.lr.ph.i.preheader ] ; 4 uses
  %i.k = load ptr, ptr %.sroa.0.021.i, align 8, !tbaa !618 ; 3 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !177    ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  %i.n = load ptr, ptr %.sroa.023.028, align 8, !tbaa !618 ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 %i.l
  %i.p = load i64, ptr %i.m, align 8, !tbaa !594  ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !594
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %bb.f

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = ptrtoint ptr %.sroa.0.021.i to i64
  %i.t = sub i64 %i.s, %i.i                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %i.v = icmp sgt i64 %i.u, 1
  br i1 %i.v, label %bb.c, label %bb.d, !prof !986

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 16
  %i.x = sub nsw i64 0, %i.u
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.028, i64 %i.t, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.z = icmp eq i64 %i.t, 8
  br i1 %i.z, label %bb.e, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 8
  store ptr %i.n, ptr %i.aa, align 8, !tbaa !618
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = load ptr, ptr %.pn20.i, align 8, !tbaa !618 ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %i.l
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !594
  %i.ae = icmp slt i64 %i.p, %i.ad
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.af = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.ab, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i, %bb.f ]
  store ptr %i.af, ptr %.sroa.05.09.i.i, align 8, !tbaa !618
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -8 ; 2 uses
  %i.ag = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.k, i64 %i.ag
  %i.ai = load ptr, ptr %.sroa.0.0.i.i, align 8, !tbaa !618 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ag
  %i.ak = load i64, ptr %i.ah, align 8, !tbaa !594
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !594
  %i.am = icmp slt i64 %i.ak, %i.al
  br i1 %i.am, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i, !llvm.loop !116

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink.i = phi ptr [ %.sroa.023.028, %bb.e ], [ %.sroa.023.028, %bb.c ], [ %.sroa.023.028, %bb.d ], [ %.sroa.0.021.i, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store ptr %i.k, ptr %.sink.i, align 8, !tbaa !618
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 8 ; 2 uses
  %i.an = icmp eq ptr %.sroa.0.0.i, %i.j
  br i1 %i.an, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, label %.lr.ph.i, !llvm.loop !117

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i
  %i.ao = ptrtoint ptr %i.j to i64                ; 3 uses
  %i.ap = sub i64 %i.a, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %.not = icmp slt i64 %i.aq, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4285

._crit_edge:                                      ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us, %bb.a
  %.sroa.023.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.j, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ] ; 8 uses
  %.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.f, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.us ], [ %i.ao, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit.loopexit ]
  %i.ar = icmp eq ptr %.sroa.023.0.lcssa, %1
  %.sroa.0.019.i11 = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa, i64 8 ; 2 uses
  %i.as = icmp eq ptr %.sroa.0.019.i11, %1
  %or.cond26 = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond26, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %._crit_edge, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15
  %.sroa.0.021.i13 = phi ptr [ %.sroa.0.0.i17, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.0.019.i11, %._crit_edge ] ; 6 uses
  %.pn20.i14 = phi ptr [ %.sroa.0.021.i13, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15 ], [ %.sroa.023.0.lcssa, %._crit_edge ] ; 4 uses
  %i.at = load ptr, ptr %.sroa.0.021.i13, align 8, !tbaa !618 ; 3 uses
  %i.au = load i64, ptr %4, align 8, !tbaa !177   ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = load ptr, ptr %.sroa.023.0.lcssa, align 8, !tbaa !618 ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !594 ; 2 uses
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !594
  %i.ba = icmp slt i64 %i.ay, %i.az
  br i1 %i.ba, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph.i12
  %i.bb = ptrtoint ptr %.sroa.0.021.i13 to i64
  %i.bc = sub i64 %i.bb, %.lcssa                  ; 3 uses
  %i.bd = ashr exact i64 %i.bc, 3                 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 1
  br i1 %i.be, label %bb.h, label %bb.i, !prof !986

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 16
  %i.bg = sub nsw i64 0, %i.bd
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bg
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.023.0.lcssa, i64 %i.bc, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.i:                                             ; preds = %bb.g
  %i.bi = icmp eq i64 %i.bc, 8
  br i1 %i.bi, label %bb.j, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.j:                                             ; preds = %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i14, i64 8
  store ptr %i.aw, ptr %i.bj, align 8, !tbaa !618
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

bb.k:                                             ; preds = %.lr.ph.i12
  %i.bk = load ptr, ptr %.pn20.i14, align 8, !tbaa !618 ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.au
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !594
  %i.bn = icmp slt i64 %i.ay, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i18, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15

.lr.ph.i.i18:                                     ; preds = %bb.k, %.lr.ph.i.i18
  %i.bo = phi ptr [ %i.br, %.lr.ph.i.i18 ], [ %i.bk, %bb.k ]
  %.sroa.0.010.i.i19 = phi ptr [ %.sroa.0.0.i.i21, %.lr.ph.i.i18 ], [ %.pn20.i14, %bb.k ] ; 3 uses
  %.sroa.05.09.i.i20 = phi ptr [ %.sroa.0.010.i.i19, %.lr.ph.i.i18 ], [ %.sroa.0.021.i13, %bb.k ]
  store ptr %i.bo, ptr %.sroa.05.09.i.i20, align 8, !tbaa !618
  %.sroa.0.0.i.i21 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i19, i64 -8 ; 2 uses
  %i.bp = load i64, ptr %4, align 8, !tbaa !177   ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.at, i64 %i.bp
  %i.br = load ptr, ptr %.sroa.0.0.i.i21, align 8, !tbaa !618 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.bp
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !594
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !594
  %i.bv = icmp slt i64 %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i.i18, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, !llvm.loop !116

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15: ; preds = %.lr.ph.i.i18, %bb.k, %bb.j, %bb.i, %bb.h
  %.sink.i16 = phi ptr [ %.sroa.023.0.lcssa, %bb.j ], [ %.sroa.023.0.lcssa, %bb.h ], [ %.sroa.023.0.lcssa, %bb.i ], [ %.sroa.0.021.i13, %bb.k ], [ %.sroa.0.010.i.i19, %.lr.ph.i.i18 ]
  store ptr %i.at, ptr %.sink.i16, align 8, !tbaa !618
  %.sroa.0.0.i17 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i13, i64 8 ; 2 uses
  %i.bw = icmp eq ptr %.sroa.0.0.i17, %1
  br i1 %i.bw, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22, label %.lr.ph.i12, !llvm.loop !117

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_.exit22: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i15, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not60 = icmp slt i64 %i.e, %i.a
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 9 uses
  %.idx55 = shl i64 %3, 4                         ; 2 uses
  %i.f = icmp eq i64 %.idx, %.idx55
  br i1 %i.f, label %.critedge.i.us.preheader, label %.lr.ph.i.preheader

.critedge.i.us.preheader:                         ; preds = %.lr.ph
  %i.g = icmp sgt i64 %.idx, 8
  %i.h = icmp eq i64 %.idx, 8
  %6 = shl i64 %3, 4
  br label %.critedge.i.us

.critedge.i.us:                                   ; preds = %.critedge.i.us.preheader, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us
  %.062.us = phi ptr [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %2, %.critedge.i.us.preheader ] ; 5 uses
  %.sroa.044.061.us = phi ptr [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %0, %.critedge.i.us.preheader ] ; 3 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.044.061.us, i64 %.idx ; 5 uses
  br i1 %i.g, label %bb.d, label %bb.b, !prof !986

bb.b:                                             ; preds = %.critedge.i.us
  br i1 %i.h, label %bb.c, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %.sroa.044.061.us, align 8, !tbaa !618
  store ptr %i.j, ptr %.062.us, align 8, !tbaa !618
  %i.k = getelementptr inbounds nuw i8, ptr %.062.us, i64 %.idx
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !618
  store ptr %i.l, ptr %i.k, align 8, !tbaa !618
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

bb.d:                                             ; preds = %.critedge.i.us
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.062.us, ptr align 8 %.sroa.044.061.us, i64 %.idx, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.062.us, i64 %.idx
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.i, i64 %.idx, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us: ; preds = %bb.b, %bb.d, %bb.c
  %i.n = getelementptr inbounds i8, ptr %.062.us, i64 %6 ; 2 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.b, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %.not.us = icmp slt i64 %i.q, %i.a
  br i1 %.not.us, label %._crit_edge, label %.critedge.i.us, !llvm.loop !4286

.lr.ph.i.preheader:                               ; preds = %.lr.ph, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit
  %.062 = phi ptr [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ], [ %2, %.lr.ph ]
  %.sroa.044.061 = phi ptr [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ], [ %0, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %.sroa.044.061, i64 %.idx ; 3 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.044.061, i64 %.idx55 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.020.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %.062, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.014.019.i = phi ptr [ %.sroa.014.1.i, %.lr.ph.i ], [ %.sroa.044.061, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.010.018.i = phi ptr [ %.sroa.010.1.i, %.lr.ph.i ], [ %i.r, %.lr.ph.i.preheader ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.010.018.i, align 8, !tbaa !618 ; 2 uses
  %i.u = load i64, ptr %5, align 8, !tbaa !177    ; 2 uses
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %.sroa.014.019.i, align 8, !tbaa !618 ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.u
  %i.y = load i64, ptr %i.v, align 8, !tbaa !594
  %i.z = load i64, ptr %i.x, align 8, !tbaa !594
  %i.aa = icmp slt i64 %i.y, %i.z                 ; 3 uses
  %.sink.i = select i1 %i.aa, ptr %i.t, ptr %i.w
  %.sroa.010.1.idx.i = select i1 %i.aa, i64 8, i64 0
  %.sroa.010.1.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i, i64 %.sroa.010.1.idx.i ; 5 uses
  %.sroa.014.1.idx.i = select i1 %i.aa, i64 0, i64 8
  %.sroa.014.1.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i, i64 %.sroa.014.1.idx.i ; 5 uses
  store ptr %.sink.i, ptr %.020.i, align 8, !tbaa !618
  %i.ab = getelementptr inbounds nuw i8, ptr %.020.i, i64 8 ; 4 uses
  %i.ac = icmp eq ptr %.sroa.014.1.i, %i.r
  %i.ad = icmp eq ptr %.sroa.010.1.i, %i.s
  %or.cond.i = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond.i, label %.critedge.i.loopexit, label %.lr.ph.i, !llvm.loop !4287

.critedge.i.loopexit:                             ; preds = %.lr.ph.i
  %i.ae = ptrtoint ptr %i.r to i64
  %i.af = ptrtoint ptr %.sroa.014.1.i to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, 8
  br i1 %i.ah, label %bb.e, label %bb.f, !prof !986

bb.e:                                             ; preds = %.critedge.i.loopexit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr nonnull align 8 %.sroa.014.1.i, i64 %i.ag, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.f:                                             ; preds = %.critedge.i.loopexit
  %i.ai = icmp eq i64 %i.ag, 8
  br i1 %i.ai, label %bb.g, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %.sroa.014.1.i, align 8, !tbaa !618
  store ptr %i.aj, ptr %i.ab, align 8, !tbaa !618
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.ak = getelementptr inbounds i8, ptr %i.ab, i64 %i.ag ; 3 uses
  %i.al = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.am = ptrtoint ptr %.sroa.010.1.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp sgt i64 %i.an, 8
  br i1 %i.ao, label %bb.h, label %bb.i, !prof !986

bb.h:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull align 8 %.sroa.010.1.i, i64 %i.an, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

bb.i:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i
  %i.ap = icmp eq i64 %i.an, 8
  br i1 %i.ap, label %bb.j, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %.sroa.010.1.i, align 8, !tbaa !618
  store ptr %i.aq, ptr %i.ak, align 8, !tbaa !618
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit: ; preds = %bb.h, %bb.i, %bb.j
  %i.ar = getelementptr inbounds i8, ptr %i.ak, i64 %i.an ; 2 uses
  %i.as = sub i64 %i.b, %i.al
  %i.at = ashr exact i64 %i.as, 3                 ; 2 uses
  %.not = icmp slt i64 %i.at, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph.i.preheader, !llvm.loop !4286

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us, %bb.a
  %.sroa.044.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.s, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.ar, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ] ; 2 uses
  %.lcssa58 = phi i64 [ %i.e, %bb.a ], [ %i.q, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa58) ; 2 uses
  %.idx56 = shl nsw i64 %.sroa.speculated, 3
  %i.au = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa, i64 %.idx56 ; 5 uses
  %i.av = icmp eq i64 %.sroa.speculated, 0
  %i.aw = icmp eq ptr %i.au, %1
  %or.cond17.i16 = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond17.i16, label %.critedge.i27, label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %._crit_edge, %.lr.ph.i17
  %.020.i18 = phi ptr [ %i.bf, %.lr.ph.i17 ], [ %.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.014.019.i19 = phi ptr [ %.sroa.014.1.i25, %.lr.ph.i17 ], [ %.sroa.044.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.010.018.i20 = phi ptr [ %.sroa.010.1.i23, %.lr.ph.i17 ], [ %i.au, %._crit_edge ] ; 2 uses
  %i.ax = load ptr, ptr %.sroa.010.018.i20, align 8, !tbaa !618 ; 2 uses
  %i.ay = load i64, ptr %5, align 8, !tbaa !177   ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ax, i64 %i.ay
  %i.ba = load ptr, ptr %.sroa.014.019.i19, align 8, !tbaa !618 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.ay
  %i.bc = load i64, ptr %i.az, align 8, !tbaa !594
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !594
  %i.be = icmp slt i64 %i.bc, %i.bd               ; 3 uses
  %.sink.i21 = select i1 %i.be, ptr %i.ax, ptr %i.ba
  %.sroa.010.1.idx.i22 = select i1 %i.be, i64 8, i64 0
  %.sroa.010.1.i23 = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i20, i64 %.sroa.010.1.idx.i22 ; 3 uses
  %.sroa.014.1.idx.i24 = select i1 %i.be, i64 0, i64 8
  %.sroa.014.1.i25 = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i19, i64 %.sroa.014.1.idx.i24 ; 3 uses
  store ptr %.sink.i21, ptr %.020.i18, align 8, !tbaa !618
  %i.bf = getelementptr inbounds nuw i8, ptr %.020.i18, i64 8 ; 2 uses
  %i.bg = icmp eq ptr %.sroa.014.1.i25, %i.au
  %i.bh = icmp eq ptr %.sroa.010.1.i23, %1
  %or.cond.i26 = select i1 %i.bg, i1 true, i1 %i.bh
  br i1 %or.cond.i26, label %.critedge.i27, label %.lr.ph.i17, !llvm.loop !4287

.critedge.i27:                                    ; preds = %.lr.ph.i17, %._crit_edge
  %.sroa.010.0.lcssa.i28 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.010.1.i23, %.lr.ph.i17 ] ; 3 uses
  %.sroa.014.0.lcssa.i29 = phi ptr [ %.sroa.044.0.lcssa, %._crit_edge ], [ %.sroa.014.1.i25, %.lr.ph.i17 ] ; 3 uses
  %.0.lcssa.i30 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bf, %.lr.ph.i17 ] ; 3 uses
  %i.bi = ptrtoint ptr %i.au to i64
  %i.bj = ptrtoint ptr %.sroa.014.0.lcssa.i29 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 4 uses
  %i.bl = icmp sgt i64 %i.bk, 8
  br i1 %i.bl, label %bb.k, label %bb.l, !prof !986

bb.k:                                             ; preds = %.critedge.i27
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i30, ptr align 8 %.sroa.014.0.lcssa.i29, i64 %i.bk, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

bb.l:                                             ; preds = %.critedge.i27
  %i.bm = icmp eq i64 %i.bk, 8
  br i1 %i.bm, label %bb.m, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

bb.m:                                             ; preds = %bb.l
  %i.bn = load ptr, ptr %.sroa.014.0.lcssa.i29, align 8, !tbaa !618
  store ptr %i.bn, ptr %.0.lcssa.i30, align 8, !tbaa !618
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31: ; preds = %bb.m, %bb.l, %bb.k
  %i.bo = getelementptr inbounds i8, ptr %.0.lcssa.i30, i64 %i.bk ; 2 uses
  %i.bp = ptrtoint ptr %.sroa.010.0.lcssa.i28 to i64
  %i.bq = sub i64 %i.b, %i.bp                     ; 3 uses
  %i.br = icmp sgt i64 %i.bq, 8
  br i1 %i.br, label %bb.n, label %bb.o, !prof !986

bb.n:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.bo, ptr align 8 %.sroa.010.0.lcssa.i28, i64 %i.bq, i1 false)
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

bb.o:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i31
  %i.bs = icmp eq i64 %i.bq, 8
  br i1 %i.bs, label %bb.p, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

bb.p:                                             ; preds = %bb.o
  %i.bt = load ptr, ptr %.sroa.010.0.lcssa.i28, align 8, !tbaa !618
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !618
  br label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mold5ChunkINS2_6X86_64EEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS5_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit32: ; preds = %bb.n, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nounwind
define linkonce_odr dso_local void @_ZSt17__merge_sort_loopIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_lEEDaRT_RT0_EUlOSJ_OSL_E_EEEvSJ_SJ_SL_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3, ptr %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 3                   ; 2 uses
  %.not55 = icmp slt i64 %i.e, %i.a
  br i1 %.not55, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %3, 3                           ; 10 uses
  %.idx49 = shl nsw i64 %3, 4                     ; 2 uses
  %.not50 = icmp eq i64 %.idx, %.idx49
  br i1 %.not50, label %._crit_edge.i.us.preheader, label %.lr.ph.i.preheader

._crit_edge.i.us.preheader:                       ; preds = %.lr.ph
  %i.f = icmp sgt i64 %3, 1
  %i.g = icmp eq i64 %3, 1
  %i.h = icmp sgt i64 %.idx, 8
  %i.i = icmp eq i64 %.idx, 8
  br label %._crit_edge.i.us

._crit_edge.i.us:                                 ; preds = %._crit_edge.i.us.preheader, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us
  %.sroa.022.057.us = phi ptr [ %i.q, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %2, %._crit_edge.i.us.preheader ] ; 4 uses
  %.056.us = phi ptr [ %i.j, %_ZSt12__move_mergeIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNSt6ranges8__detail16__make_comp_projINSE_4lessEMS3_lEEDaRT_RT0_EUlOSJ_OSL_E_EEESL_SJ_SJ_SJ_SJ_SL_T1_.exit.us ], [ %0, %._crit_edge.i.us.preheader ] ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.056.us, i64 %.idx ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.b, !prof !986

bb.b:                                             ; preds = %._crit_edge.i.us
  br i1 %i.g, label %.thread, label %_ZSt4moveIPPN4mold5ChunkINS0_6X86_64EEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us
end_hunk_2
