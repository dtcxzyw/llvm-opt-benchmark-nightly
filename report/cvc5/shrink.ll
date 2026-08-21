inline.NumInlined: 441
inline.NumDeleted: 161
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN7CaDiCaL8Internal26shrink_and_minimize_clauseEv:bb.a
  %2 = alloca %"class.std::reverse_iterator", align 8 ; 5 uses
  %3 = alloca %"class.std::vector.20", align 8    ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5672
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !186  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 488
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !187
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL8External32check_solution_on_learned_clauseEv(ptr noundef nonnull align 8 dereferenceable(568) %i.d)
  br label %_ZN7CaDiCaL8External20check_learned_clauseEv.exit

_ZN7CaDiCaL8External20check_learned_clauseEv.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1096 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 5 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !8    ; 5 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 2                   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3612
  %i.p = load i32, ptr %i.o, align 4, !tbaa !206
  %i.q = sext i32 %i.p to i64
  %.not = icmp ugt i64 %i.n, %i.q
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  %.not.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.n, i1 true)
  %i.s = shl nuw nsw i64 %i.r, 1
  %i.t = xor i64 %i.s, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_T1_(ptr %i.j, ptr %i.i, i64 noundef %i.t, ptr nonnull %0)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_SC_T0_(ptr %i.j, ptr %i.i, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

bb.e:                                             ; preds = %_ZN7CaDiCaL8External20check_learned_clauseEv.exit
  tail call void @_ZN7CaDiCaL5rsortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS_26shrink_trail_negative_rankEEEvT_S9_T0_(ptr %i.j, ptr %i.i, ptr nonnull %0)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit: ; preds = %bb.d, %bb.c, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !8, !noalias !207 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !210)
  %i.w = load ptr, ptr %i.h, align 8, !tbaa !8, !noalias !210 ; 4 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !8, !alias.scope !210
  %i.x = load i32, ptr %i.u, align 4, !tbaa !11   ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.z = load i8, ptr %i.y, align 8, !tbaa !213, !range !214, !noundef !215
  %i.aa = trunc nuw i8 %i.z to i1
  %.not101136 = icmp ne ptr %i.u, %i.w
  %or.cond.not = select i1 %i.aa, i1 %.not101136, i1 false
  br i1 %or.cond.not, label %.lr.ph, label %.loopexit110

.lr.ph:                                           ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %.sroa.081.0140 = phi ptr [ %i.ar, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ %i.u, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.13.0139 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.10.0138 = phi ptr [ %.sroa.10.1, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 3 uses
  %.sroa.084.0137 = phi ptr [ %.sroa.084.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ], [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ] ; 7 uses
  %.not.i39 = icmp eq ptr %.sroa.10.0138, %.sroa.13.0139
  br i1 %.not.i39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ab = load i32, ptr %.sroa.081.0140, align 4, !tbaa !11
  store i32 %i.ab, ptr %.sroa.10.0138, align 4, !tbaa !11
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ac = ptrtoint ptr %.sroa.13.0139 to i64
  %i.ad = ptrtoint ptr %.sroa.084.0137 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775804
  br i1 %i.af, label %bb.h, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc unwind label %.loopexit.split-lp112

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ag = ashr exact i64 %i.ae, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 2305843009213693951)
  %i.ak = select i1 %i.ai, i64 2305843009213693951, i64 %i.aj ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ak, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.al = shl nuw nsw i64 %i.ak, 2
  %i.am = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #14
          to label %.noexc40 unwind label %.loopexit111 ; 4 uses

.noexc40:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.ae ; 2 uses
  %i.ao = load i32, ptr %.sroa.081.0140, align 4, !tbaa !11
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !11
  %i.ap = icmp sgt i64 %i.ae, 0
  br i1 %i.ap, label %bb.i, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.i:                                             ; preds = %.noexc40
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.am, ptr align 4 %.sroa.084.0137, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.i, %.noexc40
  %.not.i17.i.i = icmp eq ptr %.sroa.084.0137, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.084.0137) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.ak
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, %bb.f
  %.sroa.084.3 = phi ptr [ %i.am, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.084.0137, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.an, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.10.0138, %bb.f ]
  %.sroa.13.1 = phi ptr [ %i.aq, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ], [ %.sroa.13.0139, %bb.f ]
  %.sroa.10.1 = getelementptr inbounds nuw i8, ptr %.pn, i64 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.081.0140, i64 4 ; 2 uses
  %.not101 = icmp eq ptr %i.ar, %i.w
  br i1 %.not101, label %.loopexit110, label %.lr.ph

