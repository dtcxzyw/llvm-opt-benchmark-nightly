Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/md?download=true
inline.NumInlined: 1684
inline.NumDeleted: 994
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3gmx15LegacySimulator5do_mdEv:bb.a
  %i.bia = add nsw i64 %i.bhz, -1
  invoke void @_Z15compute_globalsP15gmx_global_statRKN3gmx7MpiCommEPK10t_inputrecP10t_forcerecP14gmx_ekindata_tNS1_8ArrayRefIKNS1_11BasicVectorIfEEEESG_PA3_KfPK9t_mdatomsP6t_nrnbP5t_vcmP13gmx_wallcycleP14gmx_enerdata_tPA3_fSW_SW_SW_PNS1_19SimulationSignallerESJ_PbilPNS1_18ObservablesReducerE(ptr noundef %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.bhb, ptr noundef %i.s, ptr noundef %i.bhc, ptr noundef %i.bhd, ptr noundef nonnull byval(%"class.gmx::ArrayRef.895") align 8 %42, ptr noundef nonnull byval(%"class.gmx::ArrayRef.895") align 8 %43, ptr noundef nonnull %i.bhv, ptr noundef nonnull %i.je, ptr noundef %i.bhw, ptr noundef nonnull %30, ptr noundef %i.bhx, ptr noundef %i.bhy, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %9, ptr noundef nonnull %i.bhv, ptr noundef nonnull %i.g, i32 noundef 18, i64 noundef %i.bia, ptr noundef nonnull %17)
          to label %bb.mj unwind label %bb.mi

bb.mi:                                            ; preds = %bb.mh
  %i.bib = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.mj:                                            ; preds = %bb.mh, %bb.mg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %i.bic = load i8, ptr %i.apb, align 1, !tbaa !817, !range !278, !noundef !270
  %i.bid = trunc nuw i8 %i.bic to i1
  br i1 %i.bid, label %bb.mk, label %_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit

bb.mk:                                            ; preds = %bb.mj
  invoke void @_ZN3gmx17CheckpointHandler33decideIfCheckpointingThisStepImplEbbb(ptr noundef nonnull align 8 dereferenceable(24) %i.amx, i1 noundef zeroext %i.ayd, i1 noundef zeroext %.01591, i1 noundef zeroext %i.ayo)
          to label %_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit unwind label %bb.le

_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit: ; preds = %bb.mj, %bb.mk
  %i.bie = load i64, ptr %i.o, align 8, !tbaa !50 ; 7 uses
  %i.bif = load i32, ptr %i.apc, align 4, !tbaa !818 ; 2 uses
  %.not.i965 = icmp eq i32 %i.bif, 0
  br i1 %.not.i965, label %_Z11do_per_stepll.exit967, label %bb.ml

bb.ml:                                            ; preds = %_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit
  %i.big = sext i32 %i.bif to i64
  %i.bih = srem i64 %i.bie, %i.big
  %i.bii = icmp eq i64 %i.bih, 0
  %i.bij = or i1 %i.ayo, %i.bii
  br label %_Z11do_per_stepll.exit967

_Z11do_per_stepll.exit967:                        ; preds = %_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit, %bb.ml
  %.0.i966 = phi i1 [ %i.bij, %bb.ml ], [ %i.ayo, %_ZN3gmx17CheckpointHandler29decideIfCheckpointingThisStepEbbb.exit ] ; 5 uses
  %or.cond42 = or i1 %i.ayv, %.0.i966             ; 4 uses
  %i.bik = or i1 %i.axt, %or.cond42
  %i.bil = load i32, ptr %i.in, align 8, !tbaa !372 ; 2 uses
  %.not.i968 = icmp eq i32 %i.bil, 0
  br i1 %.not.i968, label %_Z11do_per_stepll.exit970, label %bb.mm

bb.mm:                                            ; preds = %_Z11do_per_stepll.exit967
  %i.bim = sext i32 %i.bil to i64
  %i.bin = srem i64 %i.bie, %i.bim
  %i.bio = icmp eq i64 %i.bin, 0
  br label %_Z11do_per_stepll.exit970

