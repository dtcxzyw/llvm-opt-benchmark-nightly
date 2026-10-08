Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/subs_minimize?download=true
inline.NumInlined: 2148
inline.NumDeleted: 814
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4cvc58internal6theory20SubstitutionMinimize12findInternalENS0_12NodeTemplateILb1EEES4_RKSt6vectorIS4_SaIS4_EES9_RS7_:bb.a

bb.od:                                            ; preds = %.loopexit.split-lp1033, %.loopexit1032
  %lpad.phi1036 = phi { ptr, i32 } [ %lpad.loopexit1034, %.loopexit1032 ], [ %lpad.loopexit.split-lp1035, %.loopexit.split-lp1033 ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %44) #20
  br label %bb.oe

bb.oe:                                            ; preds = %bb.od, %bb.oc
  %.pn184 = phi { ptr, i32 } [ %lpad.phi1036, %bb.od ], [ %i.bea, %bb.oc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

bb.of:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit707, %_ZNSt6vectorIjSaIjEED2Ev.exit.thread976
  %i.beb = phi i64 [ %.pre1259, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit707 ], [ %i.bco, %_ZNSt6vectorIjSaIjEED2Ev.exit.thread976 ]
  %i.bec = phi ptr [ %.pre1257, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit707 ], [ %i.bcm, %_ZNSt6vectorIjSaIjEED2Ev.exit.thread976 ]
  %i.bed = trunc i64 %i.beb to i32
  %i.bee = and i32 %i.bed, 1023                   ; 2 uses
  %i.bef = icmp eq i32 %i.bee, 1023
  %i.beg = select i1 %i.bef, i32 -1, i32 %i.bee
  %i.beh = invoke noundef i32 @_ZN4cvc58internal4kind10metaKindOfENS1_6Kind_tE(i32 noundef %i.beg)
          to label %bb.og unwind label %bb.oh

bb.og:                                            ; preds = %bb.of
  %i.bei = icmp eq i32 %i.beh, 2
  %spec.select.v.i.i708 = select i1 %i.bei, i64 32, i64 24
  %spec.select.i.i709 = getelementptr inbounds nuw i8, ptr %i.bec, i64 %spec.select.v.i.i708 ; 2 uses
  %i.bej = load ptr, ptr %10, align 8, !tbaa !38  ; 2 uses
  %i.bek = getelementptr inbounds nuw i8, ptr %i.bej, i64 24
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bej, i64 8
  %i.bem = load i64, ptr %i.bel, align 8
  %i.ben = lshr i64 %i.bem, 32
  %i.beo = and i64 %i.ben, 67108863
  %i.bep = getelementptr inbounds nuw [8 x i8], ptr %i.bek, i64 %i.beo ; 2 uses
  %.not9821170 = icmp eq ptr %spec.select.i.i709, %i.bep
  br i1 %.not9821170, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph1173

bb.oh:                                            ; preds = %bb.of
  %i.beq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

.lr.ph1173:                                       ; preds = %bb.og, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732
  %.sroa.0860.01171 = phi ptr [ %i.bgl, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732 ], [ %spec.select.i.i709, %bb.og ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #20
  %i.ber = load ptr, ptr %.sroa.0860.01171, align 8, !tbaa !36, !noalias !157 ; 10 uses
  store ptr %i.ber, ptr %45, align 8, !tbaa !21
  %i.bes = load i64, ptr %i.ber, align 8          ; 3 uses
  %i.bet = lshr i64 %i.bes, 40
  %i.beu = trunc nuw nsw i64 %i.bet to i32
  %i.bev = and i32 %i.beu, 1048575                ; 3 uses
  %i.bew = icmp samesign ult i32 %i.bev, 1048574
  br i1 %i.bew, label %bb.oi, label %bb.oj, !prof !22

bb.oi:                                            ; preds = %.lr.ph1173
  %i.bex = add nuw nsw i32 %i.bev, 1
  %i.bey = zext nneg i32 %i.bex to i64
  %i.bez = shl nuw nsw i64 %i.bey, 40
  %i.bfa = and i64 %i.bes, -1152920405095219201
  %i.bfb = or i64 %i.bez, %i.bfa
  store i64 %i.bfb, ptr %i.ber, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713

bb.oj:                                            ; preds = %.lr.ph1173
  %i.bfc = icmp eq i32 %i.bev, 1048574
  br i1 %i.bfc, label %bb.ok, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713, !prof !23

bb.ok:                                            ; preds = %bb.oj
  %i.bfd = or i64 %i.bes, 1152920405095219200
  store i64 %i.bfd, ptr %i.ber, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ber)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713 unwind label %bb.os

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713: ; preds = %bb.oj, %bb.oi, %bb.ok
  %i.bfe = load ptr, ptr %i.n, align 8, !tbaa !41 ; 6 uses
  %i.bff = load ptr, ptr %i.p, align 8, !tbaa !42
  %.not.i.i714 = icmp eq ptr %i.bfe, %i.bff
  br i1 %.not.i.i714, label %bb.om, label %bb.ol

bb.ol:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713
  store ptr %i.ber, ptr %i.bfe, align 8, !tbaa !38
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bfe, i64 8
  store ptr %i.bfg, ptr %i.n, align 8, !tbaa !41
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit729

bb.om:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKNS1_ILb0EEE.exit713
  %i.bfh = load ptr, ptr %9, align 8, !tbaa !43   ; 5 uses
  %i.bfi = ptrtoint ptr %i.bfe to i64
  %i.bfj = ptrtoint ptr %i.bfh to i64             ; 2 uses
  %i.bfk = sub i64 %i.bfi, %i.bfj                 ; 3 uses
  %i.bfl = icmp eq i64 %i.bfk, 9223372036854775800
  br i1 %i.bfl, label %bb.on, label %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i715

bb.on:                                            ; preds = %bb.om
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #22
          to label %.noexc727 unwind label %.loopexit.split-lp

.noexc727:                                        ; preds = %bb.on
  unreachable

_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i715: ; preds = %bb.om
  %i.bfm = ashr exact i64 %i.bfk, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i716 = call i64 @llvm.umax.i64(i64 %i.bfm, i64 1)
  %i.bfn = add nsw i64 %.sroa.speculated.i.i.i.i716, %i.bfm ; 2 uses
  %i.bfo = icmp ult i64 %i.bfn, %i.bfm
  %i.bfp = call i64 @llvm.umin.i64(i64 %i.bfn, i64 1152921504606846975)
  %i.bfq = select i1 %i.bfo, i64 1152921504606846975, i64 %i.bfp ; 3 uses
  %.not.i.i.i.i717 = icmp ne i64 %i.bfq, 0
  call void @llvm.assume(i1 %.not.i.i.i.i717)
  %i.bfr = shl nuw nsw i64 %i.bfq, 3
  %i.bfs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bfr) #21
          to label %.noexc728 unwind label %.loopexit993 ; 5 uses