.loopexit111:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit.split-lp112:                            ; preds = %bb.h
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

.loopexit110:                                     ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit
  %.sroa.084.1 = phi ptr [ null, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN7CaDiCaL19shrink_trail_largerEEvT_S9_T0_.exit ], [ %.sroa.084.3, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit ] ; 5 uses
  %.not102142 = icmp eq ptr %i.w, %i.v
  br i1 %.not102142, label %._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %.loopexit110, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  invoke void @_ZN7CaDiCaL8Internal25minimize_and_shrink_blockERSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEERjSB_i(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %2, ptr noundef nonnull align 8 dereferenceable(5704) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.x)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph143
  %i.as = load i64, ptr %2, align 8               ; 2 uses
  store i64 %i.as, ptr %1, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.sroa.0.0.copyload.i.i.i.cast = inttoptr i64 %i.as to ptr
  %.not102 = icmp eq ptr %i.v, %.sroa.0.0.copyload.i.i.i.cast
  br i1 %.not102, label %._crit_edge, label %.lr.ph143, !llvm.loop !216

bb.l:                                             ; preds = %.lr.ph143
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.al

._crit_edge:                                      ; preds = %bb.k, %.loopexit110
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.au = load ptr, ptr %i.h, align 8, !tbaa !15  ; 5 uses
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !18  ; 13 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 2                 ; 5 uses
  %i.ba = icmp ugt i64 %i.az, 1
  br i1 %i.ba, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.bg = load i8, ptr %i.y, align 8, !tbaa !213, !range !214, !noundef !215
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.lr.ph152.split, label %.lr.ph152.split.us

.lr.ph152.split.us:                               ; preds = %.lr.ph152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !11
  %.not222 = icmp eq i32 %i.bj, %i.x
  %spec.select.us.peel = select i1 %.not222, i64 1, i64 2 ; 3 uses
  %exitcond.peel.not = icmp eq i64 %i.ay, 8
  br i1 %exitcond.peel.not, label %._crit_edge153, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader

_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader:   ; preds = %.lr.ph152.split.us
  %umax = tail call i64 @llvm.umax.i64(i64 %i.az, i64 2) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %i.bk = icmp eq i64 %i.ay, 12
  br i1 %i.bk, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new

_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new: ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader
  %i.bl = and i64 %umax, -2
  %4 = add i64 %i.bl, -4
  br label %_ZNSt6vectorImSaImEE5clearEv.exit.us