_Z11do_per_stepll.exit970:                        ; preds = %_Z11do_per_stepll.exit967, %bb.mm
  %.0.i969 = phi i1 [ %i.bio, %bb.mm ], [ false, %_Z11do_per_stepll.exit967 ] ; 2 uses
  %i.bip = load i32, ptr %i.ba, align 4, !tbaa !286
  %i.biq = and i32 %i.bip, -2                     ; 2 uses
  %switch.i = icmp ne i32 %i.biq, 10
  %or.cond1496 = or i1 %.014671583, %switch.i
  %brmerge1497 = select i1 %.0.i969, i1 true, i1 %i.bik ; 2 uses
  br i1 %or.cond1496, label %bb.mq, label %bb.mn

bb.mn:                                            ; preds = %_Z11do_per_stepll.exit970
  br i1 %brmerge1497, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.bir = load i32, ptr %i.lz, align 4, !tbaa !517
  %.not.i.i = icmp eq i32 %i.bir, 0
  br i1 %.not.i.i, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %bb.mp

bb.mp:                                            ; preds = %bb.mo
  %i.bis = load i32, ptr %i.md, align 4, !tbaa !415 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.bis, 0
  br i1 %.not.i.i.i, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i"

"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i": ; preds = %bb.mp
  %i.bit = sext i32 %i.bis to i64                 ; 2 uses
  %i.biu = srem i64 %i.bie, %i.bit
  %i.biv = icmp eq i64 %i.biu, 0
  br i1 %i.biv, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %.thread.i

.thread.i:                                        ; preds = %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i"
  %i.biw = add nsw i64 %i.bie, -1
  br label %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i"

bb.mq:                                            ; preds = %_Z11do_per_stepll.exit970
  br i1 %brmerge1497, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %bb.mr

bb.mr:                                            ; preds = %bb.mq
  %i.bix = load i32, ptr %i.lz, align 4, !tbaa !517
  %.not.i8.i = icmp eq i32 %i.bix, 0
  br i1 %.not.i8.i, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %bb.ms

bb.ms:                                            ; preds = %bb.mr
  %i.biy = load i32, ptr %i.md, align 4, !tbaa !415 ; 2 uses
  %.not.i.i9.i = icmp eq i32 %i.biy, 0
  br i1 %.not.i.i9.i, label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit", label %"._ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i_crit_edge"

"._ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i_crit_edge": ; preds = %bb.ms
  %.pre1642.a = sext i32 %i.biy to i64
  br label %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i"

"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i": ; preds = %"._ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i_crit_edge", %.thread.i
  %.pre-phi1643 = phi i64 [ %.pre1642.a, %"._ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i_crit_edge" ], [ %i.bit, %.thread.i ]
  %.sink14.i = phi i64 [ %i.bie, %"._ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i_crit_edge" ], [ %i.biw, %.thread.i ]
  %i.biz = srem i64 %.sink14.i, %.pre-phi1643
  %i.bja = icmp eq i64 %i.biz, 0
  br label %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit"

