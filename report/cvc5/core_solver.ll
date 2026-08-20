inline.NumInlined: 6554
inline.NumDeleted: 1564
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4cvc58internal6theory7strings10CoreSolver16processSimpleNEqERNS2_10NormalFormES5_RjbjRSt6vectorINS2_13CoreInferInfoESaIS8_EENS0_8TypeNodeE:bb.a
  %.0811.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.19.i.i.i.i, %bb.nx ] ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.aqw = load ptr, ptr %i.aqv, align 8, !tbaa !40
  %i.aqx = load i64, ptr %i.aqw, align 8
  %i.aqy = and i64 %i.aqx, 1099511627775
  %i.aqz = icmp samesign ult i64 %i.aqy, %i.aqu   ; 3 uses
  %.19.i.i.i.i = select i1 %i.aqz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 5 uses
  %.1.in.v.i.i.i.i = select i1 %i.aqz, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !119 ; 2 uses
  %.not.i.i.i.i894 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i894, label %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, label %bb.nx, !llvm.loop !534

_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i: ; preds = %bb.nx
  %i.ara = icmp eq ptr %.19.i.i.i.i, %i.bb
  br i1 %i.ara, label %.critedge.i, label %bb.ny

bb.ny:                                            ; preds = %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.aqz, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i
  %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.arb = load ptr, ptr %.19.i.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8, !tbaa !40
  %i.arc = load i64, ptr %i.arb, align 8
  %i.ard = and i64 %i.arc, 1099511627775
  %i.are = icmp samesign ult i64 %i.aqu, %i.ard
  br i1 %i.are, label %.critedge.i, label %bb.nz

.critedge.i:                                      ; preds = %bb.ny, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit893
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.ny ], [ %.19.i.i.i.i, %_ZNSt3mapIN4cvc58internal12NodeTemplateILb1EEEbSt4lessIS3_ESaISt4pairIKS3_bEEE11lower_boundERS7_.exit.i ], [ %i.bb, %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit893 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #26
  store ptr %104, ptr %33, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #26
  %i.arf = invoke ptr @_ZNSt8_Rb_treeIN4cvc58internal12NodeTemplateILb1EEESt4pairIKS3_bESt10_Select1stIS6_ESt4lessIS3_ESaIS6_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS5_EESH_IJEEEEESt17_Rb_tree_iteratorIS6_ESt23_Rb_tree_const_iteratorIS6_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.az, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 1 dereferenceable(1) %34)
          to label %.noexc895 unwind label %bb.or

.noexc895:                                        ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #26
  br label %bb.nz

bb.nz:                                            ; preds = %.noexc895, %bb.ny
  %.sroa.06.0.i = phi ptr [ %i.arf, %.noexc895 ], [ %.19.i.i.i.i, %bb.ny ]
  %i.arg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  store i8 1, ptr %i.arg, align 1, !tbaa !111
  %i.arh = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 3 uses
  %i.ari = load ptr, ptr %i.bd, align 8, !tbaa !115
  %.not.i896 = icmp eq ptr %i.arh, %i.ari
  br i1 %.not.i896, label %bb.ob, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  invoke void @_ZN4cvc58internal6theory7strings13CoreInferInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(225) %i.arh, ptr noundef nonnull align 8 dereferenceable(225) %99)
          to label %.noexc897 unwind label %bb.or

.noexc897:                                        ; preds = %bb.oa
  %i.arj = load ptr, ptr %i.bc, align 8, !tbaa !113
  %i.ark = getelementptr inbounds nuw i8, ptr %i.arj, i64 232
  store ptr %i.ark, ptr %i.bc, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit

bb.ob:                                            ; preds = %bb.nz
  invoke void @_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.arh, ptr noundef nonnull align 8 dereferenceable(225) %99)
          to label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit unwind label %bb.or

_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit: ; preds = %.noexc897, %bb.ob
  %i.arl = load ptr, ptr %104, align 8, !tbaa !40 ; 3 uses
  %i.arm = load i64, ptr %i.arl, align 8          ; 3 uses
  %i.arn = and i64 %i.arm, 1152920405095219200
  %.not.i.i899 = icmp eq i64 %i.arn, 1152920405095219200
  br i1 %.not.i.i899, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit901, label %bb.oc, !prof !42

