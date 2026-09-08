Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 44
begin_hunk_0_@_ZN7CaDiCaL7Closure12new_xor_gateERKSt6vectorINS_13LitClausePairESaIS2_EEi:bb.a
_ZNKSt6vectorIPN7CaDiCaL4GateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.af
  %i.gn = ashr exact i64 %i.gl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 1)
  %i.go = add nsw i64 %.sroa.speculated.i.i.i.i, %i.gn ; 2 uses
  %i.gp = icmp ult i64 %i.go, %i.gn
  %i.gq = call i64 @llvm.umin.i64(i64 %i.go, i64 1152921504606846975)
  %i.gr = select i1 %i.gp, i64 1152921504606846975, i64 %i.gq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.gr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gs) #23 ; 4 uses
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.gl ; 2 uses
  store ptr %i.fx, ptr %i.gu, align 8, !tbaa !325
  %i.gv = icmp sgt i64 %i.gl, 0
  br i1 %i.gv, label %bb.ah, label %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

bb.ah:                                            ; preds = %_ZNKSt6vectorIPN7CaDiCaL4GateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gi, i64 %i.gl, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i

_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i: ; preds = %bb.ah, %_ZNKSt6vectorIPN7CaDiCaL4GateESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.gi, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  %i.gx = load ptr, ptr %i.gf, align 8, !tbaa !324
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = sub i64 %i.gy, %i.gk
  call void @_ZdlPvm(ptr noundef nonnull %i.gi, i64 noundef %i.gz) #24
  br label %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.ai, %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i.i
  store ptr %i.gt, ptr %i.gc, align 8, !tbaa !326
  store ptr %i.gw, ptr %i.gd, align 8, !tbaa !323
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gr
  store ptr %i.ha, ptr %i.gf, align 8, !tbaa !324
  br label %_ZN7CaDiCaL7Closure13connect_goccsEPNS_4GateEi.exit

_ZN7CaDiCaL7Closure13connect_goccsEPNS_4GateEi.exit: ; preds = %bb.ae, %_ZNSt6vectorIPN7CaDiCaL4GateESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.027.050, i64 4 ; 2 uses
  %.not41 = icmp eq ptr %i.hb, %i.fu
  br i1 %.not41, label %.loopexit.loopexit, label %bb.ad

.loopexit.loopexit:                               ; preds = %_ZN7CaDiCaL7Closure13connect_goccsEPNS_4GateEi.exit
  %.pre56 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit42, %_ZNSt6vectorIlSaIlEED2Ev.exit22
  %i.hc = phi ptr [ %.pre56, %.loopexit.loopexit ], [ %i.fq, %.loopexit42 ], [ %i.bo, %_ZNSt6vectorIlSaIlEED2Ev.exit22 ]
  %i.hd = load ptr, ptr %i.au, align 8, !tbaa !123
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 6976 ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !596
  %i.hg = add nsw i64 %i.hf, 1
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret ptr %i.hc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN7CaDiCaL7Closure22number_from_xor_reasonERKSt6vectorIiSaIiEEiib(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1040) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !132    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 3 uses
  %.not11 = icmp eq ptr %i.a, %i.c
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !153
  %i.e = icmp slt i32 %i.d, 1
  %i.f = xor i1 %4, %i.e
  %i.g = zext i1 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.not.peel = icmp eq ptr %i.h, %i.c
  br i1 %.not.peel, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.preheader, %bb.a
  %.07.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %.lr.ph.preheader ], [ %i.m, %.lr.ph ]
  ret i32 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0713 = phi i32 [ %i.m, %.lr.ph ], [ %i.g, %.lr.ph.preheader ]
  %.sroa.08.012 = phi ptr [ %i.n, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %i.i = load i32, ptr %.sroa.08.012, align 4, !tbaa !153
  %i.j = shl i32 %.0713, 1
  %i.k = icmp slt i32 %i.i, 1
  %i.l = zext i1 %i.k to i32
  %i.m = or disjoint i32 %i.j, %i.l               ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.n, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure22gate_sort_lrat_reasonsERNS_13LitClausePairEiib(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !153
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.i = tail call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPiSt20back_insert_iteratorISt6vectorIiSaIiEEEEET0_T_SA_S9_(ptr noundef nonnull %i.c, ptr noundef nonnull %i.g, ptr nonnull %i.h) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !132  ; 5 uses
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !132  ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !123  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4140
  %i.t = load i32, ptr %i.s, align 4, !tbaa !299
  %i.u = sext i32 %i.t to i64
  %.not.i = icmp ugt i64 %i.p, %i.u
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i.i.i, label %_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.416.8.insert.ext.i = zext i32 %3 to i64
  %.sroa.416.8.insert.shift.i = shl nuw i64 %.sroa.416.8.insert.ext.i, 32
  %.sroa.215.8.insert.ext.i = zext i32 %2 to i64
  %.sroa.215.8.insert.insert.i = or disjoint i64 %.sroa.416.8.insert.shift.i, %.sroa.215.8.insert.ext.i ; 2 uses
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.p, i1 true)
  %i.w = shl nuw nsw i64 %i.v, 1
  %i.x = xor i64 %i.w, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL35sort_literals_by_var_smaller_exceptEEEEvT_SC_T0_T1_(ptr %i.l, ptr %i.k, i64 noundef %i.x, ptr nonnull %i.r, i64 %.sroa.215.8.insert.insert.i)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL35sort_literals_by_var_smaller_exceptEEEEvT_SC_T0_(ptr %i.l, ptr %i.k, ptr nonnull %i.r, i64 %.sroa.215.8.insert.insert.i)
  br label %_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit

bb.d:                                             ; preds = %bb.a
  %.sroa.4.8.insert.ext.i = zext i32 %3 to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.ext.i = zext i32 %2 to i64
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %.sroa.2.8.insert.ext.i
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_32sort_literals_by_var_rank_exceptEEEvT_S9_T0_(ptr %i.l, ptr %i.k, ptr nonnull %i.r, i64 %.sroa.2.8.insert.insert.i)
  br label %_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit

_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !132  ; 4 uses
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !132  ; 3 uses
  %.not11.i = icmp eq ptr %i.y, %i.z
  br i1 %.not11.i, label %_ZN7CaDiCaL7Closure22number_from_xor_reasonERKSt6vectorIiSaIiEEiib.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !153
  %i.ab = icmp slt i32 %i.aa, 1
  %i.ac = xor i1 %4, %i.ab
  %i.ad = zext i1 %i.ac to i32                    ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %.not.peel.i = icmp eq ptr %i.ae, %i.z
  br i1 %.not.peel.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.0713.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.ad, %.lr.ph.preheader.i ]
  %.sroa.08.012.i = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ae, %.lr.ph.preheader.i ] ; 2 uses
  %i.af = load i32, ptr %.sroa.08.012.i, align 4, !tbaa !153
  %i.ag = shl i32 %.0713.i, 1
  %i.ah = icmp slt i32 %i.af, 1
  %i.ai = zext i1 %i.ah to i32
  %i.aj = or disjoint i32 %i.ag, %i.ai            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i, i64 4 ; 2 uses
  %.not.i9 = icmp eq ptr %i.ak, %i.z
  br i1 %.not.i9, label %.loopexit, label %.lr.ph.i, !llvm.loop !13