"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit": ; preds = %bb.mq, %bb.mn, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i", %bb.ms, %bb.mr, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i", %bb.mp, %bb.mo
  %.pre-phi = phi i1 [ true, %bb.mq ], [ true, %bb.mn ], [ false, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i" ], [ false, %bb.ms ], [ false, %bb.mr ], [ false, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i" ], [ false, %bb.mp ], [ false, %bb.mo ] ; 10 uses
  %.0.i971 = phi i1 [ true, %bb.mq ], [ true, %bb.mn ], [ %i.bja, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit7.sink.split.i" ], [ false, %bb.ms ], [ false, %bb.mr ], [ true, %"_ZZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEvENKUllE_clEl.exit.i" ], [ false, %bb.mp ], [ false, %bb.mo ] ; 9 uses
  %i.bjb = load i32, ptr %i.dt, align 4, !tbaa !317
  %.not726 = icmp eq i32 %i.bjb, 0
  br i1 %.not726, label %bb.mt, label %bb.mu

bb.mt:                                            ; preds = %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit"
  %i.bjc = load i8, ptr %i.dv, align 8, !tbaa !318, !range !278, !noundef !270
  %i.bjd = trunc nuw i8 %i.bjc to i1              ; 2 uses
  %brmerge1593.not = and i1 %.not.i972, %i.bjd
  %.mux = and i1 %.pre-phi, %i.bjd
  br i1 %brmerge1593.not, label %bb.mv, label %_Z11do_per_stepll.exit974

bb.mu:                                            ; preds = %"_ZZN3gmx15LegacySimulator5do_mdEvENK4$_14clEv.exit"
  br i1 %.not.i972, label %bb.mv, label %_Z11do_per_stepll.exit974

bb.mv:                                            ; preds = %bb.mt, %bb.mu
  %i.bje = srem i64 %i.bie, %i.apd
  %i.bjf = icmp eq i64 %i.bje, 0
  %i.bjg = or i1 %i.bjf, %.pre-phi
  br label %_Z11do_per_stepll.exit974

_Z11do_per_stepll.exit974:                        ; preds = %bb.mt, %bb.mv, %bb.mu
  %i.bjh = phi i1 [ %.mux, %bb.mt ], [ %i.bjg, %bb.mv ], [ %.pre-phi, %bb.mu ] ; 3 uses
  %or.cond44 = or i1 %.0.i971, %.pre-phi
  %or.cond46 = or i1 %i.ayb, %or.cond44
  br i1 %or.cond46, label %_Z11do_per_stepll.exit980, label %bb.mw

bb.mw:                                            ; preds = %_Z11do_per_stepll.exit974
  br i1 %.not.i975, label %_Z11do_per_stepll.exit977, label %_Z11do_per_stepll.exit977.thread

_Z11do_per_stepll.exit977:                        ; preds = %bb.mw
  %i.bji = srem i64 %i.bie, %i.ape
  %i.bjj = icmp eq i64 %i.bji, 0
  br i1 %i.bjj, label %_Z11do_per_stepll.exit980, label %_Z11do_per_stepll.exit977.thread

_Z11do_per_stepll.exit977.thread:                 ; preds = %bb.mw, %_Z11do_per_stepll.exit977
  %switch819 = icmp eq i32 %i.biq, 10
  br i1 %switch819, label %bb.mx, label %_Z11do_per_stepll.exit980

bb.mx:                                            ; preds = %_Z11do_per_stepll.exit977.thread
  %i.bjk = invoke noundef zeroext i1 @_Z18inputrecNvtTrotterPK10t_inputrec(ptr noundef nonnull %i.s)
          to label %bb.my unwind label %bb.nb

bb.my:                                            ; preds = %bb.mx
  %brmerge1522.not = and i1 %.not.i975, %i.bjk
  br i1 %brmerge1522.not, label %bb.mz, label %_Z11do_per_stepll.exit980

bb.mz:                                            ; preds = %bb.my
  %i.bjl = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bjm = add nsw i64 %i.bjl, -1
  %i.bjn = srem i64 %i.bjm, %i.ape
  %i.bjo = icmp eq i64 %i.bjn, 0
  br label %_Z11do_per_stepll.exit980

_Z11do_per_stepll.exit980:                        ; preds = %bb.my, %bb.mz, %_Z11do_per_stepll.exit977.thread, %_Z11do_per_stepll.exit977, %_Z11do_per_stepll.exit974
  %i.bjp = phi i1 [ true, %_Z11do_per_stepll.exit977 ], [ true, %_Z11do_per_stepll.exit974 ], [ false, %bb.my ], [ false, %_Z11do_per_stepll.exit977.thread ], [ %i.bjo, %bb.mz ] ; 8 uses
  %i.bjq = select i1 %.0.i971, i32 465, i32 209
  %i.bjr = select i1 %.pre-phi, i32 512, i32 0
  %i.bjs = or disjoint i32 %i.bjq, %i.bjr
  %i.bjt = select i1 %i.bjh, i32 1024, i32 0
  %i.bju = or disjoint i32 %i.bjs, %i.bjt         ; 4 uses
  %i.bjv = load i8, ptr %i.iv, align 1, !tbaa !374, !range !278, !noundef !270
  %i.bjw = trunc nuw i8 %i.bjv to i1
  br i1 %i.bjw, label %bb.na, label %bb.nd

bb.na:                                            ; preds = %_Z11do_per_stepll.exit980
  %i.bjx = load i32, ptr %i.apf, align 8, !tbaa !819 ; 2 uses
  %.not.i981 = icmp eq i32 %i.bjx, 0
  br i1 %.not.i981, label %_Z11do_per_stepll.exit983.thread, label %_Z11do_per_stepll.exit983

_Z11do_per_stepll.exit983.thread:                 ; preds = %bb.na
  %i.bjy = or disjoint i32 %i.bju, 2048
  br label %bb.nd

_Z11do_per_stepll.exit983:                        ; preds = %bb.na
  %i.bjz = sext i32 %i.bjx to i64
  %i.bka = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bkb = srem i64 %i.bka, %i.bjz
  %.fr = freeze i64 %i.bkb
  %i.bkc = icmp eq i64 %.fr, 0
  %i.bkd = or disjoint i32 %i.bju, 2048
  %spec.select1498 = select i1 %i.bkc, i32 %i.bju, i32 %i.bkd
  br label %bb.nd

bb.nb:                                            ; preds = %bb.mx
  %i.bke = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.nc:                                            ; preds = %bb.nf
  %i.bkf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.nd:                                            ; preds = %_Z11do_per_stepll.exit983, %_Z11do_per_stepll.exit983.thread, %_Z11do_per_stepll.exit980
  %.0560 = phi i32 [ %i.bju, %_Z11do_per_stepll.exit980 ], [ %i.bjy, %_Z11do_per_stepll.exit983.thread ], [ %spec.select1498, %_Z11do_per_stepll.exit983 ] ; 2 uses
  br i1 %i.ayd, label %bb.ne, label %._crit_edge1621

._crit_edge1621:                                  ; preds = %bb.nd
  %.pre1622 = load ptr, ptr %i.hw, align 8, !tbaa !367
  br label %bb.nl

bb.ne:                                            ; preds = %bb.nd
  %i.bkg = load ptr, ptr %i.ez, align 8, !tbaa !329 ; 2 uses
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bkg, i64 496
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !820 ; 2 uses
  %.not1506 = icmp eq ptr %i.bki, null
  br i1 %.not1506, label %bb.ng, label %bb.nf

bb.nf:                                            ; preds = %bb.ne
  %i.bkj = load ptr, ptr %i.aoo, align 8, !tbaa !382
  invoke void @_ZN3gmx15ListedForcesGpu22updateHaveInteractionsERK22InteractionDefinitions(ptr noundef nonnull align 8 dereferenceable(8) %i.bki, ptr noundef nonnull align 8 dereferenceable(2760) %i.bkj)
          to label %._crit_edge1619 unwind label %bb.nc

._crit_edge1619:                                  ; preds = %bb.nf
  %.pre1620 = load ptr, ptr %i.ez, align 8, !tbaa !329
  br label %bb.ng

bb.ng:                                            ; preds = %._crit_edge1619, %bb.ne
  %i.bkk = phi ptr [ %.pre1620, %._crit_edge1619 ], [ %i.bkg, %bb.ne ]
  %i.bkl = load ptr, ptr %i.hq, align 8, !tbaa !366
  %i.bkm = load ptr, ptr %11, align 8, !tbaa !31  ; 2 uses
  %.not1507 = icmp eq ptr %i.bkm, null
  br i1 %.not1507, label %bb.ni, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bkn = invoke noundef ptr @_ZN3gmx17EssentialDynamics11getLegacyEDEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bkm)
          to label %bb.ni unwind label %bb.nk

