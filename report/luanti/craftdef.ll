Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/craftdef?download=true
inline.NumInlined: 3083
inline.NumDeleted: 1277
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK24CraftDefinitionShapeless5checkERK10CraftInputP8IGameDef:bb.a
  %.pre.i89 = load ptr, ptr %i.jl, align 8, !tbaa !393
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.loopexit.i.loopexit.i, %bb.az, %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i
  %i.qq = phi ptr [ %.pre.i89, %.loopexit.i.loopexit.i ], [ %storemerge.i.i.i.i, %bb.az ], [ %storemerge.i.i.i.i, %_ZNSt5queueItSt5dequeItSaItEEE3popEv.exit.i.i ] ; 2 uses
  %i.qr = load ptr, ptr %i.jj, align 8, !tbaa !393
  %i.qs = icmp eq ptr %i.qr, %i.qq
  br i1 %i.qs, label %._crit_edge21.loopexit.i.i, label %.lr.ph20.i.i, !llvm.loop !382

._crit_edge21.loopexit.i.i:                       ; preds = %.loopexit.i.i
  %.pre25.i.i = load ptr, ptr %5, align 8, !tbaa !170
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge21.loopexit.i.i, %._crit_edge.i.i
  %i.qt = phi ptr [ %.pre25.i.i, %._crit_edge21.loopexit.i.i ], [ %i.jr, %._crit_edge.i.i ] ; 2 uses
  %i.qu = load i16, ptr %i.a, align 2, !tbaa !123 ; 2 uses
  %i.qv = zext i16 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.qt, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !123
  %.not.i86 = icmp eq i16 %i.qx, -1
  br i1 %.not.i86, label %bb.bz, label %.preheader.i

.preheader.i:                                     ; preds = %bb.bt
  br i1 %.not22.i.i, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %.pre104.i = load ptr, ptr %3, align 8, !tbaa !170
  br label %.lr.ph.i87

bb.bu:                                            ; preds = %.noexc91
  %i.qy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i

bb.bv:                                            ; preds = %bb.ap
  %i.qz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i

bb.bw:                                            ; preds = %bb.aq
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.i:                                      ; preds = %_ZNSt5dequeItSaItEE16_M_push_back_auxIJRKtEEEvDpOT_.exit.i.i, %_ZNSt11_Deque_baseItSaItEE15_M_allocate_mapEm.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZNSt5dequeItSaItEE22_M_reserve_map_at_backEm.exit.i.i, %bb.av
  %lpad.loopexit81.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.noexc3.i.i.i, %.noexc.i.i.i, %.invoke.i
  %lpad.loopexit.split-lp82.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit81.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp82.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZNSt5queueItSt5dequeItSaItEEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %6) #24
  br label %bb.cb

.lr.ph.i87:                                       ; preds = %bb.by, %.lr.ph.preheader.i
  %i.rb = phi i16 [ %i.qu, %.lr.ph.preheader.i ], [ %i.rj, %bb.by ] ; 2 uses
  %i.rc = phi ptr [ %.pre104.i, %.lr.ph.preheader.i ], [ %i.rk, %bb.by ] ; 2 uses
  %indvars.iv98.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next99.i, %bb.by ] ; 3 uses
  %.189.i = phi i16 [ %.010.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.by ] ; 2 uses
  %i.rd = getelementptr inbounds nuw [2 x i8], ptr %i.rc, i64 %indvars.iv98.i
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !123
  %i.rf = icmp eq i16 %i.re, %i.rb
  br i1 %i.rf, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.lr.ph.i87
  %i.rg = trunc nuw i64 %indvars.iv98.i to i16
  %i.rh = call fastcc noundef zeroext i1 @"_ZZL27hopcroft_karp_can_match_allRKSt6vectorIS_ItSaItEESaIS1_EEENK3$_0clIRS6_EEbtOT_"(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, i16 noundef zeroext %i.rg, ptr noundef nonnull readonly align 8 dereferenceable(40) %7)
  %i.ri = zext i1 %i.rh to i16
  %spec.select.i = add i16 %.189.i, %i.ri
  %.pre103.i = load ptr, ptr %3, align 8, !tbaa !170
  %.pre105.i = load i16, ptr %i.a, align 2, !tbaa !123
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %.lr.ph.i87
  %i.rj = phi i16 [ %i.rb, %.lr.ph.i87 ], [ %.pre105.i, %bb.bx ]
  %i.rk = phi ptr [ %i.rc, %.lr.ph.i87 ], [ %.pre103.i, %bb.bx ]
  %.2.i = phi i16 [ %.189.i, %.lr.ph.i87 ], [ %spec.select.i, %bb.bx ] ; 2 uses
  %indvars.iv.next99.i = add nuw nsw i64 %indvars.iv98.i, 1 ; 2 uses
  %exitcond102.not.i = icmp eq i64 %indvars.iv.next99.i, %wide.trip.count.i
  br i1 %exitcond102.not.i, label %_ZSt6fill_nIPtitET_S1_T0_RKT1_.exit27.loopexit.i, label %.lr.ph.i87, !llvm.loop !383