_ZNSt6vectorImSaImEE5clearEv.exit.us:             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new
  %.0150.us = phi i64 [ 2, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %i.bx, %_ZNSt6vectorImSaImEE5clearEv.exit.us ] ; 3 uses
  %.023149.us = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %spec.select.us.1, %_ZNSt6vectorImSaImEE5clearEv.exit.us ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader.new ], [ %niter.next.1, %_ZNSt6vectorImSaImEE5clearEv.exit.us ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0150.us
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !11 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.023149.us
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !11
  %i.bp = icmp ne i32 %i.bn, %i.x
  %i.bq = zext i1 %i.bp to i64
  %spec.select.us = add i64 %.023149.us, %i.bq    ; 2 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0150.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !11 ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %spec.select.us
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !11
  %i.bv = icmp ne i32 %i.bt, %i.x
  %i.bw = zext i1 %i.bv to i64
  %spec.select.us.1 = add i64 %spec.select.us, %i.bw ; 3 uses
  %i.bx = add nuw i64 %.0150.us, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %4
  br i1 %niter.ncmp.1, label %._crit_edge153.loopexit241.unr-lcssa, label %_ZNSt6vectorImSaImEE5clearEv.exit.us, !llvm.loop !217

._crit_edge153.loopexit241.unr-lcssa:             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge153, label %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader

_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader: ; preds = %._crit_edge153.loopexit241.unr-lcssa, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader
  %.0150.us.epil.init = phi i64 [ 2, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader ], [ %i.bx, %._crit_edge153.loopexit241.unr-lcssa ]
  %.023149.us.epil.init = phi i64 [ %spec.select.us.peel, %_ZNSt6vectorImSaImEE5clearEv.exit.us.preheader ], [ %spec.select.us.1, %._crit_edge153.loopexit241.unr-lcssa ] ; 2 uses
  %lcmp.mod245 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod245)
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.0150.us.epil.init
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !11 ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.023149.us.epil.init
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !11
  %i.cb = icmp ne i32 %i.bz, %i.x
  %i.cc = zext i1 %i.cb to i64
  %spec.select.us.epil = add i64 %.023149.us.epil.init, %i.cc
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader, %._crit_edge153.loopexit241.unr-lcssa, %_ZNSt6vectorImSaImEE5clearEv.exit, %.lr.ph152.split.us, %._crit_edge
  %.023.lcssa = phi i64 [ 1, %._crit_edge ], [ %spec.select, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %spec.select.us.peel, %.lr.ph152.split.us ], [ %spec.select.us.1, %._crit_edge153.loopexit241.unr-lcssa ], [ %spec.select.us.epil, %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader ] ; 4 uses
  %.lcssa126 = phi ptr [ %i.au, %._crit_edge ], [ %i.dx, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %i.au, %.lr.ph152.split.us ], [ %i.au, %._crit_edge153.loopexit241.unr-lcssa ], [ %i.au, %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader ]
  %.lcssa122 = phi ptr [ %i.av, %._crit_edge ], [ %i.dr, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %i.av, %.lr.ph152.split.us ], [ %i.av, %._crit_edge153.loopexit241.unr-lcssa ], [ %i.av, %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader ]
  %.lcssa118 = phi i64 [ %i.az, %._crit_edge ], [ %i.eb, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ 2, %.lr.ph152.split.us ], [ %i.az, %._crit_edge153.loopexit241.unr-lcssa ], [ %i.az, %_ZNSt6vectorImSaImEE5clearEv.exit.us.epil.preheader ] ; 3 uses
  %i.cd = icmp ugt i64 %.023.lcssa, %.lcssa118
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge153
  %i.ce = sub nuw i64 %.023.lcssa, %.lcssa118
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ce)
          to label %_ZNSt6vectorIiSaIiEE6resizeEm.exit unwind label %bb.ab

bb.n:                                             ; preds = %._crit_edge153
  %i.cf = icmp ult i64 %.023.lcssa, %.lcssa118
  br i1 %i.cf, label %bb.o, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.o:                                             ; preds = %bb.n
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.lcssa122, i64 %.023.lcssa ; 2 uses
  %.not.i.i41 = icmp eq ptr %.lcssa126, %i.cg
  br i1 %.not.i.i41, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.o
  store ptr %i.cg, ptr %i.h, align 8, !tbaa !15
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