_ZN7CaDiCaL7Closure22number_from_xor_reasonERKSt6vectorIiSaIiEEiib.exit: ; preds = %_ZN7CaDiCaL7Closure27sort_literals_by_var_exceptERSt6vectorIiSaIiEEii.exit
  store i32 0, ptr %1, align 8, !tbaa !339
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

.loopexit:                                        ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.07.lcssa.i.ph = phi i32 [ %i.ad, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  store i32 %.07.lcssa.i.ph, ptr %1, align 8, !tbaa !339
  store ptr %i.y, ptr %i.j, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %_ZN7CaDiCaL7Closure22number_from_xor_reasonERKSt6vectorIiSaIiEEiib.exit, %.loopexit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPNS_13LitClausePairESt6vectorIS3_SaIS3_EEEENS_23smaller_pair_first_rankEEEvT_SA_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = alloca [256 x i64], align 16             ; 10 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = ashr exact i64 %i.d, 4                   ; 8 uses
  %i.f = icmp ult i64 %i.e, 2
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not113121 = icmp eq ptr %1, %0
  %2 = add nsw i64 %i.e, -1                       ; 2 uses
  br label %bb.c

3:                                                ; preds = %.loopexit115
  %4 = icmp eq ptr %.sroa.0102.2, %.sroa.0106.3
  br i1 %4, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %3
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter188 = and i64 %i.e, -2
  br label %.preheader

bb.c:                                             ; preds = %bb.b, %.loopexit115
  %.059150 = phi i1 [ false, %bb.b ], [ %.3, %.loopexit115 ] ; 5 uses
  %.062149 = phi i64 [ 0, %bb.b ], [ %.365, %.loopexit115 ] ; 5 uses
  %.070148 = phi i64 [ 0, %bb.b ], [ %i.el, %.loopexit115 ] ; 8 uses
  %.071147 = phi i64 [ 255, %bb.b ], [ %.172, %.loopexit115 ] ; 2 uses
  %.073146 = phi i64 [ 0, %bb.b ], [ %.174, %.loopexit115 ] ; 3 uses
  %.075145 = phi i1 [ false, %bb.b ], [ true, %.loopexit115 ] ; 4 uses
  %.079143 = phi i64 [ 255, %bb.b ], [ %i.em, %.loopexit115 ] ; 3 uses
  %.080142 = phi i64 [ -1, %bb.b ], [ %.383, %.loopexit115 ] ; 5 uses
  %.sroa.13.0141 = phi ptr [ null, %bb.b ], [ %.sroa.13.3, %.loopexit115 ] ; 10 uses
  %.sroa.8.0140 = phi ptr [ null, %bb.b ], [ %.sroa.8.3, %.loopexit115 ] ; 13 uses
  %.sroa.095.0139 = phi ptr [ null, %bb.b ], [ %.sroa.095.3, %.loopexit115 ] ; 19 uses
  %.sroa.0102.0138 = phi ptr [ %0, %bb.b ], [ %.sroa.0102.2, %.loopexit115 ] ; 8 uses
  %.sroa.0106.0137 = phi ptr [ %1, %bb.b ], [ %.sroa.0106.3, %.loopexit115 ] ; 5 uses
  br i1 %.075145, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = xor i64 %.062149, %.080142
  %i.i = and i64 %i.h, %.079143
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %.loopexit115, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.073146
  %i.l = sub nsw i64 %.071147, %.073146
  %i.m = shl nsw i64 %i.l, 3
  %i.n = add nsw i64 %i.m, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds i8, ptr %.sroa.0102.0138, i64 %i.d ; 2 uses
  br i1 %.not113121, label %._crit_edge.thread, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.p = trunc nuw i8 %.169 to i1                 ; 2 uses
  %i.q = lshr i64 %.282, %.070148
  %i.r = and i64 %i.q, 255                        ; 8 uses
  %i.s = lshr i64 %.264, %.070148
  %i.t = and i64 %i.s, 255                        ; 6 uses
  br i1 %.075145, label %bb.g, label %bb.f

._crit_edge.thread:                               ; preds = %bb.e
  %i.u = lshr i64 %.080142, %.070148
  %i.v = and i64 %i.u, 255
  %i.w = lshr i64 %.062149, %.070148
  %i.x = and i64 %i.w, 255
  br label %.loopexit115

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.163126 = phi i64 [ %.264, %.lr.ph ], [ %.062149, %bb.e ]
  %.066125 = phi i64 [ %.167, %.lr.ph ], [ 0, %bb.e ] ; 2 uses
  %.068124 = phi i8 [ %.169, %.lr.ph ], [ 1, %bb.e ] ; 2 uses
  %.181123 = phi i64 [ %.282, %.lr.ph ], [ %.080142, %bb.e ]
  %.sroa.090.0122 = phi ptr [ %i.aj, %.lr.ph ], [ %.sroa.0102.0138, %bb.e ] ; 2 uses
  %i.y = load i32, ptr %.sroa.090.0122, align 8, !tbaa !339
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = select i1 %.075145, i64 -1, i64 %i.z
  %.282 = and i64 %i.aa, %.181123                 ; 6 uses
  %i.ab = select i1 %.075145, i64 0, i64 %i.z
  %.264 = or i64 %i.ab, %.163126                  ; 6 uses
  %i.ac = lshr i64 %i.z, %.070148
  %i.ad = and i64 %i.ac, 255                      ; 3 uses
  %i.ae = trunc nuw i8 %.068124 to i1
  %i.af = icmp samesign ugt i64 %.066125, %i.ad
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false  ; 2 uses
  %.169 = select i1 %or.cond, i8 0, i8 %.068124   ; 2 uses
  %.167 = select i1 %or.cond, i64 %.066125, i64 %i.ad
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ad ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !144
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !144
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.090.0122, i64 16 ; 2 uses
  %.not113 = icmp eq ptr %i.aj, %i.o
  br i1 %.not113, label %._crit_edge, label %.lr.ph, !llvm.loop !597

bb.f:                                             ; preds = %._crit_edge
  %i.ak = xor i64 %.264, %.282
  %i.al = and i64 %i.ak, %.079143
  %i.am = icmp eq i64 %i.al, 0
  %or.cond112 = select i1 %i.am, i1 true, i1 %i.p
  br i1 %or.cond112, label %.loopexit115, label %.preheader116

bb.g:                                             ; preds = %._crit_edge
  br i1 %i.p, label %.loopexit115, label %.preheader116

.preheader116:                                    ; preds = %bb.g, %bb.f
  %.not129 = icmp samesign ugt i64 %i.r, %i.t
  br i1 %.not129, label %._crit_edge133, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %.preheader116
  %i.an = add nuw nsw i64 %i.t, 1
  %i.ao = sub nuw nsw i64 %i.an, %i.r             ; 2 uses
  %i.ap = sub nuw nsw i64 %i.t, %i.r
  %xtraiter = and i64 %i.ao, 3                    ; 3 uses
  %i.aq = icmp samesign ult i64 %i.ap, 3
  br i1 %i.aq, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.ao, 508
  br label %.lr.ph132

._crit_edge133.loopexit.unr-lcssa:                ; preds = %.lr.ph132
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge133, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %._crit_edge133.loopexit.unr-lcssa, %.lr.ph132.preheader
  %.060131.epil.init = phi i64 [ %i.r, %.lr.ph132.preheader ], [ %i.bk, %._crit_edge133.loopexit.unr-lcssa ]
  %.061130.epil.init = phi i64 [ 0, %.lr.ph132.preheader ], [ %i.bj, %._crit_edge133.loopexit.unr-lcssa ]
  %lcmp.mod178 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod178)
  br label %.lr.ph132.epil

