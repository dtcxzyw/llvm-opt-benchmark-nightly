inline.NumInlined: 7358
inline.NumDeleted: 3045
begin_hunk_0_@_ZN4LIEF5MachO6Binary14extend_sectionERNS0_7SectionEm:bb.a
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit

bb.e:                                             ; preds = %bb.c
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
  %3 = phi ptr [ %5, %.lr.ph.i.i ], [ %.pre.i.i, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.cb = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.ca, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.02.010.i.i = phi ptr [ %spec.select.i.i, %.lr.ph.i.i ], [ %.sroa.064.0.lcssa137, %.lr.ph.preheader.i.i ]
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %4 = getelementptr i8, ptr %3, i64 104
  %.val.i.i.i = load i32, ptr %4, align 8
  %i.cd = getelementptr i8, ptr %i.cc, i64 104
  %.val1.i.i.i = load i32, ptr %i.cd, align 8
  %i.ce = icmp ult i32 %.val.i.i.i, %.val1.i.i.i  ; 2 uses
  %spec.select.i.i = select i1 %i.ce, ptr %i.cb, ptr %.sroa.02.010.i.i ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.cf, %.sroa.11.2
  %5 = select i1 %i.ce, ptr %i.cc, ptr %3
  br i1 %.not.i.i36, label %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit", label %.lr.ph.i.i, !llvm.loop !199

"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit": ; preds = %.lr.ph.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit
  %.sroa.02.2.i.i = phi ptr [ %.sroa.064.0.lcssa137, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEES5_ET_SB_SB_RKT0_.exit ], [ %spec.select.i.i, %.lr.ph.i.i ]
  %i.cg = load ptr, ptr %.sroa.02.2.i.i, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = shl nuw i32 1, %i.ci
  %i.ck = sext i32 %i.cj to i64                   ; 2 uses
  %i.cl = urem i64 %2, %i.ck                      ; 2 uses
  %.not.i = icmp eq i64 %i.cl, 0
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = select i1 %.not.i, i64 0, i64 %i.cm
  %.0.i = add i64 %i.cn, %2                       ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 3 uses
  %i.cp = load i64, ptr %i.co, align 8            ; 2 uses
  %i.cq = icmp ult i64 %i.cp, %.0.i
  br i1 %i.cq, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit, label %.critedge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit: ; preds = %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit"
  %i.cr = tail call i64 @_ZN4LIEF5MachO6Binary5shiftEm(ptr noundef nonnull align 8 dereferenceable(488) %0, i64 noundef %.0.i) ; 2 uses
  %.not86 = icmp samesign ult i64 %i.cr, 4294967296
  br i1 %.not86, label %bb.aa, label %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge

_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge: ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %.pre = load i64, ptr %i.co, align 8
  br label %.critedge

.lr.ph:                                           ; preds = %bb.e, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit
  %.sroa.064.096 = phi ptr [ %.sroa.064.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 7 uses
  %.sroa.11.095 = phi ptr [ %.sroa.11.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 6 uses
  %.sroa.23.094 = phi ptr [ %.sroa.23.1, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ null, %bb.e ] ; 4 uses
  %.sroa.8.093 = phi i64 [ %i.ei, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ 0, %bb.e ]
  %.sroa.458.092 = phi ptr [ %i.eh, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit ], [ %i.q, %bb.e ] ; 2 uses
  %i.cs = load ptr, ptr %.sroa.458.092, align 8   ; 8 uses
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 80
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call noundef i64 %i.cv(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #22
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.cy = load ptr, ptr %i.cs, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 80
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call noundef i64 %i.da(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #22
  %i.dc = load ptr, ptr %i.cs, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(64) %i.cs) #22
  %i.dg = add i64 %i.df, %i.db
  %i.dh = load ptr, ptr %1, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call noundef i64 %i.dj(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.dl = load ptr, ptr %1, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 72
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = tail call noundef i64 %i.dn(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.dp = add i64 %i.do, %i.dk
  %i.dq = icmp ugt i64 %i.dg, %i.dp
  br i1 %i.dq, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not.i.i37 = icmp eq ptr %.sroa.11.095, %.sroa.23.094
  br i1 %.not.i.i37, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %i.cs, ptr %.sroa.11.095, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.11.095, i64 8
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

bb.w:                                             ; preds = %bb.u
  %i.ds = ptrtoint ptr %.sroa.11.095 to i64
  %i.dt = ptrtoint ptr %.sroa.064.096 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 6 uses
  %i.dv = icmp eq i64 %i.du, 9223372036854775800
  br i1 %i.dv, label %bb.x, label %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.56) #23
  unreachable

_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.w
  %i.dw = ashr exact i64 %i.du, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dw, i64 1)
  %i.dx = add nsw i64 %.sroa.speculated.i.i.i.i, %i.dw ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dw
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 1152921504606846975)
  %i.ea = select i1 %i.dy, i64 1152921504606846975, i64 %i.dz ; 3 uses
  %.not.i.i.i.i38 = icmp ne i64 %i.ea, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i38)
  %i.eb = shl nuw nsw i64 %i.ea, 3
  %i.ec = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eb) #24 ; 4 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 %i.du ; 2 uses
  store ptr %i.cs, ptr %i.ed, align 8
  %i.ee = icmp sgt i64 %i.du, 0
  br i1 %i.ee, label %bb.y, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

bb.y:                                             ; preds = %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %.sroa.064.096, i64 %i.du, i1 false)
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i: ; preds = %bb.y, %_ZNKSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.not.i17.i.i.i = icmp eq ptr %.sroa.064.096, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.096, i64 noundef %i.du) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.z, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i.i
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ea
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, %bb.v, %.lr.ph, %bb.t
  %.sroa.23.1 = phi ptr [ %.sroa.23.094, %.lr.ph ], [ %.sroa.23.094, %bb.t ], [ %i.eg, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.23.094, %bb.v ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.095, %.lr.ph ], [ %.sroa.11.095, %bb.t ], [ %i.ef, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %i.dr, %bb.v ] ; 9 uses
  %.sroa.064.1 = phi ptr [ %.sroa.064.096, %.lr.ph ], [ %.sroa.064.096, %bb.t ], [ %i.ec, %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i ], [ %.sroa.064.096, %bb.v ] ; 10 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.458.092, i64 8
  %i.ei = add nuw nsw i64 %.sroa.8.093, 1         ; 2 uses
  %.not84 = icmp eq i64 %i.ei, %i.w
  br i1 %.not84, label %._crit_edge, label %.lr.ph