.noexc728:                                        ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i715
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfs, i64 %i.bfk
  store ptr %i.ber, ptr %i.bft, align 8, !tbaa !38
  %.not13.i.i.i.i.i.i.i.i718 = icmp eq ptr %i.bfh, %i.bfe
  br i1 %.not13.i.i.i.i.i.i.i.i718, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i723, label %.lr.ph.i.i.i.i.i.i.i.i719

.lr.ph.i.i.i.i.i.i.i.i719:                        ; preds = %.noexc728, %.lr.ph.i.i.i.i.i.i.i.i719
  %.015.i.i.i.i.i.i.i.i720 = phi ptr [ %i.bfw, %.lr.ph.i.i.i.i.i.i.i.i719 ], [ %i.bfs, %.noexc728 ] ; 2 uses
  %.01214.i.i.i.i.i.i.i.i721 = phi ptr [ %i.bfv, %.lr.ph.i.i.i.i.i.i.i.i719 ], [ %i.bfh, %.noexc728 ] ; 2 uses
  %i.bfu = load ptr, ptr %.01214.i.i.i.i.i.i.i.i721, align 8, !tbaa !38
  store ptr %i.bfu, ptr %.015.i.i.i.i.i.i.i.i720, align 8, !tbaa !38
  %i.bfv = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i.i.i.i721, i64 8 ; 2 uses
  %i.bfw = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i.i720, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i722 = icmp eq ptr %i.bfv, %i.bfe
  br i1 %.not.i.i.i.i.i.i.i.i722, label %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i723, label %.lr.ph.i.i.i.i.i.i.i.i719, !llvm.loop !0

