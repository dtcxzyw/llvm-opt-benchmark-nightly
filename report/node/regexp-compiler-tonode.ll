inline.NumInlined: 1437
inline.NumDeleted: 593
begin_hunk_0_@_ZSt22__merge_without_bufferIPPN2v88internal10RegExpTreeElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %.tr6676, ptr noundef nonnull align 8 dereferenceable(8) %.tr74) #20, !inline_history !95
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %.tr74, align 8
  %i.i = load ptr, ptr %.tr6676, align 8
  store ptr %i.i, ptr %.tr74, align 8
  store ptr %i.h, ptr %.tr6676, align 8
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.j = icmp sgt i64 %.tr6878, %.tr6979
  %i.k = ptrtoint ptr %.tr6676 to i64             ; 4 uses
  br i1 %i.j, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.l = sdiv i64 %.tr6878, 2                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.tr74, i64 %i.l ; 2 uses
  %i.n = sub i64 %i.c, %i.k
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi ptr [ %.1.i, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr6676, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi i64 [ %.112.i, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.o, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.q = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.q ; 2 uses
  %i.s = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %i.r, ptr noundef nonnull align 8 dereferenceable(8) %i.m) #20, !inline_history !96
  %i.t = icmp slt i32 %i.s, 0                     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.01116.i, %i.v
  %.112.i = select i1 %i.t, i64 %i.w, i64 %i.q    ; 2 uses
  %.1.i = select i1 %i.t, ptr %i.u, ptr %.017.i   ; 3 uses
  %i.x = icmp sgt i64 %.112.i, 0
  br i1 %i.x, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !97

_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.k, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr6676, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.y = sub i64 %.pre-phi, %i.k
  %i.z = ashr exact i64 %i.y, 3
  br label %tailrecurse

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44: ; preds = %bb.e
  %i.aa = sdiv i64 %.tr6979, 2                    ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %.tr6676, i64 %i.aa ; 2 uses
  %i.ac = ptrtoint ptr %.tr74 to i64              ; 3 uses
  %i.ad = sub i64 %i.k, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.017.i47 = phi ptr [ %.1.i52, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %.tr74, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %.01116.i48 = phi i64 [ %.112.i51, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %i.ae, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %i.ag = lshr i64 %.01116.i48, 1                 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.017.i47, i64 %i.ag ; 2 uses
  %i.ai = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %i.ab, ptr noundef nonnull align 8 dereferenceable(8) %i.ah) #20, !inline_history !98
  %i.aj = icmp slt i32 %i.ai, 0                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = xor i64 %i.ag, -1
  %i.am = add nsw i64 %.01116.i48, %i.al
  %.112.i51 = select i1 %i.aj, i64 %i.ag, i64 %i.am ; 2 uses
  %.1.i52 = select i1 %i.aj, ptr %.017.i47, ptr %i.ak ; 3 uses
  %i.an = icmp sgt i64 %.112.i51, 0
  br i1 %i.an, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !99

_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.pre82 = ptrtoint ptr %.1.i52 to i64
  br label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44
  %.pre-phi83 = phi i64 [ %.pre82, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.ac, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %.0.lcssa.i45 = phi ptr [ %.1.i52, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr74, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %i.ao = sub i64 %.pre-phi83, %i.ac
  %i.ap = ashr exact i64 %i.ao, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit
  %.063 = phi ptr [ %i.m, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %.0.lcssa.i45, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.062 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.ab, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.038 = phi i64 [ %i.z, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.aa, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.l, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.ap, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.aq = tail call noundef ptr @_ZNSt3_V28__rotateIPPN2v88internal10RegExpTreeEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %.063, ptr noundef %.tr6676, ptr noundef %.062) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPPN2v88internal10RegExpTreeElN9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_(ptr noundef %.tr74, ptr noundef %.063, ptr noundef %i.aq, i64 noundef %.0, i64 noundef %.038, ptr %5)
  %i.ar = sub nsw i64 %.tr6878, %.0               ; 2 uses
  %i.as = sub nsw i64 %.tr6979, %.038             ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0
  %i.au = icmp eq i64 %i.as, 0
  %or.cond = or i1 %i.at, %i.au
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt3_V28__rotateIPPN2v88internal10RegExpTreeEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 2 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check182 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check182, label %.lr.ph.i.preheader199, label %vector.memcheck175

vector.memcheck175:                               ; preds = %.lr.ph.i.preheader
  %i.p = add i64 %i.g, -8
  %i.q = sub i64 %i.p, %i.d
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8                          ; 2 uses
  %scevgep176 = getelementptr i8, ptr %0, i64 %i.s
  %scevgep177 = getelementptr i8, ptr %1, i64 %i.s
  %bound0178 = icmp ult ptr %0, %scevgep177
  %bound1179 = icmp ult ptr %1, %scevgep176
  %found.conflict180 = and i1 %bound0178, %bound1179
  br i1 %found.conflict180, label %.lr.ph.i.preheader199, label %vector.ph183

vector.ph183:                                     ; preds = %vector.memcheck175
  %n.vec185 = and i64 %i.o, 4611686018427387900   ; 3 uses
  %i.t = shl i64 %n.vec185, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body186

vector.body186:                                   ; preds = %vector.body186, %vector.ph183
  %index187 = phi i64 [ 0, %vector.ph183 ], [ %index.next194, %vector.body186 ] ; 2 uses
  %i.w = shl i64 %index187, 3                     ; 2 uses
  %next.gep188 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep189 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep189, i64 16 ; 2 uses
  %wide.load190 = load <2 x ptr>, ptr %next.gep189, align 8, !alias.scope !100, !noalias !103
  %wide.load191 = load <2 x ptr>, ptr %i.x, align 8, !alias.scope !100, !noalias !103
  %i.y = getelementptr i8, ptr %next.gep188, i64 16 ; 2 uses
  %wide.load192 = load <2 x ptr>, ptr %next.gep188, align 8, !alias.scope !103
  %wide.load193 = load <2 x ptr>, ptr %i.y, align 8, !alias.scope !103
  store <2 x ptr> %wide.load192, ptr %next.gep189, align 8, !alias.scope !100, !noalias !103
  store <2 x ptr> %wide.load193, ptr %i.x, align 8, !alias.scope !100, !noalias !103
  store <2 x ptr> %wide.load190, ptr %next.gep188, align 8, !alias.scope !103
  store <2 x ptr> %wide.load191, ptr %i.y, align 8, !alias.scope !103
  %index.next194 = add nuw i64 %index187, 4       ; 2 uses
  %i.z = icmp eq i64 %index.next194, %n.vec185
  br i1 %i.z, label %middle.block195, label %vector.body186, !llvm.loop !105

middle.block195:                                  ; preds = %vector.body186
  %cmp.n196 = icmp eq i64 %i.o, %n.vec185
  br i1 %cmp.n196, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.preheader199

.lr.ph.i.preheader199:                            ; preds = %vector.memcheck175, %.lr.ph.i.preheader, %middle.block195
  %.010.i.ph = phi ptr [ %1, %vector.memcheck175 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block195 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck175 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block195 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader199, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader199 ] ; 3 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader199 ] ; 3 uses
  %i.aa = load ptr, ptr %.079.i, align 8
  %i.ab = load ptr, ptr %.010.i, align 8
  store ptr %i.ab, ptr %.079.i, align 8
  store ptr %i.aa, ptr %.010.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !106

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 10 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 14 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 19 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.058, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nsw i64 %.086, 3                  ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8
  br label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 6
  br i1 %min.iters.check, label %.lr.ph110.preheader200, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 3
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 3
  %scevgep = getelementptr i8, ptr %.058, i64 %i.ar
  %scevgep137 = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %scevgep137
  %bound1 = icmp ult ptr %i.ao, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader200, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775804     ; 4 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %.058, i64 %i.as  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.av ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.av ; 3 uses
  %i.aw = getelementptr i8, ptr %next.gep138, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %next.gep138, align 8, !alias.scope !107, !noalias !110
  %wide.load139 = load <2 x ptr>, ptr %i.aw, align 8, !alias.scope !107, !noalias !110
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load140 = load <2 x ptr>, ptr %next.gep, align 8, !alias.scope !110
  %wide.load141 = load <2 x ptr>, ptr %i.ax, align 8, !alias.scope !110
  store <2 x ptr> %wide.load140, ptr %next.gep138, align 8, !alias.scope !107, !noalias !110
  store <2 x ptr> %wide.load141, ptr %i.aw, align 8, !alias.scope !107, !noalias !110
  store <2 x ptr> %wide.load, ptr %next.gep, align 8, !alias.scope !110
  store <2 x ptr> %wide.load139, ptr %i.ax, align 8, !alias.scope !110
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader200

.lr.ph110.preheader200:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.at, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.au, %middle.block ] ; 2 uses
  %i.az = sub i64 %.086, %.082
  %xtraiter208 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod209.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod209.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader200, %.lr.ph110.prol
  %.054108.prol = phi i64 [ %i.be, %.lr.ph110.prol ], [ %.054108.ph, %.lr.ph110.preheader200 ]
  %.055107.prol = phi ptr [ %i.bd, %.lr.ph110.prol ], [ %.055107.ph, %.lr.ph110.preheader200 ] ; 3 uses
  %.159106.prol = phi ptr [ %i.bc, %.lr.ph110.prol ], [ %.159106.ph, %.lr.ph110.preheader200 ] ; 3 uses
  %prol.iter210 = phi i64 [ %prol.iter210.next, %.lr.ph110.prol ], [ 0, %.lr.ph110.preheader200 ]
  %i.ba = load ptr, ptr %.159106.prol, align 8
  %i.bb = load ptr, ptr %.055107.prol, align 8
  store ptr %i.bb, ptr %.159106.prol, align 8
  store ptr %i.ba, ptr %.055107.prol, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.159106.prol, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.055107.prol, i64 8 ; 2 uses
  %i.be = add nuw nsw i64 %.054108.prol, 1        ; 2 uses
  %prol.iter210.next = add i64 %prol.iter210, 1   ; 2 uses
  %prol.iter210.cmp.not = icmp eq i64 %prol.iter210.next, %xtraiter208
  br i1 %prol.iter210.cmp.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol, !llvm.loop !113

.lr.ph110.prol.loopexit:                          ; preds = %.lr.ph110.prol, %.lr.ph110.preheader200
  %.lcssa.unr = phi ptr [ poison, %.lr.ph110.preheader200 ], [ %i.bc, %.lr.ph110.prol ]
  %.054108.unr = phi i64 [ %.054108.ph, %.lr.ph110.preheader200 ], [ %i.be, %.lr.ph110.prol ]
  %.055107.unr = phi ptr [ %.055107.ph, %.lr.ph110.preheader200 ], [ %i.bd, %.lr.ph110.prol ]
  %.159106.unr = phi ptr [ %.159106.ph, %.lr.ph110.preheader200 ], [ %i.bc, %.lr.ph110.prol ]
  %i.bf = sub i64 %.054108.ph, %.086
  %i.bg = add i64 %i.bf, %.082
  %i.bh = icmp ugt i64 %i.bg, -4
  br i1 %i.bh, label %._crit_edge111, label %.lr.ph110

._crit_edge111:                                   ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110, %middle.block, %bb.g
  %.159.lcssa = phi ptr [ %.058, %bb.g ], [ %i.au, %middle.block ], [ %.lcssa.unr, %.lr.ph110.prol.loopexit ], [ %i.bx, %.lr.ph110 ]
  %i.bi = srem i64 %.086, %.082                   ; 2 uses
  %.not67 = icmp eq i64 %i.bi, 0
  br i1 %.not67, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %bb.h

.lr.ph110:                                        ; preds = %.lr.ph110.prol.loopexit, %.lr.ph110
  %.054108 = phi i64 [ %i.bz, %.lr.ph110 ], [ %.054108.unr, %.lr.ph110.prol.loopexit ]
  %.055107 = phi ptr [ %i.by, %.lr.ph110 ], [ %.055107.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %.159106 = phi ptr [ %i.bx, %.lr.ph110 ], [ %.159106.unr, %.lr.ph110.prol.loopexit ] ; 6 uses
  %i.bj = load ptr, ptr %.159106, align 8
  %i.bk = load ptr, ptr %.055107, align 8
  store ptr %i.bk, ptr %.159106, align 8
  store ptr %i.bj, ptr %.055107, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %.159106, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.055107, i64 8 ; 2 uses
  %i.bn = load ptr, ptr %i.bl, align 8
  %i.bo = load ptr, ptr %i.bm, align 8
  store ptr %i.bo, ptr %i.bl, align 8
  store ptr %i.bn, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.159106, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.055107, i64 16 ; 2 uses
  %i.br = load ptr, ptr %i.bp, align 8
  %i.bs = load ptr, ptr %i.bq, align 8
  store ptr %i.bs, ptr %i.bp, align 8
  store ptr %i.br, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %.159106, i64 24 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.055107, i64 24 ; 2 uses
  %i.bv = load ptr, ptr %i.bt, align 8
  %i.bw = load ptr, ptr %i.bu, align 8
  store ptr %i.bw, ptr %i.bt, align 8
  store ptr %i.bv, ptr %i.bu, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.159106, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.055107, i64 32
  %i.bz = add nuw nsw i64 %.054108, 4             ; 2 uses
  %exitcond119.not.3 = icmp eq i64 %i.bz, %i.ag
  br i1 %exitcond119.not.3, label %._crit_edge111, label %.lr.ph110, !llvm.loop !114

bb.h:                                             ; preds = %._crit_edge111
  %i.ca = sub nsw i64 %.082, %i.bi
  br label %.backedge

bb.i:                                             ; preds = %bb.e
  %i.cb = icmp eq i64 %i.ag, 1
  %i.cc = getelementptr inbounds [8 x i8], ptr %.058, i64 %.086 ; 5 uses
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -8 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8
  %.idx = shl nsw i64 %.086, 3
  %i.cf = add nsw i64 %.idx, -8                   ; 3 uses
  %i.cg = ashr exact i64 %i.cf, 3                 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 1
  br i1 %i.ch, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ci = sub nsw i64 0, %i.cg
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.ci
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cj, ptr nonnull align 8 %.058, i64 %i.cf, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.l:                                             ; preds = %bb.j
  %i.ck = icmp eq i64 %i.cf, 8
  br i1 %i.ck, label %bb.m, label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.l
  %i.cl = load ptr, ptr %.058, align 8
  store ptr %i.cl, ptr %i.cd, align 8
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %bb.k, %bb.l, %bb.m
  store ptr %i.ce, ptr %.058, align 8
  br label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.i
  %i.cm = sub i64 0, %i.ag
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %i.cm ; 3 uses
  %i.co = icmp sgt i64 %.082, 0
  br i1 %i.co, label %vector.memcheck144, label %._crit_edge

vector.memcheck144:                               ; preds = %bb.n
  %xtraiter = and i64 %.082, 3                    ; 3 uses
  %bound1147 = icmp ult i64 %.082, 4
  br i1 %bound1147, label %.lr.ph.preheader201, label %vector.ph151

vector.ph151:                                     ; preds = %vector.memcheck144
  %n.vec153 = and i64 %.082, 9223372036854775804
  br label %.lr.ph

middle.block170:                                  ; preds = %.lr.ph
  %cmp.n171 = icmp eq i64 %xtraiter, 0
  br i1 %cmp.n171, label %._crit_edge, label %.lr.ph.preheader201

.lr.ph.preheader201:                              ; preds = %middle.block170, %vector.memcheck144
  %.052104.epil.init = phi ptr [ %i.cc, %vector.memcheck144 ], [ %i.dh, %middle.block170 ]
  %.260103.epil.init = phi ptr [ %i.cn, %vector.memcheck144 ], [ %i.dg, %middle.block170 ]
  %lcmp.mod176 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.prol, %.lr.ph.preheader201
  %.052104.prol = phi ptr [ %i.cq, %.lr.ph.prol ], [ %.052104.epil.init, %.lr.ph.preheader201 ]
  %.260103.prol = phi ptr [ %i.cp, %.lr.ph.prol ], [ %.260103.epil.init, %.lr.ph.preheader201 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader201 ]
  %i.cp = getelementptr inbounds i8, ptr %.260103.prol, i64 -8 ; 3 uses
  %i.cq = getelementptr inbounds i8, ptr %.052104.prol, i64 -8 ; 3 uses
  %i.cr = load ptr, ptr %i.cp, align 8
  %i.cs = load ptr, ptr %i.cq, align 8
  store ptr %i.cs, ptr %i.cp, align 8
  store ptr %i.cr, ptr %i.cq, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %._crit_edge, label %.lr.ph.prol, !llvm.loop !115

._crit_edge:                                      ; preds = %middle.block170, %.lr.ph.prol, %bb.n
  %.260.lcssa = phi ptr [ %i.cn, %bb.n ], [ %.058, %.lr.ph.prol ], [ %.058, %middle.block170 ]
  %i.ct = srem i64 %.086, %i.ag                   ; 2 uses
  %.not = icmp eq i64 %i.ct, 0
  br i1 %.not, label %_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, label %.backedge

.backedge:                                        ; preds = %._crit_edge, %bb.h
  %.086.be = phi i64 [ %.082, %bb.h ], [ %i.ag, %._crit_edge ]
  %.082.be = phi i64 [ %i.ca, %bb.h ], [ %i.ct, %._crit_edge ]
  %.058.be = phi ptr [ %.159.lcssa, %bb.h ], [ %.260.lcssa, %._crit_edge ]
  br label %bb.e, !llvm.loop !116

.lr.ph:                                           ; preds = %.lr.ph, %vector.ph151
  %.052104 = phi ptr [ %i.cc, %vector.ph151 ], [ %i.dh, %.lr.ph ] ; 4 uses
  %.052104.a = phi ptr [ %i.cn, %vector.ph151 ], [ %i.dg, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %vector.ph151 ], [ %i.dk, %.lr.ph ]
  %i.cu = getelementptr inbounds i8, ptr %.052104.a, i64 -8 ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %.052104, i64 -8 ; 2 uses
  %i.cw = load ptr, ptr %i.cu, align 8
  %i.cx = load ptr, ptr %i.cv, align 8
  store ptr %i.cx, ptr %i.cu, align 8
  store ptr %i.cw, ptr %i.cv, align 8
  %i.cy = getelementptr inbounds i8, ptr %.052104.a, i64 -16 ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %.052104, i64 -16 ; 2 uses
  %i.da = load ptr, ptr %i.cy, align 8
  %i.db = load ptr, ptr %i.cz, align 8
  store ptr %i.db, ptr %i.cy, align 8
  store ptr %i.da, ptr %i.cz, align 8
  %i.dc = getelementptr inbounds i8, ptr %.052104.a, i64 -24 ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %.052104, i64 -24 ; 2 uses
  %i.de = load ptr, ptr %i.dc, align 8
  %i.df = load ptr, ptr %i.dd, align 8
  store ptr %i.df, ptr %i.dc, align 8
  store ptr %i.de, ptr %i.dd, align 8
  %i.dg = getelementptr inbounds i8, ptr %.052104.a, i64 -32 ; 4 uses
  %i.dh = getelementptr inbounds i8, ptr %.052104, i64 -32 ; 4 uses
  %i.di = load ptr, ptr %i.dg, align 8
  %i.dj = load ptr, ptr %i.dh, align 8
  store ptr %i.dj, ptr %i.dg, align 8
  store ptr %i.di, ptr %i.dh, align 8
  %i.dk = add i64 %niter, 4                       ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.dk, %n.vec153
  br i1 %exitcond.not.3, label %middle.block170, label %.lr.ph, !llvm.loop !117

_ZSt11swap_rangesIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %._crit_edge, %._crit_edge111, %.lr.ph.i, %middle.block195, %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit, %bb.b, %bb.a
  %.6 = phi ptr [ %0, %bb.b ], [ %2, %bb.a ], [ %i.af, %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit ], [ %i.af, %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit ], [ %1, %middle.block195 ], [ %1, %.lr.ph.i ], [ %i.af, %._crit_edge111 ], [ %i.af, %._crit_edge ]
  ret ptr %.6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt23__merge_adaptive_resizeIPPN2v88internal10RegExpTreeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_SJ_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not87 = icmp sgt i64 %3, %6
  %.not5488 = icmp sgt i64 %4, %6
  %or.cond89 = and i1 %.not87, %.not5488
  br i1 %or.cond89, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ak, %tailrecurse ]
  %.tr80.lcssa = phi ptr [ %1, %bb.a ], [ %.076, %tailrecurse ]
  %.tr82.lcssa = phi i64 [ %3, %bb.a ], [ %i.aj, %tailrecurse ]
  %.tr83.lcssa = phi i64 [ %4, %bb.a ], [ %i.al, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPPN2v88internal10RegExpTreeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr80.lcssa, ptr noundef %2, i64 noundef %.tr82.lcssa, i64 noundef %.tr83.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8395 = phi i64 [ %4, %.lr.ph ], [ %i.al, %tailrecurse ] ; 3 uses
  %.tr8294 = phi i64 [ %3, %.lr.ph ], [ %i.aj, %tailrecurse ] ; 3 uses
  %.tr8092 = phi ptr [ %1, %.lr.ph ], [ %.076, %tailrecurse ] ; 5 uses
  %.tr90 = phi ptr [ %0, %.lr.ph ], [ %i.ak, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr8294, %.tr8395
  %i.d = ptrtoint ptr %.tr8092 to i64             ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr8294, 2                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.tr90, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi ptr [ %.1.i, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8092, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi i64 [ %.112.i, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.01116.i, 1                    ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.017.i, i64 %i.j ; 2 uses
  %i.l = tail call noundef i32 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.f) #20, !inline_history !96
  %i.m = icmp slt i32 %i.l, 0                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = xor i64 %i.j, -1
  %i.p = add nsw i64 %.01116.i, %i.o
  %.112.i = select i1 %i.m, i64 %i.p, i64 %i.j    ; 2 uses
  %.1.i = select i1 %i.m, ptr %i.n, ptr %.017.i   ; 3 uses
  %i.q = icmp sgt i64 %.112.i, 0
  br i1 %i.q, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !97

_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.1.i to i64
  br label %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.d, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.0.lcssa.i = phi ptr [ %.1.i, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr8092, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.r = sub i64 %.pre-phi, %i.d
  %i.s = ashr exact i64 %i.r, 3
  br label %tailrecurse

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58: ; preds = %bb.b
  %i.t = sdiv i64 %.tr8395, 2                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %.tr8092, i64 %i.t ; 2 uses
  %i.v = ptrtoint ptr %.tr90 to i64               ; 3 uses
  %i.w = sub i64 %i.d, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.017.i61 = phi ptr [ %.1.i66, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %.tr90, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %.01116.i62 = phi i64 [ %.112.i65, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %i.x, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %i.z = lshr i64 %.01116.i62, 1                  ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.017.i61, i64 %i.z ; 2 uses
  %i.ab = tail call noundef i32 %i.a(ptr noundef nonnull align 8 dereferenceable(8) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %i.aa) #20, !inline_history !98
  %i.ac = icmp slt i32 %i.ab, 0                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = xor i64 %i.z, -1
  %i.af = add nsw i64 %.01116.i62, %i.ae
  %.112.i65 = select i1 %i.ac, i64 %i.z, i64 %i.af ; 2 uses
  %.1.i66 = select i1 %i.ac, ptr %.017.i61, ptr %i.ad ; 3 uses
  %i.ag = icmp sgt i64 %.112.i65, 0
  br i1 %i.ag, label %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, !llvm.loop !99

_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.pre101 = ptrtoint ptr %.1.i66 to i64
  br label %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit

_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %i.v, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %.0.lcssa.i59 = phi ptr [ %.1.i66, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit.loopexit ], [ %.tr90, %_ZSt9__advanceIPPN2v88internal10RegExpTreeElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %i.ah = sub i64 %.pre-phi102, %i.v
  %i.ai = ashr exact i64 %i.ah, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit
  %.077 = phi ptr [ %i.f, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %.0.lcssa.i59, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %.0.lcssa.i, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.u, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %.050 = phi i64 [ %i.s, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.t, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.e, %_ZSt13__lower_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Iter_comp_valIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ], [ %i.ai, %_ZSt13__upper_boundIPPN2v88internal10RegExpTreeES3_N9__gnu_cxx5__ops14_Val_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEESF_SF_SF_RKT0_T1_.exit ] ; 2 uses
  %i.aj = sub nsw i64 %.tr8294, %.0               ; 4 uses
  %i.ak = tail call noundef ptr @_ZSt17__rotate_adaptiveIPPN2v88internal10RegExpTreeES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.077, ptr noundef %.tr8092, ptr noundef %.076, i64 noundef %i.aj, i64 noundef %.050, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPPN2v88internal10RegExpTreeElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIZNS1_8ZoneListIS3_E10StableSortIPFiPKS3_SC_EEEvT_mmEUlRSB_SG_E_EEEvSF_SF_SF_T0_SJ_T1_SJ_T2_(ptr noundef %.tr90, ptr noundef %.077, ptr noundef %i.ak, i64 noundef %.0, i64 noundef %.050, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.al = sub nsw i64 %.tr8395, %.050             ; 3 uses
  %.not = icmp sgt i64 %i.aj, %6
  %.not54 = icmp sgt i64 %i.al, %6
  %or.cond = and i1 %.not, %.not54
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZSt17__rotate_adaptiveIPPN2v88internal10RegExpTreeES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 comdat {
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
  %i.e = icmp sgt i64 %i.d, 8                     ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 8
  br i1 %i.f, label %bb.f, label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.f:                                             ; preds = %bb.e
  %i.g = load ptr, ptr %1, align 8
  store ptr %i.g, ptr %5, align 8
  br label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.c, %i.h                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 3                   ; 2 uses
  %i.k = icmp sgt i64 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.h, !prof !6

bb.g:                                             ; preds = %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit
  %i.l = sub nsw i64 0, %i.j
  %i.m = getelementptr inbounds [8 x i8], ptr %2, i64 %i.l
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %0, i64 %i.i, i1 false)
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit
  %i.n = icmp eq i64 %i.i, 8
  br i1 %i.n, label %bb.i, label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds i8, ptr %2, i64 -8
  %i.p = load ptr, ptr %0, align 8
  store ptr %i.p, ptr %i.o, align 8
  br label %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit

_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  br i1 %i.e, label %bb.j, label %bb.k, !prof !6

bb.j:                                             ; preds = %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %0, ptr align 8 %5, i64 %i.d, i1 false)
  br label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit36

bb.k:                                             ; preds = %_ZSt13move_backwardIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit
  %i.q = icmp eq i64 %i.d, 8
  br i1 %i.q, label %bb.l, label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit36

bb.l:                                             ; preds = %bb.k
  %i.r = load ptr, ptr %5, align 8
  store ptr %i.r, ptr %0, align 8
  br label %_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit36

_ZSt4moveIPPN2v88internal10RegExpTreeES4_ET0_T_S6_S5_.exit36: ; preds = %bb.j, %bb.k, %bb.l
  %i.s = getelementptr inbounds i8, ptr %0, i64 %i.d
  br label %bb.z

bb.m:                                             ; preds = %bb.a
  %.not33 = icmp sgt i64 %3, %6
  br i1 %.not33, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_0
begin_hunk_1_@_ZN2v88internal28NegativeLookaroundChoiceNodeC2ENS0_18GuardedAlternativeES2_PNS0_4ZoneE:bb.a
_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i13: ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_18GuardedAlternativeEA_S3_EEPT_m.exit.i.i.i.i.i8
  %i.by = load ptr, ptr %i.ba, align 8
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = shl nuw nsw i64 %i.bz, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bu, ptr align 1 %i.by, i64 %i.ca, i1 false)
  %.pre.i.i.i.i14 = load i32, ptr %i.bc, align 4
  br label %_ZN2v88internal8ZoneListINS0_18GuardedAlternativeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i9

_ZN2v88internal8ZoneListINS0_18GuardedAlternativeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i9: ; preds = %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i13, %_ZN2v88internal4Zone13AllocateArrayINS0_18GuardedAlternativeEA_S3_EEPT_m.exit.i.i.i.i.i8
  %i.cb = phi i32 [ %i.bw, %_ZN2v88internal4Zone13AllocateArrayINS0_18GuardedAlternativeEA_S3_EEPT_m.exit.i.i.i.i.i8 ], [ %.pre.i.i.i.i14, %_ZN2v88internal7MemCopyEPvPKvm.exit.sink.split.i.i.i.i.i13 ]
  store ptr %i.bu, ptr %i.ba, align 8
  store i32 %i.bj, ptr %i.be, align 8
  br label %_ZN2v88internal10ChoiceNode14AddAlternativeENS0_18GuardedAlternativeE.exit16

_ZN2v88internal10ChoiceNode14AddAlternativeENS0_18GuardedAlternativeE.exit16: ; preds = %bb.i, %_ZN2v88internal8ZoneListINS0_18GuardedAlternativeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i9
  %.sink12.i10 = phi i32 [ %i.bd, %bb.i ], [ %i.cb, %_ZN2v88internal8ZoneListINS0_18GuardedAlternativeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i9 ] ; 2 uses
  %.sink9.i11 = phi ptr [ %i.bh, %bb.i ], [ %i.bu, %_ZN2v88internal8ZoneListINS0_18GuardedAlternativeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i.i9 ]
  %i.cc = add nsw i32 %.sink12.i10, 1
  store i32 %i.cc, ptr %i.bc, align 4
  %i.cd = sext i32 %.sink12.i10 to i64
  %i.ce = getelementptr inbounds [16 x i8], ptr %.sink9.i11, i64 %i.cd ; 2 uses
  store ptr %3, ptr %i.ce, align 8
  %.sroa.3.0..sroa_idx2.i12 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %4, ptr %.sroa.3.0..sroa_idx2.i12, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16, i16) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nobuiltin nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { noreturn nounwind }
attributes #22 = { noreturn }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{ptr @_ZN2v88internal10RegExpTree6ToNodeEPNS0_14RegExpCompilerEPNS0_10RegExpNodeE}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !10}
!29 = distinct !{!29, !10}
!30 = distinct !{!30, !10}
!31 = distinct !{!31, !10}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !10}
!34 = distinct !{null}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{null}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !19}
!40 = distinct !{!40, !10}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = distinct !{!45, !10}
!46 = distinct !{!46, !19}
!47 = distinct !{!47, !10}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10}
!51 = distinct !{!51, !10}
!52 = !{ptr @_ZN2v88internal16RegExpLookaround7Builder8ForMatchEPNS0_10RegExpNodeE}
!53 = distinct !{!53, !10}
!54 = !{ptr @_ZN2v88internal13RegExpCapture6ToNodeEPNS0_10RegExpTreeEiPNS0_14RegExpCompilerEPNS0_10RegExpNodeE, ptr @_ZN2v88internal10RegExpTree6ToNodeEPNS0_14RegExpCompilerEPNS0_10RegExpNodeE}
!55 = distinct !{null}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = distinct !{!62, !10}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !10}
!65 = distinct !{!65, !10}
!66 = distinct !{!66, !10}
!67 = !{i64 8}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !19}
!73 = distinct !{!73, !10}
!74 = distinct !{!74, !10, !75, !76}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = distinct !{!77, !10, !75}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{null, null, null}
!83 = distinct !{null, null, null, null}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{null, null, null}
!87 = distinct !{!87, !10}
!88 = distinct !{null, null, null}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = !{!"branch_weights", !"expected", i32 2146946911, i32 536737}
!92 = distinct !{!92, !10}
!93 = distinct !{null, null, null}
!94 = distinct !{!94, !10}
!95 = distinct !{null, null}
!96 = distinct !{null, null, null}
!97 = distinct !{!97, !10}
!98 = distinct !{null, null, null}
!99 = distinct !{!99, !10}
!100 = !{!101}
!101 = distinct !{!101, !102}
!102 = distinct !{!102, !"LVerDomain"}
!103 = !{!104}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !10, !75, !76}
!106 = distinct !{!106, !10, !75}
!107 = !{!108}
!108 = distinct !{!108, !109}
!109 = distinct !{!109, !"LVerDomain"}
!110 = !{!111}
!111 = distinct !{!111, !109}
!112 = distinct !{!112, !10, !75, !76}
!113 = distinct !{!113, !19}
!114 = distinct !{!114, !10, !75}
!115 = distinct !{!115, !19}
!116 = distinct !{!116, !10}
!117 = distinct !{!117, !10}
end_hunk_1