.lr.ph132.epil:                                   ; preds = %.lr.ph132.epil, %.lr.ph132.epil.preheader
  %.060131.epil = phi i64 [ %i.au, %.lr.ph132.epil ], [ %.060131.epil.init, %.lr.ph132.epil.preheader ] ; 2 uses
  %.061130.epil = phi i64 [ %i.at, %.lr.ph132.epil ], [ %.061130.epil.init, %.lr.ph132.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph132.epil ], [ 0, %.lr.ph132.epil.preheader ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060131.epil ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !144
  store i64 %.061130.epil, ptr %i.ar, align 8, !tbaa !144
  %i.at = add i64 %i.as, %.061130.epil
  %i.au = add nuw nsw i64 %.060131.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge133, label %.lr.ph132.epil, !llvm.loop !598

._crit_edge133:                                   ; preds = %._crit_edge133.loopexit.unr-lcssa, %.lr.ph132.epil, %.preheader116
  br i1 %.059150, label %.lr.ph136.preheader, label %bb.h

.lr.ph132:                                        ; preds = %.lr.ph132, %.lr.ph132.preheader.new
  %.060131 = phi i64 [ %i.r, %.lr.ph132.preheader.new ], [ %i.bk, %.lr.ph132 ] ; 5 uses
  %.061130 = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %i.bj, %.lr.ph132 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.3, %.lr.ph132 ]
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060131 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !144
  store i64 %.061130, ptr %i.av, align 8, !tbaa !144
  %i.ax = add i64 %i.aw, %.061130                 ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060131
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !144
  store i64 %i.ax, ptr %i.az, align 8, !tbaa !144
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060131
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !144
  store i64 %i.bb, ptr %i.bd, align 8, !tbaa !144
  %i.bf = add i64 %i.be, %i.bb                    ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.060131
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !144
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !144
  %i.bj = add i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add nuw nsw i64 %.060131, 4             ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge133.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !599