_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i723: ; preds = %.lr.ph.i.i.i.i.i.i.i.i719, %.noexc728
  %.0.lcssa.i.i.i.i.i.i.i.i724 = phi ptr [ %i.bfs, %.noexc728 ], [ %i.bfw, %.lr.ph.i.i.i.i.i.i.i.i719 ]
  %i.bfx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i724, i64 8
  %.not.i35.i.i.i725 = icmp eq ptr %i.bfh, null
  br i1 %.not.i35.i.i.i725, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i726, label %bb.oo

bb.oo:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i723
  %i.bfy = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.bfz = ptrtoint ptr %i.bfy to i64
  %i.bga = sub i64 %i.bfz, %i.bfj
  call void @_ZdlPvm(ptr noundef nonnull %i.bfh, i64 noundef %i.bga) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i726

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i726: ; preds = %bb.oo, %_ZSt34__uninitialized_move_if_noexcept_aIPN4cvc58internal12NodeTemplateILb0EEES4_SaIS3_EET0_T_S7_S6_RT1_.exit34.i.i.i723
  store ptr %i.bfs, ptr %9, align 8, !tbaa !43
  store ptr %i.bfx, ptr %i.n, align 8, !tbaa !41
  %i.bgb = getelementptr inbounds nuw [8 x i8], ptr %i.bfs, i64 %i.bfq
  store ptr %i.bgb, ptr %i.p, align 8, !tbaa !42
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit729

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit729: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i726, %bb.ol
  %i.bgc = load i64, ptr %i.ber, align 8          ; 3 uses
  %i.bgd = and i64 %i.bgc, 1152920405095219200
  %.not.i.i730 = icmp eq i64 %i.bgd, 1152920405095219200
  br i1 %.not.i.i730, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732, label %bb.op, !prof !23

bb.op:                                            ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit729
  %i.bge = add i64 %i.bgc, 1152920405095219200
  %i.bgf = and i64 %i.bge, 1152920405095219200    ; 2 uses
  %i.bgg = and i64 %i.bgc, -1152920405095219201
  %i.bgh = or disjoint i64 %i.bgf, %i.bgg
  store i64 %i.bgh, ptr %i.ber, align 8
  %i.bgi = icmp eq i64 %i.bgf, 0
  br i1 %i.bgi, label %bb.oq, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732, !prof !23

bb.oq:                                            ; preds = %bb.op
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ber)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732 unwind label %bb.or

bb.or:                                            ; preds = %bb.oq
  %i.bgj = landingpad { ptr, i32 }
          catch ptr null
  %i.bgk = extractvalue { ptr, i32 } %i.bgj, 0
  call void @__clang_call_terminate(ptr %i.bgk) #19
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit729, %bb.op, %bb.oq
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  %i.bgl = getelementptr inbounds nuw i8, ptr %.sroa.0860.01171, i64 8 ; 2 uses
  %.not982 = icmp eq ptr %i.bgl, %i.bep
  br i1 %.not982, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit, label %.lr.ph1173

bb.os:                                            ; preds = %bb.ok
  %i.bgm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

.loopexit993:                                     ; preds = %_ZNKSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i715
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

.loopexit.split-lp:                               ; preds = %bb.on
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ot