bb.aa:                                            ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit
  %i.ej = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.55) #22 ; 0 uses
  %.sroa.044.0.extract.trunc = trunc nuw i64 %i.cr to i32
  %i.ek = tail call noundef ptr @_Z9to_string11lief_errors(i32 noundef %.sroa.044.0.extract.trunc) #22 ; 0 uses
  br label %bb.ab

.critedge:                                        ; preds = %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit"
  %i.el = phi i64 [ %.pre, %_ZN4LIEF5MachO6Binary20ensure_command_spaceEm.exit..critedge_crit_edge ], [ %i.cp, %"_ZSt11max_elementIN9__gnu_cxx17__normal_iteratorIPPN4LIEF5MachO7SectionESt6vectorIS5_SaIS5_EEEEZNS3_6Binary14extend_sectionERS4_mE3$_0ET_SE_SE_T0_.exit" ]
  %i.em = sub i64 %i.el, %.0.i
  store i64 %i.em, ptr %i.co, align 8
  br i1 %i.bz, label %._crit_edge110, label %.lr.ph109

._crit_edge110:                                   ; preds = %.lr.ph109, %.critedge
  %i.en = load ptr, ptr %1, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 72
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = tail call noundef i64 %i.ep(ptr noundef nonnull align 8 dereferenceable(64) %1) #22
  %i.er = add i64 %i.eq, %.0.i
  %i.es = load ptr, ptr %1, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 64
  %i.eu = load ptr, ptr %i.et, align 8
  tail call void %i.eu(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.er) #22
  br label %bb.ab