bb.oc:                                            ; preds = %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit
  %i.aro = add i64 %i.arm, 1152920405095219200
  %i.arp = and i64 %i.aro, 1152920405095219200    ; 2 uses
  %i.arq = and i64 %i.arm, -1152920405095219201
  %i.arr = or disjoint i64 %i.arp, %i.arq
  store i64 %i.arr, ptr %i.arl, align 8
  %i.ars = icmp eq i64 %i.arp, 0
  br i1 %i.ars, label %bb.od, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit901, !prof !42

bb.od:                                            ; preds = %bb.oc
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.arl)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit901 unwind label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.art = landingpad { ptr, i32 }
          catch ptr null
  %i.aru = extractvalue { ptr, i32 } %i.art, 0
  call void @__clang_call_terminate(ptr %i.aru) #28
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit901: ; preds = %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit, %bb.oc, %bb.od
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #26
  br label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911.thread

bb.of:                                            ; preds = %bb.lr
  %i.arv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ake

bb.og:                                            ; preds = %bb.me, %bb.mb, %bb.ly, %bb.lv
  %i.arw = landingpad { ptr, i32 }
          cleanup
  br label %bb.akd

bb.oh:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit861
  %i.arx = landingpad { ptr, i32 }
          cleanup
  br label %bb.akd

bb.oi:                                            ; preds = %bb.mk, %bb.mi, %bb.mg
  %i.ary = landingpad { ptr, i32 }
          cleanup
  br label %bb.akd

bb.oj:                                            ; preds = %bb.ml
  %i.arz = landingpad { ptr, i32 }
          cleanup
  br label %.body866

bb.ok:                                            ; preds = %bb.ms
  %i.asa = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

bb.ol:                                            ; preds = %bb.mz, %bb.mw
  %i.asb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %105) #26
  br label %bb.om

bb.om:                                            ; preds = %bb.ol, %bb.ok
  %.pn474 = phi { ptr, i32 } [ %i.asb, %bb.ol ], [ %i.asa, %bb.ok ]
  call void @llvm.lifetime.end.p0(ptr nonnull %105) #26
  br label %bb.os

bb.on:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit876
  %i.asc = landingpad { ptr, i32 }
          cleanup
  br label %bb.oq

bb.oo:                                            ; preds = %bb.nd
  %i.asd = landingpad { ptr, i32 }
          cleanup
  br label %.body879

bb.op:                                            ; preds = %bb.nq, %bb.nn
  %i.ase = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %107) #26
  br label %.body879

.body879:                                         ; preds = %bb.oo, %bb.nj, %bb.op
  %.pn476 = phi { ptr, i32 } [ %i.ase, %bb.op ], [ %i.asd, %bb.oo ], [ %.pn5.i877, %bb.nj ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %108) #26
  br label %bb.oq

bb.oq:                                            ; preds = %.body879, %bb.on
  %.pn476.pn = phi { ptr, i32 } [ %.pn476, %.body879 ], [ %i.asc, %bb.on ]
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %107) #26
  br label %bb.os

bb.or:                                            ; preds = %bb.ob, %bb.oa, %.critedge.i
  %i.asf = landingpad { ptr, i32 }
          cleanup
  br label %bb.os

bb.os:                                            ; preds = %bb.or, %bb.oq, %bb.om
  %.pn479 = phi { ptr, i32 } [ %i.asf, %bb.or ], [ %.pn476.pn, %bb.oq ], [ %.pn474, %bb.om ]
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %104) #26
  br label %.body866

.body866:                                         ; preds = %bb.oj, %bb.mr, %bb.os
  %.pn479.pn = phi { ptr, i32 } [ %.pn479, %bb.os ], [ %i.arz, %bb.oj ], [ %.pn5.i, %bb.mr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %104) #26
  br label %bb.akd

.critedge531.thread:                              ; preds = %bb.mh, %bb.mj, %bb.mf, %.critedge531
  %i.asg = load i32, ptr %3, align 4, !tbaa !170  ; 3 uses
  %i.ash = sext i32 %i.asg to i64                 ; 4 uses
  %i.asi = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.asj = getelementptr inbounds nuw [8 x i8], ptr %i.asi, i64 %i.ash
  %i.ask = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.asj)
          to label %.noexc906 unwind label %bb.pd

