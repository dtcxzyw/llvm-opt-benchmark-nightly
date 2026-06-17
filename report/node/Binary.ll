inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@_ZN4LIEF5MachO6Binary14extend_sectionERNS0_7SectionEm:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.q = load ptr, ptr %i.p, align 8, !noalias !190 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.s = load ptr, ptr %i.r, align 8, !noalias !193 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not8491 = icmp eq ptr %i.s, %i.q
  br i1 %.not8491, label %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge", label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %i.x = ptrtoint ptr %.sroa.23.1 to i64          ; 2 uses
  %i.y = icmp eq ptr %.sroa.064.1, %.sroa.11.1
  br i1 %i.y, label %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge", label %bb.f

"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge": ; preds = %bb.e, %._crit_edge
  %.sroa.064.0.lcssa138 = phi ptr [ %.sroa.064.1, %._crit_edge ], [ null, %bb.e ] ; 2 uses
  %.sroa.11.0.lcssa136 = phi ptr [ %.sroa.11.1, %._crit_edge ], [ null, %bb.e ] ; 2 uses
  %.sroa.23.0.lcssa134 = phi i64 [ %i.x, %._crit_edge ], [ 0, %bb.e ]
  %.pre115 = ptrtoint ptr %.sroa.11.0.lcssa136 to i64 ; 2 uses
  %.pre116 = ptrtoint ptr %.sroa.064.0.lcssa138 to i64 ; 2 uses
  %.pre118 = sub i64 %.pre115, %.pre116
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit"