bb.ni:                                            ; preds = %bb.ng, %bb.nh
  %i.bko = phi ptr [ %i.bkn, %bb.nh ], [ null, %bb.ng ]
  %i.bkp = invoke { i64, i16 } @_ZN3gmx27setupDomainLifetimeWorkloadERK10t_inputrecRK10t_forcerecPK6pull_tPK9gmx_edsamRK9t_mdatomsRKNS_18SimulationWorkloadE(ptr noundef nonnull align 8 dereferenceable(888) %i.s, ptr noundef nonnull align 8 dereferenceable(584) %i.bkk, ptr noundef %i.bkl, ptr noundef %i.bko, ptr noundef nonnull align 8 dereferenceable(648) %i.je, ptr noundef nonnull align 1 dereferenceable(29) %i.hx)
          to label %bb.nj unwind label %bb.nk     ; 2 uses

bb.nj:                                            ; preds = %bb.ni
  %.fca.0.extract = extractvalue { i64, i16 } %i.bkp, 0
  %.fca.1.extract = extractvalue { i64, i16 } %i.bkp, 1
  %i.bkq = load ptr, ptr %i.hw, align 8, !tbaa !367 ; 3 uses
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bkq, i64 29
  store i64 %.fca.0.extract, ptr %i.bkr, align 1, !tbaa !58
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bkq, i64 37
  store i16 %.fca.1.extract, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !58
  %i.bks = or i32 %.0560, 4
  br label %bb.nl