.noexc906:                                        ; preds = %.critedge531.thread
  br i1 %i.ask, label %..loopexit_crit_edge.i, label %bb.ot

..loopexit_crit_edge.i:                           ; preds = %.noexc906
  %.pre.i = load ptr, ptr %i.ae, align 8, !tbaa !46
  br label %.loopexit.i905

bb.ot:                                            ; preds = %.noexc906
  %i.asl = load ptr, ptr %i.ag, align 8, !tbaa !47
  %i.asm = load ptr, ptr %i.ae, align 8, !tbaa !46 ; 5 uses
  %i.asn = ptrtoint ptr %i.asl to i64
  %i.aso = ptrtoint ptr %i.asm to i64
  %i.asp = sub i64 %i.asn, %i.aso
  %i.asq = lshr exact i64 %i.asp, 3
  %i.asr = trunc i64 %i.asq to i32
  %i.ass = sub i32 %i.asr, %5                     ; 2 uses
  %.0.i4404 = add i32 %i.asg, 1                   ; 2 uses
  %171 = icmp ult i32 %.0.i4404, %i.ass
  br i1 %171, label %.lr.ph4407.preheader, label %.loopexit.i905

.lr.ph4407.preheader:                             ; preds = %bb.ot
  %i.ast = load ptr, ptr %i.af, align 8, !tbaa !46
  %i.asu = getelementptr inbounds nuw [8 x i8], ptr %i.ast, i64 %i.ash
  %i.asv = load ptr, ptr %i.asu, align 8, !tbaa !40
  br label %.lr.ph4407

bb.ou:                                            ; preds = %.lr.ph4407
  %.0.i = add i32 %.0.i4405, 1                    ; 2 uses
  %172 = icmp ult i32 %.0.i, %i.ass
  br i1 %172, label %.lr.ph4407, label %.loopexit.i905, !llvm.loop !535

.lr.ph4407:                                       ; preds = %.lr.ph4407.preheader, %bb.ou
  %.0.i4405 = phi i32 [ %.0.i, %bb.ou ], [ %.0.i4404, %.lr.ph4407.preheader ] ; 3 uses
  %173 = zext i32 %.0.i4405 to i64
  %i.asw = getelementptr inbounds nuw [8 x i8], ptr %i.asm, i64 %173
  %i.asx = load ptr, ptr %i.asw, align 8, !tbaa !40
  %i.asy = icmp eq ptr %i.asx, %i.asv
  br i1 %i.asy, label %..loopexit.i905.loopexit_crit_edge4408, label %bb.ou, !llvm.loop !535

..loopexit.i905.loopexit_crit_edge4408:           ; preds = %.lr.ph4407
  br label %.loopexit.i905, !llvm.loop !535

.loopexit.i905:                                   ; preds = %bb.ou, %bb.ot, %..loopexit.i905.loopexit_crit_edge4408, %..loopexit_crit_edge.i
  %i.asz = phi ptr [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.asm, %bb.ot ], [ %i.asm, %..loopexit.i905.loopexit_crit_edge4408 ], [ %i.asm, %bb.ou ]
  %.sroa.0.0.i = phi i32 [ -1, %..loopexit_crit_edge.i ], [ -1, %bb.ot ], [ %.0.i4405, %..loopexit.i905.loopexit_crit_edge4408 ], [ -1, %bb.ou ] ; 3 uses
  %i.ata = getelementptr inbounds nuw [8 x i8], ptr %i.asz, i64 %i.ash
  %i.atb = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ata)
          to label %.noexc907 unwind label %bb.pd

.noexc907:                                        ; preds = %.loopexit.i905
  br i1 %i.atb, label %.loopexit.1.i, label %bb.ov

bb.ov:                                            ; preds = %.noexc907
  %i.atc = load ptr, ptr %i.ai, align 8, !tbaa !47
  %i.atd = load ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %i.ate = ptrtoint ptr %i.atc to i64
  %i.atf = ptrtoint ptr %i.atd to i64
  %i.atg = sub i64 %i.ate, %i.atf
  %i.ath = lshr exact i64 %i.atg, 3
  %i.ati = trunc i64 %i.ath to i32
  %i.atj = sub i32 %i.ati, %5                     ; 2 uses
  %.0.1.i4410 = add i32 %i.asg, 1                 ; 2 uses
  %174 = icmp ult i32 %.0.1.i4410, %i.atj
  br i1 %174, label %.lr.ph4413.preheader, label %.loopexit.1.i