.lr.ph109:                                        ; preds = %.critedge, %.lr.ph109
  %.sroa.041.0108 = phi ptr [ %i.fm, %.lr.ph109 ], [ %.sroa.064.0.lcssa137, %.critedge ] ; 2 uses
  %i.ev = load ptr, ptr %.sroa.041.0108, align 8  ; 8 uses
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = tail call noundef i64 %i.ey(ptr noundef nonnull align 8 dereferenceable(64) %i.ev) #22
  %i.fa = sub i64 %i.ez, %.0.i
  %i.fb = load ptr, ptr %i.ev, align 8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 120
  %i.fd = load ptr, ptr %i.fc, align 8
  tail call void %i.fd(ptr noundef nonnull align 8 dereferenceable(64) %i.ev, i64 noundef %i.fa) #22
  %i.fe = load ptr, ptr %i.ev, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef i64 %i.fg(ptr noundef nonnull align 8 dereferenceable(192) %i.ev) #22, !inline_history !200
  %i.fi = sub i64 %i.fh, %.0.i
  %i.fj = load ptr, ptr %i.ev, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 96
  %i.fl = load ptr, ptr %i.fk, align 8
  tail call void %i.fl(ptr noundef nonnull align 8 dereferenceable(192) %i.ev, i64 noundef %i.fi) #22, !inline_history !201
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.041.0108, i64 8 ; 2 uses
  %.not87 = icmp eq ptr %i.fm, %.sroa.11.2
  br i1 %.not87, label %._crit_edge110, label %.lr.ph109

bb.ab:                                            ; preds = %bb.aa, %._crit_edge110
  %i.fn = phi i1 [ false, %bb.aa ], [ true, %._crit_edge110 ] ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %.sroa.064.0.lcssa137, null
  br i1 %.not.i.i.i40, label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fo = sub i64 %.sroa.23.0.lcssa133, %.pre-phi117
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.064.0.lcssa137, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit

_ZNSt6vectorIPN4LIEF5MachO7SectionESaIS3_EED2Ev.exit: ; preds = %bb.ac, %bb.ab, %bb.d, %bb.b
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.d ], [ %i.fn, %bb.ab ], [ %i.fn, %bb.ac ]
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

end_hunk_0
begin_hunk_1_@"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF5MachO6Binary12find_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKPNS3_12DylibCommandESt6vectorISI_SaISI_EEEEEEbT_":bb.a
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.q, ptr %1, align 8, !alias.scope !626, !noalias !623
  %i.r = load ptr, ptr %i.c, align 8, !noalias !629
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  %i.t = sub nuw i64 %i.p, %i.o                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22, !noalias !629
  store i64 %i.t, ptr %i.a, align 8, !noalias !629
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.e, label %._crit_edge.i.i.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #22, !noalias !623 ; 2 uses
  store ptr %i.v, ptr %1, align 8, !alias.scope !626, !noalias !623
  %i.w = load i64, ptr %i.a, align 8, !noalias !629
  store i64 %i.w, ptr %i.q, align 8, !alias.scope !626, !noalias !623
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i
  %i.x = phi ptr [ %i.v, %bb.e ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i.i.i ] ; 2 uses
  switch i64 %i.t, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.y = load i8, ptr %i.s, align 1, !noalias !623
  store i8 %i.y, ptr %i.x, align 1, !noalias !623
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr nonnull align 1 %i.s, i64 %i.t, i1 false), !noalias !623
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i: ; preds = %bb.g, %bb.f, %._crit_edge.i.i.i.i.i
  %i.z = load i64, ptr %i.a, align 8, !noalias !629 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.z, ptr %i.aa, align 8, !alias.scope !626, !noalias !623
  %i.ab = load ptr, ptr %1, align 8, !alias.scope !626, !noalias !623
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 0, ptr %i.ac, align 1, !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !629
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ae = load ptr, ptr %1, align 8, !noalias !623 ; 4 uses
  %i.af = icmp eq ptr %i.ae, %i.q
  br i1 %i.af, label %.thread, label %bb.h

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i
  %i.ag = load i64, ptr %i.aa, align 8, !noalias !623 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  %i.ai = add nuw nsw i64 %i.ag, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ad, ptr noundef nonnull align 8 dereferenceable(1) %i.q, i64 %i.ai, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i8 1, ptr %i.aj, align 8, !alias.scope !623
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !623
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.ak, ptr %2, align 8, !alias.scope !630
  br label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit.i.i
  %i.al = load i64, ptr %i.q, align 8, !noalias !623
  store i64 %i.al, ptr %i.ad, align 8, !alias.scope !623
  %.pre.i.i = load i64, ptr %i.aa, align 8, !noalias !623 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  store i8 1, ptr %i.am, align 8, !alias.scope !623
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22, !noalias !623
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.an, ptr %2, align 8, !alias.scope !630
  %i.ao = icmp eq ptr %i.ae, %i.ad
  br i1 %i.ao, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.i:                                             ; preds = %.thread, %bb.h
  %i.ap = phi ptr [ %i.ak, %.thread ], [ %i.an, %bb.h ] ; 3 uses
  %i.aq = phi ptr [ %i.aj, %.thread ], [ %i.am, %bb.h ]
  %i.ar = phi i64 [ %i.ag, %.thread ], [ %.pre.i.i, %bb.h ] ; 3 uses
  %i.as = icmp ult i64 %i.ar, 16
  call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.at, i1 false)
  br label %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  store ptr %i.ae, ptr %2, align 8, !alias.scope !633
  %i.au = load i64, ptr %i.ad, align 8, !noalias !633
  store i64 %i.au, ptr %i.an, align 8, !alias.scope !633
  br label %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i