bb.nk:                                            ; preds = %bb.ni, %bb.nh
  %i.bkt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.nl:                                            ; preds = %._crit_edge1621, %bb.nj
  %88 = phi ptr [ %i.bkq, %bb.nj ], [ %.pre1622, %._crit_edge1621 ]
  %i.bku = phi i32 [ %i.bks, %bb.nj ], [ %.0560, %._crit_edge1621 ]
  %i.bkv = load ptr, ptr %i.y, align 8, !tbaa !269, !nonnull !270, !align !271
  %i.bkw = getelementptr inbounds nuw i8, ptr %i.bkv, i64 48
  %i.bkx = load i8, ptr %i.bkw, align 8, !tbaa !794, !range !278, !noundef !270
  %i.bky = zext nneg i8 %i.bkx to i32
  %i.bkz = shl nuw nsw i32 %i.bky, 9
  %i.bla = select i1 %i.tp, i32 %i.bkz, i32 0
  %i.blb = or i32 %i.bku, %i.bla
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #23
  %i.blc = load ptr, ptr %i.apg, align 8, !tbaa !821 ; 3 uses
  %i.bld = load ptr, ptr %i.aph, align 8, !tbaa !822
  %i.ble = ptrtoint ptr %i.bld to i64
  %i.blf = ptrtoint ptr %i.blc to i64
  %i.blg = sub i64 %i.ble, %i.blf
  %i.blh = getelementptr inbounds nuw i8, ptr %i.blc, i64 %i.blg
  %i.bli = load i64, ptr %i.o, align 8, !tbaa !50
  %i.blj = getelementptr inbounds nuw i8, ptr %88, i64 29
  invoke void @_ZN3gmx17setupStepWorkloadEiNS_8ArrayRefIKNS_8MtsLevelEEElRKNS_22DomainLifetimeWorkloadERKNS_18SimulationWorkloadE(ptr dead_on_unwind nonnull writable sret(%"class.gmx::StepWorkload") align 1 %44, i32 noundef %i.blb, ptr %i.blc, ptr %i.blh, i64 noundef %i.bli, ptr noundef nonnull align 1 dereferenceable(10) %i.blj, ptr noundef nonnull align 1 dereferenceable(29) %i.hx)
          to label %bb.nm unwind label %bb.nw

bb.nm:                                            ; preds = %bb.nl
  %i.blk = load ptr, ptr %i.hw, align 8, !tbaa !367
  %i.bll = getelementptr inbounds nuw i8, ptr %i.blk, i64 39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bll, ptr noundef nonnull align 1 dereferenceable(19) %44, i64 19, i1 false), !tbaa.struct !823
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  %i.blm = load i32, ptr %i.api, align 8, !tbaa !516
  %.not727 = icmp eq i32 %i.blm, 0
  br i1 %.not727, label %_Z11do_per_stepll.exit986, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bln = load i32, ptr %i.apj, align 4, !tbaa !824 ; 2 uses
  %.not.i984 = icmp eq i32 %i.bln, 0
  br i1 %.not.i984, label %_Z11do_per_stepll.exit986, label %bb.no

bb.no:                                            ; preds = %bb.nn
  %i.blo = sext i32 %i.bln to i64                 ; 2 uses
  %i.blp = load i64, ptr %i.o, align 8, !tbaa !50
  %i.blq = add nsw i64 %i.blo, -1
  %i.blr = add i64 %i.blq, %i.blp
  %i.bls = srem i64 %i.blr, %i.blo
  %i.blt = icmp eq i64 %i.bls, 0
  br label %_Z11do_per_stepll.exit986