bb.h:                                             ; preds = %._crit_edge133
  %i.bl = ptrtoint ptr %.sroa.8.0140 to i64       ; 2 uses
  %i.bm = ptrtoint ptr %.sroa.095.0139 to i64     ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 2 uses
  %i.bo = ashr exact i64 %i.bn, 4                 ; 9 uses
  %i.bp = icmp ugt i64 %i.e, %i.bo
  br i1 %i.bp, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bq = sub nuw nsw i64 %i.e, %i.bo             ; 10 uses
  %i.br = ptrtoint ptr %.sroa.13.0141 to i64      ; 2 uses
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = ashr exact i64 %i.bs, 4                 ; 2 uses
  %i.bu = icmp ult i64 %i.bo, 576460752303423488
  tail call void @llvm.assume(i1 %i.bu)
  %i.bv = xor i64 %i.bo, 576460752303423487       ; 2 uses
  %i.bw = icmp ule i64 %i.bt, %i.bv
  tail call void @llvm.assume(i1 %i.bw)
  %.not23.i = icmp ult i64 %i.bt, %i.bq
  br i1 %.not23.i, label %bb.j, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.i
  %5 = sub nsw i64 %2, %i.bo
  %xtraiter179 = and i64 %i.bq, 7                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  br i1 %lcmp.mod180.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.08.i.i.i.i.prol = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.prol ], [ %.sroa.8.0140, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %.057.i.i.i.i.prol = phi i64 [ %i.by, %.lr.ph.i.i.i.i.prol ], [ %i.bq, %.lr.ph.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  store i32 0, ptr %.08.i.i.i.i.prol, align 8, !tbaa !339
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !336
  %i.by = add nsw i64 %.057.i.i.i.i.prol, -1      ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.prol, i64 16 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter179
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !600

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.prol ]
  %.08.i.i.i.i.unr = phi ptr [ %.sroa.8.0140, %.lr.ph.i.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.i.prol ]
  %.057.i.i.i.i.unr = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.preheader ], [ %i.by, %.lr.ph.i.i.i.i.prol ]
  %6 = icmp ult i64 %5, 7
  br i1 %6, label %.lr.ph136.preheader, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.cq, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i ], [ %.057.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i.i, align 8, !tbaa !339
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  store ptr null, ptr %i.ca, align 8, !tbaa !336
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 16
  store i32 0, ptr %i.cb, align 8, !tbaa !339
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 24
  store ptr null, ptr %i.cc, align 8, !tbaa !336
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 32
  store i32 0, ptr %i.cd, align 8, !tbaa !339
  %i.ce = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 40
  store ptr null, ptr %i.ce, align 8, !tbaa !336
  %i.cf = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 48
  store i32 0, ptr %i.cf, align 8, !tbaa !339
  %i.cg = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 56
  store ptr null, ptr %i.cg, align 8, !tbaa !336
  %i.ch = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 64
  store i32 0, ptr %i.ch, align 8, !tbaa !339
  %i.ci = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 72
  store ptr null, ptr %i.ci, align 8, !tbaa !336
  %i.cj = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 80
  store i32 0, ptr %i.cj, align 8, !tbaa !339
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 88
  store ptr null, ptr %i.ck, align 8, !tbaa !336
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 96
  store i32 0, ptr %i.cl, align 8, !tbaa !339
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 104
  store ptr null, ptr %i.cm, align 8, !tbaa !336
  %i.cn = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 112
  store i32 0, ptr %i.cn, align 8, !tbaa !339
  %i.co = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 120
  store ptr null, ptr %i.co, align 8, !tbaa !336
  %i.cp = add nsw i64 %.057.i.i.i.i, -8           ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.7 = icmp eq i64 %i.cp, 0
  br i1 %.not.i.i.i.i.7, label %.lr.ph136.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !14

bb.j:                                             ; preds = %bb.i
  %i.cr = icmp ult i64 %i.bv, %i.bq
  br i1 %i.cr, label %bb.k, label %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
  unreachable

_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.j
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 %i.bq)
  %i.cs = add nuw nsw i64 %.sroa.speculated.i.i, %i.bo
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cs, i64 576460752303423487) ; 2 uses
  %i.cu = shl nuw nsw i64 %i.ct, 4
  %i.cv = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cu) #23 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.bn ; 3 uses
  %xtraiter181 = and i64 %i.bq, 7                 ; 2 uses
  %lcmp.mod182.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod182.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol

.lr.ph.i.i.i25.i.prol:                            ; preds = %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i25.i.prol
  %.08.i.i.i26.i.prol = phi ptr [ %i.cz, %.lr.ph.i.i.i25.i.prol ], [ %i.cw, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 3 uses
  %.057.i.i.i27.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i25.i.prol ], [ %i.bq, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  %prol.iter183 = phi i64 [ %prol.iter183.next, %.lr.ph.i.i.i25.i.prol ], [ 0, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i ]
  store i32 0, ptr %.08.i.i.i26.i.prol, align 8, !tbaa !339
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 8
  store ptr null, ptr %i.cx, align 8, !tbaa !336
  %i.cy = add i64 %.057.i.i.i27.i.prol, -1        ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i.prol, i64 16 ; 2 uses
  %prol.iter183.next = add i64 %prol.iter183, 1   ; 2 uses
  %prol.iter183.cmp.not = icmp eq i64 %prol.iter183.next, %xtraiter181
  br i1 %prol.iter183.cmp.not, label %.lr.ph.i.i.i25.i.prol.loopexit, label %.lr.ph.i.i.i25.i.prol, !llvm.loop !601

.lr.ph.i.i.i25.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i25.i.prol, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.08.i.i.i26.i.unr = phi ptr [ %i.cw, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.cz, %.lr.ph.i.i.i25.i.prol ]
  %.057.i.i.i27.i.unr = phi i64 [ %i.bq, %_ZNKSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.cy, %.lr.ph.i.i.i25.i.prol ]
  %i.da = sub nsw i64 %i.bo, %i.e
  %i.db = icmp ugt i64 %i.da, -8
  br i1 %i.db, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i

.lr.ph.i.i.i25.i:                                 ; preds = %.lr.ph.i.i.i25.i.prol.loopexit, %.lr.ph.i.i.i25.i
  %.08.i.i.i26.i = phi ptr [ %i.ds, %.lr.ph.i.i.i25.i ], [ %.08.i.i.i26.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ] ; 17 uses
  %.057.i.i.i27.i = phi i64 [ %i.dr, %.lr.ph.i.i.i25.i ], [ %.057.i.i.i27.i.unr, %.lr.ph.i.i.i25.i.prol.loopexit ]
  store i32 0, ptr %.08.i.i.i26.i, align 8, !tbaa !339
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 8
  store ptr null, ptr %i.dc, align 8, !tbaa !336
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 16
  store i32 0, ptr %i.dd, align 8, !tbaa !339
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 24
  store ptr null, ptr %i.de, align 8, !tbaa !336
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 32
  store i32 0, ptr %i.df, align 8, !tbaa !339
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 40
  store ptr null, ptr %i.dg, align 8, !tbaa !336
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 48
  store i32 0, ptr %i.dh, align 8, !tbaa !339
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 56
  store ptr null, ptr %i.di, align 8, !tbaa !336
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 64
  store i32 0, ptr %i.dj, align 8, !tbaa !339
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 72
  store ptr null, ptr %i.dk, align 8, !tbaa !336
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 80
  store i32 0, ptr %i.dl, align 8, !tbaa !339
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 88
  store ptr null, ptr %i.dm, align 8, !tbaa !336
  %i.dn = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 96
  store i32 0, ptr %i.dn, align 8, !tbaa !339
  %i.do = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 104
  store ptr null, ptr %i.do, align 8, !tbaa !336
  %i.dp = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 112
  store i32 0, ptr %i.dp, align 8, !tbaa !339
  %i.dq = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 120
  store ptr null, ptr %i.dq, align 8, !tbaa !336
  %i.dr = add i64 %.057.i.i.i27.i, -8             ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.08.i.i.i26.i, i64 128
  %.not.i.i.i28.i.7 = icmp eq i64 %i.dr, 0
  br i1 %.not.i.i.i28.i.7, label %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i, label %.lr.ph.i.i.i25.i, !llvm.loop !14

_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i: ; preds = %.lr.ph.i.i.i25.i, %.lr.ph.i.i.i25.i.prol.loopexit
  %.not10.i.i.i.i = icmp eq ptr %.sroa.095.0139, %.sroa.8.0140
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i31.i

.lr.ph.i.i.i31.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i, %.lr.ph.i.i.i31.i
  %.012.i.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i31.i ], [ %i.cv, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i31.i ], [ %.sroa.095.0139, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i, i64 16, i1 false), !tbaa.struct !337, !alias.scope !608
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %.not.i.i.i32.i = icmp eq ptr %i.dt, %.sroa.8.0140
  br i1 %.not.i.i.i32.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i31.i, !llvm.loop !8

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i31.i, %_ZSt27__uninitialized_default_n_aIPN7CaDiCaL13LitClausePairEmS1_ET_S3_T0_RSaIT1_E.exit30.i
  %.not.i34.i = icmp eq ptr %.sroa.095.0139, null
  br i1 %.not.i34.i, label %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.dv = sub i64 %i.br, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.0139, i64 noundef %i.dv) #24
  br label %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.cw, i64 %i.bq
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.cv, i64 %i.ct
  br label %.lr.ph136.preheader