bb.ot:                                            ; preds = %.loopexit.split-lp, %.loopexit993
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit993 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %45) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #20
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit: ; preds = %bb.gw, %bb.gt, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit732, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EE9push_backEOS3_.exit685, %.split, %bb.og, %bb.lw, %bb.gv, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit521, %bb.jd
  %i.bgn = load ptr, ptr %9, align 8, !tbaa !54
  %i.bgo = load ptr, ptr %i.n, align 8, !tbaa !54 ; 2 uses
  %i.bgp = icmp eq ptr %i.bgn, %i.bgo
  br i1 %i.bgp, label %bb.ou, label %bb.gr, !llvm.loop !142

bb.ou:                                            ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit
  %i.bgq = load ptr, ptr %i.yf, align 8, !tbaa !71 ; 2 uses
  %.not9841174 = icmp eq ptr %i.bgq, null
  br i1 %.not9841174, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773, label %.lr.ph1177

.lr.ph1177:                                       ; preds = %bb.ou
  %i.bgr = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bgs = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.ov

bb.ov:                                            ; preds = %.lr.ph1177, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit
  %.sroa.0853.01175 = phi ptr [ %i.bgq, %.lr.ph1177 ], [ %i.bhl, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit ] ; 2 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %.sroa.0853.01175, i64 8 ; 2 uses
  %i.bgu = load ptr, ptr %i.bgr, align 8, !tbaa !55 ; 3 uses
  %i.bgv = load ptr, ptr %i.bgs, align 8, !tbaa !56
  %.not.i733 = icmp eq ptr %i.bgu, %i.bgv
  br i1 %.not.i733, label %bb.pa, label %bb.ow

bb.ow:                                            ; preds = %bb.ov
  %i.bgw = load ptr, ptr %i.bgt, align 8, !tbaa !21 ; 5 uses
  store ptr %i.bgw, ptr %i.bgu, align 8, !tbaa !21
  %i.bgx = load i64, ptr %i.bgw, align 8          ; 3 uses
  %i.bgy = lshr i64 %i.bgx, 40
  %i.bgz = trunc nuw nsw i64 %i.bgy to i32
  %i.bha = and i32 %i.bgz, 1048575                ; 3 uses
  %i.bhb = icmp samesign ult i32 %i.bha, 1048574
  br i1 %i.bhb, label %bb.ox, label %bb.oy, !prof !22

bb.ox:                                            ; preds = %bb.ow
  %i.bhc = add nuw nsw i32 %i.bha, 1
  %i.bhd = zext nneg i32 %i.bhc to i64
  %i.bhe = shl nuw nsw i64 %i.bhd, 40
  %i.bhf = and i64 %i.bgx, -1152920405095219201
  %i.bhg = or i64 %i.bhe, %i.bhf
  store i64 %i.bhg, ptr %i.bgw, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i

bb.oy:                                            ; preds = %bb.ow
  %i.bhh = icmp eq i32 %i.bha, 1048574
  br i1 %i.bhh, label %bb.oz, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, !prof !23

bb.oz:                                            ; preds = %bb.oy
  %i.bhi = or i64 %i.bgx, 1152920405095219200
  store i64 %i.bhi, ptr %i.bgw, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bgw)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i unwind label %bb.pb

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i: ; preds = %bb.oz, %bb.oy, %bb.ox
  %i.bhj = load ptr, ptr %i.bgr, align 8, !tbaa !55
  %i.bhk = getelementptr inbounds nuw i8, ptr %i.bhj, i64 8
  store ptr %i.bhk, ptr %i.bgr, align 8, !tbaa !55
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit

bb.pa:                                            ; preds = %bb.ov
  invoke void @_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.bgu, ptr noundef nonnull align 8 dereferenceable(8) %i.bgt)
          to label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit unwind label %bb.pb

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit.i, %bb.pa
  %i.bhl = load ptr, ptr %.sroa.0853.01175, align 8, !tbaa !46 ; 2 uses
  %.not984 = icmp eq ptr %i.bhl, null
  br i1 %.not984, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773, label %bb.ov

bb.pb:                                            ; preds = %bb.pa, %bb.oz
  %i.bhm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit688

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773: ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb1EEESaIS3_EE9push_backERKS3_.exit, %bb.ou
  %i.bhn = load ptr, ptr %i.zi, align 8, !tbaa !72 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.bhn, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i774