_Z11do_per_stepll.exit986:                        ; preds = %bb.no, %bb.nn, %bb.nm
  %i.blu = phi i1 [ false, %bb.nm ], [ %i.blt, %bb.no ], [ false, %bb.nn ]
  %i.blv = load i32, ptr %i.ba, align 4, !tbaa !286
  %i.blw = and i32 %i.blv, -2
  %switch821 = icmp eq i32 %i.blw, 10
  br i1 %switch821, label %bb.nq, label %bb.np

bb.np:                                            ; preds = %_Z11do_per_stepll.exit986
  br i1 %.not.i987, label %_Z11do_per_stepll.exit989.thread, label %_Z11do_per_stepll.exit989

_Z11do_per_stepll.exit989:                        ; preds = %bb.np
  %i.blx = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bly = add nsw i64 %i.blx, 1
  %i.blz = srem i64 %i.bly, %i.ape
  %i.bma = icmp eq i64 %i.blz, 0
  br i1 %i.bma, label %bb.nq, label %_Z11do_per_stepll.exit989.thread

_Z11do_per_stepll.exit989.thread:                 ; preds = %bb.np, %_Z11do_per_stepll.exit989
  %i.bmb = add nuw nsw i64 %.05671586, 1
  %i.bmc = load i64, ptr %i.and, align 8, !tbaa !672
  %i.bmd = icmp eq i64 %i.bmb, %i.bmc
  br label %bb.nq

bb.nq:                                            ; preds = %_Z11do_per_stepll.exit986, %_Z11do_per_stepll.exit989, %_Z11do_per_stepll.exit989.thread
  %i.bme = phi i1 [ %i.bmd, %_Z11do_per_stepll.exit989.thread ], [ false, %_Z11do_per_stepll.exit986 ], [ true, %_Z11do_per_stepll.exit989 ] ; 2 uses
  %i.bmf = load i32, ptr %i.lz, align 4, !tbaa !517
  %i.bmg = icmp eq i32 %i.bmf, 2
  br i1 %i.bmg, label %bb.nr, label %_Z11do_per_stepll.exit992

bb.nr:                                            ; preds = %bb.nq
  %i.bmh = load i32, ptr %i.md, align 4, !tbaa !415 ; 2 uses
  %.not.i990 = icmp eq i32 %i.bmh, 0
  br i1 %.not.i990, label %_Z11do_per_stepll.exit992, label %bb.ns

bb.ns:                                            ; preds = %bb.nr
  %i.bmi = sext i32 %i.bmh to i64                 ; 2 uses
  %i.bmj = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bmk = add nsw i64 %i.bmi, -1
  %i.bml = add i64 %i.bmk, %i.bmj
  %i.bmm = srem i64 %i.bml, %i.bmi
  %i.bmn = icmp eq i64 %i.bmm, 0
  br label %_Z11do_per_stepll.exit992

_Z11do_per_stepll.exit992:                        ; preds = %bb.ns, %bb.nr, %bb.nq
  %i.bmo = phi i1 [ false, %bb.nq ], [ %i.bmn, %bb.ns ], [ false, %bb.nr ] ; 3 uses
  %i.bmp = load i8, ptr %i.apk, align 1, !tbaa !825, !range !278, !noundef !270
  %i.bmq = trunc nuw i8 %i.bmp to i1
  br i1 %i.bmq, label %bb.nt, label %bb.og

bb.nt:                                            ; preds = %_Z11do_per_stepll.exit992
  %i.bmr = load ptr, ptr %i.ez, align 8, !tbaa !329
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmr, i64 568 ; 2 uses
  %i.bmt = load i64, ptr %i.o, align 8, !tbaa !50
  %i.bmu = and i64 %i.bmt, 1
  %i.bmv = getelementptr inbounds nuw [8 x i8], ptr %i.bms, i64 %i.bmu
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !827 ; 6 uses
  %or.cond48 = or i1 %i.ayd, %.0.i971
  br i1 %or.cond48, label %bb.nu, label %bb.ny

bb.nu:                                            ; preds = %bb.nt
  %i.bmx = load ptr, ptr %i.bms, align 8, !tbaa !827
  invoke void @_ZN3gmx10MdGpuGraph5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bmx)
          to label %bb.nv unwind label %bb.nx

