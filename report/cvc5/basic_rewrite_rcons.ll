Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/basic_rewrite_rcons?download=true
inline.NumInlined: 5272
inline.NumDeleted: 1000
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN4cvc58internal8rewriter17BasicRewriteRCons32ensureProofMacroQuantVarElimIneqEPNS0_7CDProofERKNS0_12NodeTemplateILb1EEE:bb.a
  %.not.i.i1330 = icmp eq i32 %i.cad, 0
  br i1 %.not.i.i1330, label %bb.aca, label %bb.abx

bb.abx:                                           ; preds = %bb.abw
  %i.cae = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.aby unwind label %bb.abz   ; 3 uses

bb.aby:                                           ; preds = %bb.abx
  store i64 1152920405095219200, ptr %i.cae, align 8
  %i.caf = getelementptr inbounds nuw i8, ptr %i.cae, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.caf, i8 0, i64 16, i1 false)
  store ptr %i.cae, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %bb.aca

bb.abz:                                           ; preds = %bb.abx
  %i.cag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body1331

bb.aca:                                           ; preds = %bb.aby, %bb.abw, %bb.abv
  %i.cah = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  store ptr %i.cah, ptr %191, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %192) #25
  %i.cai = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.caj = icmp eq i8 %i.cai, 0
  br i1 %i.caj, label %bb.acb, label %bb.acf, !prof !57

bb.acb:                                           ; preds = %bb.aca
  %i.cak = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i1334 = icmp eq i32 %i.cak, 0
  br i1 %.not.i.i1334, label %bb.acf, label %bb.acc

bb.acc:                                           ; preds = %bb.acb
  %i.cal = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.acd unwind label %bb.ace   ; 3 uses

bb.acd:                                           ; preds = %bb.acc
  store i64 1152920405095219200, ptr %i.cal, align 8
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cal, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cam, i8 0, i64 16, i1 false)
  store ptr %i.cal, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %bb.acf

bb.ace:                                           ; preds = %bb.acc
  %i.can = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body1335

bb.acf:                                           ; preds = %bb.acd, %bb.acb, %bb.aca
  %i.cao = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  store ptr %i.cao, ptr %192, align 8, !tbaa !34
  %i.cap = load ptr, ptr %74, align 8, !tbaa !34  ; 5 uses
  store ptr %i.cap, ptr %193, align 8, !tbaa !34
  %i.caq = load i64, ptr %i.cap, align 8          ; 3 uses
  %i.car = lshr i64 %i.caq, 40
  %i.cas = trunc nuw nsw i64 %i.car to i32
  %i.cat = and i32 %i.cas, 1048575                ; 3 uses
  %i.cau = icmp samesign ult i32 %i.cat, 1048574
  br i1 %i.cau, label %bb.acg, label %bb.ach, !prof !36

bb.acg:                                           ; preds = %bb.acf
  %i.cav = add nuw nsw i32 %i.cat, 1
  %i.caw = zext nneg i32 %i.cav to i64
  %i.cax = shl nuw nsw i64 %i.caw, 40
  %i.cay = and i64 %i.caq, -1152920405095219201
  %i.caz = or i64 %i.cax, %i.cay
  store i64 %i.caz, ptr %i.cap, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339

bb.ach:                                           ; preds = %bb.acf
  %i.cba = icmp eq i32 %i.cat, 1048574
  br i1 %i.cba, label %bb.aci, label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339, !prof !37

bb.aci:                                           ; preds = %bb.ach
  %i.cbb = or i64 %i.caq, 1152920405095219200
  store i64 %i.cbb, ptr %i.cap, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cap)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339 unwind label %bb.act

_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339: ; preds = %bb.ach, %bb.acg, %bb.aci
  %i.cbc = invoke noundef i32 @_ZN4cvc58internal6theory9ArithMSum7isolateENS0_12NodeTemplateILb1EEERKSt3mapIS4_S4_St4lessIS4_ESaISt4pairIKS4_S4_EEERS4_SF_NS0_4kind6Kind_tE(ptr noundef nonnull align 8 %193, ptr noundef nonnull align 8 dereferenceable(48) %189, ptr noundef nonnull align 8 dereferenceable(8) %191, ptr noundef nonnull align 8 dereferenceable(8) %192, i32 noundef %i.caa)
          to label %bb.acj unwind label %bb.acu   ; 3 uses