bb.bz:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.rl = load ptr, ptr %6, align 8, !tbaa !182   ; 2 uses
  %.not.i.i.i31.i = icmp eq ptr %i.rl, null
  br i1 %.not.i.i.i31.i, label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i, label %bb.ca

_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.rm = load ptr, ptr %.sroa.gep73.i, align 8, !tbaa !184 ; 2 uses
  %i.rn = load ptr, ptr %i.jm, align 8, !tbaa !183 ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = icmp ult ptr %i.rm, %i.ro
  br i1 %i.rp, label %.lr.ph.i.i.i.i32.i, label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i

.lr.ph.i.i.i.i32.i:                               ; preds = %bb.ca, %.lr.ph.i.i.i.i32.i
  %.06.i.i.i.i33.i = phi ptr [ %i.rr, %.lr.ph.i.i.i.i32.i ], [ %i.rm, %bb.ca ] ; 3 uses
  %i.rq = load ptr, ptr %.06.i.i.i.i33.i, align 8, !tbaa !170
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef 512) #25
  %i.rr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i33.i, i64 8
  %i.rs = icmp ult ptr %.06.i.i.i.i33.i, %i.rn
  br i1 %i.rs, label %.lr.ph.i.i.i.i32.i, label %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i, !llvm.loop !6

_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i32.i
  %.pre.i.i.i.i = load ptr, ptr %6, align 8, !tbaa !182
  br label %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i

_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i:        ; preds = %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i, %bb.ca
  %i.rt = phi ptr [ %.pre.i.i.i.i, %_ZNSt11_Deque_baseItSaItEE16_M_destroy_nodesEPPtS3_.exit.loopexit.i.i.i.i ], [ %i.rl, %bb.ca ]
  %i.ru = load i64, ptr %i.jo, align 8, !tbaa !181
  %i.rv = shl i64 %i.ru, 3
  call void @_ZdlPvm(ptr noundef %i.rt, i64 noundef %i.rv) #25
  %.pre107.i = load ptr, ptr %5, align 8, !tbaa !170 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.not.i34.i = icmp eq ptr %.pre107.i, null
  br i1 %.not.i34.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i
  %i.rw = phi ptr [ %i.qt, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.thread.i ], [ %.pre107.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.rw) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZNSt5queueItSt5dequeItSaItEEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.rx = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %.not.i35.i = icmp eq ptr %i.rx, null
  br i1 %.not.i35.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i36.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ry = load ptr, ptr %3, align 8, !tbaa !170   ; 2 uses
  %.not.i38.i = icmp eq ptr %i.ry, null
  br i1 %.not.i38.i, label %bb.cm, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i
  call void @_ZdaPv(ptr noundef nonnull %i.ry) #25
  br label %bb.cm

