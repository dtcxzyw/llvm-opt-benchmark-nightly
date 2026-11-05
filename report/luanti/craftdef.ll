Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/craftdef?download=true
inline.NumInlined: 3083
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK24CraftDefinitionShapeless5checkERK10CraftInputP8IGameDef:bb.a
_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.sink.split.i.i: ; preds = %.noexc30.i, %bb.ba
  %.sink.i.i = phi ptr [ %i.qj, %.noexc30.i ], [ %i.nf, %bb.ba ]
  store ptr %.sink.i.i, ptr %i.ji, align 8, !tbaa !178
  br label %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i

_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i: ; preds = %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.sink.split.i.i, %.lr.ph18.i.i
  %i.qo = getelementptr inbounds nuw i8, ptr %.sroa.011.016.i.i, i64 2 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.qo, %i.mo
  br i1 %.not.i.i88, label %.loopexit.i.loopexit.i, label %.lr.ph18.i.i

.loopexit.i.loopexit.i:                           ; preds = %_ZNSt5queueItSt5dequeItSaItEEE4pushERKt.exit8.i.i
  %.pre.i89 = load ptr, ptr %i.jk, align 8, !tbaa !392
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.ay, %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i
  %i.qp = phi ptr [ %.pre.i89, %.loopexit.i.loopexit.i ], [ %storemerge.i.i.i.i, %bb.ay ], [ %storemerge.i.i.i.i, %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i ] ; 2 uses
  %i.qq = load ptr, ptr %i.ji, align 8, !tbaa !392
  %i.qr = icmp eq ptr %i.qq, %i.qp
  br i1 %i.qr, label %._crit_edge21.loopexit.i.i, label %.lr.ph20.i.i, !llvm.loop !382

._crit_edge21.loopexit.i.i:                       ; preds = %.loopexit.i.i
  %.pre25.i.i = load ptr, ptr %5, align 8, !tbaa !170
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge21.loopexit.i.i, %._crit_edge.i.i
  %i.qs = phi ptr [ %.pre25.i.i, %._crit_edge21.loopexit.i.i ], [ %i.jq, %._crit_edge.i.i ] ; 2 uses
  %i.qt = load i16, ptr %i.a, align 2, !tbaa !123 ; 2 uses
  %i.qu = zext i16 %i.qt to i64
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.qs, i64 %i.qu
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !123
  %.not.i86 = icmp eq i16 %i.qw, -1
  br i1 %.not.i86, label %bb.by, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bs
  br i1 %.not22.i.i, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre107.i = load ptr, ptr %3, align 8, !tbaa !170
  br label %.lr.ph.i87

bb.bt:                                            ; preds = %.noexc91
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i

bb.bu:                                            ; preds = %bb.ao
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i

bb.bv:                                            ; preds = %bb.ap
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.lr.ph.i87:                                       ; preds = %bb.bx, %.lr.ph.preheader.i
  %i.ra = phi i16 [ %i.qt, %.lr.ph.preheader.i ], [ %i.ri, %bb.bx ] ; 2 uses
  %i.rb = phi ptr [ %.pre107.i, %.lr.ph.preheader.i ], [ %i.rj, %bb.bx ] ; 2 uses
  %indvars.iv101.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next102.i, %bb.bx ] ; 3 uses
  %.189.i = phi i16 [ %.010.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.bx ] ; 2 uses
  %i.rc = getelementptr inbounds nuw [2 x i8], ptr %i.rb, i64 %indvars.iv101.i
  %i.rd = load i16, ptr %i.rc, align 2, !tbaa !123
  %i.re = icmp eq i16 %i.rd, %i.ra
  br i1 %i.re, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %.lr.ph.i87
  %i.rf = trunc nuw i64 %indvars.iv101.i to i16
  %i.rg = call fastcc noundef zeroext i1 @"_ZZL27hopcroft_karp_can_match_allRKSt6vectorIS_ItSaItEESaIS1_EEENK3$_0clIRS6_EEbtOT_"(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, i16 noundef zeroext %i.rf, ptr noundef nonnull readonly align 8 dereferenceable(40) %7)
  %i.rh = zext i1 %i.rg to i16
  %spec.select.i = add i16 %.189.i, %i.rh
  %.pre106.i = load ptr, ptr %3, align 8, !tbaa !170
  %.pre108.i = load i16, ptr %i.a, align 2, !tbaa !123
  br label %bb.bx

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt11_Deque_baseItSaItEE15_M_allocate_mapEm.exit.i.i, %_ZNSt5dequeItSaItEE16_M_push_back_auxIJRKtEEEvDpOT_.exit.i.i, %_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i, %bb.au, %.noexc3.i.i.i, %.noexc.i.i.i, %.invoke.i
  %lpad.loopexit.split-lp436 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt5queueItSt5dequeItSaItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #24
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bw, %.lr.ph.i87
  %i.ri = phi i16 [ %i.ra, %.lr.ph.i87 ], [ %.pre108.i, %bb.bw ]
  %i.rj = phi ptr [ %i.rb, %.lr.ph.i87 ], [ %.pre106.i, %bb.bw ]
  %.2.i = phi i16 [ %.189.i, %.lr.ph.i87 ], [ %spec.select.i, %bb.bw ] ; 2 uses
  %indvars.iv.next102.i = add nuw nsw i64 %indvars.iv101.i, 1 ; 2 uses
  %exitcond105.not.i = icmp eq i64 %indvars.iv.next102.i, %wide.trip.count.i
  br i1 %exitcond105.not.i, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i, label %.lr.ph.i87, !llvm.loop !383