bb.nv:                                            ; preds = %bb.nu
  %i.bmy = load ptr, ptr %i.ez, align 8, !tbaa !329
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bmy, i64 576
  %i.bna = load ptr, ptr %i.bmz, align 8, !tbaa !827
  invoke void @_ZN3gmx10MdGpuGraph5resetEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bna)
          to label %bb.og unwind label %bb.nx

bb.nw:                                            ; preds = %bb.nl
  %i.bnb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #23
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.nx:                                            ; preds = %bb.pj, %bb.pe, %bb.vk, %bb.ui, %bb.uh, %bb.ug, %bb.ue, %bb.ud, %bb.ub, %bb.tr, %bb.tp, %bb.qf, %bb.qe, %bb.qa, %bb.pz, %bb.px, %bb.pw, %bb.ps, %bb.pq, %bb.ph, %bb.ov, %bb.op, %bb.om, %bb.oj, %bb.oh, %bb.ny, %bb.nv, %bb.nu
  %i.bnc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.ny:                                            ; preds = %bb.nt
  %i.bnd = trunc nuw i8 %.05611587 to i1
  invoke void @_ZN3gmx10MdGpuGraph20setUsedGraphLastStepEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bmw, i1 noundef zeroext %i.bnd)
          to label %bb.nz unwind label %bb.nx

bb.nz:                                            ; preds = %bb.ny
  %or.cond54 = or i1 %i.blu, %i.bmo
  %or.cond56 = or i1 %i.bjp, %or.cond54
  %or.cond58 = select i1 %or.cond56, i1 true, i1 %i.bme
  br i1 %or.cond58, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.bne = load i64, ptr %i.o, align 8, !tbaa !50 ; 4 uses
  %i.bnf = load i32, ptr %i.apl, align 8, !tbaa !828 ; 2 uses
  %.not.i993 = icmp eq i32 %i.bnf, 0
  br i1 %.not.i993, label %_Z11do_per_stepll.exit995.thread, label %_Z11do_per_stepll.exit995

_Z11do_per_stepll.exit995:                        ; preds = %bb.oa
  %i.bng = sext i32 %i.bnf to i64
  %i.bnh = srem i64 %i.bne, %i.bng
  %i.bni = icmp eq i64 %i.bnh, 0
  br i1 %i.bni, label %bb.ob, label %_Z11do_per_stepll.exit995.thread

_Z11do_per_stepll.exit995.thread:                 ; preds = %bb.oa, %_Z11do_per_stepll.exit995
  %i.bnj = load i32, ptr %i.apm, align 8, !tbaa !829 ; 2 uses
  %.not.i996 = icmp eq i32 %i.bnj, 0
  br i1 %.not.i996, label %_Z11do_per_stepll.exit998.thread, label %_Z11do_per_stepll.exit998

_Z11do_per_stepll.exit998:                        ; preds = %_Z11do_per_stepll.exit995.thread
  %i.bnk = sext i32 %i.bnj to i64
  %i.bnl = srem i64 %i.bne, %i.bnk
  %i.bnm = icmp eq i64 %i.bnl, 0
  br i1 %i.bnm, label %bb.ob, label %_Z11do_per_stepll.exit998.thread

_Z11do_per_stepll.exit998.thread:                 ; preds = %_Z11do_per_stepll.exit995.thread, %_Z11do_per_stepll.exit998
  %i.bnn = load i32, ptr %i.aol, align 4, !tbaa !810 ; 2 uses
  %.not.i999 = icmp eq i32 %i.bnn, 0
  br i1 %.not.i999, label %_Z11do_per_stepll.exit1001.thread, label %_Z11do_per_stepll.exit1001

_Z11do_per_stepll.exit1001:                       ; preds = %_Z11do_per_stepll.exit998.thread
  %i.bno = sext i32 %i.bnn to i64
  %i.bnp = srem i64 %i.bne, %i.bno
  %i.bnq = icmp eq i64 %i.bnp, 0
  br i1 %i.bnq, label %bb.ob, label %_Z11do_per_stepll.exit1001.thread