.lr.ph4413.preheader:                             ; preds = %bb.ov
  %i.atk = load ptr, ptr %i.ae, align 8, !tbaa !46
  %i.atl = getelementptr inbounds nuw [8 x i8], ptr %i.atk, i64 %i.ash
  %i.atm = load ptr, ptr %i.atl, align 8, !tbaa !40
  br label %.lr.ph4413

bb.ow:                                            ; preds = %.lr.ph4413
  %.0.1.i = add i32 %.0.1.i4411, 1                ; 2 uses
  %175 = icmp ult i32 %.0.1.i, %i.atj
  br i1 %175, label %.lr.ph4413, label %.loopexit.1.i, !llvm.loop !535

.lr.ph4413:                                       ; preds = %.lr.ph4413.preheader, %bb.ow
  %.0.1.i4411 = phi i32 [ %.0.1.i, %bb.ow ], [ %.0.1.i4410, %.lr.ph4413.preheader ] ; 3 uses
  %176 = zext i32 %.0.1.i4411 to i64
  %i.atn = getelementptr inbounds nuw [8 x i8], ptr %i.atd, i64 %176
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !40
  %i.atp = icmp eq ptr %i.ato, %i.atm
  br i1 %i.atp, label %..loopexit.1.i.loopexit_crit_edge4415, label %bb.ow, !llvm.loop !535

..loopexit.1.i.loopexit_crit_edge4415:            ; preds = %.lr.ph4413
  br label %.loopexit.1.i, !llvm.loop !535

.loopexit.1.i:                                    ; preds = %bb.ow, %bb.ov, %..loopexit.1.i.loopexit_crit_edge4415, %.noexc907
  %.sroa.5.0.i = phi i32 [ -1, %.noexc907 ], [ %.0.1.i4411, %..loopexit.1.i.loopexit_crit_edge4415 ], [ -1, %bb.ov ], [ -1, %bb.ow ] ; 2 uses
  %i.atq = and i32 %.sroa.5.0.i, %.sroa.0.0.i
  %or.cond.i.not = icmp eq i32 %i.atq, -1
  %brmerge = or i1 %4, %or.cond.i.not
  br i1 %brmerge, label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911, label %bb.ox

bb.ox:                                            ; preds = %.loopexit.1.i
  invoke void @_ZN4cvc58internal6theory7strings10NormalForm25getExplanationForPrefixEqERS3_S4_iiRSt6vectorINS0_12NodeTemplateILb1EEESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef -1, i32 noundef -1, ptr noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.oy unwind label %bb.pd

bb.oy:                                            ; preds = %bb.ox
  %.not388 = icmp eq i32 %.sroa.0.0.i, -1         ; 3 uses
  %i.atr = select i1 %.not388, ptr %2, ptr %1
  %i.ats = select i1 %.not388, ptr %1, ptr %2
  %i.att = select i1 %.not388, i32 %.sroa.5.0.i, i32 %.sroa.0.0.i
  %i.atu = load i32, ptr %3, align 4, !tbaa !170
  %i.atv = invoke noundef i32 @_ZN4cvc58internal6theory7strings10CoreSolver11processLoopERNS2_10NormalFormES5_iiRNS2_13CoreInferInfoE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.atr, ptr noundef nonnull align 8 dereferenceable(112) %i.ats, i32 noundef %i.att, i32 noundef %i.atu, ptr noundef nonnull align 8 dereferenceable(225) %99)
          to label %bb.oz unwind label %bb.pe

bb.oz:                                            ; preds = %bb.oy
  switch i32 %i.atv, label %bb.pf [
    i32 0, label %bb.pa
    i32 1, label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911.thread
  ]

bb.pa:                                            ; preds = %bb.oz
  %i.atw = load ptr, ptr %i.bc, align 8, !tbaa !113 ; 3 uses
  %i.atx = load ptr, ptr %i.bd, align 8, !tbaa !115
  %.not.i908 = icmp eq ptr %i.atw, %i.atx
  br i1 %.not.i908, label %bb.pc, label %bb.pb