bb.by:                                            ; preds = %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.rk = load ptr, ptr %6, align 8, !tbaa !183   ; 2 uses
  %.not.i.i.i31.i = icmp eq ptr %i.rk, null
  br i1 %.not.i.i.i31.i, label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i, label %bb.bz

_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i: ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

bb.bz:                                            ; preds = %bb.by
  %i.rl = load ptr, ptr %.sroa.gep73.i, align 8, !tbaa !185 ; 2 uses
  %i.rm = load ptr, ptr %i.jl, align 8, !tbaa !184 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.ro = icmp ult ptr %i.rl, %i.rn
  br i1 %i.ro, label %.lr.ph.i.i.i.i32.i, label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i

.lr.ph.i.i.i.i32.i:                               ; preds = %bb.bz, %.lr.ph.i.i.i.i32.i
  %.06.i.i.i.i33.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i32.i ], [ %i.rl, %bb.bz ] ; 3 uses
  %i.rp = load ptr, ptr %.06.i.i.i.i33.i, align 8, !tbaa !170
  call void @_ZdlPvm(ptr noundef %i.rp, i64 noundef 512) #25
  %i.rq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i33.i, i64 8
  %i.rr = icmp ult ptr %.06.i.i.i.i33.i, %i.rm
  br i1 %i.rr, label %.lr.ph.i.i.i.i32.i, label %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i, !llvm.loop !6

_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i32.i
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !183
  br label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i

_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i:        ; preds = %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i, %bb.bz
  %i.rs = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i ], [ %i.rk, %bb.bz ]
  %i.rt = load i64, ptr %i.jn, align 8, !tbaa !182
  %i.ru = shl i64 %i.rt, 3
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.ru) #25
  %.pre110.i = load ptr, ptr %5, align 8, !tbaa !170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i34.i = icmp eq ptr %.pre110.i, null
  br i1 %.not.i34.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i
  %i.rv = phi ptr [ %i.qs, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i ], [ %.pre110.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.rv) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.rw = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %.not.i35.i = icmp eq ptr %i.rw, null
  br i1 %.not.i35.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.rw) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.rx = load ptr, ptr %3, align 8, !tbaa !170   ; 2 uses
  %.not.i38.i = icmp eq ptr %i.rx, null
  br i1 %.not.i38.i, label %bb.ck, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #25
  br label %bb.ck