.lr.ph152.split:                                  ; preds = %.lr.ph152, %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.ch = phi ptr [ %i.dr, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ %i.av, %.lr.ph152 ] ; 2 uses
  %.0150 = phi i64 [ %i.dw, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ 1, %.lr.ph152 ] ; 4 uses
  %.023149 = phi i64 [ %spec.select, %_ZNSt6vectorImSaImEE5clearEv.exit ], [ 1, %.lr.ph152 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.0150
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !11 ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.023149
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !11
  %i.cl = load i8, ptr %i.y, align 8, !tbaa !213, !range !214, !noundef !215
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.p, label %_ZNSt6vectorImSaImEE5clearEv.exit

bb.p:                                             ; preds = %.lr.ph152.split
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.084.1, i64 %.0150
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !11 ; 2 uses
  %.not32 = icmp eq i32 %i.cj, %i.co
  br i1 %.not32, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cp = sub nsw i32 0, %i.co
  invoke void @_ZN7CaDiCaL8Internal24calculate_minimize_chainEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(5704) %0, i32 noundef %i.cp, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !219 ; 2 uses
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !219 ; 2 uses
  %.not104144 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not104144, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %.lr.ph147.preheader

.lr.ph147.preheader:                              ; preds = %bb.r
  %.pre = load ptr, ptr %i.be, align 8, !tbaa !220
  %.pre176 = load ptr, ptr %i.bf, align 8, !tbaa !221
  br label %.lr.ph147

._crit_edge148:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %.pre177 = load ptr, ptr %i.bb, align 8, !tbaa !222 ; 2 uses
  %.pre178 = load ptr, ptr %i.bc, align 8, !tbaa !220
  %i.cs = icmp eq ptr %.pre178, %.pre177
  br i1 %i.cs, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge148
  store ptr %.pre177, ptr %i.bc, align 8, !tbaa !220
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

bb.s:                                             ; preds = %bb.q
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.lr.ph147:                                        ; preds = %.lr.ph147.preheader, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.cu = phi ptr [ %i.do, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre176, %.lr.ph147.preheader ] ; 3 uses
  %i.cv = phi ptr [ %i.dp, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %.pre, %.lr.ph147.preheader ] ; 3 uses
  %.sroa.077.0145 = phi ptr [ %i.dq, %_ZNSt6vectorImSaImEE9push_backERKm.exit ], [ %i.cq, %.lr.ph147.preheader ] ; 2 uses
  %i.cw = load i64, ptr %.sroa.077.0145, align 8, !tbaa !223 ; 2 uses
  %.not.i44 = icmp eq ptr %i.cv, %i.cu
  br i1 %.not.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph147
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !223
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  store ptr %i.cx, ptr %i.be, align 8, !tbaa !220
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.u:                                             ; preds = %.lr.ph147
  %i.cy = load ptr, ptr %i.bd, align 8, !tbaa !222 ; 4 uses
  %i.cz = ptrtoint ptr %i.cu to i64
  %i.da = ptrtoint ptr %i.cy to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 5 uses
  %i.dc = icmp eq i64 %i.db, 9223372036854775800
  br i1 %i.dc, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #13
          to label %.noexc48 unwind label %.loopexit.split-lp106

.noexc48:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dd = ashr exact i64 %i.db, 3                 ; 3 uses
  %.sroa.speculated.i.i.i45 = call i64 @llvm.umax.i64(i64 %i.dd, i64 1)
  %i.de = add nsw i64 %.sroa.speculated.i.i.i45, %i.dd ; 2 uses
  %i.df = icmp ult i64 %i.de, %i.dd
  %i.dg = call i64 @llvm.umin.i64(i64 %i.de, i64 1152921504606846975)
  %i.dh = select i1 %i.df, i64 1152921504606846975, i64 %i.dg ; 3 uses
  %.not.i.i.i46 = icmp ne i64 %i.dh, 0
  call void @llvm.assume(i1 %.not.i.i.i46)
  %i.di = shl nuw nsw i64 %i.dh, 3
  %i.dj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.di) #14
          to label %.noexc49 unwind label %.loopexit105 ; 4 uses

.noexc49:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 %i.db ; 2 uses
  store i64 %i.cw, ptr %i.dk, align 8, !tbaa !223
  %i.dl = icmp sgt i64 %i.db, 0
  br i1 %i.dl, label %bb.w, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %.noexc49
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr align 8 %i.cy, i64 %i.db, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %.noexc49
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  %.not.i17.i.i47 = icmp eq ptr %i.cy, null
  br i1 %.not.i17.i.i47, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.dj, ptr %i.bd, align 8, !tbaa !222
  store ptr %i.dm, ptr %i.be, align 8, !tbaa !220
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.dh ; 2 uses
  store ptr %i.dn, ptr %i.bf, align 8, !tbaa !221
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.t
  %i.do = phi ptr [ %i.dn, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.cu, %bb.t ]
  %i.dp = phi ptr [ %i.dm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.cx, %bb.t ]
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.077.0145, i64 8 ; 2 uses
  %.not104 = icmp eq ptr %i.dq, %i.cr
  br i1 %.not104, label %._crit_edge148, label %.lr.ph147