bb.pb:                                            ; preds = %bb.pa
  invoke void @_ZN4cvc58internal6theory7strings13CoreInferInfoC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(225) %i.atw, ptr noundef nonnull align 8 dereferenceable(225) %99)
          to label %.noexc909 unwind label %bb.pe

.noexc909:                                        ; preds = %bb.pb
  %i.aty = load ptr, ptr %i.bc, align 8, !tbaa !113
  %i.atz = getelementptr inbounds nuw i8, ptr %i.aty, i64 232
  store ptr %i.atz, ptr %i.bc, align 8, !tbaa !113
  br label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911.thread

bb.pc:                                            ; preds = %bb.pa
  invoke void @_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.atw, ptr noundef nonnull align 8 dereferenceable(225) %99)
          to label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911.thread unwind label %bb.pe

bb.pd:                                            ; preds = %.loopexit.i905, %.critedge531.thread, %bb.pk, %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911, %bb.ox
  %i.aua = landingpad { ptr, i32 }
          cleanup
  br label %bb.akd

bb.pe:                                            ; preds = %bb.pc, %bb.pb, %bb.oy
  %i.aub = landingpad { ptr, i32 }
          cleanup
  br label %bb.akd

bb.pf:                                            ; preds = %bb.oz
  %i.auc = load ptr, ptr %i.be, align 8, !tbaa !46 ; 3 uses
  %i.aud = load ptr, ptr %i.bf, align 8, !tbaa !47 ; 2 uses
  %.not.i.i912 = icmp eq ptr %i.aud, %i.auc
  br i1 %.not.i.i912, label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911, label %.lr.ph.i.i.i.i913

.lr.ph.i.i.i.i913:                                ; preds = %bb.pf, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.auo, %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i ], [ %i.auc, %bb.pf ] ; 2 uses
  %i.aue = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !40 ; 3 uses
  %i.auf = load i64, ptr %i.aue, align 8          ; 3 uses
  %i.aug = and i64 %i.auf, 1152920405095219200
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.aug, 1152920405095219200
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, label %bb.pg, !prof !42

bb.pg:                                            ; preds = %.lr.ph.i.i.i.i913
  %i.auh = add i64 %i.auf, 1152920405095219200
  %i.aui = and i64 %i.auh, 1152920405095219200    ; 2 uses
  %i.auj = and i64 %i.auf, -1152920405095219201
  %i.auk = or disjoint i64 %i.aui, %i.auj
  store i64 %i.auk, ptr %i.aue, align 8
  %i.aul = icmp eq i64 %i.aui, 0
  br i1 %i.aul, label %bb.ph, label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i, !prof !42

bb.ph:                                            ; preds = %bb.pg
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aue)
          to label %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i unwind label %bb.pi

bb.pi:                                            ; preds = %bb.ph
  %i.aum = landingpad { ptr, i32 }
          catch ptr null
  %i.aun = extractvalue { ptr, i32 } %i.aum, 0
  call void @__clang_call_terminate(ptr %i.aun) #28
  unreachable

_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i: ; preds = %bb.ph, %bb.pg, %.lr.ph.i.i.i.i913
  %i.auo = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i914 = icmp eq ptr %i.auo, %i.aud
  br i1 %.not.i.i.i.i914, label %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i913, !llvm.loop !48

_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN4cvc58internal12NodeTemplateILb1EEEEvPT_.exit.i.i.i.i
  store ptr %i.auc, ptr %i.bf, align 8, !tbaa !47
  br label %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911

_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911: ; preds = %.loopexit.1.i, %bb.pf, %_ZSt8_DestroyIPN4cvc58internal12NodeTemplateILb1EEES3_EvT_S5_RSaIT0_E.exit.i.i
  %i.aup = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.pj unwind label %bb.pd

bb.pj:                                            ; preds = %_ZNSt6vectorIN4cvc58internal6theory7strings13CoreInferInfoESaIS4_EE9push_backERKS4_.exit911
  br i1 %i.aup, label %bb.pm, label %bb.pk

bb.pk:                                            ; preds = %bb.pj
  %i.auq = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %57)
          to label %bb.pl unwind label %bb.pd

bb.pl:                                            ; preds = %bb.pk
  br i1 %i.auq, label %bb.pm, label %bb.aak

bb.pm:                                            ; preds = %bb.pl, %bb.pj
  %i.aur = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.pn unwind label %bb.st