bb.m:                                             ; preds = %bb.h
  %i.dy = icmp ult i64 %i.e, %i.bo
  br i1 %i.dy, label %bb.n, label %.lr.ph136.preheader

bb.n:                                             ; preds = %bb.m
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.095.0139, i64 %i.d ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.8.0140, %i.dz
  %spec.select = select i1 %.not.i.i, ptr %.sroa.8.0140, ptr %i.dz
  br label %.lr.ph136.preheader

.lr.ph136.preheader:                              ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %._crit_edge133, %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i, %bb.m, %bb.n
  %.sroa.0106.1 = phi ptr [ %.sroa.0106.0137, %._crit_edge133 ], [ %.sroa.095.0139, %bb.m ], [ %.sroa.095.0139, %bb.n ], [ %i.cv, %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.sroa.095.0139, %.lr.ph.i.i.i.i ], [ %.sroa.095.0139, %.lr.ph.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.095.1 = phi ptr [ %.sroa.095.0139, %._crit_edge133 ], [ %.sroa.095.0139, %bb.m ], [ %.sroa.095.0139, %bb.n ], [ %i.cv, %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.sroa.095.0139, %.lr.ph.i.i.i.i ], [ %.sroa.095.0139, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.8.1 = phi ptr [ %.sroa.8.0140, %._crit_edge133 ], [ %.sroa.8.0140, %bb.m ], [ %spec.select, %bb.n ], [ %i.dw, %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.cq, %.lr.ph.i.i.i.i ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0141, %._crit_edge133 ], [ %.sroa.13.0141, %bb.m ], [ %.sroa.13.0141, %bb.n ], [ %i.dx, %_ZNSt12_Vector_baseIN7CaDiCaL13LitClausePairESaIS1_EE13_M_deallocateEPS1_m.exit.i ], [ %.sroa.13.0141, %.lr.ph.i.i.i.i ], [ %.sroa.13.0141, %.lr.ph.i.i.i.i.prol.loopexit ]
  %i.ea = icmp eq ptr %.sroa.0102.0138, %0
  %i.eb = select i1 %i.ea, ptr %.sroa.0106.1, ptr %0 ; 2 uses
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %.lr.ph136
  %.sroa.0.0135 = phi ptr [ %i.ek, %.lr.ph136 ], [ %.sroa.0102.0138, %.lr.ph136.preheader ] ; 3 uses
  %i.ec = load i32, ptr %.sroa.0.0135, align 8, !tbaa !339
  %i.ed = sext i32 %i.ec to i64
  %i.ee = lshr i64 %i.ed, %.070148
  %i.ef = and i64 %i.ee, 255
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !144 ; 2 uses
  %i.ei = add i64 %i.eh, 1
  store i64 %i.ei, ptr %i.eg, align 8, !tbaa !144
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.eb, i64 %i.eh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ej, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0135, i64 16, i1 false), !tbaa.struct !337
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0135, i64 16 ; 2 uses
  %.not114 = icmp eq ptr %i.ek, %i.o
  br i1 %.not114, label %.loopexit115, label %.lr.ph136, !llvm.loop !605

.loopexit115:                                     ; preds = %.lr.ph136, %._crit_edge.thread, %bb.f, %bb.g, %bb.d
  %.sroa.0106.3 = phi ptr [ %.sroa.0106.0137, %bb.d ], [ %.sroa.0106.0137, %bb.g ], [ %.sroa.0106.0137, %bb.f ], [ %.sroa.0106.0137, %._crit_edge.thread ], [ %.sroa.0106.1, %.lr.ph136 ] ; 5 uses
  %.sroa.0102.2 = phi ptr [ %.sroa.0102.0138, %bb.d ], [ %.sroa.0102.0138, %bb.g ], [ %.sroa.0102.0138, %bb.f ], [ %.sroa.0102.0138, %._crit_edge.thread ], [ %i.eb, %.lr.ph136 ] ; 2 uses
  %.sroa.095.3 = phi ptr [ %.sroa.095.0139, %bb.d ], [ %.sroa.095.0139, %bb.g ], [ %.sroa.095.0139, %bb.f ], [ %.sroa.095.0139, %._crit_edge.thread ], [ %.sroa.095.1, %.lr.ph136 ] ; 4 uses
  %.sroa.8.3 = phi ptr [ %.sroa.8.0140, %bb.d ], [ %.sroa.8.0140, %bb.g ], [ %.sroa.8.0140, %bb.f ], [ %.sroa.8.0140, %._crit_edge.thread ], [ %.sroa.8.1, %.lr.ph136 ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.0141, %bb.d ], [ %.sroa.13.0141, %bb.g ], [ %.sroa.13.0141, %bb.f ], [ %.sroa.13.0141, %._crit_edge.thread ], [ %.sroa.13.1, %.lr.ph136 ] ; 2 uses
  %.383 = phi i64 [ %.080142, %bb.d ], [ %.282, %bb.g ], [ %.282, %bb.f ], [ %.080142, %._crit_edge.thread ], [ %.282, %.lr.ph136 ]
  %.174 = phi i64 [ %.073146, %bb.d ], [ %i.r, %bb.g ], [ %i.r, %bb.f ], [ %i.v, %._crit_edge.thread ], [ %i.r, %.lr.ph136 ]
  %.172 = phi i64 [ %.071147, %bb.d ], [ %i.t, %bb.g ], [ %i.t, %bb.f ], [ %i.x, %._crit_edge.thread ], [ %i.t, %.lr.ph136 ]
  %.365 = phi i64 [ %.062149, %bb.d ], [ %.264, %bb.g ], [ %.264, %bb.f ], [ %.062149, %._crit_edge.thread ], [ %.264, %.lr.ph136 ]
  %.3 = phi i1 [ %.059150, %bb.d ], [ %.059150, %bb.g ], [ %.059150, %bb.f ], [ %.059150, %._crit_edge.thread ], [ true, %.lr.ph136 ]
  %i.el = add nuw nsw i64 %.070148, 8
  %i.em = shl i64 %.079143, 8
  %i.en = icmp samesign ult i64 %.070148, 56
  br i1 %i.en, label %bb.c, label %3, !llvm.loop !606

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %.0151 = phi i64 [ 0, %.preheader.preheader.new ], [ %i.et, %.preheader ] ; 4 uses
  %niter189 = phi i64 [ 0, %.preheader.preheader.new ], [ %niter189.next.1, %.preheader ]
  %i.eo = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %.0151
  %i.ep = getelementptr inbounds [16 x i8], ptr %0, i64 %.0151
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ep, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false), !tbaa.struct !337
  %i.eq = or disjoint i64 %.0151, 1               ; 2 uses
  %i.er = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %i.eq
  %i.es = getelementptr inbounds [16 x i8], ptr %0, i64 %i.eq
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false), !tbaa.struct !337
  %i.et = add nuw i64 %.0151, 2                   ; 2 uses
  %niter189.next.1 = add nuw i64 %niter189, 2     ; 2 uses
  %niter189.ncmp.1 = icmp eq i64 %niter189.next.1, %unroll_iter188
  br i1 %niter189.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader, !llvm.loop !607