bb.acj:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339
  %i.cbd = load ptr, ptr %193, align 8, !tbaa !34 ; 3 uses
  %i.cbe = load i64, ptr %i.cbd, align 8          ; 3 uses
  %i.cbf = and i64 %i.cbe, 1152920405095219200
  %.not.i.i1340 = icmp eq i64 %i.cbf, 1152920405095219200
  br i1 %.not.i.i1340, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1342, label %bb.ack, !prof !37

bb.ack:                                           ; preds = %bb.acj
  %i.cbg = add i64 %i.cbe, 1152920405095219200
  %i.cbh = and i64 %i.cbg, 1152920405095219200    ; 2 uses
  %i.cbi = and i64 %i.cbe, -1152920405095219201
  %i.cbj = or disjoint i64 %i.cbh, %i.cbi
  store i64 %i.cbj, ptr %i.cbd, align 8
  %i.cbk = icmp eq i64 %i.cbh, 0
  br i1 %i.cbk, label %bb.acl, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1342, !prof !37

bb.acl:                                           ; preds = %bb.ack
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cbd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1342 unwind label %bb.acm

bb.acm:                                           ; preds = %bb.acl
  %i.cbl = landingpad { ptr, i32 }
          catch ptr null
  %i.cbm = extractvalue { ptr, i32 } %i.cbl, 0
  call void @__clang_call_terminate(ptr %i.cbm) #26
  unreachable

_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1342: ; preds = %bb.acj, %bb.ack, %bb.acl
  %i.cbn = icmp eq i32 %i.cbc, 0
  br i1 %i.cbn, label %bb.aft, label %bb.acn

bb.acn:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1342
  %i.cbo = load ptr, ptr %191, align 8, !tbaa !34
  %i.cbp = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.cbq = icmp eq i8 %i.cbp, 0
  br i1 %i.cbq, label %bb.aco, label %bb.acs, !prof !57

bb.aco:                                           ; preds = %bb.acn
  %i.cbr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i1343 = icmp eq i32 %i.cbr, 0
  br i1 %.not.i.i1343, label %bb.acs, label %bb.acp

bb.acp:                                           ; preds = %bb.aco
  %i.cbs = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.acq unwind label %bb.acr   ; 3 uses

bb.acq:                                           ; preds = %bb.acp
  store i64 1152920405095219200, ptr %i.cbs, align 8
  %i.cbt = getelementptr inbounds nuw i8, ptr %i.cbs, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cbt, i8 0, i64 16, i1 false)
  store ptr %i.cbs, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %bb.acs

bb.acr:                                           ; preds = %bb.acp
  %i.cbu = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body1344

bb.acs:                                           ; preds = %bb.acq, %bb.aco, %bb.acn
  %i.cbv = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  %i.cbw = icmp eq ptr %i.cbo, %i.cbv
  br i1 %i.cbw, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1376, label %bb.aft

bb.act:                                           ; preds = %bb.aci
  %i.cbx = landingpad { ptr, i32 }
          cleanup
  br label %.body1344

bb.acu:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEC2ERKS2_.exit1339
  %i.cby = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %193) #25
  br label %.body1344

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1376: ; preds = %bb.acs
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #25
  %i.cbz = load atomic i8, ptr @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null acquire, align 8
  %i.cca = icmp eq i8 %i.cbz, 0
  br i1 %i.cca, label %bb.acv, label %bb.acz, !prof !57

bb.acv:                                           ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1376
  %i.ccb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  %.not.i.i1377 = icmp eq i32 %i.ccb, 0
  br i1 %.not.i.i1377, label %bb.acz, label %bb.acw

bb.acw:                                           ; preds = %bb.acv
  %i.ccc = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %bb.acx unwind label %bb.acy   ; 3 uses