bb.pn:                                            ; preds = %bb.pm
  %i.aus = select i1 %i.aur, ptr %1, ptr %2       ; 3 uses
  %i.aut = getelementptr inbounds nuw i8, ptr %i.aus, i64 8
  %i.auu = invoke noundef zeroext i1 @_ZNK4cvc58internal12NodeTemplateILb1EE7isConstEv(ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %bb.po unwind label %bb.su

bb.po:                                            ; preds = %bb.pn
  %i.auv = select i1 %i.auu, ptr %2, ptr %1       ; 3 uses
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %109) #26
  %i.aux = load i32, ptr %3, align 4, !tbaa !170
  %i.auy = zext i32 %i.aux to i64
  %i.auz = load ptr, ptr %i.auw, align 8, !tbaa !46
  %i.ava = getelementptr inbounds nuw [8 x i8], ptr %i.auz, i64 %i.auy
  %i.avb = load ptr, ptr %i.ava, align 8, !tbaa !40 ; 10 uses
  store ptr %i.avb, ptr %109, align 8, !tbaa !40
  %i.avc = load i64, ptr %i.avb, align 8          ; 3 uses
  %i.avd = lshr i64 %i.avc, 40
  %i.ave = trunc nuw nsw i64 %i.avd to i32
  %i.avf = and i32 %i.ave, 1048575                ; 3 uses
  %i.avg = icmp samesign ult i32 %i.avf, 1048574
  br i1 %i.avg, label %bb.pp, label %bb.pq, !prof !110

bb.pp:                                            ; preds = %bb.po
  %i.avh = add nuw nsw i32 %i.avf, 1
  %i.avi = zext nneg i32 %i.avh to i64
  %i.avj = shl nuw nsw i64 %i.avi, 40
  %i.avk = and i64 %i.avc, -1152920405095219201
  %i.avl = or i64 %i.avj, %i.avk
  store i64 %i.avl, ptr %i.avb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916

bb.pq:                                            ; preds = %bb.po
  %i.avm = icmp eq i32 %i.avf, 1048574
  br i1 %i.avm, label %bb.pr, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916, !prof !42

bb.pr:                                            ; preds = %bb.pq
  %i.avn = or i64 %i.avc, 1152920405095219200
  store i64 %i.avn, ptr %i.avb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916 unwind label %bb.sv

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916: ; preds = %bb.pq, %bb.pp, %bb.pr
  call void @llvm.lifetime.start.p0(ptr nonnull %110) #26
  %i.avo = load ptr, ptr %i.aj, align 8, !tbaa !137, !nonnull !123, !align !124
  store ptr %i.avb, ptr %111, align 8, !tbaa !40
  %i.avp = load i64, ptr %i.avb, align 8          ; 3 uses
  %i.avq = lshr i64 %i.avp, 40
  %i.avr = trunc nuw nsw i64 %i.avq to i32
  %i.avs = and i32 %i.avr, 1048575                ; 3 uses
  %i.avt = icmp samesign ult i32 %i.avs, 1048574
  br i1 %i.avt, label %bb.ps, label %bb.pt, !prof !110

bb.ps:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916
  %i.avu = add nuw nsw i32 %i.avs, 1
  %i.avv = zext nneg i32 %i.avu to i64
  %i.avw = shl nuw nsw i64 %i.avv, 40
  %i.avx = and i64 %i.avp, -1152920405095219201
  %i.avy = or i64 %i.avw, %i.avx
  store i64 %i.avy, ptr %i.avb, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit918

bb.pt:                                            ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit916
  %i.avz = icmp eq i32 %i.avs, 1048574
  br i1 %i.avz, label %bb.pu, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit918, !prof !42

bb.pu:                                            ; preds = %bb.pt
  %i.awa = or i64 %i.avp, 1152920405095219200
  store i64 %i.awa, ptr %i.avb, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.avb)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit918 unwind label %bb.sw

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit918: ; preds = %bb.pt, %bb.ps, %bb.pu
  invoke void @_ZN4cvc58internal6theory7strings11SolverState15explainNonEmptyENS0_12NodeTemplateILb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %110, ptr noundef nonnull align 8 dereferenceable(560) %i.avo, ptr noundef nonnull align 8 %111)
          to label %bb.pv unwind label %bb.sx

end_hunk_0