bb.cb:                                            ; preds = %.loopexit.split-lp.i, %bb.bw
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ra, %bb.bw ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.rz = load ptr, ptr %5, align 8, !tbaa !170   ; 2 uses
  %.not.i41.i = icmp eq ptr %i.rz, null
  br i1 %.not.i41.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i: ; preds = %bb.cb
  call void @_ZdaPv(ptr noundef nonnull %i.rz) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i, %bb.cb, %bb.bv
  %.pn.pn.pn.i = phi { ptr, i32 } [ %i.qz, %bb.bv ], [ %.pn.pn.i, %bb.cb ], [ %.pn.pn.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i42.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.sa = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %.not.i44.i = icmp eq ptr %i.sa, null
  br i1 %.not.i44.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i
  call void @_ZdaPv(ptr noundef nonnull %i.sa) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i, %bb.bu
  %.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.qy, %bb.bu ], [ %.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit43.i ], [ %.pn.pn.pn.i, %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i45.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.sb = load ptr, ptr %3, align 8, !tbaa !170   ; 2 uses
  %.not.i47.i = icmp eq ptr %i.sb, null
  br i1 %.not.i47.i, label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i, label %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i

_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i: ; preds = %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i
  call void @_ZdaPv(ptr noundef nonnull %i.sb) #25
  br label %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i

_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i: ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i48.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.body

bb.cc:                                            ; preds = %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit.i, %._crit_edge207
  %i.sc = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph206:                                        ; preds = %.lr.ph206.preheader, %bb.cd
  %.0205 = phi i16 [ %16, %bb.cd ], [ 0, %.lr.ph206.preheader ] ; 2 uses
  %15 = zext i16 %.0205 to i64                    ; 2 uses
  %i.sd = load ptr, ptr %14, align 8, !tbaa !167
  %i.se = getelementptr inbounds nuw [24 x i8], ptr %i.sd, i64 %15 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 3 uses
  br label %bb.ce

bb.cd:                                            ; preds = %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %16 = add i16 %.0205, 1                         ; 2 uses
  %17 = zext i16 %16 to i64
  %i.sh = icmp samesign ugt i64 %i.ge, %17
  br i1 %i.sh, label %.lr.ph206, label %._crit_edge207.loopexit, !llvm.loop !384

bb.ce:                                            ; preds = %.lr.ph206, %_ZNSt6vectorItSaItEE9push_backERKt.exit
  %storemerge204 = phi i16 [ 0, %.lr.ph206 ], [ %19, %_ZNSt6vectorItSaItEE9push_backERKt.exit ] ; 4 uses
  %i.si = load ptr, ptr %13, align 8, !tbaa !112
  %i.sj = load ptr, ptr %12, align 8, !tbaa !112
  %i.sk = load ptr, ptr %2, align 8, !tbaa !36
  %i.sl = load ptr, ptr %i.sk, align 8
  %i.sm = invoke noundef ptr %i.sl(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %_ZN8IGameDef4idefEv.exit unwind label %.loopexit, !inline_history !1

_ZN8IGameDef4idefEv.exit:                         ; preds = %bb.ce
  %18 = zext i16 %storemerge204 to i64
  %i.sn = getelementptr inbounds nuw [32 x i8], ptr %i.sj, i64 %18
  %i.so = getelementptr inbounds nuw [32 x i8], ptr %i.si, i64 %15
  %i.sp = invoke fastcc noundef zeroext i1 @_ZL22inputItemMatchesRecipeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_P15IItemDefManager(ptr noundef nonnull align 8 dereferenceable(32) %i.so, ptr noundef nonnull align 8 dereferenceable(32) %i.sn, ptr noundef %i.sm)
          to label %bb.cf unwind label %.loopexit

bb.cf:                                            ; preds = %_ZN8IGameDef4idefEv.exit
  br i1 %i.sp, label %bb.cg, label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.cg:                                            ; preds = %bb.cf
  %i.sq = load ptr, ptr %i.sf, align 8, !tbaa !397 ; 4 uses
  %i.sr = load ptr, ptr %i.sg, align 8, !tbaa !188
  %.not.i93 = icmp eq ptr %i.sq, %i.sr
  br i1 %.not.i93, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i16 %storemerge204, ptr %i.sq, align 2, !tbaa !123
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sq, i64 2
  store ptr %i.ss, ptr %i.sf, align 8, !tbaa !397
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

bb.ci:                                            ; preds = %bb.cg
  %i.st = load ptr, ptr %i.se, align 8, !tbaa !189 ; 4 uses
  %i.su = ptrtoint ptr %i.sq to i64
  %i.sv = ptrtoint ptr %i.st to i64               ; 2 uses
  %i.sw = sub i64 %i.su, %i.sv                    ; 5 uses
  %i.sx = icmp eq i64 %i.sw, 9223372036854775806
  br i1 %i.sx, label %bb.cj, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #26
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.cj
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ci
  %i.sy = ashr exact i64 %i.sw, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.sy, i64 1)
  %i.sz = add i64 %.sroa.speculated.i.i.i, %i.sy  ; 2 uses
  %i.ta = icmp ult i64 %i.sz, %i.sy
  %i.tb = call i64 @llvm.umin.i64(i64 %i.sz, i64 4611686018427387903)
  %i.tc = select i1 %i.ta, i64 4611686018427387903, i64 %i.tb ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.tc, 0
  call void @llvm.assume(i1 %.not.i.i.i94)
  %i.td = shl nuw nsw i64 %i.tc, 1
  %i.te = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.td) #27
          to label %.noexc96 unwind label %.loopexit ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.tf = getelementptr inbounds i8, ptr %i.te, i64 %i.sw ; 2 uses
  store i16 %storemerge204, ptr %i.tf, align 2, !tbaa !123
  %i.tg = icmp sgt i64 %i.sw, 0
  br i1 %i.tg, label %bb.ck, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.ck:                                            ; preds = %.noexc96
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.te, ptr align 2 %i.st, i64 %i.sw, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.ck, %.noexc96
  %i.th = getelementptr inbounds nuw i8, ptr %i.tf, i64 2
  %.not.i17.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %i.ti = load ptr, ptr %i.sg, align 8, !tbaa !188
  %i.tj = ptrtoint ptr %i.ti to i64
  %i.tk = sub i64 %i.tj, %i.sv
  call void @_ZdlPvm(ptr noundef nonnull %i.st, i64 noundef %i.tk) #25
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.cl, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  store ptr %i.te, ptr %i.se, align 8, !tbaa !189
  store ptr %i.th, ptr %i.sf, align 8, !tbaa !397
  %i.tl = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %i.tc
  store ptr %i.tl, ptr %i.sg, align 8, !tbaa !188
  br label %_ZNSt6vectorItSaItEE9push_backERKt.exit