_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.i
  %i.av = phi ptr [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ap, %bb.i ] ; 2 uses
  %i.aw = phi ptr [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aq, %bb.i ]
  %i.ax = phi i64 [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ar, %bb.i ] ; 4 uses
  %i.ay = phi ptr [ %i.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ap, %bb.i ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.ax, ptr %i.ba, align 8, !alias.scope !633
  store ptr %i.ad, ptr %3, align 8, !noalias !633
  store i64 0, ptr %i.az, align 8, !noalias !633
  store i8 0, ptr %i.ad, align 8, !noalias !633
  %i.bb = load i64, ptr %i.f, align 8
  %i.bc = icmp eq i64 %i.ax, %i.bb
  br i1 %i.bc, label %bb.j, label %.critedge.i

_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread19.i
  store i32 2, ptr %3, align 8, !alias.scope !623
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 0, ptr %i.bd, align 8, !alias.scope !623
  tail call void @llvm.experimental.noalias.scope.decl(metadata !633)
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.be, ptr %2, align 8, !alias.scope !633
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.bf, align 8, !alias.scope !633
  store i8 0, ptr %i.be, align 8
  %i.bg = load i64, ptr %i.f, align 8
  %i.bh = icmp eq i64 %i.bg, 0
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

bb.j:                                             ; preds = %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i
  %i.bi = icmp eq i64 %i.ax, 0
  br i1 %i.bi, label %.critedge.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %.0.val, align 8
  %bcmp.i15.i = call i32 @bcmp(ptr %i.ay, ptr %i.bj, i64 %i.ax)
  %i.bk = icmp eq i32 %bcmp.i15.i, 0
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %bb.j, %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i
  %.ph.i = phi i1 [ true, %bb.j ], [ %i.bk, %bb.k ], [ false, %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.i ] ; 2 uses
  %i.bl = icmp eq ptr %i.ay, %i.av
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i: ; preds = %.critedge.i
  %i.bm = load i64, ptr %i.av, align 8
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bn) #25
  %.pre.i = load i8, ptr %i.aw, align 8, !range !102
  %i.bo = trunc nuw i8 %.pre.i to i1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.thread.i, %.critedge.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
  %.ph35.i = phi i1 [ %.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i ], [ %.ph.i, %.critedge.i ], [ %i.bh, %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.thread.i ]
  %i.bp = phi i1 [ %i.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i ], [ true, %.critedge.i ], [ false, %_ZNO2tl8expectedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsE8value_orIRA1_KcEES6_OT_.exit.thread.i ]
  br i1 %i.bp, label %bb.l, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.bq = load ptr, ptr %3, align 8               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bs = icmp eq ptr %i.bq, %i.br
  br i1 %i.bs, label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.l
  %i.bt = load i64, ptr %i.br, align 8
  %i.bu = add i64 %i.bt, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bu) #25
  br label %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i