bb.ca:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bv
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp436, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.qz, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.ry = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %.not.i41.i = icmp eq ptr %i.ry, null
  br i1 %.not.i41.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i: ; preds = %bb.ca
  call void @_ZdaPv(ptr noundef nonnull %i.ry) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i, %bb.ca, %bb.bu
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.qy, %bb.bu ], [ %.pn.pn.i, %bb.ca ], [ %.pn.pn.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.rz = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %.not.i44.i = icmp eq ptr %i.rz, null
  br i1 %.not.i44.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i
  call void @_ZdaPv(ptr noundef nonnull %i.rz) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i, %bb.bt
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.qx, %bb.bt ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i ], [ %.pn.pn.pn.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.sa = load ptr, ptr %3, align 8, !tbaa !170   ; 2 uses
  %.not.i47.i = icmp eq ptr %i.sa, null
  br i1 %.not.i47.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i
  call void @_ZdaPv(ptr noundef nonnull %i.sa) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.body

.lr.ph214:                                        ; preds = %.lr.ph214.preheader, %bb.cb
  %indvars.iv240 = phi i64 [ 0, %.lr.ph214.preheader ], [ %indvars.iv.next241, %bb.cb ] ; 3 uses
  %i.sb = load ptr, ptr %14, align 8, !tbaa !167
  %i.sc = getelementptr inbounds nuw [24 x i8], ptr %i.sb, i64 %indvars.iv240 ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 16 ; 3 uses
  br label %bb.cc

bb.cb:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %indvars.iv.next241 = add nuw nsw i64 %indvars.iv240, 1 ; 2 uses
  %i.sf = icmp ugt i64 %i.gd, %indvars.iv.next241
  br i1 %i.sf, label %.lr.ph214, label %._crit_edge215.loopexit, !llvm.loop !384

bb.cc:                                            ; preds = %.lr.ph214, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 4 uses
  %i.sg = load ptr, ptr %13, align 8, !tbaa !112
  %i.sh = load ptr, ptr %12, align 8, !tbaa !112
  %i.si = load ptr, ptr %2, align 8, !tbaa !36
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = invoke noundef ptr %i.sj(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN8IGameDef4idefEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZN8IGameDef4idefEv.exit:                         ; preds = %bb.cc
  %i.sl = getelementptr inbounds nuw [32 x i8], ptr %i.sh, i64 %indvars.iv
  %i.sm = getelementptr inbounds nuw [32 x i8], ptr %i.sg, i64 %indvars.iv240
  %i.sn = invoke fastcc noundef zeroext i1 @_ZL22inputItemMatchesRecipeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_P15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(32) %i.sm, ptr noundef nonnull align 8 dereferenceable(32) %i.sl, ptr noundef %i.sk)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cd:                                            ; preds = %_ZN8IGameDef4idefEv.exit
  br i1 %i.sn, label %bb.ce, label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.ce:                                            ; preds = %bb.cd
  %i.so = load ptr, ptr %i.sd, align 8, !tbaa !396 ; 4 uses
  %i.sp = load ptr, ptr %i.se, align 8, !tbaa !189
  %.not.i93 = icmp eq ptr %i.so, %i.sp
  br i1 %.not.i93, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sq = trunc nuw i64 %indvars.iv to i16
  store i16 %i.sq, ptr %i.so, align 2, !tbaa !123
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  store ptr %i.sr, ptr %i.sd, align 8, !tbaa !396
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.cg:                                            ; preds = %bb.ce
  %i.ss = load ptr, ptr %i.sc, align 8, !tbaa !190 ; 4 uses
  %i.st = ptrtoint ptr %i.so to i64
  %i.su = ptrtoint ptr %i.ss to i64               ; 2 uses
  %i.sv = sub i64 %i.st, %i.su                    ; 5 uses
  %i.sw = icmp eq i64 %i.sv, 9223372036854775806
  br i1 %i.sw, label %bb.ch, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.ch:                                            ; preds = %bb.cg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #26
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc95:                                         ; preds = %bb.ch
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.cg
  %i.sx = ashr exact i64 %i.sv, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.sx, i64 1)
  %i.sy = add i64 %.sroa.speculated.i.i.i, %i.sx  ; 2 uses
  %i.sz = icmp ult i64 %i.sy, %i.sx
  %i.ta = call i64 @llvm.umin.i64(i64 %i.sy, i64 4611686018427387903)
  %i.tb = select i1 %i.sz, i64 4611686018427387903, i64 %i.ta ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.tb, 0
  call void @llvm.assume(i1 %.not.i.i.i94)
  %i.tc = shl nuw nsw i64 %i.tb, 1
  %i.td = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tc) #27
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.te = getelementptr inbounds i8, ptr %i.td, i64 %i.sv ; 2 uses
  %i.tf = trunc nuw i64 %indvars.iv to i16
  store i16 %i.tf, ptr %i.te, align 2, !tbaa !123
  %i.tg = icmp sgt i64 %i.sv, 0
  br i1 %i.tg, label %bb.ci, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.ci:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.td, ptr align 2 %i.ss, i64 %i.sv, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.ci, %.noexc96
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 2
  %.not.i17.i.i = icmp eq ptr %i.ss, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.ti = load ptr, ptr %i.se, align 8, !tbaa !189
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = sub i64 %i.tj, %i.su
  call void @_ZdlPvm(ptr noundef nonnull %i.ss, i64 noundef %i.tk) #25
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.cj, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.td, ptr %i.sc, align 8, !tbaa !190
  store ptr %i.th, ptr %i.sd, align 8, !tbaa !396
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.td, i64 %i.tb
  store ptr %i.tl, ptr %i.se, align 8, !tbaa !189
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i, %bb.cc, %_ZN8IGameDef4idefEv.exit, %._crit_edge215, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.ch
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.cf, %bb.cd
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.tm = icmp ugt i64 %i.gd, %indvars.iv.next
  br i1 %i.tm, label %bb.cc, label %bb.cb, !llvm.loop !385