.lr.ph.i.i.i.i774:                                ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773, %.lr.ph.i.i.i.i774
  %.06.i.i.i.i = phi ptr [ %i.bho, %.lr.ph.i.i.i.i774 ], [ %i.bhn, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773 ] ; 2 uses
  %i.bho = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !46 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 24) #23
  %.not.i.i.i.i775 = icmp eq ptr %i.bho, null
  br i1 %.not.i.i.i.i775, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i774, !llvm.loop !3

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i774, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit773
  %i.bhp = load ptr, ptr %27, align 8, !tbaa !63
  %i.bhq = load i64, ptr %i.zh, align 8, !tbaa !64
  %i.bhr = shl i64 %i.bhq, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bhp, i8 0, i64 %i.bhr, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.zi, i8 0, i64 16, i1 false)
  %i.bhs = load ptr, ptr %27, align 8, !tbaa !63  ; 2 uses
  %i.bht = icmp eq ptr %i.bhs, %i.zg
  br i1 %i.bht, label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit, label %bb.pc

bb.pc:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  %i.bhu = load i64, ptr %i.zh, align 8, !tbaa !64
  %i.bhv = shl i64 %i.bhu, 3
  call void @_ZdlPvm(ptr noundef %i.bhs, i64 noundef %i.bhv) #23
  br label %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit

_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.pc
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  %i.bhw = load ptr, ptr %i.yf, align 8, !tbaa !71 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.bhw, null
  br i1 %.not5.i.i.i, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i843

.lr.ph.i.i.i843:                                  ; preds = %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i
  %.06.i.i.i = phi ptr [ %i.bhx, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i ], [ %i.bhw, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit ] ; 3 uses
  %i.bhx = load ptr, ptr %.06.i.i.i, align 8, !tbaa !46 ; 2 uses
  %i.bhy = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.bhz = load ptr, ptr %i.bhy, align 8, !tbaa !21 ; 3 uses
  %i.bia = load i64, ptr %i.bhz, align 8          ; 3 uses
  %i.bib = and i64 %i.bia, 1152920405095219200
  %.not.i.i.i.i.i.i844 = icmp eq i64 %i.bib, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i844, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, label %bb.pd, !prof !23

bb.pd:                                            ; preds = %.lr.ph.i.i.i843
  %i.bic = add i64 %i.bia, 1152920405095219200
  %i.bid = and i64 %i.bic, 1152920405095219200    ; 2 uses
  %i.bie = and i64 %i.bia, -1152920405095219201
  %i.bif = or disjoint i64 %i.bid, %i.bie
  store i64 %i.bif, ptr %i.bhz, align 8
  %i.big = icmp eq i64 %i.bid, 0
  br i1 %i.big, label %bb.pe, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, !prof !23

bb.pe:                                            ; preds = %bb.pd
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.bhz)
          to label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i unwind label %bb.pf

bb.pf:                                            ; preds = %bb.pe
  %i.bih = landingpad { ptr, i32 }
          catch ptr null
  %i.bii = extractvalue { ptr, i32 } %i.bih, 0
  call void @__clang_call_terminate(ptr %i.bii) #19
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i: ; preds = %bb.pe, %bb.pd, %.lr.ph.i.i.i843
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i, i64 noundef 24) #23
  %.not.i.i.i845 = icmp eq ptr %i.bhx, null
  br i1 %.not.i.i.i845, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i843, !llvm.loop !4

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN4cvc58internal12NodeTemplateILb1EEELb1EEEEE18_M_deallocate_nodeEPS6_.exit.i.i.i, %_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev.exit
  %i.bij = load ptr, ptr %26, align 8, !tbaa !60
  %i.bik = load i64, ptr %i.ye, align 8, !tbaa !61
  %i.bil = shl i64 %i.bik, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.bij, i8 0, i64 %i.bil, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yf, i8 0, i64 16, i1 false)
  %i.bim = load ptr, ptr %26, align 8, !tbaa !60  ; 2 uses
  %i.bin = icmp eq ptr %i.bim, %i.yd
  br i1 %i.bin, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit, label %bb.pg