_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %"_ZZNK4LIEF5MachO6Binary12find_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKNS0_12DylibCommandE.exit"

"_ZZNK4LIEF5MachO6Binary12find_libraryERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENK3$_0clEPKNS0_12DylibCommandE.exit": ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i
  %i.bv = phi i1 [ %.ph35.i, %_ZN2tl6detail21expected_storage_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11lief_errorsLb0ELb1EED2Ev.exit.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ true, %bb.b ]
  ret i1 %i.bv
}

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nobuiltin nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { noreturn nounwind }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { nounwind willreturn memory(read) }
attributes #27 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5}
!5 = distinct !{!5, !6, !"_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE5beginEv: argument 0"}
!6 = distinct !{!6, !"_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE5beginEv"}
!7 = !{!8}
!8 = distinct !{!8, !9, !"_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE3endEv: argument 0"}
!9 = distinct !{!9, !"_ZNK4LIEF12ref_iteratorIRSt6vectorIPNS_5MachO7SectionESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE3endEv"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZNK4LIEF5MachO6Binary16exported_symbolsEv: argument 0"}
!18 = distinct !{!18, !"_ZNK4LIEF5MachO6Binary16exported_symbolsEv"}
!19 = distinct !{null, null}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv: argument 0"}
!22 = distinct !{!22, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv"}
!23 = !{}
!24 = !{i64 8}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv: argument 0"}
!27 = distinct !{!27, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZZNK4LIEF5MachO6Binary31get_abstract_exported_functionsEvENK3$_0clERKNS0_6SymbolE: argument 0"}
!30 = distinct !{!30, !"_ZZNK4LIEF5MachO6Binary31get_abstract_exported_functionsEvENK3$_0clERKNS0_6SymbolE"}
!31 = distinct !{null, null}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11}
!34 = distinct !{null, null, null, null, null, null}
!35 = distinct !{!35, !11}
!36 = !{!37}
!37 = distinct !{!37, !38, !"_ZNK4LIEF5MachO6Binary16imported_symbolsEv: argument 0"}
!38 = distinct !{!38, !"_ZNK4LIEF5MachO6Binary16imported_symbolsEv"}
!39 = distinct !{null, null}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv: argument 0"}
!42 = distinct !{!42, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE5beginEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv: argument 0"}
!45 = distinct !{!45, !"_ZNK4LIEF15filter_iteratorIRKSt6vectorISt10unique_ptrINS_5MachO6SymbolESt14default_deleteIS4_EESaIS7_EEPKS4_N9__gnu_cxx17__normal_iteratorIPKS7_S9_EEE3endEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZZNK4LIEF5MachO6Binary31get_abstract_imported_functionsEvENK3$_0clERKNS0_6SymbolE: argument 0"}
!48 = distinct !{!48, !"_ZZNK4LIEF5MachO6Binary31get_abstract_imported_functionsEvENK3$_0clERKNS0_6SymbolE"}
!49 = distinct !{null, null}
!50 = distinct !{!50, !11}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv: argument 0"}
!53 = distinct !{!53, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE5beginEv"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv: argument 0"}
!56 = distinct !{!56, !"_ZNK4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO12DylibCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEE3endEv"}
!57 = distinct !{null, null, null, null, null, null, ptr @_ZNK4LIEF5MachO6Binary6KeyCmpclEPKNS0_10RelocationES5_}
!58 = distinct !{!58, !11}
!59 = distinct !{null, null, null, null, null, null, ptr @_ZNK4LIEF5MachO6Binary6KeyCmpclEPKNS0_10RelocationES5_}
!60 = distinct !{!60, !11}
!61 = distinct !{null, null, null, null, null, null, ptr @_ZNK4LIEF5MachO6Binary6KeyCmpclEPKNS0_10RelocationES5_}
!62 = distinct !{!62, !11}
!63 = distinct !{null, null, null, null, null, null, ptr @_ZNK4LIEF5MachO6Binary6KeyCmpclEPKNS0_10RelocationES5_}
!64 = distinct !{!64, !11}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE5beginEv: argument 0"}
!67 = distinct !{!67, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE5beginEv"}
!68 = distinct !{null, null, null, null, null}
!69 = distinct !{!69, !11}
!70 = distinct !{null, null, null, null, null}
!71 = distinct !{!71, !11}
!72 = distinct !{null, null, null, null, null}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{null, null, null, null, null, null, null, null, null, null}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE5beginEv: argument 0"}
!92 = distinct !{!92, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE5beginEv"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE3endEv: argument 0"}
!95 = distinct !{!95, !"_ZNK4LIEF12ref_iteratorIRSt3setIPNS_5MachO10RelocationENS2_6Binary6KeyCmpESaIS4_EES4_St23_Rb_tree_const_iteratorIS4_EE3endEv"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv: argument 0"}
!98 = distinct !{!98, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv: argument 0"}
!101 = distinct !{!101, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv"}
!102 = !{i8 0, i8 2}
!103 = !{!104}
!104 = distinct !{!104, !105, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO15DyldBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv: argument 0"}
!105 = distinct !{!105, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO15DyldBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv"}
!106 = !{!107}
!107 = distinct !{!107, !108, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO15DyldBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv: argument 0"}
!108 = distinct !{!108, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO15DyldBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv"}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZNK4LIEF12ref_iteratorIRSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE5beginEv: argument 0"}
!111 = distinct !{!111, !"_ZNK4LIEF12ref_iteratorIRSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE5beginEv"}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK4LIEF12ref_iteratorIRSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE3endEv: argument 0"}
!114 = distinct !{!114, !"_ZNK4LIEF12ref_iteratorIRSt6vectorINS_5MachO17DyldChainedFixups25chained_starts_in_segmentESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPS4_S6_EEE3endEv"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO18ChainedBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv: argument 0"}
!117 = distinct !{!117, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO18ChainedBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv"}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO18ChainedBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv: argument 0"}
!120 = distinct !{!120, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO18ChainedBindingInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv"}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10RelocationESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv: argument 0"}
!123 = distinct !{!123, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10RelocationESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv"}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10RelocationESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv: argument 0"}
!126 = distinct !{!126, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10RelocationESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv"}
!127 = distinct !{null, null, null}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv: argument 0"}
!130 = distinct !{!130, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE5beginEv"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv: argument 0"}
!133 = distinct !{!133, !"_ZNK4LIEF12ref_iteratorIRSt6vectorISt10unique_ptrINS_5MachO10ExportInfoESt14default_deleteIS4_EESaIS7_EEPS4_N9__gnu_cxx17__normal_iteratorIPS7_S9_EEE3endEv"}
!134 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!135 = distinct !{!135, !11}
!136 = distinct !{!136, !11}
!137 = distinct !{null}
!138 = distinct !{null, null, null}
!139 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null, null}
!140 = distinct !{!140, !11}
!141 = distinct !{null, null, null, null, null, null, null, null}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!144 = distinct !{!144, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!145 = !{!146}
!146 = distinct !{!146, !144, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!147 = !{!146, !148}
!148 = distinct !{!148, !149}
!149 = distinct !{!149, !"LVerDomain"}
!150 = !{!143, !151}
!151 = distinct !{!151, !149}
!152 = distinct !{!152, !11, !153, !154}
!153 = !{!"llvm.loop.isvectorized", i32 1}
!154 = !{!"llvm.loop.unroll.runtime.disable"}
!155 = distinct !{!155, !11, !153}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!158 = distinct !{!158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!159 = !{!160}
!160 = distinct !{!160, !158, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF5MachO11LoadCommandESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!161 = !{!160, !162}
!162 = distinct !{!162, !163}
!163 = distinct !{!163, !"LVerDomain"}
!164 = !{!157, !165}
!165 = distinct !{!165, !163}
!166 = distinct !{!166, !11, !153, !154}
!167 = distinct !{!167, !11, !153}
end_hunk_1