bb.ck:                                            ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i
  %i.tn = icmp eq i16 %.010.i, %i.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.to = load ptr, ptr %14, align 8, !tbaa !167  ; 3 uses
  %i.tp = load ptr, ptr %i.hj, align 8, !tbaa !168 ; 2 uses
  %.not4.i.i.i97 = icmp eq ptr %i.to, %i.tp
  br i1 %.not4.i.i.i97, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %bb.ck, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i99 = phi ptr [ %i.tw, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %i.to, %bb.ck ] ; 3 uses
  %i.tq = load ptr, ptr %.05.i.i.i99, align 8, !tbaa !190 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.lr.ph.i.i.i98
  %i.tr = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !189
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #25
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.cl, %.lr.ph.i.i.i98
  %i.tw = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 24 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.tw, %i.tp
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i98, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.pr.i101 = load ptr, ptr %14, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.ck
  %i.tx = phi ptr [ %.pr.i101, %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.to, %bb.ck ] ; 3 uses
  %.not.i.i1.i102 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i1.i102, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ty = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !169
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.uc) #25
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.cr

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ag, %.noexc167, %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit, %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit
  %.033 = phi i1 [ %i.tn, %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit ], [ false, %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit ], [ false, %.noexc167 ], [ false, %bb.ag ]
  %i.ud = load ptr, ptr %13, align 8, !tbaa !112  ; 3 uses
  %i.ue = load ptr, ptr %i.fh, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i103 = icmp eq ptr %i.ud, %i.ue
  br i1 %.not4.i.i.i103, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111, label %.lr.ph.i.i.i104

.lr.ph.i.i.i104:                                  ; preds = %_ZN11StreamProxylsEPFRSoS0_E.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107
  %.05.i.i.i105 = phi ptr [ %i.uk, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107 ], [ %i.ud, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 3 uses
  %i.uf = load ptr, ptr %.05.i.i.i105, align 8, !tbaa !50 ; 2 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %.05.i.i.i105, i64 16 ; 2 uses
  %i.uh = icmp eq ptr %i.uf, %i.ug
  br i1 %i.uh, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106: ; preds = %.lr.ph.i.i.i104
  %i.ui = load i64, ptr %i.ug, align 8, !tbaa !34
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.uf, i64 noundef %i.uj) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107: ; preds = %.lr.ph.i.i.i104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i106
  %i.uk = getelementptr inbounds nuw i8, ptr %.05.i.i.i105, i64 32 ; 2 uses
  %.not.i.i.i108 = icmp eq ptr %i.uk, %i.ue
  br i1 %.not.i.i.i108, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i109, label %.lr.ph.i.i.i104, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i109: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i107
  %.pr.i110 = load ptr, ptr %13, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i109, %_ZN11StreamProxylsEPFRSoS0_E.exit
  %i.ul = phi ptr [ %.pr.i110, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i109 ], [ %i.ud, %_ZN11StreamProxylsEPFRSoS0_E.exit ] ; 3 uses
  %.not.i.i1.i112 = icmp eq ptr %i.ul, null
  br i1 %.not.i.i1.i112, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111
  %i.um = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !113
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = ptrtoint ptr %i.ul to i64
  %i.uq = sub i64 %i.uo, %i.up
  call void @_ZdlPvm(ptr noundef nonnull %i.ul, i64 noundef %i.uq) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  %i.ur = load ptr, ptr %12, align 8, !tbaa !112  ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ut = load ptr, ptr %i.us, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i115 = icmp eq ptr %i.ur, %i.ut
  br i1 %.not4.i.i.i115, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123, label %.lr.ph.i.i.i116