.loopexit.loopexit.unr-lcssa:                     ; preds = %.preheader
  %i.eu = and i64 %i.d, 16
  %lcmp.mod186.not = icmp eq i64 %i.eu, 0
  br i1 %lcmp.mod186.not, label %.loopexit, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader.preheader
  %.0151.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %i.et, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod187 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod187)
  %i.ev = getelementptr inbounds [16 x i8], ptr %.sroa.0106.3, i64 %.0151.epil.init
  %i.ew = getelementptr inbounds [16 x i8], ptr %0, i64 %.0151.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !tbaa.struct !337
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.epil.preheader, %.loopexit.loopexit.unr-lcssa, %3
  %.not.i.i.i = icmp eq ptr %.sroa.095.3, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %i.ex = ptrtoint ptr %.sroa.13.3 to i64
  %i.ey = ptrtoint ptr %.sroa.095.3 to i64
  %i.ez = sub i64 %i.ex, %i.ey
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.095.3, i64 noundef %i.ez) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit: ; preds = %.loopexit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure24init_xor_gate_extractionERSt6vectorIPNS_6ClauseESaIS3_EE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3764
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394
  %i.f = add i32 %i.e, 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !395
  %i.j = shl i64 %i.i, 1                          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !396  ; 3 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !363  ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 3 uses
  %i.r = icmp ugt i64 %i.j, %i.q
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = sub nuw i64 %i.j, %i.q
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr %i.l, i64 noundef %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !123
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.c:                                             ; preds = %bb.a
  %i.t = icmp ult i64 %i.j, %i.q
  br i1 %i.t, label %bb.d, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.u, ptr %i.k, align 8, !tbaa !396
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.c, %bb.e ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2280
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !298  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 2288
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !298  ; 2 uses
  %.not162176 = icmp eq ptr %i.x, %i.z
  br i1 %.not162176, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.f