bb.acx:                                           ; preds = %bb.acw
  store i64 1152920405095219200, ptr %i.ccc, align 8
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.ccc, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ccd, i8 0, i64 16, i1 false)
  store ptr %i.ccc, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %bb.acz

bb.acy:                                           ; preds = %bb.acw
  %i.cce = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4cvc58internal4expr9NodeValue4nullEvE6s_null) #25
  br label %.body1378

bb.acz:                                           ; preds = %bb.acx, %bb.acv, %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1376
  %i.ccf = load ptr, ptr @_ZZN4cvc58internal4expr9NodeValue4nullEvE6s_null, align 8, !tbaa !35
  store ptr %i.ccf, ptr %194, align 8, !tbaa !34
  %i.ccg = icmp eq i32 %i.caa, 79
  br i1 %i.ccg, label %bb.ada, label %bb.adt

bb.ada:                                           ; preds = %bb.acz
  %i.cch = icmp ne i32 %i.cbc, 1
  %i.cci = xor i1 %i.bxu, %i.cch                  ; 2 uses
  %i.ccj = zext i1 %i.cci to i8
  %295 = trunc i8 %.04483145 to i1
  %296 = xor i1 %i.cci, %295
  %or.cond = select i1 %.04563144, i1 %296, i1 false
  br i1 %or.cond, label %_ZN4cvc58internal12NodeTemplateILb1EED2Ev.exit1502, label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1394

_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1394: ; preds = %bb.ada
  %i.cck = icmp slt i32 %i.cbc, 0                 ; 2 uses
  %spec.select = select i1 %i.cck, i32 77, i32 79
  %. = select i1 %i.cck, i32 78, i32 76
  %.1463 = select i1 %i.bxu, i32 %., i32 %spec.select
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #25
  %i.ccl = load ptr, ptr %74, align 8, !tbaa !34  ; 2 uses
  %i.ccm = load ptr, ptr %192, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25, !noalias !1178
  %i.ccn = getelementptr inbounds nuw i8, ptr %i.ccl, i64 16
  %i.cco = load ptr, ptr %i.ccn, align 8, !tbaa !50, !noalias !1178
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef %i.cco, i32 noundef %.1463)
          to label %.noexc1396 unwind label %bb.adr

.noexc1396:                                       ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1394
  store ptr %i.ccl, ptr %42, align 8, !tbaa !52, !noalias !1178
  %i.ccp = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %41, ptr noundef nonnull align 8 %42)
          to label %bb.adb unwind label %bb.ade, !noalias !1178

bb.adb:                                           ; preds = %.noexc1396
  store ptr %i.ccm, ptr %43, align 8, !tbaa !52, !noalias !1178
  %i.ccq = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ccp, ptr noundef nonnull align 8 %43)
          to label %bb.adc unwind label %bb.adf, !noalias !1178 ; 0 uses

bb.adc:                                           ; preds = %bb.adb
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %195, ptr noundef nonnull align 8 dereferenceable(124) %41)
          to label %bb.adh unwind label %bb.add

bb.add:                                           ; preds = %bb.adc
  %i.ccr = landingpad { ptr, i32 }
          cleanup
  br label %bb.adg

bb.ade:                                           ; preds = %.noexc1396
  %i.ccs = landingpad { ptr, i32 }
          cleanup
  br label %bb.adg

bb.adf:                                           ; preds = %bb.adb
  %i.cct = landingpad { ptr, i32 }
          cleanup
  br label %bb.adg

bb.adg:                                           ; preds = %bb.adf, %bb.ade, %bb.add
  %.pn5.i1395 = phi { ptr, i32 } [ %i.ccr, %bb.add ], [ %i.cct, %bb.adf ], [ %i.ccs, %bb.ade ]
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25, !noalias !1178
  br label %.body1397