.lr.ph.i.i.i116:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119
  %.05.i.i.i117 = phi ptr [ %i.uz, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119 ], [ %i.ur, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114 ] ; 3 uses
  %i.uu = load ptr, ptr %.05.i.i.i117, align 8, !tbaa !50 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %.05.i.i.i117, i64 16 ; 2 uses
  %i.uw = icmp eq ptr %i.uu, %i.uv
  br i1 %i.uw, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i118: ; preds = %.lr.ph.i.i.i116
  %i.ux = load i64, ptr %i.uv, align 8, !tbaa !34
  %i.uy = add i64 %i.ux, 1
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.uy) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119: ; preds = %.lr.ph.i.i.i116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i118
  %i.uz = getelementptr inbounds nuw i8, ptr %.05.i.i.i117, i64 32 ; 2 uses
  %.not.i.i.i120 = icmp eq ptr %i.uz, %i.ut
  br i1 %.not.i.i.i120, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i121, label %.lr.ph.i.i.i116, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i121: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i119
  %.pr.i122 = load ptr, ptr %12, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i121, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114
  %i.va = phi ptr [ %.pr.i122, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i121 ], [ %i.ur, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114 ] ; 3 uses
  %.not.i.i1.i124 = icmp eq ptr %i.va, null
  br i1 %.not.i.i1.i124, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123
  %i.vb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !113
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.vg = load ptr, ptr %11, align 8, !tbaa !112  ; 3 uses
  %i.vh = load ptr, ptr %i.ez, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i127 = icmp eq ptr %i.vg, %i.vh
  br i1 %.not4.i.i.i127, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135, label %.lr.ph.i.i.i128

.lr.ph.i.i.i128:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131
  %.05.i.i.i129 = phi ptr [ %i.vn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131 ], [ %i.vg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126 ] ; 3 uses
  %i.vi = load ptr, ptr %.05.i.i.i129, align 8, !tbaa !50 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %.05.i.i.i129, i64 16 ; 2 uses
  %i.vk = icmp eq ptr %i.vi, %i.vj
  br i1 %i.vk, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i130: ; preds = %.lr.ph.i.i.i128
  %i.vl = load i64, ptr %i.vj, align 8, !tbaa !34
  %i.vm = add i64 %i.vl, 1
  call void @_ZdlPvm(ptr noundef %i.vi, i64 noundef %i.vm) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131: ; preds = %.lr.ph.i.i.i128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i130
  %i.vn = getelementptr inbounds nuw i8, ptr %.05.i.i.i129, i64 32 ; 2 uses
  %.not.i.i.i132 = icmp eq ptr %i.vn, %i.vh
  br i1 %.not.i.i.i132, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i133, label %.lr.ph.i.i.i128, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i133: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i131
  %.pr.i134 = load ptr, ptr %11, align 8, !tbaa !112
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i133, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126
  %i.vo = phi ptr [ %.pr.i134, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i133 ], [ %i.vg, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126 ] ; 3 uses
  %.not.i.i1.i136 = icmp eq ptr %i.vo, null
  br i1 %.not.i.i1.i136, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135
  %i.vp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !113
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vo to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vt) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.vu = load ptr, ptr %9, align 16, !tbaa !112  ; 3 uses
  %i.vv = load ptr, ptr %i.cx, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i139 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not4.i.i.i139, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143
  %.05.i.i.i141 = phi ptr [ %i.wb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143 ], [ %i.vu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138 ] ; 3 uses
  %i.vw = load ptr, ptr %.05.i.i.i141, align 8, !tbaa !50 ; 2 uses
end_hunk_0