bb.pg:                                            ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i
  %i.bio = load i64, ptr %i.ye, align 8, !tbaa !61
  %i.bip = shl i64 %i.bio, 3
  call void @_ZdlPvm(ptr noundef %i.bim, i64 noundef %i.bip) #23
  br label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit

_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i, %bb.pg
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %.loopexit1037

_ZNSt6vectorIjSaIjEED2Ev.exit688:                 ; preds = %bb.ma, %bb.mb, %bb.oh, %bb.os, %bb.ot, %bb.ns, %bb.nr, %bb.oe, %bb.lv, %bb.pb, %bb.jb, %bb.hs, %bb.hf, %bb.he, %bb.hd
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.acd, %bb.he ], [ %i.bhm, %bb.pb ], [ %i.bgm, %bb.os ], [ %i.acc, %bb.hd ], [ %.pn170, %bb.hs ], [ %.pn165.pn.pn.pn, %bb.jb ], [ %i.ace, %bb.hf ], [ %i.avd, %bb.mb ], [ %.pn202.pn.pn.pn.pn.pn.pn.pn, %bb.lv ], [ %.pn181.pn, %bb.ns ], [ %.pn184, %bb.oe ], [ %i.avc, %bb.ma ], [ %lpad.phi, %bb.ot ], [ %.pn181.pn, %bb.nr ], [ %i.beq, %bb.oh ]
  call void @_ZNSt13unordered_setIN4cvc58internal12NodeTemplateILb0EEESt4hashIS3_ESt8equal_toIS3_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20
  br label %bb.ph

bb.ph:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit688, %bb.hc
  %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn202.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIjSaIjEED2Ev.exit688 ], [ %i.acb, %bb.hc ]
  call void @_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20
  br label %.body

.loopexit1037:                                    ; preds = %bb.gl, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit403, %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb1EEES3_SaIS3_ENSt8__detail9_IdentityESt8equal_toIS3_ESt4hashIS3_ENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  %i.biq = load ptr, ptr %9, align 8, !tbaa !43   ; 3 uses
  %.not.i.i.i776 = icmp eq ptr %i.biq, null
  br i1 %.not.i.i.i776, label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, label %bb.pi

bb.pi:                                            ; preds = %.loopexit1037
  %i.bir = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.bis = ptrtoint ptr %i.bir to i64
  %i.bit = ptrtoint ptr %i.biq to i64
  %i.biu = sub i64 %i.bis, %i.bit
  call void @_ZdlPvm(ptr noundef nonnull %i.biq, i64 noundef %i.biu) #23
  br label %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit: ; preds = %.loopexit1037, %bb.pi
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %i.biv = load ptr, ptr %i.c, align 8, !tbaa !58 ; 2 uses
  %.not5.i.i.i846 = icmp eq ptr %i.biv, null
  br i1 %.not5.i.i.i846, label %_ZNSt10_HashtableIN4cvc58internal12NodeTemplateILb0EEESt4pairIKS3_NS2_ILb1EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv.exit.i, label %.lr.ph.i.i.i847

.lr.ph.i.i.i847:                                  ; preds = %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS5_ILb1EEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i
  %.06.i.i.i848 = phi ptr [ %i.biw, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN4cvc58internal12NodeTemplateILb0EEENS5_ILb1EEEELb1EEEEE18_M_deallocate_nodeEPSA_.exit.i.i.i ], [ %i.biv, %_ZNSt6vectorIN4cvc58internal12NodeTemplateILb0EEESaIS3_EED2Ev.exit ] ; 3 uses
  %i.biw = load ptr, ptr %.06.i.i.i848, align 8, !tbaa !46 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %.06.i.i.i848, i64 16
  %i.biy = load ptr, ptr %i.bix, align 8, !tbaa !21 ; 3 uses
  %i.biz = load i64, ptr %i.biy, align 8          ; 3 uses
  %i.bja = and i64 %i.biz, 1152920405095219200
end_hunk_0