_Z11do_per_stepll.exit1001.thread:                ; preds = %_Z11do_per_stepll.exit998.thread, %_Z11do_per_stepll.exit1001
  %i.bnr = load i32, ptr %i.apf, align 8, !tbaa !819 ; 2 uses
  %.not.i1002 = icmp eq i32 %i.bnr, 0
  br i1 %.not.i1002, label %_Z11do_per_stepll.exit1004.thread, label %_Z11do_per_stepll.exit1004

_Z11do_per_stepll.exit1004:                       ; preds = %_Z11do_per_stepll.exit1001.thread
  %i.bns = sext i32 %i.bnr to i64
  %i.bnt = srem i64 %i.bne, %i.bns
  %i.bnu = icmp eq i64 %i.bnt, 0
  br i1 %i.bnu, label %bb.ob, label %_Z11do_per_stepll.exit1004.thread

_Z11do_per_stepll.exit1004.thread:                ; preds = %_Z11do_per_stepll.exit1001.thread, %_Z11do_per_stepll.exit1004
  %i.bnv = load i8, ptr %i.aom, align 8, !tbaa !812, !range !278, !noundef !270
  %i.bnw = trunc nuw i8 %i.bnv to i1
  %i.bnx = xor i1 %i.bnw, true
  br label %bb.ob

bb.ob:                                            ; preds = %_Z11do_per_stepll.exit1004.thread, %_Z11do_per_stepll.exit1004, %_Z11do_per_stepll.exit1001, %_Z11do_per_stepll.exit998, %_Z11do_per_stepll.exit995, %bb.nz
  %i.bny = phi i1 [ false, %_Z11do_per_stepll.exit1004 ], [ false, %_Z11do_per_stepll.exit1001 ], [ false, %_Z11do_per_stepll.exit998 ], [ false, %_Z11do_per_stepll.exit995 ], [ %i.bnx, %_Z11do_per_stepll.exit1004.thread ], [ false, %bb.nz ]
  %i.bnz = invoke noundef zeroext i1 @_ZN3gmx10MdGpuGraph15captureThisStepEb(ptr noundef nonnull align 8 dereferenceable(8) %i.bmw, i1 noundef zeroext %i.bny)
          to label %bb.oc unwind label %bb.of

bb.oc:                                            ; preds = %bb.ob
  br i1 %i.bnz, label %bb.od, label %bb.og

bb.od:                                            ; preds = %bb.oc
  %i.boa = load ptr, ptr %i.hw, align 8, !tbaa !367
  %i.bob = getelementptr inbounds nuw i8, ptr %i.boa, i64 39
  %i.boc = invoke noundef ptr @_ZN3gmx22StatePropagatorDataGpu32getCoordinatesReadyOnDeviceEventENS_12AtomLocalityERKNS_18SimulationWorkloadERKNS_12StepWorkloadEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.mp, i32 noundef 0, ptr noundef nonnull align 1 dereferenceable(29) %i.hx, ptr noundef nonnull align 1 dereferenceable(19) %i.bob, ptr noundef null)
          to label %bb.oe unwind label %bb.of

bb.oe:                                            ; preds = %bb.od
  invoke void @_ZN3gmx10MdGpuGraph11startRecordEP20GpuEventSynchronizer(ptr noundef nonnull align 8 dereferenceable(8) %i.bmw, ptr noundef %i.boc)
          to label %bb.og unwind label %bb.of

bb.of:                                            ; preds = %bb.oe, %bb.od, %bb.ob
  %i.bod = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx12ResetHandlerESt14default_deleteIS1_EED2Ev.exit1130

bb.og:                                            ; preds = %_Z11do_per_stepll.exit992, %bb.oc, %bb.oe, %bb.nv
  %i.boe = phi ptr [ %i.bmw, %bb.oc ], [ %i.bmw, %bb.oe ], [ %i.bmw, %bb.nv ], [ null, %_Z11do_per_stepll.exit992 ] ; 8 uses
  %i.bof = load i8, ptr %i.apk, align 1, !tbaa !825, !range !278, !noundef !270
  %i.bog = trunc nuw i8 %i.bof to i1
  br i1 %i.bog, label %bb.oh, label %bb.ol

end_hunk_0