bb.adh:                                           ; preds = %bb.adc
  call void @_ZN4cvc58internal11NodeBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(124) dereferenceable(124) %41) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #25, !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @llvm.lifetime.end.p0(ptr nonnull %43)
  %i.ccu = load ptr, ptr %194, align 8, !tbaa !34 ; 4 uses
  %i.ccv = load ptr, ptr %195, align 8, !tbaa !34
  %.not.i1400 = icmp eq ptr %i.ccu, %i.ccv
  br i1 %.not.i1400, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405, label %bb.adi, !prof !37

bb.adi:                                           ; preds = %bb.adh
  %i.ccw = load i64, ptr %i.ccu, align 8          ; 3 uses
  %i.ccx = and i64 %i.ccw, 1152920405095219200
  %.not.i.i1401 = icmp eq i64 %i.ccx, 1152920405095219200
  br i1 %.not.i.i1401, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402, label %bb.adj, !prof !37

bb.adj:                                           ; preds = %bb.adi
  %i.ccy = add i64 %i.ccw, 1152920405095219200
  %i.ccz = and i64 %i.ccy, 1152920405095219200    ; 2 uses
  %i.cda = and i64 %i.ccw, -1152920405095219201
  %i.cdb = or disjoint i64 %i.ccz, %i.cda
  store i64 %i.cdb, ptr %i.ccu, align 8
  %i.cdc = icmp eq i64 %i.ccz, 0
  br i1 %i.cdc, label %bb.adk, label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402, !prof !37

bb.adk:                                           ; preds = %bb.adj
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ccu)
          to label %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402 unwind label %bb.ads

_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402: ; preds = %bb.adk, %bb.adj, %bb.adi
  %i.cdd = load ptr, ptr %195, align 8, !tbaa !34 ; 5 uses
  store ptr %i.cdd, ptr %194, align 8, !tbaa !34
  %i.cde = load i64, ptr %i.cdd, align 8          ; 3 uses
  %i.cdf = lshr i64 %i.cde, 40
  %i.cdg = trunc nuw nsw i64 %i.cdf to i32
  %i.cdh = and i32 %i.cdg, 1048575                ; 3 uses
  %i.cdi = icmp samesign ult i32 %i.cdh, 1048574
  br i1 %i.cdi, label %bb.adl, label %bb.adm, !prof !36

bb.adl:                                           ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402
  %i.cdj = add nuw nsw i32 %i.cdh, 1
  %i.cdk = zext nneg i32 %i.cdj to i64
  %i.cdl = shl nuw nsw i64 %i.cdk, 40
  %i.cdm = and i64 %i.cde, -1152920405095219201
  %i.cdn = or i64 %i.cdl, %i.cdm
  store i64 %i.cdn, ptr %i.cdd, align 8
  br label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405

bb.adm:                                           ; preds = %_ZN4cvc58internal4expr9NodeValue3decEv.exit.i1402
  %i.cdo = icmp eq i32 %i.cdh, 1048574
  br i1 %i.cdo, label %bb.adn, label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405, !prof !37

bb.adn:                                           ; preds = %bb.adm
  %i.cdp = or i64 %i.cde, 1152920405095219200
  store i64 %i.cdp, ptr %i.cdd, align 8
  invoke void @_ZN4cvc58internal4expr9NodeValue20markRefCountMaxedOutEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cdd)
          to label %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405 unwind label %bb.ads

_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405: ; preds = %bb.adm, %bb.adl, %bb.adh, %bb.adn
  %i.cdq = load ptr, ptr %195, align 8, !tbaa !34 ; 3 uses
  %i.cdr = load i64, ptr %i.cdq, align 8          ; 3 uses
  %i.cds = and i64 %i.cdr, 1152920405095219200
  %.not.i.i1406 = icmp eq i64 %i.cds, 1152920405095219200
  br i1 %.not.i.i1406, label %.thread, label %bb.ado, !prof !37

bb.ado:                                           ; preds = %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405
  %i.cdt = add i64 %i.cdr, 1152920405095219200
  %i.cdu = and i64 %i.cdt, 1152920405095219200    ; 2 uses
  %i.cdv = and i64 %i.cdr, -1152920405095219201
  %i.cdw = or disjoint i64 %i.cdu, %i.cdv
  store i64 %i.cdw, ptr %i.cdq, align 8
  %i.cdx = icmp eq i64 %i.cdu, 0
  br i1 %i.cdx, label %bb.adp, label %.thread, !prof !37