bb.f:                                             ; preds = %._crit_edge
  %i.z = ptrtoint ptr %.sroa.11.1 to i64          ; 3 uses
  %i.aa = ptrtoint ptr %.sroa.064.1 to i64        ; 2 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 2 uses
  %i.ad = add nsw i64 %i.ac, 1
  %i.ae = sdiv i64 %i.ad, 2                       ; 4 uses
  %i.af = icmp sgt i64 %i.ac, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ak, %select.unfold.i.i.i.i ], [ %i.ae, %bb.f ] ; 4 uses
  %i.ag = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.ah = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ag, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.ai = icmp eq i64 %.010.i.i.i.i, 1
  %i.aj = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ak = lshr i64 %i.aj, 1
  br i1 %i.ai, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !196

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.f
  %.sroa.10.0.i.i = phi ptr [ null, %bb.f ], [ %i.ah, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.f ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 3 uses
  %i.al = icmp eq i64 %i.ae, %.sroa.4.0.i.i
  br i1 %i.al, label %bb.g, label %bb.h, !prof !12

bb.g:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.am = getelementptr inbounds [8 x i8], ptr %.sroa.064.1, i64 %i.ae ; 4 uses
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_T0_T1_"(ptr %.sroa.064.1, ptr %i.am, ptr noundef %.sroa.10.0.i.i)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES6_NS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_T0_T1_"(ptr %i.am, ptr %.sroa.11.1, ptr noundef %.sroa.10.0.i.i)
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.z, %i.an
  %i.ap = ashr exact i64 %i.ao, 3
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEElS6_NS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_SH_T0_SI_T1_T2_"(ptr %.sroa.064.1, ptr %i.am, ptr %.sroa.11.1, i64 noundef %i.ae, i64 noundef %i.ap, ptr noundef %.sroa.10.0.i.i)
  br label %bb.k

bb.h:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_EC2ESA_l.exit.i.i
  %i.aq = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.aq, label %bb.i, label %bb.j, !prof !197

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_T0_"(ptr %.sroa.064.1, ptr %.sroa.11.1)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES6_lNS0_5__ops15_Iter_comp_iterIZNS3_6Binary14extend_sectionERS4_mE3$_1EEEvT_SH_T0_T1_T2_"(ptr %.sroa.064.1, ptr %.sroa.11.1, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.4.0.i.i)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.ar = shl i64 %.sroa.4.0.i.i, 3
  tail call void @_ZdlPvm(ptr noundef %.sroa.10.0.i.i, i64 noundef %i.ar) #22
  br label %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit"

"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit": ; preds = %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge", %bb.k
  %.sroa.064.0.lcssa137 = phi ptr [ %.sroa.064.0.lcssa138, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.064.1, %bb.k ] ; 12 uses
  %.sroa.11.0.lcssa135 = phi ptr [ %.sroa.11.0.lcssa136, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %.sroa.11.1, %bb.k ] ; 4 uses
  %.sroa.23.0.lcssa133 = phi i64 [ %.sroa.23.0.lcssa134, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %i.x, %bb.k ]
  %.pre-phi119 = phi i64 [ %.pre118, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %i.ab, %bb.k ] ; 3 uses
  %.pre-phi117 = phi i64 [ %.pre116, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %i.aa, %bb.k ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre115, %"._crit_edge._ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit_crit_edge" ], [ %i.z, %bb.k ]
  %i.as = ashr i64 %.pre-phi119, 5                ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit"
  %i.au = and i64 %.pre-phi119, -32
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.064.0.lcssa137, i64 %i.au ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.052.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i ], [ %i.bh, %bb.p ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %.sroa.064.0.lcssa137, %.lr.ph.i.i.i ], [ %i.bg, %bb.p ] ; 9 uses
  %i.av = load ptr, ptr %.sroa.032.051.i.i.i, align 8
  %i.aw = icmp eq ptr %i.av, %1
  br i1 %i.aw, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = icmp eq ptr %i.ay, %1
  br i1 %i.az, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = icmp eq ptr %i.bb, %1
  br i1 %i.bc, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit139, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = icmp eq ptr %i.be, %1
  br i1 %i.bf, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit141, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 32
  %i.bh = add nsw i64 %.052.i.i.i, -1
  %i.bi = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.bi, label %bb.l, label %._crit_edge.loopexit.i.i.i, !llvm.loop !198

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.p
  %.pre59.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre60.i.i.i = sub i64 %.pre-phi, %.pre59.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit"
  %.pre-phi61.i.i.i = phi i64 [ %.pre60.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.pre-phi119, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit" ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.sroa.064.0.lcssa137, %"_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_1EvT_SE_T0_.exit" ] ; 5 uses
  %i.bj = ashr exact i64 %.pre-phi61.i.i.i, 3
  switch i64 %i.bj, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bk = load ptr, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.bl = icmp eq ptr %i.bk, %1
  br i1 %i.bl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.r
  %.sroa.032.1.i.i.i = phi ptr [ %i.bm, %bb.r ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bn = load ptr, ptr %.sroa.032.1.i.i.i, align 8
  %i.bo = icmp eq ptr %i.bn, %1
  br i1 %i.bo, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.2.i.i.i = phi ptr [ %i.bp, %bb.s ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bq = load ptr, ptr %.sroa.032.2.i.i.i, align 8
  %i.br = icmp eq ptr %i.bq, %1
  %spec.select.i.i.i = select i1 %i.br, ptr %.sroa.032.2.i.i.i, ptr %.sroa.11.0.lcssa135
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit139: ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit141: ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit: ; preds = %bb.l, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit139, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit141, %._crit_edge.i.i.i, %bb.q, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge57.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.11.0.lcssa135, %._crit_edge.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.q ], [ %i.bu, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit141 ], [ %i.bt, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit139 ], [ %i.bs, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.l ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i, i64 8 ; 2 uses
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %.pre-phi117
  %i.by = getelementptr inbounds i8, ptr %.sroa.064.0.lcssa137, i64 %i.bx
  %.not.i.i.i = icmp eq ptr %.sroa.11.0.lcssa135, %i.bv
  %.sroa.11.2 = select i1 %.not.i.i.i, ptr %.sroa.11.0.lcssa135, ptr %i.by ; 4 uses
  %i.bz = icmp eq ptr %.sroa.064.0.lcssa137, %.sroa.11.2 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.064.0.lcssa137, i64 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ca, %.sroa.11.2
  %or.cond.i.i = select i1 %i.bz, i1 true, i1 %.not9.i.i
  br i1 %or.cond.i.i, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %.pre.i.i = load ptr, ptr %.sroa.064.0.lcssa137, align 8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.cb = phi ptr [ %i.ch, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cc = phi ptr [ %3, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %.sroa.064.0.lcssa137, %.lr.ph.preheader.i.i ]
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cb, i64 104
  %.val.i.i.i = load i32, ptr %i.ce, align 8
  %i.cf = getelementptr i8, ptr %i.cd, i64 104
  %.val1.i.i.i = load i32, ptr %i.cf, align 8
  %i.cg = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %i.ch = select i1 %i.cg, ptr %i.cd, ptr %i.cb
  %spec.select.i.i = select i1 %i.cg, ptr %i.cc, ptr %.sroa.02.010.i.i ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %.not.i.i36 = icmp eq ptr %3, %.sroa.11.2
  br i1 %.not.i.i36, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.i.i, !llvm.loop !199

"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit": ; preds = %.lr.ph.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %.sroa.02.2.i.i = phi ptr [ %.sroa.064.0.lcssa137, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.ci = load ptr, ptr %.sroa.02.2.i.i, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = shl nuw i32 1, %i.ck
  %i.cm = sext i32 %i.cl to i64                   ; 2 uses
  %i.cn = urem i64 %2, %i.cm                      ; 2 uses
  %.not.i = icmp eq i64 %i.cn, 0
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = select i1 %.not.i, i64 0, i64 %i.co
  %.0.i = add i64 %i.cp, %2                       ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.0.i
  br i1 %i.cs, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit, label %.critedge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit: ; preds = %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit"
  %i.ct = tail call i64 @_ZN4LIEF5MachO6Binary5shiftEm(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %.0.i) ; 2 uses
  %.not86 = icmp samesign ult i64 %i.ct, 4294967296
  br i1 %.not86, label %bb.aa, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge: ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %.pre = load i64, ptr %i.cq, align 8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %.sroa.064.096 = phi ptr [ %.sroa.064.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 7 uses
  %.sroa.11.095 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 6 uses
  %.sroa.23.094 = phi ptr [ %.sroa.23.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 4 uses
  %.sroa.8.093 = phi i64 [ %i.ek, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.e ]
  %.sroa.458.092 = phi ptr [ %i.ej, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ %i.q, %bb.e ] ; 2 uses
  %i.cu = load ptr, ptr %.sroa.458.092, align 8   ; 8 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(64) %i.cu) #22
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.da = load ptr, ptr %i.cu, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(64) %i.cu) #22
  %i.de = load ptr, ptr %i.cu, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 72
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef i64 %i.dg(ptr noundef nonnull align 8 dereferenceable(64) %i.cu) #22
  %i.di = add i64 %i.dh, %i.dd
  %i.dj = load ptr, ptr %1, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 80
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.dn = load ptr, ptr %1, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 72
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = tail call noundef i64 %i.dp(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.dr = add i64 %i.dq, %i.dm
  %i.ds = icmp ugt i64 %i.di, %i.dr
  br i1 %i.ds, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i37 = icmp eq ptr %.sroa.11.095, %.sroa.23.094
  br i1 %.not.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.cu, ptr %.sroa.11.095, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.11.095, i64 8
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

bb.w:                                             ; preds = %bb.u
  %i.du = ptrtoint ptr %.sroa.11.095 to i64
  %i.dv = ptrtoint ptr %.sroa.064.096 to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 6 uses
  %i.dx = icmp eq i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %bb.x, label %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.dy = ashr exact i64 %i.dw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dy, i64 1)
  %i.dz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dy ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 1152921504606846975)
  %i.ec = select i1 %i.ea, i64 1152921504606846975, i64 %i.eb ; 3 uses
  %.not.i.i.i.i38 = icmp ne i64 %i.ec, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i38)
  %i.ed = shl nuw nsw i64 %i.ec, 3
  %i.ee = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ed) #24 ; 4 uses
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dw ; 2 uses
  store ptr %i.cu, ptr %i.ef, align 8
  %i.eg = icmp sgt i64 %i.dw, 0
  br i1 %i.eg, label %bb.y, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ee, ptr align 8 %.sroa.064.096, i64 %i.dw, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.y, %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.064.096, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.096, i64 noundef %i.dw) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.v, %.lr.ph, %bb.t
  %.sroa.23.1 = phi ptr [ %.sroa.23.094, %.lr.ph ], [ %.sroa.23.094, %bb.t ], [ %i.ei, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.23.094, %bb.v ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.095, %.lr.ph ], [ %.sroa.11.095, %bb.t ], [ %i.eh, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.dt, %bb.v ] ; 9 uses
  %.sroa.064.1 = phi ptr [ %.sroa.064.096, %.lr.ph ], [ %.sroa.064.096, %bb.t ], [ %i.ee, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.064.096, %bb.v ] ; 10 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.458.092, i64 8
  %i.ek = add nuw nsw i64 %.sroa.8.093, 1         ; 2 uses
  %.not84 = icmp eq i64 %i.ek, %i.w
  br i1 %.not84, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %i.el = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  %.sroa.044.0.extract.trunc = trunc nuw i64 %i.ct to i32
  %i.em = tail call noundef ptr @_Z9to_string11lief_errors(i32 noundef %.sroa.044.0.extract.trunc) #22 ; 0 uses
  br label %bb.ab

.critedge:                                        ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit"
  %i.en = phi i64 [ %.pre, %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge ], [ %i.cr, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit" ]
  %i.eo = sub i64 %i.en, %.0.i
  store i64 %i.eo, ptr %i.cq, align 8
  br i1 %i.bz, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %.critedge
  %i.ep = load ptr, ptr %1, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 72
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = tail call noundef i64 %i.er(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.et = add i64 %i.es, %.0.i
  %i.eu = load ptr, ptr %1, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 64
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void %i.ew(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.et) #22
  br label %bb.ab

.lr.ph109:                                        ; preds = %.critedge, %.lr.ph109
  %.sroa.041.0108 = phi ptr [ %i.fo, %.lr.ph109 ], [ %.sroa.064.0.lcssa137, %.critedge ] ; 2 uses
  %i.ex = load ptr, ptr %.sroa.041.0108, align 8  ; 8 uses
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 80
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef i64 %i.fa(ptr noundef nonnull align 8 dereferenceable(64) %i.ex) #22
  %i.fc = sub i64 %i.fb, %.0.i
  %i.fd = load ptr, ptr %i.ex, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 120
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(64) %i.ex, i64 noundef %i.fc) #22
  %i.fg = load ptr, ptr %i.ex, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 88
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef i64 %i.fi(ptr noundef nonnull align 8 dereferenceable(192) %i.ex) #22, !inline_history !200
  %i.fk = sub i64 %i.fj, %.0.i
  %i.fl = load ptr, ptr %i.ex, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 96
  %i.fn = load ptr, ptr %i.fm, align 8
  tail call void %i.fn(ptr noundef nonnull align 8 dereferenceable(192) %i.ex, i64 noundef %i.fk) #22, !inline_history !201
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.041.0108, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.fo, %.sroa.11.2
  br i1 %.not87, label %._crit_edge110, label %.lr.ph109

bb.ab:                                            ; preds = %bb.aa, %._crit_edge110
  %i.fp = phi i1 [ false, %bb.aa ], [ true, %._crit_edge110 ] ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.sroa.064.0.lcssa137, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = sub i64 %.sroa.23.0.lcssa133, %.pre-phi117
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0.lcssa137, i64 noundef %i.fq) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit: ; preds = %bb.ac, %bb.ab, %bb.d, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ %i.fp, %bb.ab ], [ %i.fp, %bb.ac ]
  ret i1 %.2
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNK4LIEF5MachO7Section12segment_nameB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(192)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF5MachO6Binary14remove_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = tail call noundef ptr @_ZNK4LIEF5MachO6Binary11get_sectionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  br label %bb.f

end_hunk_0