.loopexit:                                        ; preds = %_ZN8IGameDef4idefEv.exit, %bb.ce, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.cj
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorItSaItEE9push_backERKt.exit:          ; preds = %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRKtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, %bb.ch, %bb.cf
  %19 = add i16 %storemerge204, 1                 ; 2 uses
  %20 = zext i16 %19 to i64
  %i.tm = icmp ugt i64 %i.ge, %20
  br i1 %i.tm, label %bb.ce, label %bb.cd, !llvm.loop !385

bb.cm:                                            ; preds = %_ZNKSt14default_deleteIA_tEclItEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i39.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit37.i
  %i.tn = icmp eq i16 %.010.i, %i.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.to = load ptr, ptr %14, align 8, !tbaa !167  ; 3 uses
  %i.tp = load ptr, ptr %i.hk, align 8, !tbaa !168 ; 2 uses
  %.not4.i.i.i97 = icmp eq ptr %i.to, %i.tp
  br i1 %.not4.i.i.i97, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i98

.lr.ph.i.i.i98:                                   ; preds = %bb.cm, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.05.i.i.i99 = phi ptr [ %i.tw, %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i ], [ %i.to, %bb.cm ] ; 3 uses
  %i.tq = load ptr, ptr %.05.i.i.i99, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.tq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph.i.i.i98
  %i.tr = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !188
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tq to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tq, i64 noundef %i.tv) #25
  br label %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i:  ; preds = %bb.cn, %.lr.ph.i.i.i98
  %i.tw = getelementptr inbounds nuw i8, ptr %.05.i.i.i99, i64 24 ; 2 uses
  %.not.i.i.i100 = icmp eq ptr %i.tw, %i.tp
  br i1 %.not.i.i.i100, label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i98, !llvm.loop !7

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorItSaItEEEvPT_.exit.i.i.i
  %.pr.i101 = load ptr, ptr %14, align 8, !tbaa !167
  br label %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.cm
  %i.tx = phi ptr [ %.pr.i101, %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.to, %bb.cm ] ; 3 uses
  %.not.i.i1.i102 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i1.i102, label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i
  %i.ty = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !169
  %i.ua = ptrtoint ptr %i.tz to i64
  %i.ub = ptrtoint ptr %i.tx to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.uc) #25
  br label %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorItSaItEES2_EvT_S4_RSaIT0_E.exit.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.cc, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i
  %.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.i, %_ZNSt10unique_ptrIA_tSt14default_deleteIS0_EED2Ev.exit49.i ], [ %i.sc, %bb.cc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #24
  br label %bb.ct

_ZN11StreamProxylsEPFRSoS0_E.exit:                ; preds = %bb.ah, %.noexc167, %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit, %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit
  %.033 = phi i1 [ %i.tn, %_ZNSt6vectorIS_ItSaItEESaIS1_EED2Ev.exit ], [ false, %_ZSt14set_differenceIN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS7_SaIS7_EEEESC_St20back_insert_iteratorISB_EET1_T_SG_T0_SH_SF_.exit ], [ false, %.noexc167 ], [ false, %bb.ah ]
  %i.ud = load ptr, ptr %13, align 8, !tbaa !112  ; 3 uses
  %i.ue = load ptr, ptr %i.fi, align 8, !tbaa !111 ; 2 uses
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
  br i1 %.not.i.i1.i112, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111
  %i.um = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !113
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = ptrtoint ptr %i.ul to i64
  %i.uq = sub i64 %i.uo, %i.up
  call void @_ZdlPvm(ptr noundef nonnull %i.ul, i64 noundef %i.uq) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit114: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i111, %bb.cp
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
  br i1 %.not.i.i1.i124, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126, label %bb.cq

bb.cq:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123
  %i.vb = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !113
  %i.vd = ptrtoint ptr %i.vc to i64
  %i.ve = ptrtoint ptr %i.va to i64
  %i.vf = sub i64 %i.vd, %i.ve
  call void @_ZdlPvm(ptr noundef nonnull %i.va, i64 noundef %i.vf) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit126: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i123, %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  %i.vg = load ptr, ptr %11, align 8, !tbaa !112  ; 3 uses
  %i.vh = load ptr, ptr %i.fa, align 8, !tbaa !111 ; 2 uses
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
  br i1 %.not.i.i1.i136, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135
  %i.vp = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.vq = load ptr, ptr %i.vp, align 8, !tbaa !113
  %i.vr = ptrtoint ptr %i.vq to i64
  %i.vs = ptrtoint ptr %i.vo to i64
  %i.vt = sub i64 %i.vr, %i.vs
  call void @_ZdlPvm(ptr noundef nonnull %i.vo, i64 noundef %i.vt) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i135, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  %i.vu = load ptr, ptr %9, align 16, !tbaa !112  ; 3 uses
  %i.vv = load ptr, ptr %i.cy, align 8, !tbaa !111 ; 2 uses
  %.not4.i.i.i139 = icmp eq ptr %i.vu, %i.vv
  br i1 %.not4.i.i.i139, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i147, label %.lr.ph.i.i.i140

.lr.ph.i.i.i140:                                  ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143
  %.05.i.i.i141 = phi ptr [ %i.wb, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i143 ], [ %i.vu, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit138 ] ; 3 uses
  %i.vw = load ptr, ptr %.05.i.i.i141, align 8, !tbaa !50 ; 2 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %.05.i.i.i141, i64 16 ; 2 uses
end_hunk_0