._crit_edge179.loopexit:                          ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.pre222 = load ptr, ptr %i.b, align 8, !tbaa !123
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %._crit_edge179.loopexit, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit
  %i.ac = phi ptr [ %.pre222, %._crit_edge179.loopexit ], [ %i.v, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3768
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !612 ; 2 uses
  %.not217 = icmp eq i32 %i.ae, 0
  br i1 %.not217, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %._crit_edge179
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 520
  %.pre223 = load ptr, ptr %i.ag, align 8, !tbaa !396
  %.pre224 = load ptr, ptr %i.af, align 8, !tbaa !363
  br label %bb.u

bb.f:                                             ; preds = %.lr.ph178, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit
  %.sroa.0147.0177 = phi ptr [ %i.x, %.lr.ph178 ], [ %i.ct, %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit ] ; 2 uses
  %i.ak = load ptr, ptr %.sroa.0147.0177, align 8, !tbaa !300 ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8
  %i.an = and i32 %i.am, 33280
  %or.cond = icmp eq i32 %i.an, 0
  br i1 %or.cond, label %bb.g, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !153 ; 3 uses
  %i.aq = icmp slt i32 %i.ap, 3
  br i1 %i.aq, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 4 uses
  %i.as = zext nneg i32 %i.ap to i64
  %.idx = shl nuw nsw i64 %i.as, 2
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !123 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 472
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !310
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %.0103170 = phi ptr [ %i.ar, %.lr.ph ], [ %i.be, %bb.l ] ; 2 uses
  %.0104169 = phi i32 [ 0, %.lr.ph ], [ %.1105, %bb.l ] ; 3 uses
  %i.ax = load i32, ptr %.0103170, align 4, !tbaa !153
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !143 ; 2 uses
  %i.bb = icmp slt i8 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not121 = icmp eq i8 %i.ba, 0
  br i1 %.not121, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7296) %i.au, ptr noundef %i.ak) #21
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bc = icmp eq i32 %.0104169, %i.f
  %i.bd = add i32 %.0104169, 1
  br i1 %i.bc, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  %.1105 = phi i32 [ %i.bd, %bb.k ], [ %.0104169, %bb.h ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0103170, i64 4 ; 2 uses
  %.not120 = icmp eq ptr %i.be, %i.at
  br i1 %.not120, label %._crit_edge, label %bb.h

._crit_edge:                                      ; preds = %bb.l
  %i.bf = icmp ult i32 %.1105, 3
  br i1 %i.bf, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit, label %.lr.ph174

.lr.ph174:                                        ; preds = %._crit_edge
  %i.bg = zext nneg i32 %i.ap to i64
  %.idx216 = shl nuw nsw i64 %i.bg, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.idx216
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 472
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !310
  br label %bb.r

._crit_edge175:                                   ; preds = %bb.t
  %i.bl = load ptr, ptr %i.aa, align 8, !tbaa !308 ; 4 uses
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !316
  %.not.i = icmp eq ptr %i.bl, %i.bm
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %._crit_edge175
  store ptr %i.ak, ptr %i.bl, align 8, !tbaa !300
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bn, ptr %i.aa, align 8, !tbaa !308
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE9push_backERKS2_.exit

bb.n:                                             ; preds = %._crit_edge175
  %i.bo = load ptr, ptr %1, align 8, !tbaa !309   ; 4 uses
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 5 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.o, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.bt = ashr exact i64 %i.br, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = call i64 @llvm.umin.i64(i64 %i.bu, i64 1152921504606846975)
  %i.bx = select i1 %i.bv, i64 1152921504606846975, i64 %i.bw ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bx, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.by = shl nuw nsw i64 %i.bx, 3
  %i.bz = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #23 ; 4 uses
end_hunk_0