.loopexit105:                                     ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit107 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp106:                            ; preds = %bb.v
  %lpad.loopexit.split-lp108 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %bb.r, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i, %._crit_edge148, %bb.p, %.lr.ph152.split
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !18  ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %.0150
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11
  %i.du = icmp ne i32 %i.dt, %i.x
  %i.dv = zext i1 %i.du to i64
  %spec.select = add i64 %.023149, %i.dv          ; 2 uses
  %i.dw = add nuw i64 %.0150, 1                   ; 2 uses
  %i.dx = load ptr, ptr %i.h, align 8, !tbaa !15  ; 2 uses
  %i.dy = ptrtoint ptr %i.dx to i64
  %i.dz = ptrtoint ptr %i.dr to i64
  %i.ea = sub i64 %i.dy, %i.dz
  %i.eb = ashr exact i64 %i.ea, 2                 ; 2 uses
  %i.ec = icmp ult i64 %i.dw, %i.eb
  br i1 %i.ec, label %.lr.ph152.split, label %._crit_edge153, !llvm.loop !224

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.o, %bb.n, %bb.m
  %i.ed = load i32, ptr %i.a, align 4, !tbaa !11
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 5160 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_T2_:bb.a
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !11
  %i.ak = icmp slt i64 %spec.select, %i.b
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !254

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.al = and i64 %2, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.an = add nsw i64 %2, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = shl nsw i64 %.0.lcssa, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !11
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.at, ptr %i.au, align 4, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ar, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.av = icmp sgt i64 %.1, %1
  br i1 %i.av, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19 ; 2 uses
  %i.ay = tail call noundef i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.019.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0920.i, %bb.g ] ; 3 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !11 ; 2 uses
  %i.be = tail call noundef i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !22
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !28
  %i.bm = sext i32 %i.bl to i64
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 32
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !28
  %i.bs = sext i32 %i.br to i64
  %i.bt = or i64 %i.bq, %i.bs
  %i.bu = icmp ugt i64 %i.bn, %i.bt
  br i1 %i.bu, label %bb.g, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i
  store i32 %i.bd, ptr %i.bv, align 4, !tbaa !11
  %i.bw = icmp sgt i64 %.0920.i, %1
  br i1 %i.bw, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !255

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL19shrink_trail_largerEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.019.i, %bb.f ], [ %.0920.i, %bb.g ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.bx, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 4, !tbaa !11
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !11
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !15
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #14 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store i32 0, ptr %i.y, align 4, !tbaa !11
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !11
  br label %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36: ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !18
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !17
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit36, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 int", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!5, !5, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!14 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !10, i64 0}
!15 = !{!16, !9, i64 8}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!17 = !{!16, !9, i64 16}
!18 = !{!16, !9, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN7CaDiCaL3VarE", !10, i64 0}
!22 = !{!23, !5, i64 0}
!23 = !{!"_ZTSN7CaDiCaL3VarE", !5, i64 0, !5, i64 4, !24, i64 8}
!24 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !10, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !10, i64 0}
!28 = !{!23, !5, i64 4}
!29 = !{!30, !5, i64 12}
!30 = !{!"_ZTSN7CaDiCaL5LevelE", !5, i64 0, !5, i64 4, !31, i64 8}
!31 = !{!"_ZTSN7CaDiCaL5LevelUt_E", !5, i64 0, !5, i64 4}
!32 = !{!30, !5, i64 8}
!33 = !{!34, !9, i64 0}
!34 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !9, i64 0}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEplEl: argument 0"}
!37 = distinct !{!37, !"_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEplEl"}
!38 = distinct !{!38, !39, !40, !41}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = distinct !{!42, !39, !41, !40}
!43 = distinct !{!43, !39}
!44 = !{!23, !24, i64 8}
!45 = !{!46, !24, i64 976}
!46 = !{!"_ZTSN7CaDiCaL8InternalE", !5, i64 0, !47, i64 4, !47, i64 5, !47, i64 6, !47, i64 7, !47, i64 8, !47, i64 9, !47, i64 10, !47, i64 11, !47, i64 12, !47, i64 13, !47, i64 14, !47, i64 15, !47, i64 16, !47, i64 17, !47, i64 18, !6, i64 19, !48, i64 24, !49, i64 72, !5, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !47, i64 120, !50, i64 128, !50, i64 152, !50, i64 176, !50, i64 200, !50, i64 224, !50, i64 248, !55, i64 272, !61, i64 296, !47, i64 320, !47, i64 321, !5, i64 324, !66, i64 328, !71, i64 472, !67, i64 480, !72, i64 504, !76, i64 528, !72, i64 552, !79, i64 576, !80, i64 600, !85, i64 624, !86, i64 632, !89, i64 688, !94, i64 712, !76, i64 736, !97, i64 760, !100, i64 784, !100, i64 808, !104, i64 832, !76, i64 856, !100, i64 880, !109, i64 904, !114, i64 928, !24, i64 952, !24, i64 960, !24, i64 968, !24, i64 976, !24, i64 984, !47, i64 992, !47, i64 993, !47, i64 994, !5, i64 996, !49, i64 1000, !24, i64 1008, !49, i64 1016, !49, i64 1024, !49, i64 1032, !49, i64 1040, !49, i64 1048, !49, i64 1056, !76, i64 1064, !76, i64 1088, !76, i64 1112, !76, i64 1136, !47, i64 1160, !47, i64 1161, !76, i64 1168, !76, i64 1192, !76, i64 1216, !76, i64 1240, !76, i64 1264, !76, i64 1288, !76, i64 1312, !119, i64 1336, !49, i64 2152, !76, i64 2160, !120, i64 2184, !55, i64 2208, !123, i64 2232, !128, i64 2800, !130, i64 2968, !137, i64 3056, !138, i64 3104, !139, i64 3112, !140, i64 3120, !145, i64 3144, !150, i64 3168, !155, i64 3192, !156, i64 3904, !173, i64 5552, !175, i64 5608, !176, i64 5632, !88, i64 5664, !178, i64 5672, !47, i64 5680, !179, i64 5688, !180, i64 5696}
!47 = !{!"bool", !6, i64 0}
!48 = !{!"_ZTSN7CaDiCaL9ReluctantE", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !47, i64 40, !47, i64 41}
!49 = !{!"long", !6, i64 0}
!50 = !{!"_ZTSSt6vectorImSaImEE", !51, i64 0}
!51 = !{!"_ZTSSt12_Vector_baseImSaImEE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !53, i64 0}
!53 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!54 = !{!"p1 long", !10, i64 0}
!55 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !56, i64 0}
!56 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !58, i64 0}
!58 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !60, i64 0}
!60 = !{!"any p2 pointer", !10, i64 0}
!61 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !62, i64 0}
!62 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !63, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !64, i64 0}
!64 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!65 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !10, i64 0}
!66 = !{!"_ZTSN7CaDiCaL6PhasesE", !67, i64 0, !67, i64 24, !67, i64 48, !67, i64 72, !67, i64 96, !67, i64 120}
!67 = !{!"_ZTSSt6vectorIaSaIaEE", !68, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !69, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !70, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!71 = !{!"p1 omnipotent char", !10, i64 0}
!72 = !{!"_ZTSSt6vectorIjSaIjEE", !73, i64 0}
!73 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !74, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !75, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!76 = !{!"_ZTSSt6vectorIiSaIiEE", !77, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !78, i64 0}
!78 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!79 = !{!"_ZTSN7CaDiCaL5QueueE", !5, i64 0, !5, i64 4, !5, i64 8, !49, i64 16}
!80 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !81, i64 0}
!81 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !82, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !83, i64 0}
!83 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!84 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !10, i64 0}
!85 = !{!"double", !6, i64 0}
!86 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !72, i64 0, !72, i64 24, !87, i64 48}
!87 = !{!"_ZTSN7CaDiCaL13score_smallerE", !88, i64 0}
!88 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !10, i64 0}
!89 = !{!"_ZTSSt6vectorIdSaIdEE", !90, i64 0}
!90 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !91, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !92, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !93, i64 0, !93, i64 8, !93, i64 16}
!93 = !{!"p1 double", !10, i64 0}
!94 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !95, i64 0}
!95 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !96, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !20, i64 0}
!97 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !98, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !99, i64 0}
!99 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !13, i64 0}
!100 = !{!"_ZTSSt6vectorIlSaIlEE", !101, i64 0}
!101 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !102, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !103, i64 0}
!103 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !54, i64 0, !54, i64 8, !54, i64 16}
!104 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !105, i64 0}
!105 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !106, i64 0}
!106 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !107, i64 0}
!107 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !108, i64 0, !108, i64 8, !108, i64 16}
!108 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !10, i64 0}
!109 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!113 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !10, i64 0}
!114 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !115, i64 0}
!115 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !116, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!118 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !10, i64 0}
!119 = !{!"_ZTS4Reap", !49, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !6, i64 24}
!120 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !121, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !122, i64 0}
!122 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !26, i64 0}
!123 = !{!"_ZTSN7CaDiCaL8AveragesE", !49, i64 0, !124, i64 8, !124, i64 288}
!124 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !125, i64 0, !127, i64 80, !126, i64 160, !126, i64 200, !126, i64 240}
!125 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !126, i64 0, !126, i64 40}
!126 = !{!"_ZTSN7CaDiCaL3EMAE", !85, i64 0, !85, i64 8, !85, i64 16, !85, i64 24, !85, i64 32}
!127 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !126, i64 0, !126, i64 40}
!128 = !{!"_ZTSN7CaDiCaL5LimitE", !47, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !5, i64 128, !5, i64 132, !6, i64 136, !49, i64 152, !129, i64 160}
!129 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !5, i64 0, !5, i64 4}
!130 = !{!"_ZTSN7CaDiCaL4LastE", !131, i64 0, !131, i64 8, !132, i64 16, !133, i64 40, !134, i64 56, !134, i64 64, !135, i64 72, !136, i64 80}
!131 = !{!"_ZTSN7CaDiCaL4LastUt_E", !49, i64 0}
!132 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !49, i64 0, !49, i64 8, !49, i64 16}
!133 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !49, i64 0, !49, i64 8}
!134 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !49, i64 0}
!135 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !49, i64 0}
!136 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !49, i64 0}
!137 = !{!"_ZTSN7CaDiCaL3IncE", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40}
!138 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !10, i64 0}
!139 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !10, i64 0}
!140 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !141, i64 0}
!141 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !142, i64 0}
!142 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !143, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!144 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !60, i64 0}
!145 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !146, i64 0}
!146 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !147, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !148, i64 0}
!148 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !149, i64 0, !149, i64 8, !149, i64 16}
!149 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !60, i64 0}
!150 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !151, i64 0}
!151 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !152, i64 0}
!152 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !153, i64 0}
!153 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!154 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !60, i64 0}
!155 = !{!"_ZTSN7CaDiCaL7OptionsE", !88, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !5, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !5, i64 320, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !5, i64 392, !5, i64 396, !5, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !5, i64 420, !5, i64 424, !5, i64 428, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 444, !5, i64 448, !5, i64 452, !5, i64 456, !5, i64 460, !5, i64 464, !5, i64 468, !5, i64 472, !5, i64 476, !5, i64 480, !5, i64 484, !5, i64 488, !5, i64 492, !5, i64 496, !5, i64 500, !5, i64 504, !5, i64 508, !5, i64 512, !5, i64 516, !5, i64 520, !5, i64 524, !5, i64 528, !5, i64 532, !5, i64 536, !5, i64 540, !5, i64 544, !5, i64 548, !5, i64 552, !5, i64 556, !5, i64 560, !5, i64 564, !5, i64 568, !5, i64 572, !5, i64 576, !5, i64 580, !5, i64 584, !5, i64 588, !5, i64 592, !5, i64 596, !5, i64 600, !5, i64 604, !5, i64 608, !5, i64 612, !5, i64 616, !5, i64 620, !5, i64 624, !5, i64 628, !5, i64 632, !5, i64 636, !5, i64 640, !5, i64 644, !5, i64 648, !5, i64 652, !5, i64 656, !5, i64 660, !5, i64 664, !5, i64 668, !5, i64 672, !5, i64 676, !5, i64 680, !5, i64 684, !5, i64 688, !5, i64 692, !5, i64 696, !5, i64 700, !5, i64 704, !5, i64 708}
!156 = !{!"_ZTSN7CaDiCaL5StatsE", !88, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !157, i64 32, !158, i64 88, !49, i64 168, !49, i64 176, !49, i64 184, !49, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !159, i64 264, !160, i64 296, !160, i64 320, !161, i64 344, !162, i64 360, !163, i64 392, !166, i64 472, !167, i64 528, !168, i64 560, !49, i64 584, !49, i64 592, !49, i64 600, !49, i64 608, !49, i64 616, !49, i64 624, !49, i64 632, !49, i64 640, !49, i64 648, !49, i64 656, !49, i64 664, !49, i64 672, !49, i64 680, !49, i64 688, !49, i64 696, !49, i64 704, !49, i64 712, !49, i64 720, !49, i64 728, !49, i64 736, !49, i64 744, !49, i64 752, !49, i64 760, !49, i64 768, !49, i64 776, !49, i64 784, !49, i64 792, !49, i64 800, !49, i64 808, !49, i64 816, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !49, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !49, i64 912, !49, i64 920, !49, i64 928, !49, i64 936, !49, i64 944, !49, i64 952, !49, i64 960, !49, i64 968, !49, i64 976, !49, i64 984, !49, i64 992, !49, i64 1000, !49, i64 1008, !49, i64 1016, !49, i64 1024, !49, i64 1032, !49, i64 1040, !49, i64 1048, !49, i64 1056, !49, i64 1064, !49, i64 1072, !49, i64 1080, !49, i64 1088, !49, i64 1096, !49, i64 1104, !49, i64 1112, !49, i64 1120, !49, i64 1128, !49, i64 1136, !49, i64 1144, !49, i64 1152, !49, i64 1160, !49, i64 1168, !49, i64 1176, !49, i64 1184, !49, i64 1192, !49, i64 1200, !49, i64 1208, !49, i64 1216, !49, i64 1224, !169, i64 1232, !49, i64 1248, !49, i64 1256, !49, i64 1264, !49, i64 1272, !170, i64 1280, !49, i64 1304, !49, i64 1312, !49, i64 1320, !49, i64 1328, !49, i64 1336, !49, i64 1344, !49, i64 1352, !49, i64 1360, !49, i64 1368, !49, i64 1376, !49, i64 1384, !49, i64 1392, !49, i64 1400, !49, i64 1408, !49, i64 1416, !49, i64 1424, !49, i64 1432, !49, i64 1440, !49, i64 1448, !49, i64 1456, !49, i64 1464, !49, i64 1472, !49, i64 1480, !49, i64 1488, !49, i64 1496, !49, i64 1504, !49, i64 1512, !49, i64 1520, !49, i64 1528, !49, i64 1536, !171, i64 1544, !171, i64 1576, !172, i64 1608, !49, i64 1624, !49, i64 1632, !49, i64 1640}
!157 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48}
!158 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72}
!159 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!160 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !49, i64 0, !49, i64 8, !49, i64 16}
!161 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !85, i64 0, !85, i64 8}
!162 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!163 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !49, i64 0, !49, i64 8, !164, i64 16, !164, i64 32, !164, i64 48, !165, i64 64}
!164 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !49, i64 0, !49, i64 8}
!165 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !49, i64 0, !49, i64 8}
!166 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48}
!167 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!168 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !49, i64 0, !49, i64 8, !49, i64 16}
!169 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !49, i64 0, !49, i64 8}
!170 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !49, i64 0, !49, i64 8, !49, i64 16}
!171 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!172 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !49, i64 0, !49, i64 8}
!173 = !{!"_ZTSN7CaDiCaL5ArenaE", !88, i64 0, !174, i64 8, !174, i64 32}
!174 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !71, i64 0, !71, i64 8, !71, i64 16}
!175 = !{!"_ZTSN7CaDiCaL6FormatE", !71, i64 0, !49, i64 8, !49, i64 16}
!176 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !177, i64 0, !49, i64 8, !6, i64 16}
!177 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !71, i64 0}
end_hunk_1
