inline.NumInlined: 29521
inline.NumDeleted: 7045
begin_hunk_0_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  br i1 %i.az, label %.thread.i68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq i64 %i.aq, %i.ay
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread22.i67

.thread22.i67:                                    ; preds = %bb.h, %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bc = xor i64 %i.as, -1
  %i.bd = add nsw i64 %.01125.i, %i.bc
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val6.val.i.i.i.i.i.i69 = load i64, ptr %i.be, align 8, !tbaa !168
  %i.bf = icmp ult i64 %.val.val.i.i.i.i.i.i63, %.val6.val.i.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.bf
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.bg = xor i64 %i.as, -1
  %i.bh = add nsw i64 %.01125.i, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread22.i67, %bb.g, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.bj = phi i64 [ %i.bd, %.thread22.i67 ], [ %i.bh, %bb.i ], [ %i.as, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.as, %bb.g ], [ %i.as, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.bk = phi ptr [ %i.bb, %.thread22.i67 ], [ %i.bi, %bb.i ], [ %.026.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.026.i, %bb.g ], [ %.026.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE3EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11505

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.bk to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.bk, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.bm = sub i64 %.pre-phi106, %i.ak
  %i.bn = sdiv exact i64 %i.bm, 24
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.aj, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ah, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bn, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bo = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bp = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bo, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bp, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.bq = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bo, %6
  %.not56 = icmp sgt i64 %i.bq, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE3EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1154", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1154", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1154", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1154", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1154", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.079.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.079.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11506

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 9 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 16 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %.idx96 = mul nsw i64 %.085, 24                 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [24 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter141 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter145 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod144 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 24
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter146 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter146.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105, ptr noundef nonnull align 8 dereferenceable(24) %.052106, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 48 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11507

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.idx = mul nsw i64 %.085, 24
  %8 = add nsw i64 %.idx, -24                     ; 2 uses
  %i.ai = icmp sgt i64 %.085, 2
  br i1 %i.ai, label %bb.k, label %9, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.054, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %.054, i64 %8, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

9:                                                ; preds = %bb.j
  %10 = icmp eq i64 %8, 24
  br i1 %10, label %bb.l, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %9, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.054, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.al = sub i64 0, %i.p
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.al ; 3 uses
  %i.an = icmp sgt i64 %.081, 0
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %xtraiter = and i64 %.081, 1
  %i.ao = icmp eq i64 %.081, 1
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.ap = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -24 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.m
  %.256.lcssa = phi ptr [ %i.am, %bb.m ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.ar = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.ar, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11508

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ak, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.as = getelementptr inbounds i8, ptr %.256102, i64 -24 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.050103, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.au = getelementptr inbounds i8, ptr %.256102, i64 -48 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %.050103, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11509

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 24                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 24
  br i1 %i.i, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %.neg51 = udiv exact i64 %i.h, 24
  %.neg51.neg = sub nsw i64 0, %.neg51
  %i.j = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg51.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %i.k = icmp eq i64 %i.h, 24
  br i1 %i.k, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.d, 24
  br i1 %i.m, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp sgt i64 %i.q, 24                    ; 2 uses
  br i1 %i.r, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.q, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.t, %i.o                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 24
  br i1 %i.v, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.u, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit37
  %i.w = icmp eq i64 %i.u, 24
  br i1 %i.w, label %bb.u, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.x = sdiv exact i64 %i.q, 24                  ; 2 uses
  br i1 %i.r, label %bb.v, label %bb.w, !prof !337

bb.v:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE3EEES4_ET0_T_S6_S5_.exit38
  %i.y = sub nsw i64 0, %i.x
end_hunk_0
begin_hunk_1_@_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_:bb.a
  br i1 %i.an, label %.thread.i68, label %bb.d

bb.d:                                             ; preds = %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ao = icmp eq i64 %i.ai, %i.am
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, label %.thread21.i67

.thread21.i67:                                    ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.aq = xor i64 %i.ak, -1
  %i.ar = add nsw i64 %.01124.i, %i.aq
  br label %.thread.i68

_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i: ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.val6.val.i.i.i.i.i69 = load i64, ptr %i.as, align 8, !tbaa !168
  %i.at = icmp ult i64 %.val.val.i.i.i.i.i63, %.val6.val.i.i.i.i.i69
  %cond.fr.i70 = freeze i1 %i.at
  br i1 %cond.fr.i70, label %.thread.i68, label %bb.e

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i
  %i.au = xor i64 %i.ak, -1
  %i.av = add nsw i64 %.01124.i, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  br label %.thread.i68

.thread.i68:                                      ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i, %.thread21.i67, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64
  %i.ax = phi i64 [ %i.ar, %.thread21.i67 ], [ %i.av, %bb.e ], [ %i.ak, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %i.ak, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %.thread21.i67 ], [ %i.aw, %bb.e ], [ %.025.i, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64 ], [ %.025.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterISt4lessIN6duckdb7SortKeyILNS3_11SortKeyTypeE7EEEEEclIKS6_PS6_EEbRT_T0_.exit.i ] ; 3 uses
  %i.az = icmp sgt i64 %i.ax, 0
  br i1 %i.az, label %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit.i64, label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !11681

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %.thread.i68
  %.pre105 = ptrtoint ptr %i.ay to i64
  br label %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60
  %.pre-phi106 = phi i64 [ %.pre105, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %.0.lcssa.i61 = phi ptr [ %i.ay, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr94, %_ZSt9__advanceIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElEvRT_T0_St26random_access_iterator_tag.exit60 ]
  %i.ba = sub i64 %.pre-phi106, %i.ae
  %i.bb = sdiv exact i64 %i.ba, 24
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit
  %.081 = phi ptr [ %i.e, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.0.lcssa.i61, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.080 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.052 = phi i64 [ %i.ab, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.d, %_ZSt13__lower_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Iter_comp_valISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.bb, %_ZSt13__upper_boundIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES3_N9__gnu_cxx5__ops14_Val_comp_iterISt4lessIS3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.bc = sub nsw i64 %.tr8696, %.0               ; 4 uses
  %i.bd = tail call noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.081, ptr noundef %.tr8495, ptr noundef %.080, i64 noundef %i.bc, i64 noundef %.052, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEElS4_N9__gnu_cxx5__ops15_Iter_comp_iterISt4lessIS3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr94, ptr noundef %.081, ptr noundef %i.bd, i64 noundef %.0, i64 noundef %.052, ptr noundef %5, i64 noundef %6)
  %i.be = sub nsw i64 %.tr8797, %.052             ; 3 uses
  %.not = icmp sgt i64 %i.bc, %6
  %.not56 = icmp sgt i64 %i.be, %6
  %or.cond = and i1 %.not, %.not56
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNSt3_V28__rotateIPN6duckdb7SortKeyILNS1_11SortKeyTypeE7EEEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 12 uses
  %4 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 12 uses
  %5 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %7 = alloca %"struct.duckdb::SortKey.1044", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 24                  ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = sdiv exact i64 %i.h, 24                  ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %bb.d

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.010.i = phi ptr [ %i.m, %.lr.ph.i ], [ %1, %bb.c ] ; 3 uses
  %.079.i = phi ptr [ %i.l, %.lr.ph.i ], [ %0, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %.079.i, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.079.i, ptr noundef nonnull align 8 dereferenceable(24) %.010.i, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.010.i, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.l = getelementptr inbounds nuw i8, ptr %.079.i, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.not.i = icmp eq ptr %i.l, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !11682

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 %i.c, %i.g
  %i.o = getelementptr inbounds i8, ptr %0, i64 %i.n ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.085 = phi i64 [ %i.f, %bb.d ], [ %.085.be, %.backedge ] ; 9 uses
  %.081 = phi i64 [ %i.i, %bb.d ], [ %.081.be, %.backedge ] ; 13 uses
  %.054 = phi ptr [ %0, %bb.d ], [ %.054.be, %.backedge ] ; 16 uses
  %i.p = sub nsw i64 %.085, %.081                 ; 9 uses
  %i.q = icmp slt i64 %.081, %i.p
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.r = icmp eq i64 %.081, 1
  br i1 %i.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 24
  %.idx96 = mul nsw i64 %.085, 24                 ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %.054, i64 %.idx96
  %gepdiff = add nsw i64 %.idx96, -24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.054, ptr nonnull align 8 %i.s, i64 %gepdiff, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.v = icmp sgt i64 %i.p, 0
  br i1 %i.v, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.g
  %i.w = getelementptr inbounds [24 x i8], ptr %.054, i64 %.081 ; 2 uses
  %.neg = add i64 %.081, 1
  %xtraiter141 = and i64 %i.p, 1
  %i.x = icmp eq i64 %.085, %.neg
  br i1 %i.x, label %.lr.ph109.epil.preheader, label %.lr.ph109.preheader.new

.lr.ph109.preheader.new:                          ; preds = %.lr.ph109.preheader
  %unroll_iter145 = and i64 %i.p, 9223372036854775806
  br label %.lr.ph109

._crit_edge110.loopexit.unr-lcssa:                ; preds = %.lr.ph109
  %lcmp.mod142.not = icmp eq i64 %xtraiter141, 0
  br i1 %lcmp.mod142.not, label %._crit_edge110, label %.lr.ph109.epil.preheader

.lr.ph109.epil.preheader:                         ; preds = %._crit_edge110.loopexit.unr-lcssa, %.lr.ph109.preheader
  %.052106.epil.init = phi ptr [ %i.w, %.lr.ph109.preheader ], [ %i.ad, %._crit_edge110.loopexit.unr-lcssa ] ; 2 uses
  %.155105.epil.init = phi ptr [ %.054, %.lr.ph109.preheader ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod144 = trunc i64 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod144)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106.epil.init, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.y = getelementptr inbounds nuw i8, ptr %.155105.epil.init, i64 24
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %.lr.ph109.epil.preheader, %._crit_edge110.loopexit.unr-lcssa, %bb.g
  %.155.lcssa = phi ptr [ %.054, %bb.g ], [ %i.ac, %._crit_edge110.loopexit.unr-lcssa ], [ %i.y, %.lr.ph109.epil.preheader ]
  %i.z = srem i64 %.085, %.081                    ; 2 uses
  %.not65 = icmp eq i64 %i.z, 0
  br i1 %.not65, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph109:                                        ; preds = %.lr.ph109, %.lr.ph109.preheader.new
  %.052106 = phi ptr [ %i.w, %.lr.ph109.preheader.new ], [ %i.ad, %.lr.ph109 ] ; 4 uses
  %.155105 = phi ptr [ %.054, %.lr.ph109.preheader.new ], [ %i.ac, %.lr.ph109 ] ; 4 uses
  %niter146 = phi i64 [ 0, %.lr.ph109.preheader.new ], [ %niter146.next.1, %.lr.ph109 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.155105, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.155105, ptr noundef nonnull align 8 dereferenceable(24) %.052106, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.052106, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aa = getelementptr inbounds nuw i8, ptr %.155105, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.052106, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ac = getelementptr inbounds nuw i8, ptr %.155105, i64 48 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.052106, i64 48 ; 2 uses
  %niter146.next.1 = add i64 %niter146, 2         ; 2 uses
  %niter146.ncmp.1 = icmp eq i64 %niter146.next.1, %unroll_iter145
  br i1 %niter146.ncmp.1, label %._crit_edge110.loopexit.unr-lcssa, label %.lr.ph109, !llvm.loop !11683

bb.h:                                             ; preds = %._crit_edge110
  %i.ae = sub nsw i64 %.081, %i.z
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.af = icmp eq i64 %i.p, 1
  br i1 %i.af, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ag = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %.idx = mul nsw i64 %.085, 24
  %8 = add nsw i64 %.idx, -24                     ; 2 uses
  %i.ai = icmp sgt i64 %.085, 2
  br i1 %i.ai, label %bb.k, label %9, !prof !337

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %.054, i64 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr nonnull align 8 %.054, i64 %8, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

9:                                                ; preds = %bb.j
  %10 = icmp eq i64 %8, 24
  br i1 %10, label %bb.l, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.054, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %9, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.054, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds [24 x i8], ptr %.054, i64 %.085 ; 3 uses
  %i.al = sub i64 0, %i.p
  %i.am = getelementptr inbounds [24 x i8], ptr %i.ak, i64 %i.al ; 3 uses
  %i.an = icmp sgt i64 %.081, 0
  br i1 %i.an, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.m
  %xtraiter = and i64 %.081, 1
  %i.ao = icmp eq i64 %.081, 1
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.081, 9223372036854775806
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050103.epil.init = phi ptr [ %i.ak, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %.256102.epil.init = phi ptr [ %i.am, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %.081 to i1
  tail call void @llvm.assume(i1 %lcmp.mod140)
  %i.ap = getelementptr inbounds i8, ptr %.256102.epil.init, i64 -24 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.050103.epil.init, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.m
  %.256.lcssa = phi ptr [ %i.am, %bb.m ], [ %.054, %._crit_edge.loopexit.unr-lcssa ], [ %.054, %.lr.ph.epil.preheader ]
  %i.ar = srem i64 %.085, %i.p                    ; 2 uses
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.085.be = phi i64 [ %.081, %bb.h ], [ %i.p, %._crit_edge ]
  %.081.be = phi i64 [ %i.ae, %bb.h ], [ %i.ar, %._crit_edge ]
  %.054.be = phi ptr [ %.155.lcssa, %bb.h ], [ %.256.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !11684

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.050103 = phi ptr [ %i.ak, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 2 uses
  %.256102 = phi ptr [ %i.am, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.as = getelementptr inbounds i8, ptr %.256102, i64 -24 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.050103, i64 -24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.au = getelementptr inbounds i8, ptr %.256102, i64 -48 ; 4 uses
  %i.av = getelementptr inbounds i8, ptr %.050103, i64 -48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !11685

_ZSt11swap_rangesIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge110, %.lr.ph.i, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.o, %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit ], [ %i.o, %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit ], [ %1, %.lr.ph.i ], [ %i.o, %._crit_edge110 ], [ %i.o, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt17__rotate_adaptiveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp sle i64 %3, %4
  %.not = icmp sgt i64 %4, %6
  %or.cond = or i1 %i.a, %.not
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not35 = icmp eq i64 %4, 0
  br i1 %.not35, label %bb.z, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = icmp sgt i64 %i.d, 24                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !337

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 24
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub i64 %i.c, %i.g                       ; 4 uses
  %i.i = icmp sgt i64 %i.h, 24
  br i1 %i.i, label %bb.g, label %bb.h, !prof !337

bb.g:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %.neg51 = udiv exact i64 %i.h, 24
  %.neg51.neg = sub nsw i64 0, %.neg51
  %i.j = getelementptr inbounds [24 x i8], ptr %2, i64 %.neg51.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %0, i64 %i.h, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %i.k = icmp eq i64 %i.h, 24
  br i1 %i.k, label %bb.i, label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds i8, ptr %2, i64 -24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !337

bb.j:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit
  %i.m = icmp eq i64 %i.d, 24
  br i1 %i.m, label %bb.l, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not34 = icmp eq i64 %3, 0
  br i1 %.not34, label %bb.z, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp sgt i64 %i.q, 24                    ; 2 uses
  br i1 %i.r, label %bb.p, label %bb.q, !prof !337

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %0, i64 %i.q, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

bb.q:                                             ; preds = %bb.o
  %i.s = icmp eq i64 %i.q, 24
  br i1 %i.s, label %bb.r, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37: ; preds = %bb.p, %bb.q, %bb.r
  %i.t = ptrtoint ptr %2 to i64
  %i.u = sub i64 %i.t, %i.o                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 24
  br i1 %i.v, label %bb.s, label %bb.t, !prof !337

bb.s:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.u, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit38

bb.t:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit37
  %i.w = icmp eq i64 %i.u, 24
  br i1 %i.w, label %bb.u, label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit38

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit38

_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit38: ; preds = %bb.s, %bb.t, %bb.u
  %i.x = sdiv exact i64 %i.q, 24                  ; 2 uses
  br i1 %i.r, label %bb.v, label %bb.w, !prof !337

bb.v:                                             ; preds = %_ZSt4moveIPN6duckdb7SortKeyILNS0_11SortKeyTypeE7EEES4_ET0_T_S6_S5_.exit38
  %i.y = sub nsw i64 0, %i.x
end_hunk_1