bb.adp:                                           ; preds = %bb.ado
  invoke void @_ZN4cvc58internal4expr9NodeValue15markForDeletionEv(ptr noundef nonnull align 8 dereferenceable(24) %i.cdq)
          to label %.thread unwind label %bb.adq

bb.adq:                                           ; preds = %bb.adp
  %i.cdy = landingpad { ptr, i32 }
          catch ptr null
  %i.cdz = extractvalue { ptr, i32 } %i.cdy, 0
  call void @__clang_call_terminate(ptr %i.cdz) #26
  unreachable

.thread:                                          ; preds = %bb.adp, %bb.ado, %_ZN4cvc58internal12NodeTemplateILb1EEaSERKS2_.exit1405
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #25
  br label %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1445

bb.adr:                                           ; preds = %_ZN4cvc58internal11Cvc5ostreamlsEPFRSoS2_E.exit1394
  %i.cea = landingpad { ptr, i32 }
          cleanup
  br label %.body1397

bb.ads:                                           ; preds = %bb.adn, %bb.adk
  %i.ceb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4cvc58internal12NodeTemplateILb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %195) #25
  br label %.body1397

.body1397:                                        ; preds = %bb.adr, %bb.adg, %bb.ads
  %.pn505 = phi { ptr, i32 } [ %i.ceb, %bb.ads ], [ %i.cea, %bb.adr ], [ %.pn5.i1395, %bb.adg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #25
  br label %bb.agi

bb.adt:                                           ; preds = %bb.acz
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #25
  %i.cec = load ptr, ptr %74, align 8, !tbaa !34  ; 2 uses
  %i.ced = load ptr, ptr %192, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %39)
  call void @llvm.lifetime.start.p0(ptr nonnull %40)
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #25, !noalias !1179
  %i.cee = getelementptr inbounds nuw i8, ptr %i.cec, i64 16
  %i.cef = load ptr, ptr %i.cee, align 8, !tbaa !50, !noalias !1179
  invoke void @_ZN4cvc58internal11NodeBuilderC1EPNS0_11NodeManagerENS0_4kind6Kind_tE(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef %i.cef, i32 noundef 5)
          to label %.noexc1410 unwind label %bb.aer

.noexc1410:                                       ; preds = %bb.adt
  store ptr %i.cec, ptr %39, align 8, !tbaa !52, !noalias !1179
  %i.ceg = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %38, ptr noundef nonnull align 8 %39)
          to label %bb.adu unwind label %bb.adx, !noalias !1179

bb.adu:                                           ; preds = %.noexc1410
  store ptr %i.ced, ptr %40, align 8, !tbaa !52, !noalias !1179
  %i.ceh = invoke noundef nonnull align 8 dereferenceable(124) ptr @_ZN4cvc58internal11NodeBuilderlsENS0_12NodeTemplateILb0EEE(ptr noundef nonnull align 8 dereferenceable(124) %i.ceg, ptr noundef nonnull align 8 %40)
          to label %bb.adv unwind label %bb.ady, !noalias !1179 ; 0 uses

bb.adv:                                           ; preds = %bb.adu
  invoke void @_ZN4cvc58internal11NodeBuilder13constructNodeEv(ptr dead_on_unwind nonnull writable sret(%"class.cvc5::internal::NodeTemplate") align 8 %197, ptr noundef nonnull align 8 dereferenceable(124) %38)
          to label %bb.aea unwind label %bb.adw

bb.adw:                                           ; preds = %bb.adv
  %i.cei = landingpad { ptr, i32 }
          cleanup
  br label %bb.adz

bb.adx:                                           ; preds = %.noexc1410
  %i.cej = landingpad { ptr, i32 }
          cleanup
  br label %bb.adz

bb.ady:                                           ; preds = %bb.adu
  %i.cek = landingpad { ptr, i32 }
          cleanup
  br label %bb.adz

end_hunk_0
