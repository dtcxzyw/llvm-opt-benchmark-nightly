Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ArraySum?download=true
inline.NumInlined: 20032
inline.NumDeleted: 4685
loop-unroll.NumCompletelyUnrolled: 199
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 225
begin_hunk_0_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1285:                                       ; preds = %bb.ex, %bb.ey
  %indvars.iv.i.i.i.i.i.i2191284 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i225, %bb.ey ], [ 0, %bb.ex ] ; 2 uses
  %i.aau = lshr exact i64 %indvars.iv.i.i.i.i.i.i2191284, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aau
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !227
  %i.aax = icmp eq i64 %i.aaw, -1
  br i1 %i.aax, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i221:                     ; preds = %bb.ey, %bb.ex
  %.not38.i.i.i.i.i.i.i.i222 = icmp eq i32 %i.aan, %i.aas
  br i1 %.not38.i.i.i.i.i.i.i.i222, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, label %bb.ez

bb.ez:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i221
  %i.aay = lshr i32 %i.aan, 6
  %i.aaz = and i32 %i.aan, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %notmask.i40.i.i.i.i.i.i.i.i223 = shl nsw i64 -1, %i.aba
  %i.abb = zext nneg i32 %i.aay to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %i.abb
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i224 = or i64 %i.abd, %notmask.i40.i.i.i.i.i.i.i.i223
  %i.abe = icmp eq i64 %.demorgan.i.i.i.i.i.i224, -1
  %i.abf = zext i1 %i.abe to i16
  %i.abg = or disjoint i16 %i.abf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142: ; preds = %.lr.ph1285, %bb.ez, %.critedge.i.i.i.i.i.i.i.i221, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.insert.ext.i.i.i.i.i.i143 = phi i16 [ 256, %bb.ev ], [ 256, %bb.eu ], [ 257, %bb.ew ], [ 257, %.critedge.i.i.i.i.i.i.i.i221 ], [ %i.abg, %bb.ez ], [ 256, %.lr.ph1285 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143, ptr %i.aaf, align 4
  %i.abh = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226
  %.0.in.i.i.i.i.i.i145 = phi i8 [ %.0.in.pre.i.i.i.i.i.i227, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226 ], [ %i.abh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142 ]
  %.0.i.i.i.i.i.i146 = trunc nuw i8 %.0.in.i.i.i.i.i.i145 to i1
  br i1 %.0.i.i.i.i.i.i146, label %bb.fa, label %bb.fr

bb.fa:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !266 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !261 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, %i.abj
  br i1 %i.abm, label %.lr.ph.i.i.i.i.i201, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i201:                              ; preds = %bb.fa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.act, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.abl, %bb.fa ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i201
  %i.abn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0    ; 2 uses
  %i.abp = extractvalue { ptr, i32 } %i.abn, 1    ; 2 uses
  %i.abq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.abr = icmp eq i32 %i.abp, %i.abq
  br i1 %i.abr, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.abs = call ptr @__cxa_begin_catch(ptr %i.abo) #42
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !399 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !157 ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 152
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !158
  %i.abz = icmp eq i64 %i.aby, 4
  br i1 %i.abz, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, label %.loopexit.i.i.i.i.i205

.lr.ph.i.i.i.i.preheader.i.i.i.i.i207:            ; preds = %bb.fc
  %i.aca = load i8, ptr %i.abw, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i208 = icmp eq i8 %i.aca, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i208, label %tailrecurse.i.i.i.i.i.i.i.i.i209, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.i.i.i.i.i209:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i210 = icmp eq i8 %i.acc, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i210, label %tailrecurse.i.i.i.i.1.i.i.i.i.i211, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.1.i.i.i.i.i211:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i209
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 2
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i212 = icmp eq i8 %i.ace, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i212, label %tailrecurse.i.i.i.i.2.i.i.i.i.i213, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.2.i.i.i.i.i213:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i211
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abw, i64 3
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i214 = icmp eq i8 %i.acg, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i214, label %tailrecurse.i.i.i.i.3.i.i.i.i.i215, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.3.i.i.i.i.i215:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fk unwind label %bb.fm

.loopexit.i.i.i.i.i205:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213, %tailrecurse.i.i.i.i.1.i.i.i.i.i211, %tailrecurse.i.i.i.i.i.i.i.i.i209, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, %bb.fc
  invoke void @__cxa_rethrow() #44
          to label %bb.fq unwind label %bb.fj

bb.fd:                                            ; preds = %bb.fb
  %i.ach = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.aci = icmp eq i32 %i.abp, %i.ach
  br i1 %i.aci, label %bb.fe, label %.body129

bb.fe:                                            ; preds = %bb.fd
  %i.acj = call ptr @__cxa_begin_catch(ptr %i.abo) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ack = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i202 = icmp eq ptr %i.ack, null
  br i1 %.not.i.i.i.i.i.i202, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fe
  %i.acl = landingpad { ptr, i32 }
          cleanup
  %i.acm = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i205
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.aco = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.aco, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.acp = landingpad { ptr, i32 }
          cleanup
  %i.acq = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i216 = icmp eq ptr %i.acq, null
  br i1 %.not.i8.i.i.i.i.i216, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217: ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, %bb.fj
  %.pn.i.i.i.i.i.i206 = phi { ptr, i32 } [ %i.acp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217 ], [ %i.acn, %bb.fj ]
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.acr = landingpad { ptr, i32 }
          catch ptr null
  %i.acs = extractvalue { ptr, i32 } %i.acr, 0
  call void @__clang_call_terminate(ptr %i.acs) #41
  unreachable

bb.fq:                                            ; preds = %.loopexit.i.i.i.i.i205
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i201
  %i.act = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i204 = icmp eq i32 %i.act, %i.abj
  br i1 %exitcond.not.i.i.i.i.i204, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i201, !llvm.loop !1252

bb.fr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.acu = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !261 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.acu, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150, align 8
  %.not.i.i.i.i.i.i.i.i151 = icmp slt i32 %i.acw, %i.acy
  br i1 %.not.i.i.i.i.i.i.i.i151, label %bb.fs, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.acz = add i32 %i.acw, 63                     ; 2 uses
  %i.ada = srem i32 %i.acz, 64
  %i.adb = sub nsw i32 %i.acz, %i.ada             ; 6 uses
  %i.adc = and i32 %i.acy, -64                    ; 4 uses
  %i.add = icmp slt i32 %i.adc, %i.adb
  br i1 %i.add, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ade = and i32 %i.acy, 63
  %i.adf = zext nneg i32 %i.ade to i64
  %notmask.i.i.i.i.i.i.i.i.i199 = shl nsw i64 -1, %i.adf
  %i.adg = xor i64 %notmask.i.i.i.i.i.i.i.i.i199, -1
  %i.adh = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adi = zext nneg i32 %i.adh to i64
  %notmask.i.i.i.i.i.i.i.i.i.i200 = shl nsw i64 -1, %i.adi
  %i.adj = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i200, -1
  %i.adk = sub nsw i32 64, %i.adh
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = shl i64 %i.adj, %i.adl
  %i.adn = and i64 %i.adm, %i.adg
  br label %.invoke

bb.fu:                                            ; preds = %bb.fs
  %.not32.i.i.i.i.i.i.i.i152 = icmp eq i32 %i.acw, %i.adb
  br i1 %.not32.i.i.i.i.i.i.i.i152, label %.noexc232, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ado = sdiv i32 %i.acw, 64
  %i.adp = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adq = zext nneg i32 %i.adp to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i153 = shl nsw i64 -1, %i.adq
  %i.adr = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i153, -1
  %i.ads = sub nsw i32 64, %i.adp
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = shl i64 %i.adr, %i.adt
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.ado, i64 noundef %i.adu)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.fv, %bb.fu
  %i.adv = add nsw i32 %i.adb, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.adv, %i.adc
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i.i.i154:                        ; preds = %.noexc232
  %i.adw = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ady = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.aeb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fw

._crit_edge.i.i.i.i.i.i.i.i156:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc232
  %.not34.i.i.i.i.i.i.i.i157 = icmp eq i32 %i.acy, %i.adc
  br i1 %.not34.i.i.i.i.i.i.i.i157, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hu

bb.fw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i154
  %i.aec = phi i32 [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.alh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.adb, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.aec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aed = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.acu, i64 %i.aee
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aeg, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.fx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.fw
  %i.aeh = shl nsw i32 %i.aed, 6
  br label %bb.gw

bb.fx:                                            ; preds = %bb.fw
  %i.aei = shl nsw i32 %i.aed, 6                  ; 2 uses
  %i.aej = add i32 %i.aei, 64
  %i.aek = sext i32 %i.aej to i64
  %.0.off.i.i.i.i.i.i.i.i159 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i159, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fx
  %i.ael = sext i32 %i.aei to i64
  br label %bb.fy

bb.fy:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ael, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.ahu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.aem = load ptr, ptr %.sroa.46.0..sroa_idx.i.i138, align 8, !tbaa !401, !nonnull !196, !align !378
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !370 ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i160 = load ptr, ptr %i.aeo, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i161 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.aep = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i161, 32 ; 3 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i160, i64 %i.aep
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !151 ; 2 uses
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fy
  %i.aet = load ptr, ptr %.sroa.57.0..sroa_idx.i.i139, align 8, !tbaa !402, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i191 = load ptr, ptr %i.aet, align 8
  %i.aeu = getelementptr i8, ptr %i.aen, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i192 = load ptr, ptr %i.aeu, align 8, !tbaa !294
  %i.aev = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i192, i64 %i.aep
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !151 ; 2 uses
  %i.aex = add nsw i32 %i.aew, %i.aer
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i191, align 8, !tbaa !364
  %i.aey = sext i32 %i.aew to i64
  %i.aez = sext i32 %i.aex to i64
  br label %bb.fz

bb.fz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aey, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afa = getelementptr inbounds i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.afb = load i8, ptr %i.afa, align 1, !tbaa !150
  %i.afc = sext i8 %i.afb to i64                  ; 2 uses
  %i.afd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.afc) ; 2 uses
  %i.afe = extractvalue { i64, i1 } %i.afd, 1
  br i1 %i.afe, label %bb.ga, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !1277
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !1277
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.adw, align 16, !tbaa !150, !noalias !1277
  store i64 %i.afc, ptr %i.adx, align 16, !tbaa !150, !noalias !1277
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i193 unwind label %bb.gg

.noexc.i.i.i.i.i.i.i.i.i193:                      ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !1277
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  unreachable

bb.gc:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  %i.aff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afg = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.ady
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.afi = load i64, ptr %i.ady, align 8, !tbaa !150
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fz
  %i.afk = extractvalue { i64, i1 } %i.afd, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.afl = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aez
  br i1 %i.afl, label %bb.fz, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !10

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fy
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.afm = load ptr, ptr %.sroa.7.0..sroa_idx.i.i141, align 8, !tbaa !403, !nonnull !196, !align !378
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !372 ; 5 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 144 ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !389 ; 2 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %bb.gd, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i162

bb.gd:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.afr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.afn)
          to label %.noexc19.i.i.i.i.i.i.i.i.i189 unwind label %bb.gg ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i189:                    ; preds = %bb.gd
  %.pre.i.i.i.i.i.i.i.i.i.i.i190 = load ptr, ptr %i.afo, align 8, !tbaa !389
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1285:                                       ; preds = %bb.ex, %bb.ey
  %indvars.iv.i.i.i.i.i.i2191284 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i225, %bb.ey ], [ 0, %bb.ex ] ; 2 uses
  %i.aau = lshr exact i64 %indvars.iv.i.i.i.i.i.i2191284, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aau
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !227
  %i.aax = icmp eq i64 %i.aaw, -1
  br i1 %i.aax, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i221:                     ; preds = %bb.ey, %bb.ex
  %.not38.i.i.i.i.i.i.i.i222 = icmp eq i32 %i.aan, %i.aas
  br i1 %.not38.i.i.i.i.i.i.i.i222, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, label %bb.ez

bb.ez:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i221
  %i.aay = lshr i32 %i.aan, 6
  %i.aaz = and i32 %i.aan, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %notmask.i40.i.i.i.i.i.i.i.i223 = shl nsw i64 -1, %i.aba
  %i.abb = zext nneg i32 %i.aay to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %i.abb
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i224 = or i64 %i.abd, %notmask.i40.i.i.i.i.i.i.i.i223
  %i.abe = icmp eq i64 %.demorgan.i.i.i.i.i.i224, -1
  %i.abf = zext i1 %i.abe to i16
  %i.abg = or disjoint i16 %i.abf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142: ; preds = %.lr.ph1285, %bb.ez, %.critedge.i.i.i.i.i.i.i.i221, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.insert.ext.i.i.i.i.i.i143 = phi i16 [ 256, %bb.ev ], [ 256, %bb.eu ], [ 257, %bb.ew ], [ 257, %.critedge.i.i.i.i.i.i.i.i221 ], [ %i.abg, %bb.ez ], [ 256, %.lr.ph1285 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143, ptr %i.aaf, align 4
  %i.abh = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226
  %.0.in.i.i.i.i.i.i145 = phi i8 [ %.0.in.pre.i.i.i.i.i.i227, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226 ], [ %i.abh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142 ]
  %.0.i.i.i.i.i.i146 = trunc nuw i8 %.0.in.i.i.i.i.i.i145 to i1
  br i1 %.0.i.i.i.i.i.i146, label %bb.fa, label %bb.fr

bb.fa:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !266 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !261 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, %i.abj
  br i1 %i.abm, label %.lr.ph.i.i.i.i.i201, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i201:                              ; preds = %bb.fa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.act, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.abl, %bb.fa ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i201
  %i.abn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0    ; 2 uses
  %i.abp = extractvalue { ptr, i32 } %i.abn, 1    ; 2 uses
  %i.abq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.abr = icmp eq i32 %i.abp, %i.abq
  br i1 %i.abr, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.abs = call ptr @__cxa_begin_catch(ptr %i.abo) #42
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !399 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !157 ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 152
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !158
  %i.abz = icmp eq i64 %i.aby, 4
  br i1 %i.abz, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, label %.loopexit.i.i.i.i.i205

.lr.ph.i.i.i.i.preheader.i.i.i.i.i207:            ; preds = %bb.fc
  %i.aca = load i8, ptr %i.abw, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i208 = icmp eq i8 %i.aca, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i208, label %tailrecurse.i.i.i.i.i.i.i.i.i209, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.i.i.i.i.i209:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i210 = icmp eq i8 %i.acc, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i210, label %tailrecurse.i.i.i.i.1.i.i.i.i.i211, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.1.i.i.i.i.i211:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i209
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 2
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i212 = icmp eq i8 %i.ace, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i212, label %tailrecurse.i.i.i.i.2.i.i.i.i.i213, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.2.i.i.i.i.i213:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i211
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abw, i64 3
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i214 = icmp eq i8 %i.acg, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i214, label %tailrecurse.i.i.i.i.3.i.i.i.i.i215, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.3.i.i.i.i.i215:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fk unwind label %bb.fm

.loopexit.i.i.i.i.i205:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213, %tailrecurse.i.i.i.i.1.i.i.i.i.i211, %tailrecurse.i.i.i.i.i.i.i.i.i209, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, %bb.fc
  invoke void @__cxa_rethrow() #44
          to label %bb.fq unwind label %bb.fj

bb.fd:                                            ; preds = %bb.fb
  %i.ach = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.aci = icmp eq i32 %i.abp, %i.ach
  br i1 %i.aci, label %bb.fe, label %.body129

bb.fe:                                            ; preds = %bb.fd
  %i.acj = call ptr @__cxa_begin_catch(ptr %i.abo) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ack = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i202 = icmp eq ptr %i.ack, null
  br i1 %.not.i.i.i.i.i.i202, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fe
  %i.acl = landingpad { ptr, i32 }
          cleanup
  %i.acm = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i205
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.aco = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.aco, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.acp = landingpad { ptr, i32 }
          cleanup
  %i.acq = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i216 = icmp eq ptr %i.acq, null
  br i1 %.not.i8.i.i.i.i.i216, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217: ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, %bb.fj
  %.pn.i.i.i.i.i.i206 = phi { ptr, i32 } [ %i.acp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217 ], [ %i.acn, %bb.fj ]
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.acr = landingpad { ptr, i32 }
          catch ptr null
  %i.acs = extractvalue { ptr, i32 } %i.acr, 0
  call void @__clang_call_terminate(ptr %i.acs) #41
  unreachable

bb.fq:                                            ; preds = %.loopexit.i.i.i.i.i205
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i201
  %i.act = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i204 = icmp eq i32 %i.act, %i.abj
  br i1 %exitcond.not.i.i.i.i.i204, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i201, !llvm.loop !2724

bb.fr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.acu = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !261 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.acu, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150, align 8
  %.not.i.i.i.i.i.i.i.i151 = icmp slt i32 %i.acw, %i.acy
  br i1 %.not.i.i.i.i.i.i.i.i151, label %bb.fs, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.acz = add i32 %i.acw, 63                     ; 2 uses
  %i.ada = srem i32 %i.acz, 64
  %i.adb = sub nsw i32 %i.acz, %i.ada             ; 6 uses
  %i.adc = and i32 %i.acy, -64                    ; 4 uses
  %i.add = icmp slt i32 %i.adc, %i.adb
  br i1 %i.add, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ade = and i32 %i.acy, 63
  %i.adf = zext nneg i32 %i.ade to i64
  %notmask.i.i.i.i.i.i.i.i.i199 = shl nsw i64 -1, %i.adf
  %i.adg = xor i64 %notmask.i.i.i.i.i.i.i.i.i199, -1
  %i.adh = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adi = zext nneg i32 %i.adh to i64
  %notmask.i.i.i.i.i.i.i.i.i.i200 = shl nsw i64 -1, %i.adi
  %i.adj = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i200, -1
  %i.adk = sub nsw i32 64, %i.adh
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = shl i64 %i.adj, %i.adl
  %i.adn = and i64 %i.adm, %i.adg
  br label %.invoke

bb.fu:                                            ; preds = %bb.fs
  %.not32.i.i.i.i.i.i.i.i152 = icmp eq i32 %i.acw, %i.adb
  br i1 %.not32.i.i.i.i.i.i.i.i152, label %.noexc232, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ado = sdiv i32 %i.acw, 64
  %i.adp = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adq = zext nneg i32 %i.adp to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i153 = shl nsw i64 -1, %i.adq
  %i.adr = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i153, -1
  %i.ads = sub nsw i32 64, %i.adp
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = shl i64 %i.adr, %i.adt
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.ado, i64 noundef %i.adu)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.fv, %bb.fu
  %i.adv = add nsw i32 %i.adb, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.adv, %i.adc
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i.i.i154:                        ; preds = %.noexc232
  %i.adw = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ady = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.aeb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fw

._crit_edge.i.i.i.i.i.i.i.i156:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc232
  %.not34.i.i.i.i.i.i.i.i157 = icmp eq i32 %i.acy, %i.adc
  br i1 %.not34.i.i.i.i.i.i.i.i157, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hu

bb.fw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i154
  %i.aec = phi i32 [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.alh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.adb, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.aec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aed = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.acu, i64 %i.aee
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aeg, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.fx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.fw
  %i.aeh = shl nsw i32 %i.aed, 6
  br label %bb.gw

bb.fx:                                            ; preds = %bb.fw
  %i.aei = shl nsw i32 %i.aed, 6                  ; 2 uses
  %i.aej = add i32 %i.aei, 64
  %i.aek = sext i32 %i.aej to i64
  %.0.off.i.i.i.i.i.i.i.i159 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i159, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fx
  %i.ael = sext i32 %i.aei to i64
  br label %bb.fy

bb.fy:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ael, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.ahu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.aem = load ptr, ptr %.sroa.46.0..sroa_idx.i.i138, align 8, !tbaa !786, !nonnull !196, !align !378
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !370 ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i160 = load ptr, ptr %i.aeo, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i161 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.aep = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i161, 32 ; 3 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i160, i64 %i.aep
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !151 ; 2 uses
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fy
  %i.aet = load ptr, ptr %.sroa.57.0..sroa_idx.i.i139, align 8, !tbaa !787, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i191 = load ptr, ptr %i.aet, align 8
  %i.aeu = getelementptr i8, ptr %i.aen, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i192 = load ptr, ptr %i.aeu, align 8, !tbaa !294
  %i.aev = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i192, i64 %i.aep
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !151 ; 2 uses
  %i.aex = add nsw i32 %i.aew, %i.aer
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i191, align 8, !tbaa !776
  %i.aey = sext i32 %i.aew to i64
  %i.aez = sext i32 %i.aex to i64
  br label %bb.fz

bb.fz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aey, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afa = getelementptr inbounds [2 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !487
  %i.afc = sext i16 %i.afb to i64                 ; 2 uses
  %i.afd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.afc) ; 2 uses
  %i.afe = extractvalue { i64, i1 } %i.afd, 1
  br i1 %i.afe, label %bb.ga, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !2749
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !2749
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.adw, align 16, !tbaa !150, !noalias !2749
  store i64 %i.afc, ptr %i.adx, align 16, !tbaa !150, !noalias !2749
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i193 unwind label %bb.gg

.noexc.i.i.i.i.i.i.i.i.i193:                      ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !2749
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  unreachable

bb.gc:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  %i.aff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afg = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.ady
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.afi = load i64, ptr %i.ady, align 8, !tbaa !150
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fz
  %i.afk = extractvalue { i64, i1 } %i.afd, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.afl = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aez
  br i1 %i.afl, label %bb.fz, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !72

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fy
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.afm = load ptr, ptr %.sroa.7.0..sroa_idx.i.i141, align 8, !tbaa !788, !nonnull !196, !align !378
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !372 ; 5 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 144 ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !389 ; 2 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %bb.gd, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i162

bb.gd:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.afr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.afn)
          to label %.noexc19.i.i.i.i.i.i.i.i.i189 unwind label %bb.gg ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i189:                    ; preds = %bb.gd
  %.pre.i.i.i.i.i.i.i.i.i.i.i190 = load ptr, ptr %i.afo, align 8, !tbaa !389
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1285:                                       ; preds = %bb.ex, %bb.ey
  %indvars.iv.i.i.i.i.i.i2191284 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i225, %bb.ey ], [ 0, %bb.ex ] ; 2 uses
  %i.aau = lshr exact i64 %indvars.iv.i.i.i.i.i.i2191284, 3
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aar, i64 %i.aau
  %i.aaw = load i64, ptr %i.aav, align 8, !tbaa !227
  %i.aax = icmp eq i64 %i.aaw, -1
  br i1 %i.aax, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i221:                     ; preds = %bb.ey, %bb.ex
  %.not38.i.i.i.i.i.i.i.i222 = icmp eq i32 %i.aan, %i.aas
  br i1 %.not38.i.i.i.i.i.i.i.i222, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, label %bb.ez

bb.ez:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i221
  %i.aay = lshr i32 %i.aan, 6
  %i.aaz = and i32 %i.aan, 63
  %i.aba = zext nneg i32 %i.aaz to i64
  %notmask.i40.i.i.i.i.i.i.i.i223 = shl nsw i64 -1, %i.aba
  %i.abb = zext nneg i32 %i.aay to i64
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.aar, i64 %i.abb
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i224 = or i64 %i.abd, %notmask.i40.i.i.i.i.i.i.i.i223
  %i.abe = icmp eq i64 %.demorgan.i.i.i.i.i.i224, -1
  %i.abf = zext i1 %i.abe to i16
  %i.abg = or disjoint i16 %i.abf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142: ; preds = %.lr.ph1285, %bb.ez, %.critedge.i.i.i.i.i.i.i.i221, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.insert.ext.i.i.i.i.i.i143 = phi i16 [ 256, %bb.ev ], [ 256, %bb.eu ], [ 257, %bb.ew ], [ 257, %.critedge.i.i.i.i.i.i.i.i221 ], [ %i.abg, %bb.ez ], [ 256, %.lr.ph1285 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143, ptr %i.aaf, align 4
  %i.abh = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226
  %.0.in.i.i.i.i.i.i145 = phi i8 [ %.0.in.pre.i.i.i.i.i.i227, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226 ], [ %i.abh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142 ]
  %.0.i.i.i.i.i.i146 = trunc nuw i8 %.0.in.i.i.i.i.i.i145 to i1
  br i1 %.0.i.i.i.i.i.i146, label %bb.fa, label %bb.fr

bb.fa:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !266 ; 2 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !261 ; 2 uses
  %i.abm = icmp slt i32 %i.abl, %i.abj
  br i1 %i.abm, label %.lr.ph.i.i.i.i.i201, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i201:                              ; preds = %bb.fa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.act, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.abl, %bb.fa ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i201
  %i.abn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.abo = extractvalue { ptr, i32 } %i.abn, 0    ; 2 uses
  %i.abp = extractvalue { ptr, i32 } %i.abn, 1    ; 2 uses
  %i.abq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.abr = icmp eq i32 %i.abp, %i.abq
  br i1 %i.abr, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.abs = call ptr @__cxa_begin_catch(ptr %i.abo) #42
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !399 ; 2 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 144
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !157 ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abu, i64 152
  %i.aby = load i64, ptr %i.abx, align 8, !tbaa !158
  %i.abz = icmp eq i64 %i.aby, 4
  br i1 %i.abz, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, label %.loopexit.i.i.i.i.i205

.lr.ph.i.i.i.i.preheader.i.i.i.i.i207:            ; preds = %bb.fc
  %i.aca = load i8, ptr %i.abw, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i208 = icmp eq i8 %i.aca, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i208, label %tailrecurse.i.i.i.i.i.i.i.i.i209, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.i.i.i.i.i209:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abw, i64 1
  %i.acc = load i8, ptr %i.acb, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i210 = icmp eq i8 %i.acc, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i210, label %tailrecurse.i.i.i.i.1.i.i.i.i.i211, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.1.i.i.i.i.i211:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i209
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abw, i64 2
  %i.ace = load i8, ptr %i.acd, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i212 = icmp eq i8 %i.ace, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i212, label %tailrecurse.i.i.i.i.2.i.i.i.i.i213, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.2.i.i.i.i.i213:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i211
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abw, i64 3
  %i.acg = load i8, ptr %i.acf, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i214 = icmp eq i8 %i.acg, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i214, label %tailrecurse.i.i.i.i.3.i.i.i.i.i215, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.3.i.i.i.i.i215:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fk unwind label %bb.fm

.loopexit.i.i.i.i.i205:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213, %tailrecurse.i.i.i.i.1.i.i.i.i.i211, %tailrecurse.i.i.i.i.i.i.i.i.i209, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, %bb.fc
  invoke void @__cxa_rethrow() #44
          to label %bb.fq unwind label %bb.fj

bb.fd:                                            ; preds = %bb.fb
  %i.ach = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.aci = icmp eq i32 %i.abp, %i.ach
  br i1 %i.aci, label %bb.fe, label %.body129

bb.fe:                                            ; preds = %bb.fd
  %i.acj = call ptr @__cxa_begin_catch(ptr %i.abo) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.ack = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i202 = icmp eq ptr %i.ack, null
  br i1 %.not.i.i.i.i.i.i202, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fe
  %i.acl = landingpad { ptr, i32 }
          cleanup
  %i.acm = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.acm, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i205
  %i.acn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.aco = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.aco, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.acp = landingpad { ptr, i32 }
          cleanup
  %i.acq = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i216 = icmp eq ptr %i.acq, null
  br i1 %.not.i8.i.i.i.i.i216, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217: ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, %bb.fj
  %.pn.i.i.i.i.i.i206 = phi { ptr, i32 } [ %i.acp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217 ], [ %i.acn, %bb.fj ]
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.acr = landingpad { ptr, i32 }
          catch ptr null
  %i.acs = extractvalue { ptr, i32 } %i.acr, 0
  call void @__clang_call_terminate(ptr %i.acs) #41
  unreachable

bb.fq:                                            ; preds = %.loopexit.i.i.i.i.i205
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i201
  %i.act = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i204 = icmp eq i32 %i.act, %i.abj
  br i1 %exitcond.not.i.i.i.i.i204, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i201, !llvm.loop !2818

bb.fr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.acu = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !261 ; 6 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acy = load i32, ptr %i.acx, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.acu, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150, align 8
  %.not.i.i.i.i.i.i.i.i151 = icmp slt i32 %i.acw, %i.acy
  br i1 %.not.i.i.i.i.i.i.i.i151, label %bb.fs, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.acz = add i32 %i.acw, 63                     ; 2 uses
  %i.ada = srem i32 %i.acz, 64
  %i.adb = sub nsw i32 %i.acz, %i.ada             ; 6 uses
  %i.adc = and i32 %i.acy, -64                    ; 4 uses
  %i.add = icmp slt i32 %i.adc, %i.adb
  br i1 %i.add, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.ade = and i32 %i.acy, 63
  %i.adf = zext nneg i32 %i.ade to i64
  %notmask.i.i.i.i.i.i.i.i.i199 = shl nsw i64 -1, %i.adf
  %i.adg = xor i64 %notmask.i.i.i.i.i.i.i.i.i199, -1
  %i.adh = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adi = zext nneg i32 %i.adh to i64
  %notmask.i.i.i.i.i.i.i.i.i.i200 = shl nsw i64 -1, %i.adi
  %i.adj = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i200, -1
  %i.adk = sub nsw i32 64, %i.adh
  %i.adl = zext nneg i32 %i.adk to i64
  %i.adm = shl i64 %i.adj, %i.adl
  %i.adn = and i64 %i.adm, %i.adg
  br label %.invoke

bb.fu:                                            ; preds = %bb.fs
  %.not32.i.i.i.i.i.i.i.i152 = icmp eq i32 %i.acw, %i.adb
  br i1 %.not32.i.i.i.i.i.i.i.i152, label %.noexc232, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ado = sdiv i32 %i.acw, 64
  %i.adp = sub nsw i32 %i.adb, %i.acw             ; 2 uses
  %i.adq = zext nneg i32 %i.adp to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i153 = shl nsw i64 -1, %i.adq
  %i.adr = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i153, -1
  %i.ads = sub nsw i32 64, %i.adp
  %i.adt = zext nneg i32 %i.ads to i64
  %i.adu = shl i64 %i.adr, %i.adt
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.ado, i64 noundef %i.adu)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.fv, %bb.fu
  %i.adv = add nsw i32 %i.adb, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.adv, %i.adc
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i.i.i154:                        ; preds = %.noexc232
  %i.adw = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.adx = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.ady = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.aea = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.aeb = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fw

._crit_edge.i.i.i.i.i.i.i.i156:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc232
  %.not34.i.i.i.i.i.i.i.i157 = icmp eq i32 %i.acy, %i.adc
  br i1 %.not34.i.i.i.i.i.i.i.i157, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hu

bb.fw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i154
  %i.aec = phi i32 [ %i.adv, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.alh, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.adb, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.aec, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aed = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds [8 x i8], ptr %i.acu, i64 %i.aee
  %i.aeg = load i64, ptr %i.aef, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aeg, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.fx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.fw
  %i.aeh = shl nsw i32 %i.aed, 6
  br label %bb.gw

bb.fx:                                            ; preds = %bb.fw
  %i.aei = shl nsw i32 %i.aed, 6                  ; 2 uses
  %i.aej = add i32 %i.aei, 64
  %i.aek = sext i32 %i.aej to i64
  %.0.off.i.i.i.i.i.i.i.i159 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i159, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fx
  %i.ael = sext i32 %i.aei to i64
  br label %bb.fy

bb.fy:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ael, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.ahu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.aem = load ptr, ptr %.sroa.46.0..sroa_idx.i.i138, align 8, !tbaa !809, !nonnull !196, !align !378
  %i.aen = load ptr, ptr %i.aem, align 8, !tbaa !370 ; 2 uses
  %i.aeo = getelementptr i8, ptr %i.aen, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i160 = load ptr, ptr %i.aeo, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i161 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.aep = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i161, 32 ; 3 uses
  %i.aeq = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i160, i64 %i.aep
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !151 ; 2 uses
  %i.aes = icmp sgt i32 %i.aer, 0
  br i1 %i.aes, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fy
  %i.aet = load ptr, ptr %.sroa.57.0..sroa_idx.i.i139, align 8, !tbaa !810, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i191 = load ptr, ptr %i.aet, align 8
  %i.aeu = getelementptr i8, ptr %i.aen, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i192 = load ptr, ptr %i.aeu, align 8, !tbaa !294
  %i.aev = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i192, i64 %i.aep
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !151 ; 2 uses
  %i.aex = add nsw i32 %i.aew, %i.aer
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i191, align 8, !tbaa !441
  %i.aey = sext i32 %i.aew to i64
  %i.aez = sext i32 %i.aex to i64
  br label %bb.fz

bb.fz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aey, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afa = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !151
  %i.afc = sext i32 %i.afb to i64                 ; 2 uses
  %i.afd = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.afc) ; 2 uses
  %i.afe = extractvalue { i64, i1 } %i.afd, 1
  br i1 %i.afe, label %bb.ga, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !2843
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !2843
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.adw, align 16, !tbaa !150, !noalias !2843
  store i64 %i.afc, ptr %i.adx, align 16, !tbaa !150, !noalias !2843
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i193 unwind label %bb.gg

.noexc.i.i.i.i.i.i.i.i.i193:                      ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !2843
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  unreachable

bb.gc:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  %i.aff = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afg = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.afh = icmp eq ptr %i.afg, %i.ady
  br i1 %i.afh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.afi = load i64, ptr %i.ady, align 8, !tbaa !150
  %i.afj = add i64 %i.afi, 1
  call void @_ZdlPvm(ptr noundef %i.afg, i64 noundef %i.afj) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fz
  %i.afk = extractvalue { i64, i1 } %i.afd, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.afl = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aez
  br i1 %i.afl, label %bb.fz, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !75

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fy
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %i.afk, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.afm = load ptr, ptr %.sroa.7.0..sroa_idx.i.i141, align 8, !tbaa !811, !nonnull !196, !align !378
  %i.afn = load ptr, ptr %i.afm, align 8, !tbaa !372 ; 5 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afn, i64 144 ; 2 uses
  %i.afp = load ptr, ptr %i.afo, align 8, !tbaa !389 ; 2 uses
  %i.afq = icmp eq ptr %i.afp, null
  br i1 %i.afq, label %bb.gd, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i162

bb.gd:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.afr = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.afn)
          to label %.noexc19.i.i.i.i.i.i.i.i.i189 unwind label %bb.gg ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i189:                    ; preds = %bb.gd
  %.pre.i.i.i.i.i.i.i.i.i.i.i190 = load ptr, ptr %i.afo, align 8, !tbaa !389
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1285:                                       ; preds = %bb.ex, %bb.ey
  %indvars.iv.i.i.i.i.i.i2191284 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i225, %bb.ey ], [ 0, %bb.ex ] ; 2 uses
  %i.aal = lshr exact i64 %indvars.iv.i.i.i.i.i.i2191284, 3
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aai, i64 %i.aal
  %i.aan = load i64, ptr %i.aam, align 8, !tbaa !227
  %i.aao = icmp eq i64 %i.aan, -1
  br i1 %i.aao, label %bb.ey, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i221:                     ; preds = %bb.ey, %bb.ex
  %.not38.i.i.i.i.i.i.i.i222 = icmp eq i32 %i.aae, %i.aaj
  br i1 %.not38.i.i.i.i.i.i.i.i222, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, label %bb.ez

bb.ez:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i221
  %i.aap = lshr i32 %i.aae, 6
  %i.aaq = and i32 %i.aae, 63
  %i.aar = zext nneg i32 %i.aaq to i64
  %notmask.i40.i.i.i.i.i.i.i.i223 = shl nsw i64 -1, %i.aar
  %i.aas = zext nneg i32 %i.aap to i64
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aai, i64 %i.aas
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i224 = or i64 %i.aau, %notmask.i40.i.i.i.i.i.i.i.i223
  %i.aav = icmp eq i64 %.demorgan.i.i.i.i.i.i224, -1
  %i.aaw = zext i1 %i.aav to i16
  %i.aax = or disjoint i16 %i.aaw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142: ; preds = %.lr.ph1285, %bb.ez, %.critedge.i.i.i.i.i.i.i.i221, %bb.ew, %bb.ev, %bb.eu
  %.sroa.0.0.insert.ext.i.i.i.i.i.i143 = phi i16 [ 256, %bb.ev ], [ 256, %bb.eu ], [ 257, %bb.ew ], [ 257, %.critedge.i.i.i.i.i.i.i.i221 ], [ %i.aax, %bb.ez ], [ 256, %.lr.ph1285 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143, ptr %i.zw, align 4
  %i.aay = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i143 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226
  %.0.in.i.i.i.i.i.i145 = phi i8 [ %.0.in.pre.i.i.i.i.i.i227, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i226 ], [ %i.aay, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i142 ]
  %.0.i.i.i.i.i.i146 = trunc nuw i8 %.0.in.i.i.i.i.i.i145 to i1
  br i1 %.0.i.i.i.i.i.i146, label %bb.fa, label %bb.fr

bb.fa:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.aaz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aba = load i32, ptr %i.aaz, align 8, !tbaa !266 ; 2 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.abc = load i32, ptr %i.abb, align 4, !tbaa !261 ; 2 uses
  %i.abd = icmp slt i32 %i.abc, %i.aba
  br i1 %i.abd, label %.lr.ph.i.i.i.i.i201, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i201:                              ; preds = %bb.fa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.ack, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.abc, %bb.fa ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.fb

bb.fb:                                            ; preds = %.lr.ph.i.i.i.i.i201
  %i.abe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.abf = extractvalue { ptr, i32 } %i.abe, 0    ; 2 uses
  %i.abg = extractvalue { ptr, i32 } %i.abe, 1    ; 2 uses
  %i.abh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.abi = icmp eq i32 %i.abg, %i.abh
  br i1 %i.abi, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.abj = call ptr @__cxa_begin_catch(ptr %i.abf) #42
  %i.abk = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !399 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abl, i64 144
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !157 ; 4 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.abl, i64 152
  %i.abp = load i64, ptr %i.abo, align 8, !tbaa !158
  %i.abq = icmp eq i64 %i.abp, 4
  br i1 %i.abq, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, label %.loopexit.i.i.i.i.i205

.lr.ph.i.i.i.i.preheader.i.i.i.i.i207:            ; preds = %bb.fc
  %i.abr = load i8, ptr %i.abn, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i208 = icmp eq i8 %i.abr, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i208, label %tailrecurse.i.i.i.i.i.i.i.i.i209, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.i.i.i.i.i209:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abn, i64 1
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i210 = icmp eq i8 %i.abt, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i210, label %tailrecurse.i.i.i.i.1.i.i.i.i.i211, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.1.i.i.i.i.i211:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i209
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abn, i64 2
  %i.abv = load i8, ptr %i.abu, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i212 = icmp eq i8 %i.abv, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i212, label %tailrecurse.i.i.i.i.2.i.i.i.i.i213, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.2.i.i.i.i.i213:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i211
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abn, i64 3
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i214 = icmp eq i8 %i.abx, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i214, label %tailrecurse.i.i.i.i.3.i.i.i.i.i215, label %.loopexit.i.i.i.i.i205

tailrecurse.i.i.i.i.3.i.i.i.i.i215:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fk unwind label %bb.fm

.loopexit.i.i.i.i.i205:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i213, %tailrecurse.i.i.i.i.1.i.i.i.i.i211, %tailrecurse.i.i.i.i.i.i.i.i.i209, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i207, %bb.fc
  invoke void @__cxa_rethrow() #44
          to label %bb.fq unwind label %bb.fj

bb.fd:                                            ; preds = %bb.fb
  %i.aby = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.abz = icmp eq i32 %i.abg, %i.aby
  br i1 %i.abz, label %bb.fe, label %.body129

bb.fe:                                            ; preds = %bb.fd
  %i.aca = call ptr @__cxa_begin_catch(ptr %i.abf) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ff unwind label %bb.fh

bb.ff:                                            ; preds = %bb.fe
  %i.acb = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i202 = icmp eq ptr %i.acb, null
  br i1 %.not.i.i.i.i.i.i202, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fh:                                            ; preds = %bb.fe
  %i.acc = landingpad { ptr, i32 }
          cleanup
  %i.acd = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.acd, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.fi, %bb.fh
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i205
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.fo

bb.fk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.acf = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.acf, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.fl, %bb.fk
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i215
  %i.acg = landingpad { ptr, i32 }
          cleanup
  %i.ach = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i216 = icmp eq ptr %i.ach, null
  br i1 %.not.i8.i.i.i.i.i216, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217: ; preds = %bb.fn, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fo

bb.fo:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217, %bb.fj
  %.pn.i.i.i.i.i.i206 = phi { ptr, i32 } [ %i.acg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i217 ], [ %i.ace, %bb.fj ]
  invoke void @__cxa_end_catch()
          to label %.body129 unwind label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.aci = landingpad { ptr, i32 }
          catch ptr null
  %i.acj = extractvalue { ptr, i32 } %i.aci, 0
  call void @__clang_call_terminate(ptr %i.acj) #41
  unreachable

bb.fq:                                            ; preds = %.loopexit.i.i.i.i.i205
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i203
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i201
  %i.ack = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i204 = icmp eq i32 %i.ack, %i.aba
  br i1 %exitcond.not.i.i.i.i.i204, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i201, !llvm.loop !2912

bb.fr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i144
  %i.acl = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acn = load i32, ptr %i.acm, align 4, !tbaa !261 ; 6 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acp = load i32, ptr %i.aco, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i147, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i149, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.acl, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i150, align 8
  %.not.i.i.i.i.i.i.i.i151 = icmp slt i32 %i.acn, %i.acp
  br i1 %.not.i.i.i.i.i.i.i.i151, label %bb.fs, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fs:                                            ; preds = %bb.fr
  %i.acq = add i32 %i.acn, 63                     ; 2 uses
  %i.acr = srem i32 %i.acq, 64
  %i.acs = sub nsw i32 %i.acq, %i.acr             ; 6 uses
  %i.act = and i32 %i.acp, -64                    ; 4 uses
  %i.acu = icmp slt i32 %i.act, %i.acs
  br i1 %i.acu, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %bb.fs
  %i.acv = and i32 %i.acp, 63
  %i.acw = zext nneg i32 %i.acv to i64
  %notmask.i.i.i.i.i.i.i.i.i199 = shl nsw i64 -1, %i.acw
  %i.acx = xor i64 %notmask.i.i.i.i.i.i.i.i.i199, -1
  %i.acy = sub nsw i32 %i.acs, %i.acn             ; 2 uses
  %i.acz = zext nneg i32 %i.acy to i64
  %notmask.i.i.i.i.i.i.i.i.i.i200 = shl nsw i64 -1, %i.acz
  %i.ada = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i200, -1
  %i.adb = sub nsw i32 64, %i.acy
  %i.adc = zext nneg i32 %i.adb to i64
  %i.add = shl i64 %i.ada, %i.adc
  %i.ade = and i64 %i.add, %i.acx
  br label %.invoke

bb.fu:                                            ; preds = %bb.fs
  %.not32.i.i.i.i.i.i.i.i152 = icmp eq i32 %i.acn, %i.acs
  br i1 %.not32.i.i.i.i.i.i.i.i152, label %.noexc232, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.adf = sdiv i32 %i.acn, 64
  %i.adg = sub nsw i32 %i.acs, %i.acn             ; 2 uses
  %i.adh = zext nneg i32 %i.adg to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i153 = shl nsw i64 -1, %i.adh
  %i.adi = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i153, -1
  %i.adj = sub nsw i32 64, %i.adg
  %i.adk = zext nneg i32 %i.adj to i64
  %i.adl = shl i64 %i.adi, %i.adk
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.adf, i64 noundef %i.adl)
          to label %.noexc232 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc232:                                        ; preds = %bb.fv, %bb.fu
  %i.adm = add nsw i32 %i.acs, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.adm, %i.act
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i156, label %.lr.ph.i.i.i.i.i.i.i.i154

.lr.ph.i.i.i.i.i.i.i.i154:                        ; preds = %.noexc232
  %i.adn = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.ado = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.adp = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.adr = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.ads = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fw

._crit_edge.i.i.i.i.i.i.i.i156:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc232
  %.not34.i.i.i.i.i.i.i.i157 = icmp eq i32 %i.acp, %i.act
  br i1 %.not34.i.i.i.i.i.i.i.i157, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hu

bb.fw:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i154
  %i.adt = phi i32 [ %i.adm, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.akw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.acs, %.lr.ph.i.i.i.i.i.i.i.i154 ], [ %i.adt, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.adu = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.adv = sext i32 %i.adu to i64
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.acl, i64 %i.adv
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.adx, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.fx
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.fw
  %i.ady = shl nsw i32 %i.adu, 6
  br label %bb.gw

bb.fx:                                            ; preds = %bb.fw
  %i.adz = shl nsw i32 %i.adu, 6                  ; 2 uses
  %i.aea = add i32 %i.adz, 64
  %i.aeb = sext i32 %i.aea to i64
  %.0.off.i.i.i.i.i.i.i.i159 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i159, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fx
  %i.aec = sext i32 %i.adz to i64
  br label %bb.fy

bb.fy:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aec, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.ahk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.aed = load ptr, ptr %.sroa.46.0..sroa_idx.i.i138, align 8, !tbaa !828, !nonnull !196, !align !378
  %i.aee = load ptr, ptr %i.aed, align 8, !tbaa !370 ; 2 uses
  %i.aef = getelementptr i8, ptr %i.aee, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i160 = load ptr, ptr %i.aef, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i161 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.aeg = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i161, 32 ; 3 uses
  %i.aeh = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i160, i64 %i.aeg
  %i.aei = load i32, ptr %i.aeh, align 4, !tbaa !151 ; 2 uses
  %i.aej = icmp sgt i32 %i.aei, 0
  br i1 %i.aej, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fy
  %i.aek = load ptr, ptr %.sroa.57.0..sroa_idx.i.i139, align 8, !tbaa !829, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i191 = load ptr, ptr %i.aek, align 8
  %i.ael = getelementptr i8, ptr %i.aee, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i192 = load ptr, ptr %i.ael, align 8, !tbaa !294
  %i.aem = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i192, i64 %i.aeg
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !151 ; 2 uses
  %i.aeo = add nsw i32 %i.aen, %i.aei
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i191, align 8, !tbaa !363
  %i.aep = sext i32 %i.aen to i64
  %i.aeq = sext i32 %i.aeo to i64
  br label %bb.fz

bb.fz:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.afa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aer = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.aes = load i64, ptr %i.aer, align 8, !tbaa !227 ; 2 uses
  %i.aet = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.aes) ; 2 uses
  %i.aeu = extractvalue { i64, i1 } %i.aet, 1
  br i1 %i.aeu, label %bb.ga, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ga:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !2937
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !2937
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.adn, align 16, !tbaa !150, !noalias !2937
  store i64 %i.aes, ptr %i.ado, align 16, !tbaa !150, !noalias !2937
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i193 unwind label %bb.gg

.noexc.i.i.i.i.i.i.i.i.i193:                      ; preds = %bb.ga
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !2937
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.gb unwind label %bb.gc

bb.gb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  unreachable

bb.gc:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i193
  %i.aev = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.aew = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.aex = icmp eq ptr %i.aew, %i.adp
  br i1 %i.aex, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc
  %i.aey = load i64, ptr %i.adp, align 8, !tbaa !150
  %i.aez = add i64 %i.aey, 1
  call void @_ZdlPvm(ptr noundef %i.aew, i64 noundef %i.aez) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.gc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fz
  %i.afa = extractvalue { i64, i1 } %i.aet, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.afb = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aeq
  br i1 %i.afb, label %bb.fz, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !78

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fy
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fy ], [ %i.afa, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.afc = load ptr, ptr %.sroa.7.0..sroa_idx.i.i141, align 8, !tbaa !830, !nonnull !196, !align !378
  %i.afd = load ptr, ptr %i.afc, align 8, !tbaa !372 ; 5 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 144 ; 2 uses
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !389 ; 2 uses
  %i.afg = icmp eq ptr %i.aff, null
  br i1 %i.afg, label %bb.gd, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i162

bb.gd:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb0EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.afh = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.afd)
          to label %.noexc19.i.i.i.i.i.i.i.i.i189 unwind label %bb.gg ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i189:                    ; preds = %bb.gd
  %.pre.i.i.i.i.i.i.i.i.i.i.i190 = load ptr, ptr %i.afe, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i162
end_hunk_3
begin_hunk_4_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1114:                                       ; preds = %bb.bo, %bb.bp
  %indvars.iv.i.i.i.i.i.i1113 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %i.ml = lshr exact i64 %indvars.iv.i.i.i.i.i.i1113, 3
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !227
  %i.mo = icmp eq i64 %i.mn, -1
  br i1 %i.mo, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.bp, %bb.bo
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.me, %i.mj
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.mp = lshr i32 %i.me, 6
  %i.mq = and i32 %i.me, 63
  %i.mr = zext nneg i32 %i.mq to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mr
  %i.ms = zext nneg i32 %i.mp to i64
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.ms
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.mu, %notmask.i40.i.i.i.i.i.i.i.i
  %i.mv = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.mw = zext i1 %i.mv to i16
  %i.mx = or disjoint i16 %i.mw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1114, %bb.bq, %.critedge.i.i.i.i.i.i.i.i, %bb.bn, %bb.bm, %bb.bl
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bm ], [ 256, %bb.bl ], [ 257, %bb.bn ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.mx, %bb.bq ], [ 256, %.lr.ph1114 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.lw, align 4
  %i.my = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.my, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.br, label %bb.ci

bb.br:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !266 ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !261 ; 2 uses
  %i.nd = icmp slt i32 %i.nc, %i.na
  br i1 %i.nd, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.br, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.ok, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.nc, %bb.br ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bs

bb.bs:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.nf = extractvalue { ptr, i32 } %i.ne, 0      ; 2 uses
  %i.ng = extractvalue { ptr, i32 } %i.ne, 1      ; 2 uses
  %i.nh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.ni = icmp eq i32 %i.ng, %i.nh
  br i1 %i.ni, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.nj = call ptr @__cxa_begin_catch(ptr %i.nf) #42
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !399 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 144
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !157 ; 4 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nl, i64 152
  %i.np = load i64, ptr %i.no, align 8, !tbaa !158
  %i.nq = icmp eq i64 %i.np, 4
  br i1 %i.nq, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bt
  %i.nr = load i8, ptr %i.nn, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.nr, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nn, i64 1
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.nt, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nn, i64 2
  %i.nv = load i8, ptr %i.nu, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.nv, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nn, i64 3
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.nx, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %45) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.cb unwind label %bb.cd

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bt
  invoke void @__cxa_rethrow() #44
          to label %bb.ch unwind label %bb.ca

bb.bu:                                            ; preds = %bb.bs
  %i.ny = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.nz = icmp eq i32 %i.ng, %i.ny
  br i1 %i.nz, label %bb.bv, label %.body116

bb.bv:                                            ; preds = %bb.bu
  %i.oa = call ptr @__cxa_begin_catch(ptr %i.nf) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %44) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ob = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ob, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.by:                                            ; preds = %bb.bv
  %i.oc = landingpad { ptr, i32 }
          cleanup
  %i.od = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  invoke void @__cxa_end_catch()
          to label %.body116 unwind label %bb.cg

bb.ca:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.cb:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.of = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.og = landingpad { ptr, i32 }
          cleanup
  %i.oh = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.oh, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.ca
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.og, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.oe, %bb.ca ]
  invoke void @__cxa_end_catch()
          to label %.body116 unwind label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.oi = landingpad { ptr, i32 }
          catch ptr null
  %i.oj = extractvalue { ptr, i32 } %i.oi, 0
  call void @__clang_call_terminate(ptr %i.oj) #41
  unreachable

bb.ch:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ok = add i32 %.029.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.ok, %i.na
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2992

bb.ci:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.ol = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.on = load i32, ptr %i.om, align 4, !tbaa !261 ; 6 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  store ptr %47, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %46, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %43, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %i.ol, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.on, %i.op
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cj, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.oq = add i32 %i.on, 63                       ; 2 uses
  %i.or = srem i32 %i.oq, 64
  %i.os = sub nsw i32 %i.oq, %i.or                ; 6 uses
  %i.ot = and i32 %i.op, -64                      ; 4 uses
  %i.ou = icmp slt i32 %i.ot, %i.os
  br i1 %i.ou, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ov = and i32 %i.op, 63
  %i.ow = zext nneg i32 %i.ov to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ow
  %i.ox = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.oy = sub nsw i32 %i.os, %i.on                ; 2 uses
  %i.oz = zext nneg i32 %i.oy to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.oz
  %i.pa = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.pb = sub nsw i32 64, %i.oy
  %i.pc = zext nneg i32 %i.pb to i64
  %i.pd = shl i64 %i.pa, %i.pc
  %i.pe = and i64 %i.pd, %i.ox
  br label %.invoke965

bb.cl:                                            ; preds = %bb.cj
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.on, %i.os
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc120, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pf = sdiv i32 %i.on, 64
  %i.pg = sub nsw i32 %i.os, %i.on                ; 2 uses
  %i.ph = zext nneg i32 %i.pg to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ph
  %i.pi = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.pj = sub nsw i32 64, %i.pg
  %i.pk = zext nneg i32 %i.pj to i64
  %i.pl = shl i64 %i.pi, %i.pk
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %43, i32 noundef %i.pf, i64 noundef %i.pl)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.cm, %bb.cl
  %i.pm = add nsw i32 %i.os, 64                   ; 2 uses
  %.not3349.i.i.i.i.i.i.i.i = icmp sgt i32 %i.pm, %i.ot
  br i1 %.not3349.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc120
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.op, %i.ot
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.ei

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc120, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.pn = phi i32 [ %i.wu, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.pm, %.noexc120 ] ; 2 uses
  %.050.i.i.i.i.i.i.i.i = phi i32 [ %i.pn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.os, %.noexc120 ] ; 2 uses
  %i.po = sdiv i32 %.050.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.pp = sext i32 %i.po to i64
  %i.pq = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.pr, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cn
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.ps = shl nsw i32 %i.po, 6
  br label %bb.dl

bb.cn:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pt = shl nsw i32 %i.po, 6                    ; 2 uses
  %i.pu = add i32 %i.pt, 64
  %i.pv = sext i32 %i.pu to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.050.i.i.i.i.i.i.i.i, 127
  %.not59.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not59.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i.i.i

.lr.ph58.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cn
  %i.pw = sext i32 %i.pt to i64
  br label %bb.co

bb.co:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i.i.i
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pw, %.lr.ph58.i.i.i.i.i.i.i.i.i ], [ %i.tg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.px = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !863, !nonnull !196, !align !378
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !370 ; 2 uses
  %i.pz = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !864, !nonnull !196, !align !378
  %i.qa = getelementptr i8, ptr %i.py, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !tbaa !295
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pz, align 8
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.057.i.i.i.i.i.i.i.i.i, 32
  %i.qb = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.qc = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.qb
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !151 ; 2 uses
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.co
  %i.qf = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !865, !nonnull !196, !align !378
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qf, align 8
  %i.qg = getelementptr i8, ptr %i.py, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qg, align 8, !tbaa !294
  %i.qh = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.qb
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !151 ; 2 uses
  %i.qj = add nsw i32 %i.qi, %i.qd
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !363
  %i.qk = sext i32 %i.qi to i64
  %i.ql = sext i32 %i.qj to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %bb.cr ] ; 4 uses
  %.045.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.cr ] ; 2 uses
  %i.qm = lshr i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.qn = and i64 %i.qm, 67108863
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qn
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !227
  %i.qq = and i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.qr = shl nuw i64 1, %i.qq
  %i.qs = and i64 %i.qp, %i.qr
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val12.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !855
  %i.qt = getelementptr inbounds [4 x i8], ptr %.val12.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !840
  %i.qv = fpext float %i.qu to double
  %i.qw = fadd double %.045.i.i.i.i.i.i.i.i.i.i.i, %i.qv
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.1.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.045.i.i.i.i.i.i.i.i.i.i.i, %bb.cp ], [ %i.qw, %bb.cq ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.qx = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.ql
  br i1 %i.qx, label %bb.cp, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !81

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cr, %bb.co
  %.04.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.co ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.cr ]
  %i.qy = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !866, !nonnull !196, !align !378
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !859 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 144 ; 2 uses
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !875 ; 2 uses
  %i.rc = icmp eq ptr %i.rb, null
  br i1 %i.rc, label %bb.cs, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cs:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.rd = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.qz)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cv ; 0 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cs
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ra, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.re = phi ptr [ %i.rb, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ]
  %i.rf = getelementptr inbounds [8 x i8], ptr %i.re, i64 %i.qb
  store double %.04.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr %i.rf, align 8, !tbaa !842
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qz, i64 32 ; 2 uses
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 56
  %i.rj = load i32, ptr %i.ri, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.qz, i32 noundef %i.rj, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.cv

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ct
  %i.rk = load ptr, ptr %i.rg, align 8, !tbaa !390 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 44
  %i.rm = load i8, ptr %i.rl, align 4, !tbaa !395
  %i.rn = and i8 %i.rm, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.rn, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.cu, !prof !228

bb.cu:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.cv

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cu
  unreachable

end_hunk_4
begin_hunk_5_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph:                                           ; preds = %bb.kr, %bb.ks
  %indvars.iv.i.i.i.i.i.i4721105 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i478, %bb.ks ], [ 0, %bb.kr ] ; 2 uses
  %i.avo = lshr exact i64 %indvars.iv.i.i.i.i.i.i4721105, 3
  %i.avp = getelementptr inbounds nuw i8, ptr %i.avl, i64 %i.avo
  %i.avq = load i64, ptr %i.avp, align 8, !tbaa !227
  %i.avr = icmp eq i64 %i.avq, -1
  br i1 %i.avr, label %bb.ks, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i474:                     ; preds = %bb.ks, %bb.kr
  %.not38.i.i.i.i.i.i.i.i475 = icmp eq i32 %i.avh, %i.avm
  br i1 %.not38.i.i.i.i.i.i.i.i475, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356, label %bb.kt

bb.kt:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i474
  %i.avs = lshr i32 %i.avh, 6
  %i.avt = and i32 %i.avh, 63
  %i.avu = zext nneg i32 %i.avt to i64
  %notmask.i40.i.i.i.i.i.i.i.i476 = shl nsw i64 -1, %i.avu
  %i.avv = zext nneg i32 %i.avs to i64
  %i.avw = getelementptr inbounds nuw [8 x i8], ptr %i.avl, i64 %i.avv
  %i.avx = load i64, ptr %i.avw, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i477 = or i64 %i.avx, %notmask.i40.i.i.i.i.i.i.i.i476
  %i.avy = icmp eq i64 %.demorgan.i.i.i.i.i.i477, -1
  %i.avz = zext i1 %i.avy to i16
  %i.awa = or disjoint i16 %i.avz, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356: ; preds = %.lr.ph, %bb.kt, %.critedge.i.i.i.i.i.i.i.i474, %bb.kq, %bb.kp, %bb.ko
  %.sroa.0.0.insert.ext.i.i.i.i.i.i357 = phi i16 [ 256, %bb.kp ], [ 256, %bb.ko ], [ 257, %bb.kq ], [ 257, %.critedge.i.i.i.i.i.i.i.i474 ], [ %i.awa, %bb.kt ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i357, ptr %i.akc, align 4
  %i.awb = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i357 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i358

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i358: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i479
  %.0.in.i.i.i.i.i.i359 = phi i8 [ %.0.in.pre.i.i.i.i.i.i480, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i479 ], [ %i.awb, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i356 ]
  %.0.i.i.i.i.i.i360 = trunc nuw i8 %.0.in.i.i.i.i.i.i359 to i1
  br i1 %.0.i.i.i.i.i.i360, label %bb.ku, label %bb.ll

bb.ku:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i358
  %i.awc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awd = load i32, ptr %i.awc, align 8, !tbaa !266 ; 2 uses
  %i.awe = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !261 ; 2 uses
  %i.awg = icmp slt i32 %i.awf, %i.awd
  br i1 %i.awg, label %.lr.ph.i.i.i.i.i450, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i450:                              ; preds = %bb.ku, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.039.i.i.i.i.i = phi i32 [ %i.axn, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.awf, %bb.ku ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %.039.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.kv

bb.kv:                                            ; preds = %.lr.ph.i.i.i.i.i450
  %i.awh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.awi = extractvalue { ptr, i32 } %i.awh, 0    ; 2 uses
  %i.awj = extractvalue { ptr, i32 } %i.awh, 1    ; 2 uses
  %i.awk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.awl = icmp eq i32 %i.awj, %i.awk
  br i1 %i.awl, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.awm = call ptr @__cxa_begin_catch(ptr %i.awi) #42
  %i.awn = getelementptr inbounds nuw i8, ptr %i.awm, i64 8
  %i.awo = load ptr, ptr %i.awn, align 8, !tbaa !399 ; 2 uses
  %i.awp = getelementptr inbounds nuw i8, ptr %i.awo, i64 144
  %i.awq = load ptr, ptr %i.awp, align 8, !tbaa !157 ; 4 uses
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awo, i64 152
  %i.aws = load i64, ptr %i.awr, align 8, !tbaa !158
  %i.awt = icmp eq i64 %i.aws, 4
  br i1 %i.awt, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i458, label %.loopexit.i.i.i.i.i456

.lr.ph.i.i.i.i.preheader.i.i.i.i.i458:            ; preds = %bb.kw
  %i.awu = load i8, ptr %i.awq, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i459 = icmp eq i8 %i.awu, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i459, label %tailrecurse.i.i.i.i.i.i.i.i.i460, label %.loopexit.i.i.i.i.i456

tailrecurse.i.i.i.i.i.i.i.i.i460:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i458
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awq, i64 1
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i461 = icmp eq i8 %i.aww, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i461, label %tailrecurse.i.i.i.i.1.i.i.i.i.i462, label %.loopexit.i.i.i.i.i456

tailrecurse.i.i.i.i.1.i.i.i.i.i462:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i460
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awq, i64 2
  %i.awy = load i8, ptr %i.awx, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i463 = icmp eq i8 %i.awy, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i463, label %tailrecurse.i.i.i.i.2.i.i.i.i.i464, label %.loopexit.i.i.i.i.i456

tailrecurse.i.i.i.i.2.i.i.i.i.i464:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i462
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awq, i64 3
  %i.axa = load i8, ptr %i.awz, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i465 = icmp eq i8 %i.axa, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i465, label %tailrecurse.i.i.i.i.3.i.i.i.i.i466, label %.loopexit.i.i.i.i.i456

tailrecurse.i.i.i.i.3.i.i.i.i.i466:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i464
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.le unwind label %bb.lg

.loopexit.i.i.i.i.i456:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i464, %tailrecurse.i.i.i.i.1.i.i.i.i.i462, %tailrecurse.i.i.i.i.i.i.i.i.i460, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i458, %bb.kw
  invoke void @__cxa_rethrow() #44
          to label %bb.lk unwind label %bb.ld

bb.kx:                                            ; preds = %bb.kv
  %i.axb = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.axc = icmp eq i32 %i.awj, %i.axb
  br i1 %i.axc, label %bb.ky, label %.body343

bb.ky:                                            ; preds = %bb.kx
  %i.axd = call ptr @__cxa_begin_catch(ptr %i.awi) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.kz unwind label %bb.lb

bb.kz:                                            ; preds = %bb.ky
  %i.axe = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i.i.i.i.i.i453 = icmp eq ptr %i.axe, null
  br i1 %.not.i.i.i.i.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i454, label %bb.la

bb.la:                                            ; preds = %bb.kz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i454: ; preds = %bb.la, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.lb:                                            ; preds = %bb.ky
  %i.axf = landingpad { ptr, i32 }
          cleanup
  %i.axg = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i451 = icmp eq ptr %i.axg, null
  br i1 %.not.i4.i.i.i.i.i451, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i452, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i452

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i452: ; preds = %bb.lc, %bb.lb
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  invoke void @__cxa_end_catch()
          to label %.body343 unwind label %bb.lj

bb.ld:                                            ; preds = %.loopexit.i.i.i.i.i456
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %bb.li

bb.le:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i466
  %i.axi = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i469 = icmp eq ptr %i.axi, null
  br i1 %.not.i6.i.i.i.i.i469, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i470, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i470

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i470: ; preds = %bb.lf, %bb.le
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.lg:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i466
  %i.axj = landingpad { ptr, i32 }
          cleanup
  %i.axk = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i467 = icmp eq ptr %i.axk, null
  br i1 %.not.i8.i.i.i.i.i467, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i468, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i468

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i468: ; preds = %bb.lh, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.li

bb.li:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i468, %bb.ld
  %.pn.i.i.i.i.i.i457 = phi { ptr, i32 } [ %i.axj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i468 ], [ %i.axh, %bb.ld ]
  invoke void @__cxa_end_catch()
          to label %.body343 unwind label %bb.lj

bb.lj:                                            ; preds = %bb.li, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i452
  %i.axl = landingpad { ptr, i32 }
          catch ptr null
  %i.axm = extractvalue { ptr, i32 } %i.axl, 0
  call void @__clang_call_terminate(ptr %i.axm) #41
  unreachable

bb.lk:                                            ; preds = %.loopexit.i.i.i.i.i456
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i470, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i454
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp534.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i450
  %i.axn = add i32 %.039.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i455 = icmp eq i32 %i.axn, %i.awd
  br i1 %exitcond.not.i.i.i.i.i455, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i450, !llvm.loop !3004

bb.ll:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i358
  %i.axo = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.axp = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.axq = load i32, ptr %i.axp, align 4, !tbaa !261 ; 6 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.axs = load i32, ptr %i.axr, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i361 = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %14, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i361, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %13, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i362, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i363 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i363, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i364 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.axo, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i364, align 8
  %.not.i.i.i.i.i.i.i.i365 = icmp slt i32 %i.axq, %i.axs
  br i1 %.not.i.i.i.i.i.i.i.i365, label %bb.lm, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.lm:                                            ; preds = %bb.ll
  %i.axt = add i32 %i.axq, 63                     ; 2 uses
  %i.axu = srem i32 %i.axt, 64
  %i.axv = sub nsw i32 %i.axt, %i.axu             ; 6 uses
  %i.axw = and i32 %i.axs, -64                    ; 4 uses
  %i.axx = icmp slt i32 %i.axw, %i.axv
  br i1 %i.axx, label %bb.ln, label %bb.lo

bb.ln:                                            ; preds = %bb.lm
  %i.axy = and i32 %i.axs, 63
  %i.axz = zext nneg i32 %i.axy to i64
  %notmask.i.i.i.i.i.i.i.i.i448 = shl nsw i64 -1, %i.axz
  %i.aya = xor i64 %notmask.i.i.i.i.i.i.i.i.i448, -1
  %i.ayb = sub nsw i32 %i.axv, %i.axq             ; 2 uses
  %i.ayc = zext nneg i32 %i.ayb to i64
  %notmask.i.i.i.i.i.i.i.i.i.i449 = shl nsw i64 -1, %i.ayc
  %i.ayd = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i449, -1
  %i.aye = sub nsw i32 64, %i.ayb
  %i.ayf = zext nneg i32 %i.aye to i64
  %i.ayg = shl i64 %i.ayd, %i.ayf
  %i.ayh = and i64 %i.ayg, %i.aya
  br label %.invoke966

bb.lo:                                            ; preds = %bb.lm
  %.not32.i.i.i.i.i.i.i.i366 = icmp eq i32 %i.axq, %i.axv
  br i1 %.not32.i.i.i.i.i.i.i.i366, label %.noexc485, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.ayi = sdiv i32 %i.axq, 64
  %i.ayj = sub nsw i32 %i.axv, %i.axq             ; 2 uses
  %i.ayk = zext nneg i32 %i.ayj to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i367 = shl nsw i64 -1, %i.ayk
  %i.ayl = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i367, -1
  %i.aym = sub nsw i32 64, %i.ayj
  %i.ayn = zext nneg i32 %i.aym to i64
  %i.ayo = shl i64 %i.ayl, %i.ayn
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.ayi, i64 noundef %i.ayo)
          to label %.noexc485 unwind label %.loopexit.split-lp534.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc485:                                        ; preds = %bb.lp, %bb.lo
  %i.ayp = add nsw i32 %i.axv, 64                 ; 2 uses
  %.not3359.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ayp, %i.axw
  br i1 %.not3359.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i370, label %.lr.ph.i.i.i.i.i.i.i.i368

._crit_edge.i.i.i.i.i.i.i.i370:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc485
  %.not34.i.i.i.i.i.i.i.i371 = icmp eq i32 %i.axs, %i.axw
  br i1 %.not34.i.i.i.i.i.i.i.i371, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.nf

.lr.ph.i.i.i.i.i.i.i.i368:                        ; preds = %.noexc485, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.ayq = phi i32 [ %i.bhp, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.ayp, %.noexc485 ] ; 2 uses
  %.060.i.i.i.i.i.i.i.i = phi i32 [ %i.ayq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.axv, %.noexc485 ] ; 2 uses
  %i.ayr = sdiv i32 %.060.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.ays = sext i32 %i.ayr to i64
  %i.ayt = getelementptr inbounds [8 x i8], ptr %i.axo, i64 %i.ays
  %i.ayu = load i64, ptr %i.ayt, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ayu, label %.lr.ph.i.i.i.i10.i.i.i.i.i413 [
    i64 -1, label %bb.lq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i413:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i368
  %i.ayv = shl nsw i32 %i.ayr, 6
  br label %bb.ml

bb.lq:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i368
  %i.ayw = shl nsw i32 %i.ayr, 6                  ; 2 uses
  %i.ayx = add i32 %i.ayw, 64
  %i.ayy = sext i32 %i.ayx to i64
  %.0.off.i.i.i.i.i.i.i.i373 = add i32 %.060.i.i.i.i.i.i.i.i, 127
  %.not64.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i373, 64
  br i1 %.not64.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph63.i.i.i.i.i.i.i.i.i

.lr.ph63.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.lq
  %i.ayz = sext i32 %i.ayw to i64
  br label %bb.lr

bb.lr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph63.i.i.i.i.i.i.i.i.i
  %.062.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ayz, %.lr.ph63.i.i.i.i.i.i.i.i.i ], [ %i.bdf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.aza = load ptr, ptr %.sroa.46.0..sroa_idx.i.i352, align 8, !tbaa !886, !nonnull !196, !align !378
  %i.azb = load ptr, ptr %i.aza, align 8, !tbaa !370 ; 2 uses
  %i.azc = getelementptr i8, ptr %i.azb, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i374 = load ptr, ptr %i.azc, align 8, !tbaa !294
  %i.azd = getelementptr i8, ptr %i.azb, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i375 = load ptr, ptr %i.azd, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i376 = shl i64 %.062.i.i.i.i.i.i.i.i.i, 32
  %i.aze = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i376, 32 ; 3 uses
  %i.azf = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i374, i64 %i.aze
  %i.azg = load i32, ptr %i.azf, align 4, !tbaa !151 ; 4 uses
  %i.azh = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i375, i64 %i.aze
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !151 ; 2 uses
  %i.azj = add nsw i32 %i.azi, %i.azg             ; 3 uses
  %i.azk = icmp sgt i32 %i.azi, 0
  br i1 %i.azk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i407, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i407:                  ; preds = %bb.lr
  %i.azl = load ptr, ptr %.sroa.57.0..sroa_idx.i.i353, align 8, !tbaa !887, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i408 = load ptr, ptr %i.azl, align 8
  %i.azm = getelementptr i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i408, i64 8
  %.val.val.i.i.i.i.i.i.i.i.i.i.i409 = load ptr, ptr %i.azm, align 8, !tbaa !296 ; 5 uses
  %i.azn = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i409, i64 16
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !307 ; 3 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i409, i64 58
  %i.azq = load i8, ptr %i.azp, align 2, !tbaa !308, !range !205, !noundef !196
  %i.azr = trunc nuw i8 %i.azq to i1
  %i.azs = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i409, i64 8
  %i.azt = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i409, i64 64
  br i1 %i.azr, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i407
  %i.azu = sext i32 %i.azg to i64
  %i.azv = sext i32 %i.azj to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azu, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.us.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.azz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.azw = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i
  %i.azx = load float, ptr %i.azw, align 4, !tbaa !840
  %i.azy = fpext float %i.azx to double
  %i.azz = fadd double %.023.us.i.i.i.i.i.i.i.i.i.i.i, %i.azy ; 2 uses
  %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.baa = icmp slt i64 %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %i.azv
  br i1 %i.baa, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !83

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i407
  %i.bab = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i409, i64 59
  %i.bac = load i8, ptr %i.bab, align 1, !tbaa !309, !range !205, !noundef !196
  %i.bad = trunc nuw i8 %i.bac to i1
  br i1 %i.bad, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bae = load i32, ptr %i.azt, align 8, !tbaa !311
  %i.baf = sext i32 %i.bae to i64
  %i.bag = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %i.baf
  %i.bah = load float, ptr %i.bag, align 4, !tbaa !840
  %i.bai = fpext float %i.bah to double
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.04.us5.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.azg, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bak, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %.023.us6.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %i.baj = fadd double %.023.us6.i.i.i.i.i.i.i.i.i.i.i, %i.bai ; 2 uses
  %i.bak = add nsw i32 %.04.us5.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bal = icmp slt i32 %i.bak, %i.azj
  br i1 %i.bal, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !83

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bam = load ptr, ptr %i.azs, align 8, !tbaa !310
  %i.ban = sext i32 %i.azg to i64
  %i.bao = sext i32 %i.azj to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i410 = phi i64 [ %i.ban, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i412, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i.i.i.i.i.i411 = phi double [ 0.000000e+00, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bap = getelementptr inbounds [4 x i8], ptr %i.bam, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i410
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !151
  %i.bar = sext i32 %i.baq to i64
  %i.bas = getelementptr inbounds [4 x i8], ptr %i.azo, i64 %i.bar
  %i.bat = load float, ptr %i.bas, align 4, !tbaa !840
  %i.bau = fpext float %i.bat to double
  %i.bav = fadd double %.023.i.i.i.i.i.i.i.i.i.i.i411, %i.bau ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i412 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i410, 1 ; 2 uses
  %i.baw = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i412, %i.bao
  br i1 %i.baw, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !83

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %bb.lr
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i377 = phi double [ 0.000000e+00, %bb.lr ], [ %i.azz, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.baj, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bav, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bax = load ptr, ptr %.sroa.7.0..sroa_idx.i.i355, align 8, !tbaa !888, !nonnull !196, !align !378
  %i.bay = load ptr, ptr %i.bax, align 8, !tbaa !859 ; 5 uses
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 144 ; 2 uses
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !875 ; 2 uses
  %i.bbb = icmp eq ptr %i.bba, null
  br i1 %i.bbb, label %bb.ls, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i378

bb.ls:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.bbc = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bay)
          to label %.noexc.i.i.i.i.i.i.i.i.i405 unwind label %bb.lv ; 0 uses
end_hunk_5
begin_hunk_6_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #42
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_E18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %57, ptr nonnull @.str.29) #44
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.kc = landingpad { ptr, i32 }
          cleanup
  %i.kd = load ptr, ptr %57, align 8, !tbaa !157  ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.bb
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !150
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #42
  br label %bb.nw

bb.bc:                                            ; preds = %bb.a
  %i.ki = load ptr, ptr %4, align 8, !tbaa !281
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !334
  tail call void @_ZN8facebook5velox10BaseVector14ensureWritableERKNS0_17SelectivityVectorERKSt10shared_ptrIKNS0_4TypeEEPNS0_6memory10MemoryPoolERS5_IS1_EPNS0_10VectorPoolE(ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.kj, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef null)
  %i.kk = load ptr, ptr %5, align 8, !tbaa !237   ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !149
  %i.km = icmp eq ptr %i.kl, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIdEE, i64 16)
  %i.kn = select i1 %i.km, ptr %i.kk, ptr null    ; 4 uses
  %i.ko = load ptr, ptr %2, align 8, !tbaa !234
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !237
  %i.kq = tail call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.kp, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #42 ; 7 uses
  %.not62 = icmp eq ptr %i.kq, null
  br i1 %.not62, label %bb.bd, label %bb.be, !prof !152

bb.bd:                                            ; preds = %bb.bc
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_E18veloxCheckFailArgs_1) #44
  unreachable

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #42
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 128
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !237 ; 3 uses
  store ptr %i.ks, ptr %58, align 8, !tbaa !237
  %i.kt = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kq, i64 136
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !144 ; 3 uses
  store ptr %i.kv, ptr %i.kt, align 8, !tbaa !144
  %.not.i.i.i113 = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i113, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit115, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 8 ; 3 uses
  %i.kx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !150
  %.not.i.i.i.i114 = icmp eq i8 %i.kx, 0
  br i1 %.not.i.i.i.i114, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ky = load i32, ptr %i.kw, align 4, !tbaa !151
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.kw, align 4, !tbaa !151
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit115

bb.bh:                                            ; preds = %bb.bf
  %i.la = atomicrmw volatile add ptr %i.kw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %58, align 8, !tbaa !237
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit115

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit115: ; preds = %bb.be, %bb.bg, %bb.bh
  %i.lb = phi ptr [ %i.ks, %bb.be ], [ %i.ks, %bb.bg ], [ %.pre, %bb.bh ] ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 28
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !250
  %i.le = icmp eq i32 %i.ld, 3
  br i1 %i.le, label %bb.bi, label %bb.hp

bb.bi:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit115
  %i.lf = load ptr, ptr %i.lb, align 8, !tbaa !149
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lb, i64 144
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !875 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 40
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !362 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lf, i64 16
  %i.ll = load ptr, ptr %i.lk, align 8
  %i.lm = invoke noundef zeroext i1 %i.ll(ptr noundef nonnull align 8 dereferenceable(94) %i.lb)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  br i1 %i.lm, label %bb.bk, label %bb.ep

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.lj, ptr %i.l, align 8, !tbaa !363
  store ptr %i.lh, ptr %i.m, align 8, !tbaa !895
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #42
  store ptr %i.m, ptr %48, align 8, !tbaa !902
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #42
  store ptr %i.l, ptr %49, align 8, !tbaa !368
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.kq, ptr %i.j, align 8, !tbaa !370
  store ptr %i.kn, ptr %i.k, align 8, !tbaa !859
  call void @llvm.lifetime.start.p0(ptr nonnull %47)
  store ptr %0, ptr %47, align 8
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 4 uses
  store ptr %i.j, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  store ptr %48, ptr %.sroa.57.0..sroa_idx.i.i, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %47, i64 24 ; 4 uses
  store ptr %49, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %47, i64 32 ; 4 uses
  store ptr %i.k, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.ln = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !263, !range !205, !noundef !196
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i, label %bb.bl

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i: ; preds = %bb.bk
  %.0.in.pre.i.i.i.i.i.i = load i8, ptr %i.ln, align 4, !tbaa !135, !range !205
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bk
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !261
  %i.lt = icmp eq i32 %i.ls, 0
  br i1 %i.lt, label %bb.bm, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lv = load i32, ptr %i.lu, align 8, !tbaa !266 ; 6 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !265
  %i.ly = icmp eq i32 %i.lv, %i.lx
  br i1 %i.ly, label %bb.bn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.lz = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %i.lv, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.bo, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.ma = and i32 %i.lv, 2147483584               ; 3 uses
  %i.mb = zext nneg i32 %i.ma to i64
  %.not37.i.i.not.i.i.i.i.i.i1116.not = icmp eq i32 %i.ma, 0
  br i1 %.not37.i.i.not.i.i.i.i.i.i1116.not, label %.critedge.i.i.i.i.i.i.i.i, label %.lr.ph1118

bb.bp:                                            ; preds = %.lr.ph1118
  %indvars.iv.next.i.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i.i1117, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i.i.i, %i.mb
  br i1 %.not37.i.i.not.i.i.i.i.i.i, label %.lr.ph1118, label %.critedge.i.i.i.i.i.i.i.i, !llvm.loop !8

.lr.ph1118:                                       ; preds = %bb.bo, %bb.bp
  %indvars.iv.i.i.i.i.i.i1117 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.bp ], [ 0, %bb.bo ] ; 2 uses
  %i.mc = lshr exact i64 %indvars.iv.i.i.i.i.i.i1117, 3
  %i.md = getelementptr inbounds nuw i8, ptr %i.lz, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !227
  %i.mf = icmp eq i64 %i.me, -1
  br i1 %i.mf, label %bb.bp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.bp, %bb.bo
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.lv, %i.ma
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.mg = lshr i32 %i.lv, 6
  %i.mh = and i32 %i.lv, 63
  %i.mi = zext nneg i32 %i.mh to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mi
  %i.mj = zext nneg i32 %i.mg to i64
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.lz, i64 %i.mj
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.ml, %notmask.i40.i.i.i.i.i.i.i.i
  %i.mm = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.mn = zext i1 %i.mm to i16
  %i.mo = or disjoint i16 %i.mn, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1118, %bb.bq, %.critedge.i.i.i.i.i.i.i.i, %bb.bn, %bb.bm, %bb.bl
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bm ], [ 256, %bb.bl ], [ 257, %bb.bn ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.mo, %bb.bq ], [ 256, %.lr.ph1118 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.ln, align 4
  %i.mp = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.mp, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.br, label %bb.co

bb.br:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !266 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !261 ; 2 uses
  %i.mu = icmp slt i32 %i.mt, %i.mr
  br i1 %i.mu, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.br, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %64, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.mt, %bb.br ] ; 6 uses
  %i.mv = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !991, !nonnull !196, !align !378
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !370 ; 2 uses
  %i.mx = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !992, !nonnull !196, !align !378
  %i.my = getelementptr i8, ptr %i.mw, i64 120
  %.val3.i.i.i.i = load ptr, ptr %i.my, align 8, !tbaa !295
  %.val4.i.i.i.i = load ptr, ptr %i.mx, align 8
  %61 = sext i32 %.029.i.i.i.i.i to i64           ; 3 uses
  %i.mz = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i, i64 %61
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !151 ; 2 uses
  %i.nb = icmp sgt i32 %i.na, 0
  br i1 %i.nb, label %.lr.ph.i.i2.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i

.lr.ph.i.i2.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i
  %i.nc = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !993, !nonnull !196, !align !378
  %.val5.i.i.i.i = load ptr, ptr %i.nc, align 8
  %i.nd = getelementptr i8, ptr %i.mw, i64 104
  %.val.i.i.i.i = load ptr, ptr %i.nd, align 8, !tbaa !294
  %i.ne = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %61
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !151 ; 2 uses
  %i.ng = add nsw i32 %i.nf, %i.na
  %.val.val.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i, align 8, !tbaa !363
  %i.nh = sext i32 %i.nf to i64
  %i.ni = sext i32 %i.ng to i64
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bu, %.lr.ph.i.i2.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %i.nh, %.lr.ph.i.i2.i.i.i ], [ %indvars.iv.next.i.i.i.i.i, %bb.bu ] ; 4 uses
  %.045.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i2.i.i.i ], [ %.1.i.i.i.i.i, %bb.bu ] ; 2 uses
  %i.nj = lshr i64 %indvars.iv.i.i.i.i.i, 6
  %i.nk = and i64 %i.nj, 67108863
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !227
  %i.nn = and i64 %indvars.iv.i.i.i.i.i, 63
  %i.no = shl nuw i64 1, %i.nn
  %i.np = and i64 %i.nm, %i.no
  %.not.i.i.i.i3.i.i.i = icmp eq i64 %i.np, 0
  br i1 %.not.i.i.i.i3.i.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val12.val.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i, align 8, !tbaa !895
  %i.nq = getelementptr inbounds [8 x i8], ptr %.val12.val.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !842
  %i.ns = fadd double %.045.i.i.i.i.i, %i.nr
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1.i.i.i.i.i = phi double [ %.045.i.i.i.i.i, %bb.bs ], [ %i.ns, %bb.bt ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 2 uses
  %i.nt = icmp slt i64 %indvars.iv.next.i.i.i.i.i, %i.ni
  br i1 %i.nt, label %bb.bs, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i, !llvm.loop !101

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i: ; preds = %bb.bu, %.lr.ph.i.i.i.i.i
  %.04.lcssa.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i ], [ %.1.i.i.i.i.i, %bb.bu ]
  %i.nu = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !994, !nonnull !196, !align !378
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !859 ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 144 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !875 ; 2 uses
  %i.ny = icmp eq ptr %i.nx, null
  br i1 %i.ny, label %bb.bv, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i

bb.bv:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i
  %i.nz = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.nv)
          to label %.noexc.i.i.i unwind label %bb.by ; 0 uses

.noexc.i.i.i:                                     ; preds = %bb.bv
  %.pre.i.i.i.i.i = load ptr, ptr %i.nw, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i
  %i.oa = phi ptr [ %i.nx, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i ], [ %.pre.i.i.i.i.i, %.noexc.i.i.i ]
  %i.ob = getelementptr inbounds [8 x i8], ptr %i.oa, i64 %61
  store double %.04.lcssa.i.i.i.i.i, ptr %i.ob, align 8, !tbaa !842
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 32 ; 2 uses
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !390
  %.not.i.i.i.i.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nv, i64 56
  %i.of = load i32, ptr %i.oe, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.nv, i32 noundef %i.of, i1 noundef zeroext true)
          to label %.noexc4.i.i.i unwind label %bb.by

.noexc4.i.i.i:                                    ; preds = %bb.bw
  %i.og = load ptr, ptr %i.oc, align 8, !tbaa !390 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 44
  %i.oi = load i8, ptr %i.oh, align 4, !tbaa !395
  %i.oj = and i8 %i.oi, 2
  %.not.i3.i.i.i.i.i = icmp eq i8 %i.oj, 0
  br i1 %.not.i3.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i, label %bb.bx, !prof !228

bb.bx:                                            ; preds = %.noexc4.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.noexc5.i.i.i unwind label %bb.by

.noexc5.i.i.i:                                    ; preds = %bb.bx
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i: ; preds = %.noexc4.i.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !396
  %62 = lshr i32 %.029.i.i.i.i.i, 3
  %63 = zext nneg i32 %62 to i64
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 %63 ; 2 uses
  %i.on = load i8, ptr %i.om, align 1, !tbaa !150
  %i.oo = trunc i32 %.029.i.i.i.i.i to i8
  %i.op = and i8 %i.oo, 7
  %i.oq = shl nuw i8 1, %i.op
  %i.or = or i8 %i.on, %i.oq
  store i8 %i.or, ptr %i.om, align 1, !tbaa !150
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i

bb.by:                                            ; preds = %bb.bx, %bb.bw, %bb.bv
  %i.os = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ot = extractvalue { ptr, i32 } %i.os, 0      ; 2 uses
  %i.ou = extractvalue { ptr, i32 } %i.os, 1      ; 2 uses
  %i.ov = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.ow = icmp eq i32 %i.ou, %i.ov
  br i1 %i.ow, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ox = call ptr @__cxa_begin_catch(ptr %i.ot) #42
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !399 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 144
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !157 ; 4 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oz, i64 152
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !158
  %i.pe = icmp eq i64 %i.pd, 4
  br i1 %i.pe, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bz
  %i.pf = load i8, ptr %i.pb, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.pf, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pb, i64 1
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.ph, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 2
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.pj, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pb, i64 3
  %i.pl = load i8, ptr %i.pk, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.pl, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %45) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.ch unwind label %bb.cj

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bz
  invoke void @__cxa_rethrow() #44
          to label %bb.cn unwind label %bb.cg

bb.ca:                                            ; preds = %bb.by
  %i.pm = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.pn = icmp eq i32 %i.ou, %i.pm
  br i1 %i.pn, label %bb.cb, label %.body116

bb.cb:                                            ; preds = %bb.ca
  %i.po = call ptr @__cxa_begin_catch(ptr %i.ot) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %44) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.pp = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ce:                                            ; preds = %bb.cb
  %i.pq = landingpad { ptr, i32 }
          cleanup
  %i.pr = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.pr, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  invoke void @__cxa_end_catch()
          to label %.body116 unwind label %bb.cm

bb.cg:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ch:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.pt = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.pt, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cj:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.pu = landingpad { ptr, i32 }
          cleanup
  %i.pv = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.pv, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %bb.cl

bb.cl:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.cg
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.pu, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.ps, %bb.cg ]
  invoke void @__cxa_end_catch()
          to label %.body116 unwind label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.pw = landingpad { ptr, i32 }
          catch ptr null
  %i.px = extractvalue { ptr, i32 } %i.pw, 0
  call void @__clang_call_terminate(ptr %i.px) #41
  unreachable

bb.cn:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i, %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i
  %64 = add i32 %.029.i.i.i.i.i, 1                ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %64, %i.mr
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3601

bb.co:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.py = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !261 ; 6 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  store ptr %47, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %46, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %43, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %i.py, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.qa, %i.qc
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cp, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cp:                                            ; preds = %bb.co
  %i.qd = add i32 %i.qa, 63                       ; 2 uses
  %i.qe = srem i32 %i.qd, 64
  %i.qf = sub nsw i32 %i.qd, %i.qe                ; 6 uses
  %i.qg = and i32 %i.qc, -64                      ; 4 uses
  %i.qh = icmp slt i32 %i.qg, %i.qf
  br i1 %i.qh, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.qi = and i32 %i.qc, 63
  %i.qj = zext nneg i32 %i.qi to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.qj
  %i.qk = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.ql = sub nsw i32 %i.qf, %i.qa                ; 2 uses
  %i.qm = zext nneg i32 %i.ql to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.qm
  %i.qn = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.qo = sub nsw i32 64, %i.ql
  %i.qp = zext nneg i32 %i.qo to i64
  %i.qq = shl i64 %i.qn, %i.qp
  %i.qr = and i64 %i.qq, %i.qk
  br label %.invoke969.a

bb.cr:                                            ; preds = %bb.cp
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.qa, %i.qf
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc120, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.qs = sdiv i32 %i.qa, 64
  %i.qt = sub nsw i32 %i.qf, %i.qa                ; 2 uses
  %i.qu = zext nneg i32 %i.qt to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.qu
  %i.qv = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.qw = sub nsw i32 64, %i.qt
  %i.qx = zext nneg i32 %i.qw to i64
  %i.qy = shl i64 %i.qv, %i.qx
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %43, i32 noundef %i.qs, i64 noundef %i.qy)
          to label %.noexc120 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc120:                                        ; preds = %bb.cs, %bb.cr
  %i.qz = add nsw i32 %i.qf, 64                   ; 2 uses
  %.not3349.i.i.i.i.i.i.i.i = icmp sgt i32 %i.qz, %i.qg
  br i1 %.not3349.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc120
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.qc, %i.qg
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.eo

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc120, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.ra = phi i32 [ %i.yf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.qz, %.noexc120 ] ; 2 uses
  %.050.i.i.i.i.i.i.i.i = phi i32 [ %i.ra, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.qf, %.noexc120 ] ; 2 uses
  %i.rb = sdiv i32 %.050.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.rc = sext i32 %i.rb to i64
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.py, i64 %i.rc
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.re, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.ct
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rf = shl nsw i32 %i.rb, 6
  br label %bb.dr

bb.ct:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.rg = shl nsw i32 %i.rb, 6                    ; 2 uses
  %i.rh = add i32 %i.rg, 64
  %i.ri = sext i32 %i.rh to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.050.i.i.i.i.i.i.i.i, 127
  %.not59.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not59.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph58.i.i.i.i.i.i.i.i.i

.lr.ph58.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.ct
  %i.rj = sext i32 %i.rg to i64
  br label %bb.cu

bb.cu:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph58.i.i.i.i.i.i.i.i.i
  %.057.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rj, %.lr.ph58.i.i.i.i.i.i.i.i.i ], [ %i.us, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.rk = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !991, !nonnull !196, !align !378
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !370 ; 2 uses
  %i.rm = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !992, !nonnull !196, !align !378
  %i.rn = getelementptr i8, ptr %i.rl, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rn, align 8, !tbaa !295
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rm, align 8
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.057.i.i.i.i.i.i.i.i.i, 32
  %i.ro = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.rp = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !151 ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, 0
  br i1 %i.rr, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cu
  %i.rs = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !993, !nonnull !196, !align !378
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rs, align 8
  %i.rt = getelementptr i8, ptr %i.rl, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rt, align 8, !tbaa !294
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.ro
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !151 ; 2 uses
  %i.rw = add nsw i32 %i.rv, %i.rq
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !363
  %i.rx = sext i32 %i.rv to i64
  %i.ry = sext i32 %i.rw to i64
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.rx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %bb.cx ] ; 4 uses
  %.045.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.cx ] ; 2 uses
  %i.rz = lshr i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.sa = and i64 %i.rz, 67108863
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.sa
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !227
  %i.sd = and i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.se = shl nuw i64 1, %i.sd
  %i.sf = and i64 %i.sc, %i.se
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.sf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.val12.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !895
  %i.sg = getelementptr inbounds [8 x i8], ptr %.val12.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.sh = load double, ptr %i.sg, align 8, !tbaa !842
  %i.si = fadd double %.045.i.i.i.i.i.i.i.i.i.i.i, %i.sh
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.1.i.i.i.i.i.i.i.i.i.i.i = phi double [ %.045.i.i.i.i.i.i.i.i.i.i.i, %bb.cv ], [ %i.si, %bb.cw ] ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.sj = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.ry
  br i1 %i.sj, label %bb.cv, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !101

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cx, %bb.cu
  %.04.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.cu ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.cx ]
  %i.sk = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !994, !nonnull !196, !align !378
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !859 ; 5 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 144 ; 2 uses
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !875 ; 2 uses
  %i.so = icmp eq ptr %i.sn, null
  br i1 %i.so, label %bb.cy, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cy:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.sp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.sl)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.db ; 0 uses

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cy
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.sm, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.sq = phi ptr [ %i.sn, %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i ]
  %i.sr = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.ro
  store double %.04.lcssa.i.i.i.i.i.i.i.i.i.i.i, ptr %i.sr, align 8, !tbaa !842
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sl, i64 32 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.st, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.su = getelementptr inbounds nuw i8, ptr %i.sl, i64 56
  %i.sv = load i32, ptr %i.su, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.sl, i32 noundef %i.sv, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.db

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cz
  %i.sw = load ptr, ptr %i.ss, align 8, !tbaa !390 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 44
  %i.sy = load i8, ptr %i.sx, align 4, !tbaa !395
  %i.sz = and i8 %i.sy, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.sz, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.da, !prof !228

bb.da:                                            ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.db

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.da
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
end_hunk_6
begin_hunk_7_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph:                                           ; preds = %bb.kx, %bb.ky
  %indvars.iv.i.i.i.i.i.i4741109 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i480, %bb.ky ], [ 0, %bb.kx ] ; 2 uses
  %i.aww = lshr exact i64 %indvars.iv.i.i.i.i.i.i4741109, 3
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awt, i64 %i.aww
  %i.awy = load i64, ptr %i.awx, align 8, !tbaa !227
  %i.awz = icmp eq i64 %i.awy, -1
  br i1 %i.awz, label %bb.ky, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i476:                     ; preds = %bb.ky, %bb.kx
  %.not38.i.i.i.i.i.i.i.i477 = icmp eq i32 %i.awp, %i.awu
  br i1 %.not38.i.i.i.i.i.i.i.i477, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358, label %bb.kz

bb.kz:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i476
  %i.axa = lshr i32 %i.awp, 6
  %i.axb = and i32 %i.awp, 63
  %i.axc = zext nneg i32 %i.axb to i64
  %notmask.i40.i.i.i.i.i.i.i.i478 = shl nsw i64 -1, %i.axc
  %i.axd = zext nneg i32 %i.axa to i64
  %i.axe = getelementptr inbounds nuw [8 x i8], ptr %i.awt, i64 %i.axd
  %i.axf = load i64, ptr %i.axe, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i479 = or i64 %i.axf, %notmask.i40.i.i.i.i.i.i.i.i478
  %i.axg = icmp eq i64 %.demorgan.i.i.i.i.i.i479, -1
  %i.axh = zext i1 %i.axg to i16
  %i.axi = or disjoint i16 %i.axh, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358: ; preds = %.lr.ph, %bb.kz, %.critedge.i.i.i.i.i.i.i.i476, %bb.kw, %bb.kv, %bb.ku
  %.sroa.0.0.insert.ext.i.i.i.i.i.i359 = phi i16 [ 256, %bb.kv ], [ 256, %bb.ku ], [ 257, %bb.kw ], [ 257, %.critedge.i.i.i.i.i.i.i.i476 ], [ %i.axi, %bb.kz ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i359, ptr %i.alk, align 4
  %i.axj = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i359 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i360

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i360: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i481
  %.0.in.i.i.i.i.i.i361 = phi i8 [ %.0.in.pre.i.i.i.i.i.i482, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i481 ], [ %i.axj, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i358 ]
  %.0.i.i.i.i.i.i362 = trunc nuw i8 %.0.in.i.i.i.i.i.i361 to i1
  br i1 %.0.i.i.i.i.i.i362, label %bb.la, label %bb.lr

bb.la:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i360
  %i.axk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.axl = load i32, ptr %i.axk, align 8, !tbaa !266 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !261 ; 2 uses
  %i.axo = icmp slt i32 %i.axn, %i.axl
  br i1 %i.axo, label %.lr.ph.i.i.i.i.i452, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i452:                              ; preds = %bb.la, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.039.i.i.i.i.i = phi i32 [ %i.ayv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.axn, %bb.la ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %.039.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.lb

bb.lb:                                            ; preds = %.lr.ph.i.i.i.i.i452
  %i.axp = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.axq = extractvalue { ptr, i32 } %i.axp, 0    ; 2 uses
  %i.axr = extractvalue { ptr, i32 } %i.axp, 1    ; 2 uses
  %i.axs = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.axt = icmp eq i32 %i.axr, %i.axs
  br i1 %i.axt, label %bb.lc, label %bb.ld

bb.lc:                                            ; preds = %bb.lb
  %i.axu = call ptr @__cxa_begin_catch(ptr %i.axq) #42
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axu, i64 8
  %i.axw = load ptr, ptr %i.axv, align 8, !tbaa !399 ; 2 uses
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axw, i64 144
  %i.axy = load ptr, ptr %i.axx, align 8, !tbaa !157 ; 4 uses
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axw, i64 152
  %i.aya = load i64, ptr %i.axz, align 8, !tbaa !158
  %i.ayb = icmp eq i64 %i.aya, 4
  br i1 %i.ayb, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i460, label %.loopexit.i.i.i.i.i458

.lr.ph.i.i.i.i.preheader.i.i.i.i.i460:            ; preds = %bb.lc
  %i.ayc = load i8, ptr %i.axy, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i461 = icmp eq i8 %i.ayc, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i461, label %tailrecurse.i.i.i.i.i.i.i.i.i462, label %.loopexit.i.i.i.i.i458

tailrecurse.i.i.i.i.i.i.i.i.i462:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i460
  %i.ayd = getelementptr inbounds nuw i8, ptr %i.axy, i64 1
  %i.aye = load i8, ptr %i.ayd, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i463 = icmp eq i8 %i.aye, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i463, label %tailrecurse.i.i.i.i.1.i.i.i.i.i464, label %.loopexit.i.i.i.i.i458

tailrecurse.i.i.i.i.1.i.i.i.i.i464:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i462
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axy, i64 2
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i465 = icmp eq i8 %i.ayg, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i465, label %tailrecurse.i.i.i.i.2.i.i.i.i.i466, label %.loopexit.i.i.i.i.i458

tailrecurse.i.i.i.i.2.i.i.i.i.i466:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i464
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.axy, i64 3
  %i.ayi = load i8, ptr %i.ayh, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i467 = icmp eq i8 %i.ayi, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i467, label %tailrecurse.i.i.i.i.3.i.i.i.i.i468, label %.loopexit.i.i.i.i.i458

tailrecurse.i.i.i.i.3.i.i.i.i.i468:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i466
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.lk unwind label %bb.lm

.loopexit.i.i.i.i.i458:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i466, %tailrecurse.i.i.i.i.1.i.i.i.i.i464, %tailrecurse.i.i.i.i.i.i.i.i.i462, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i460, %bb.lc
  invoke void @__cxa_rethrow() #44
          to label %bb.lq unwind label %bb.lj

bb.ld:                                            ; preds = %bb.lb
  %i.ayj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.ayk = icmp eq i32 %i.axr, %i.ayj
  br i1 %i.ayk, label %bb.le, label %.body345

bb.le:                                            ; preds = %bb.ld
  %i.ayl = call ptr @__cxa_begin_catch(ptr %i.axq) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.lf unwind label %bb.lh

bb.lf:                                            ; preds = %bb.le
  %i.aym = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i.i.i.i.i.i455 = icmp eq ptr %i.aym, null
  br i1 %.not.i.i.i.i.i.i455, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i456, label %bb.lg

bb.lg:                                            ; preds = %bb.lf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i456

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i456: ; preds = %bb.lg, %bb.lf
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.lh:                                            ; preds = %bb.le
  %i.ayn = landingpad { ptr, i32 }
          cleanup
  %i.ayo = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i453 = icmp eq ptr %i.ayo, null
  br i1 %.not.i4.i.i.i.i.i453, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i454, label %bb.li

bb.li:                                            ; preds = %bb.lh
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i454

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i454: ; preds = %bb.li, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  invoke void @__cxa_end_catch()
          to label %.body345 unwind label %bb.lp

bb.lj:                                            ; preds = %.loopexit.i.i.i.i.i458
  %i.ayp = landingpad { ptr, i32 }
          cleanup
  br label %bb.lo

bb.lk:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i468
  %i.ayq = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i471 = icmp eq ptr %i.ayq, null
  br i1 %.not.i6.i.i.i.i.i471, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i472, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i472

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i472: ; preds = %bb.ll, %bb.lk
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.lm:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i468
  %i.ayr = landingpad { ptr, i32 }
          cleanup
  %i.ays = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i469 = icmp eq ptr %i.ays, null
  br i1 %.not.i8.i.i.i.i.i469, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i470, label %bb.ln

bb.ln:                                            ; preds = %bb.lm
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i470

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i470: ; preds = %bb.ln, %bb.lm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.lo

bb.lo:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i470, %bb.lj
  %.pn.i.i.i.i.i.i459 = phi { ptr, i32 } [ %i.ayr, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i470 ], [ %i.ayp, %bb.lj ]
  invoke void @__cxa_end_catch()
          to label %.body345 unwind label %bb.lp

bb.lp:                                            ; preds = %bb.lo, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i454
  %i.ayt = landingpad { ptr, i32 }
          catch ptr null
  %i.ayu = extractvalue { ptr, i32 } %i.ayt, 0
  call void @__clang_call_terminate(ptr %i.ayu) #41
  unreachable

bb.lq:                                            ; preds = %.loopexit.i.i.i.i.i458
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i472, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i456
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i452
  %i.ayv = add i32 %.039.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i457 = icmp eq i32 %i.ayv, %i.axl
  br i1 %exitcond.not.i.i.i.i.i457, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i452, !llvm.loop !3613

bb.lr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i360
  %i.ayw = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.ayx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ayy = load i32, ptr %i.ayx, align 4, !tbaa !261 ; 6 uses
  %i.ayz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aza = load i32, ptr %i.ayz, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i363 = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %14, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i363, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i364 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %13, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i364, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i365 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i365, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i366 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ayw, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i366, align 8
  %.not.i.i.i.i.i.i.i.i367 = icmp slt i32 %i.ayy, %i.aza
  br i1 %.not.i.i.i.i.i.i.i.i367, label %bb.ls, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.ls:                                            ; preds = %bb.lr
  %i.azb = add i32 %i.ayy, 63                     ; 2 uses
  %i.azc = srem i32 %i.azb, 64
  %i.azd = sub nsw i32 %i.azb, %i.azc             ; 6 uses
  %i.aze = and i32 %i.aza, -64                    ; 4 uses
  %i.azf = icmp slt i32 %i.aze, %i.azd
  br i1 %i.azf, label %bb.lt, label %bb.lu

bb.lt:                                            ; preds = %bb.ls
  %i.azg = and i32 %i.aza, 63
  %i.azh = zext nneg i32 %i.azg to i64
  %notmask.i.i.i.i.i.i.i.i.i450 = shl nsw i64 -1, %i.azh
  %i.azi = xor i64 %notmask.i.i.i.i.i.i.i.i.i450, -1
  %i.azj = sub nsw i32 %i.azd, %i.ayy             ; 2 uses
  %i.azk = zext nneg i32 %i.azj to i64
  %notmask.i.i.i.i.i.i.i.i.i.i451 = shl nsw i64 -1, %i.azk
  %i.azl = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i451, -1
  %i.azm = sub nsw i32 64, %i.azj
  %i.azn = zext nneg i32 %i.azm to i64
  %i.azo = shl i64 %i.azl, %i.azn
  %i.azp = and i64 %i.azo, %i.azi
  br label %.invoke970

bb.lu:                                            ; preds = %bb.ls
  %.not32.i.i.i.i.i.i.i.i368 = icmp eq i32 %i.ayy, %i.azd
  br i1 %.not32.i.i.i.i.i.i.i.i368, label %.noexc487, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.azq = sdiv i32 %i.ayy, 64
  %i.azr = sub nsw i32 %i.azd, %i.ayy             ; 2 uses
  %i.azs = zext nneg i32 %i.azr to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i369 = shl nsw i64 -1, %i.azs
  %i.azt = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i369, -1
  %i.azu = sub nsw i32 64, %i.azr
  %i.azv = zext nneg i32 %i.azu to i64
  %i.azw = shl i64 %i.azt, %i.azv
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.azq, i64 noundef %i.azw)
          to label %.noexc487 unwind label %.loopexit.split-lp536.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc487:                                        ; preds = %bb.lv, %bb.lu
  %i.azx = add nsw i32 %i.azd, 64                 ; 2 uses
  %.not3359.i.i.i.i.i.i.i.i = icmp sgt i32 %i.azx, %i.aze
  br i1 %.not3359.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i372, label %.lr.ph.i.i.i.i.i.i.i.i370

._crit_edge.i.i.i.i.i.i.i.i372:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc487
  %.not34.i.i.i.i.i.i.i.i373 = icmp eq i32 %i.aza, %i.aze
  br i1 %.not34.i.i.i.i.i.i.i.i373, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.nl

.lr.ph.i.i.i.i.i.i.i.i370:                        ; preds = %.noexc487, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.azy = phi i32 [ %i.bir, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.azx, %.noexc487 ] ; 2 uses
  %.060.i.i.i.i.i.i.i.i = phi i32 [ %i.azy, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.azd, %.noexc487 ] ; 2 uses
  %i.azz = sdiv i32 %.060.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.baa = sext i32 %i.azz to i64
  %i.bab = getelementptr inbounds [8 x i8], ptr %i.ayw, i64 %i.baa
  %i.bac = load i64, ptr %i.bab, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.bac, label %.lr.ph.i.i.i.i10.i.i.i.i.i415 [
    i64 -1, label %bb.lw
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i415:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i370
  %i.bad = shl nsw i32 %i.azz, 6
  br label %bb.mr

bb.lw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i370
  %i.bae = shl nsw i32 %i.azz, 6                  ; 2 uses
  %i.baf = add i32 %i.bae, 64
  %i.bag = sext i32 %i.baf to i64
  %.0.off.i.i.i.i.i.i.i.i375 = add i32 %.060.i.i.i.i.i.i.i.i, 127
  %.not64.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i375, 64
  br i1 %.not64.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph63.i.i.i.i.i.i.i.i.i

.lr.ph63.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.lw
  %i.bah = sext i32 %i.bae to i64
  br label %bb.lx

bb.lx:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph63.i.i.i.i.i.i.i.i.i
  %.062.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bah, %.lr.ph63.i.i.i.i.i.i.i.i.i ], [ %i.bek, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.bai = load ptr, ptr %.sroa.46.0..sroa_idx.i.i354, align 8, !tbaa !1005, !nonnull !196, !align !378
  %i.baj = load ptr, ptr %i.bai, align 8, !tbaa !370 ; 2 uses
  %i.bak = getelementptr i8, ptr %i.baj, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i376 = load ptr, ptr %i.bak, align 8, !tbaa !294
  %i.bal = getelementptr i8, ptr %i.baj, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i377 = load ptr, ptr %i.bal, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i378 = shl i64 %.062.i.i.i.i.i.i.i.i.i, 32
  %i.bam = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i378, 32 ; 3 uses
  %i.ban = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i376, i64 %i.bam
  %i.bao = load i32, ptr %i.ban, align 4, !tbaa !151 ; 4 uses
  %i.bap = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i377, i64 %i.bam
  %i.baq = load i32, ptr %i.bap, align 4, !tbaa !151 ; 2 uses
  %i.bar = add nsw i32 %i.baq, %i.bao             ; 3 uses
  %i.bas = icmp sgt i32 %i.baq, 0
  br i1 %i.bas, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i409, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i409:                  ; preds = %bb.lx
  %i.bat = load ptr, ptr %.sroa.57.0..sroa_idx.i.i355, align 8, !tbaa !1006, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i410 = load ptr, ptr %i.bat, align 8
  %i.bau = getelementptr i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i410, i64 8
  %.val.val.i.i.i.i.i.i.i.i.i.i.i411 = load ptr, ptr %i.bau, align 8, !tbaa !296 ; 5 uses
  %i.bav = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i411, i64 16
  %i.baw = load ptr, ptr %i.bav, align 8, !tbaa !307 ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i411, i64 58
  %i.bay = load i8, ptr %i.bax, align 2, !tbaa !308, !range !205, !noundef !196
  %i.baz = trunc nuw i8 %i.bay to i1
  %i.bba = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i411, i64 8
  %i.bbb = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i411, i64 64
  br i1 %i.baz, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i409
  %i.bbc = sext i32 %i.bao to i64
  %i.bbd = sext i32 %i.bar to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.us.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbe = getelementptr inbounds [8 x i8], ptr %i.baw, i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i
  %i.bbf = load double, ptr %i.bbe, align 8, !tbaa !842
  %i.bbg = fadd double %.023.us.i.i.i.i.i.i.i.i.i.i.i, %i.bbf ; 2 uses
  %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp slt i64 %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %i.bbd
  br i1 %i.bbh, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !103

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i409
  %i.bbi = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i411, i64 59
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !309, !range !205, !noundef !196
  %i.bbk = trunc nuw i8 %i.bbj to i1
  br i1 %i.bbk, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bbl = load i32, ptr %i.bbb, align 8, !tbaa !311
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds [8 x i8], ptr %i.baw, i64 %i.bbm
  %i.bbo = load double, ptr %i.bbn, align 8, !tbaa !842
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.04.us5.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bao, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %.023.us6.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbp = fadd double %i.bbo, %.023.us6.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bbq = add nsw i32 %.04.us5.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbr = icmp slt i32 %i.bbq, %i.bar
  br i1 %i.bbr, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !103

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bbs = load ptr, ptr %i.bba, align 8, !tbaa !310
  %i.bbt = sext i32 %i.bao to i64
  %i.bbu = sext i32 %i.bar to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i412 = phi i64 [ %i.bbt, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i414, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i.i.i.i.i.i413 = phi double [ 0.000000e+00, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bca, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbv = getelementptr inbounds [4 x i8], ptr %i.bbs, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i412
  %i.bbw = load i32, ptr %i.bbv, align 4, !tbaa !151
  %i.bbx = sext i32 %i.bbw to i64
  %i.bby = getelementptr inbounds [8 x i8], ptr %i.baw, i64 %i.bbx
  %i.bbz = load double, ptr %i.bby, align 8, !tbaa !842
  %i.bca = fadd double %.023.i.i.i.i.i.i.i.i.i.i.i413, %i.bbz ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i414 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i412, 1 ; 2 uses
  %i.bcb = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i414, %i.bbu
  br i1 %i.bcb, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !103

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %bb.lx
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i379 = phi double [ 0.000000e+00, %bb.lx ], [ %i.bbg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbp, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bca, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bcc = load ptr, ptr %.sroa.7.0..sroa_idx.i.i357, align 8, !tbaa !1007, !nonnull !196, !align !378
  %i.bcd = load ptr, ptr %i.bcc, align 8, !tbaa !859 ; 5 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bcd, i64 144 ; 2 uses
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !875 ; 2 uses
  %i.bcg = icmp eq ptr %i.bcf, null
  br i1 %i.bcg, label %bb.ly, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i380

bb.ly:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb0EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.bch = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bcd)
          to label %.noexc.i.i.i.i.i.i.i.i.i407 unwind label %bb.mb ; 0 uses

.noexc.i.i.i.i.i.i.i.i.i407:                      ; preds = %bb.ly
  %.pre.i.i.i.i.i.i.i.i.i.i.i408 = load ptr, ptr %i.bce, align 8, !tbaa !875
end_hunk_7
begin_hunk_8_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1302:                                       ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i.i.i.i.i1301 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.pr = lshr exact i64 %indvars.iv.i.i.i.i.i.i1301, 3
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !227
  %i.pu = icmp eq i64 %i.pt, -1
  br i1 %i.pu, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.pk, %i.pp
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.pv = lshr i32 %i.pk, 6
  %i.pw = and i32 %i.pk, 63
  %i.px = zext nneg i32 %i.pw to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.px
  %i.py = zext nneg i32 %i.pv to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.py
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.qa, %notmask.i40.i.i.i.i.i.i.i.i
  %i.qb = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.qc = zext i1 %i.qb to i16
  %i.qd = or disjoint i16 %i.qc, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1302, %bb.bs, %.critedge.i.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.qd, %bb.bs ], [ 256, %.lr.ph1302 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.pc, align 4
  %i.qe = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.qe, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bt, label %bb.ck

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !266 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !261 ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %i.qg
  br i1 %i.qj, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.033.i.i.i.i.i = phi i32 [ %i.rq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.qi, %bb.bt ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef %.033.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0      ; 2 uses
  %i.qm = extractvalue { ptr, i32 } %i.qk, 1      ; 2 uses
  %i.qn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qp = call ptr @__cxa_begin_catch(ptr %i.ql) #42
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !399 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 144
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !157 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 152
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !158
  %i.qw = icmp eq i64 %i.qv, 4
  br i1 %i.qw, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bv
  %i.qx = load i8, ptr %i.qt, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.qz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.rb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 3
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.rd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %53) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.cd unwind label %bb.cf

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bv
  invoke void @__cxa_rethrow() #44
          to label %bb.cj unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.re = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.rf = icmp eq i32 %i.qm, %i.re
  br i1 %i.rf, label %bb.bx, label %.body128

bb.bx:                                            ; preds = %bb.bw
  %i.rg = call ptr @__cxa_begin_catch(ptr %i.ql) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %52) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.rh = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.ri = landingpad { ptr, i32 }
          cleanup
  %i.rj = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rl = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.cc
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.rk, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #41
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.rq = add i32 %.033.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.rq, %i.qg
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3671

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.rr = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !261 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  store ptr %55, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  store ptr %54, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %51, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.rr, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.rt, %i.rv
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.rw = add i32 %i.rt, 63                       ; 2 uses
  %i.rx = srem i32 %i.rw, 64
  %i.ry = sub nsw i32 %i.rw, %i.rx                ; 6 uses
  %i.rz = and i32 %i.rv, -64                      ; 4 uses
  %i.sa = icmp slt i32 %i.rz, %i.ry
  br i1 %i.sa, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sb = and i32 %i.rv, 63
  %i.sc = zext nneg i32 %i.sb to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sc
  %i.sd = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.se = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sf = zext nneg i32 %i.se to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sf
  %i.sg = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.sh = sub nsw i32 64, %i.se
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %i.sg, %i.si
  %i.sk = and i64 %i.sj, %i.sd
  br label %.invoke1116

bb.cn:                                            ; preds = %bb.cl
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.rt, %i.ry
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc132, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sl = sdiv i32 %i.rt, 64
  %i.sm = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sn = zext nneg i32 %i.sm to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sn
  %i.so = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.sp = sub nsw i32 64, %i.sm
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl i64 %i.so, %i.sq
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %51, i32 noundef %i.sl, i64 noundef %i.sr)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.co, %bb.cn
  %i.ss = add nsw i32 %i.ry, 64                   ; 2 uses
  %.not3363.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ss, %i.rz
  br i1 %.not3363.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc132
  %i.st = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.sv = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.cp

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc132
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.rv, %i.rz
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.el

bb.cp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.sw = phi i32 [ %i.ss, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aba, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.064.i.i.i.i.i.i.i.i = phi i32 [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.sw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sx = sdiv i32 %.064.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ta, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.cp
  %i.tb = shl nsw i32 %i.sx, 6
  br label %bb.dm

bb.cq:                                            ; preds = %bb.cp
  %i.tc = shl nsw i32 %i.sx, 6                    ; 2 uses
  %i.td = add i32 %i.tc, 64
  %i.te = sext i32 %i.td to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.064.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i

.lr.ph62.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cq
  %i.tf = sext i32 %i.tc to i64
  br label %bb.cr

bb.cr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tf, %.lr.ph62.i.i.i.i.i.i.i.i.i ], [ %i.wo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #42
  %i.tg = trunc i64 %.060.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.th = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1010, !nonnull !196, !align !378
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !370 ; 2 uses
  %i.tj = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1011, !nonnull !196, !align !378
  %i.tk = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1012, !nonnull !196, !align !378
  %i.tl = getelementptr i8, ptr %i.ti, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tl, align 8, !tbaa !294
  %i.tm = getelementptr i8, ptr %i.ti, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tm, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tj, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tk, align 8
  %i.tn = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.tg, ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val4.i.i.i.i.i.i.i.i.i.i, ptr %.val5.i.i.i.i.i.i.i.i.i.i, ptr %.val6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cr
  %i.to = load i8, ptr %i.l, align 1, !tbaa !135, !range !205, !noundef !196
  %i.tp = trunc nuw i8 %i.to to i1
  %i.tq = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1013, !nonnull !196, !align !378
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !372 ; 8 uses
  br i1 %i.tp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.tt, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cs
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !390 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 44
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !395
  %i.ty = and i8 %i.tx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !396
  %i.ub = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.uc = and i64 %i.ub, 536870911
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.uc ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !150
  %i.uf = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.ug = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !150
  %i.ui = and i8 %i.uh, %i.ue
  store i8 %i.ui, ptr %i.ud, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tr, i64 144 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !389 ; 2 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %bb.cu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.um = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.tr)
          to label %.noexc21.i.i.i.i.i.i.i.i.i unwind label %bb.cw ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cu
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.uj, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i, %bb.ct
  %i.un = phi ptr [ %i.uk, %bb.ct ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i.i.i.i ]
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.uo = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 29
  %i.up = getelementptr inbounds i8, ptr %i.un, i64 %i.uo
  store i64 %i.tn, ptr %i.up, align 8, !tbaa !227
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tr, i64 32 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.ut, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc22.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cv
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !390 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 44
  %i.uw = load i8, ptr %i.uv, align 4, !tbaa !395
  %i.ux = and i8 %i.uw, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ux, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc22.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.cw

end_hunk_8
begin_hunk_9_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1299:                                       ; preds = %bb.eq, %bb.er
  %indvars.iv.i.i.i.i.i.i2331298 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i239, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %i.abv = lshr exact i64 %indvars.iv.i.i.i.i.i.i2331298, 3
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abv
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !227
  %i.aby = icmp eq i64 %i.abx, -1
  br i1 %i.aby, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i235:                     ; preds = %bb.er, %bb.eq
  %.not38.i.i.i.i.i.i.i.i236 = icmp eq i32 %i.abo, %i.abt
  br i1 %.not38.i.i.i.i.i.i.i.i236, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, label %bb.es

bb.es:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i235
  %i.abz = lshr i32 %i.abo, 6
  %i.aca = and i32 %i.abo, 63
  %i.acb = zext nneg i32 %i.aca to i64
  %notmask.i40.i.i.i.i.i.i.i.i237 = shl nsw i64 -1, %i.acb
  %i.acc = zext nneg i32 %i.abz to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acc
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i238 = or i64 %i.ace, %notmask.i40.i.i.i.i.i.i.i.i237
  %i.acf = icmp eq i64 %.demorgan.i.i.i.i.i.i238, -1
  %i.acg = zext i1 %i.acf to i16
  %i.ach = or disjoint i16 %i.acg, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141: ; preds = %.lr.ph1299, %bb.es, %.critedge.i.i.i.i.i.i.i.i235, %bb.ep, %bb.eo, %bb.en
  %.sroa.0.0.insert.ext.i.i.i.i.i.i142 = phi i16 [ 256, %bb.eo ], [ 256, %bb.en ], [ 257, %bb.ep ], [ 257, %.critedge.i.i.i.i.i.i.i.i235 ], [ %i.ach, %bb.es ], [ 256, %.lr.ph1299 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142, ptr %i.abg, align 4
  %i.aci = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240
  %.0.in.i.i.i.i.i.i144 = phi i8 [ %.0.in.pre.i.i.i.i.i.i241, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240 ], [ %i.aci, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141 ]
  %.0.i.i.i.i.i.i145 = trunc nuw i8 %.0.in.i.i.i.i.i.i144 to i1
  br i1 %.0.i.i.i.i.i.i145, label %bb.et, label %bb.fk

bb.et:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !266 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !261 ; 2 uses
  %i.acn = icmp slt i32 %i.acm, %i.ack
  br i1 %i.acn, label %.lr.ph.i.i.i.i.i211, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.adu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.acm, %bb.et ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.aco = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.acp = extractvalue { ptr, i32 } %i.aco, 0    ; 2 uses
  %i.acq = extractvalue { ptr, i32 } %i.aco, 1    ; 2 uses
  %i.acr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.acs = icmp eq i32 %i.acq, %i.acr
  br i1 %i.acs, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.act = call ptr @__cxa_begin_catch(ptr %i.acp) #42
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !399 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 144
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !157 ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 152
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !158
  %i.ada = icmp eq i64 %i.acz, 4
  br i1 %i.ada, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, label %.loopexit.i.i.i.i.i217

.lr.ph.i.i.i.i.preheader.i.i.i.i.i219:            ; preds = %bb.ev
  %i.adb = load i8, ptr %i.acx, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i220 = icmp eq i8 %i.adb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i220, label %tailrecurse.i.i.i.i.i.i.i.i.i221, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.i.i.i.i.i221:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 1
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i222 = icmp eq i8 %i.add, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i222, label %tailrecurse.i.i.i.i.1.i.i.i.i.i223, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.1.i.i.i.i.i223:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i221
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acx, i64 2
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i224 = icmp eq i8 %i.adf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i224, label %tailrecurse.i.i.i.i.2.i.i.i.i.i225, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.2.i.i.i.i.i225:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i223
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acx, i64 3
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i226 = icmp eq i8 %i.adh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i226, label %tailrecurse.i.i.i.i.3.i.i.i.i.i227, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.3.i.i.i.i.i227:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fd unwind label %bb.ff

.loopexit.i.i.i.i.i217:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225, %tailrecurse.i.i.i.i.1.i.i.i.i.i223, %tailrecurse.i.i.i.i.i.i.i.i.i221, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, %bb.ev
  invoke void @__cxa_rethrow() #44
          to label %bb.fj unwind label %bb.fc

bb.ew:                                            ; preds = %bb.eu
  %i.adi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.adj = icmp eq i32 %i.acq, %i.adi
  br i1 %i.adj, label %bb.ex, label %.body128

bb.ex:                                            ; preds = %bb.ew
  %i.adk = call ptr @__cxa_begin_catch(ptr %i.acp) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adl = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.adm = landingpad { ptr, i32 }
          cleanup
  %i.adn = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i212 = icmp eq ptr %i.adn, null
  br i1 %.not.i4.i.i.i.i.i212, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fc:                                            ; preds = %.loopexit.i.i.i.i.i217
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adp = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i230 = icmp eq ptr %i.adp, null
  br i1 %.not.i6.i.i.i.i.i230, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ff:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adq = landingpad { ptr, i32 }
          cleanup
  %i.adr = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i228 = icmp eq ptr %i.adr, null
  br i1 %.not.i8.i.i.i.i.i228, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, %bb.fc
  %.pn.i.i.i.i.i.i218 = phi { ptr, i32 } [ %i.adq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229 ], [ %i.ado, %bb.fc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213
  %i.ads = landingpad { ptr, i32 }
          catch ptr null
  %i.adt = extractvalue { ptr, i32 } %i.ads, 0
  call void @__clang_call_terminate(ptr %i.adt) #41
  unreachable

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i217
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i211
  %i.adu = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i216 = icmp eq i32 %i.adu, %i.ack
  br i1 %exitcond.not.i.i.i.i.i216, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i211, !llvm.loop !3677

bb.fk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.adv = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !261 ; 6 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.adv, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149, align 8
  %.not.i.i.i.i.i.i.i.i150 = icmp slt i32 %i.adx, %i.adz
  br i1 %.not.i.i.i.i.i.i.i.i150, label %bb.fl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.aea = add i32 %i.adx, 63                     ; 2 uses
  %i.aeb = srem i32 %i.aea, 64
  %i.aec = sub nsw i32 %i.aea, %i.aeb             ; 6 uses
  %i.aed = and i32 %i.adz, -64                    ; 4 uses
  %i.aee = icmp slt i32 %i.aed, %i.aec
  br i1 %i.aee, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aef = and i32 %i.adz, 63
  %i.aeg = zext nneg i32 %i.aef to i64
  %notmask.i.i.i.i.i.i.i.i.i209 = shl nsw i64 -1, %i.aeg
  %i.aeh = xor i64 %notmask.i.i.i.i.i.i.i.i.i209, -1
  %i.aei = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aej = zext nneg i32 %i.aei to i64
  %notmask.i.i.i.i.i.i.i.i.i.i210 = shl nsw i64 -1, %i.aej
  %i.aek = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i210, -1
  %i.ael = sub nsw i32 64, %i.aei
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = shl i64 %i.aek, %i.aem
  %i.aeo = and i64 %i.aen, %i.aeh
  br label %.invoke

bb.fn:                                            ; preds = %bb.fl
  %.not32.i.i.i.i.i.i.i.i151 = icmp eq i32 %i.adx, %i.aec
  br i1 %.not32.i.i.i.i.i.i.i.i151, label %.noexc246, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aep = sdiv i32 %i.adx, 64
  %i.aeq = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aer = zext nneg i32 %i.aeq to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i152 = shl nsw i64 -1, %i.aer
  %i.aes = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i152, -1
  %i.aet = sub nsw i32 64, %i.aeq
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = shl i64 %i.aes, %i.aeu
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.aep, i64 noundef %i.aev)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.fo, %bb.fn
  %i.aew = add nsw i32 %i.aec, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aew, %i.aed
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i153:                        ; preds = %.noexc246
  %i.aex = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aey = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aez = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.afb = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.afc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fp

._crit_edge.i.i.i.i.i.i.i.i155:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc246
  %.not34.i.i.i.i.i.i.i.i156 = icmp eq i32 %i.adz, %i.aed
  br i1 %.not34.i.i.i.i.i.i.i.i156, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hn

bb.fp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i153
  %i.afd = phi i32 [ %i.aew, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.ami, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.aec, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.afd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afe = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.aff
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.afh, label %.lr.ph.i.i.i.i10.i.i.i.i.i189 [
    i64 -1, label %bb.fq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i189:                    ; preds = %bb.fp
  %i.afi = shl nsw i32 %i.afe, 6
  br label %bb.gp

bb.fq:                                            ; preds = %bb.fp
  %i.afj = shl nsw i32 %i.afe, 6                  ; 2 uses
  %i.afk = add i32 %i.afj, 64
  %i.afl = sext i32 %i.afk to i64
  %.0.off.i.i.i.i.i.i.i.i158 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i158, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fq
  %i.afm = sext i32 %i.afj to i64
  br label %bb.fr

bb.fr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afm, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.aiv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.afn = load ptr, ptr %.sroa.46.0..sroa_idx.i.i137, align 8, !tbaa !1015, !nonnull !196, !align !378
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !370 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afp, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i159 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.afq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i159, 32 ; 3 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !151 ; 2 uses
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fr
  %i.afu = load ptr, ptr %.sroa.57.0..sroa_idx.i.i138, align 8, !tbaa !1016, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i186 = load ptr, ptr %i.afu, align 8
  %i.afv = getelementptr i8, ptr %i.afo, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i187 = load ptr, ptr %i.afv, align 8, !tbaa !294
  %i.afw = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i187, i64 %i.afq
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !151 ; 2 uses
  %i.afy = add nsw i32 %i.afx, %i.afs
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i186, align 8, !tbaa !364
  %i.afz = sext i32 %i.afx to i64
  %i.aga = sext i32 %i.afy to i64
  br label %bb.fs

bb.fs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.agb = getelementptr inbounds i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.agc = load i8, ptr %i.agb, align 1, !tbaa !150
  %i.agd = sext i8 %i.agc to i64                  ; 2 uses
  %i.age = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agd) ; 2 uses
  %i.agf = extractvalue { i64, i1 } %i.age, 1
  br i1 %i.agf, label %bb.ft, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !3702
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !3702
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aex, align 16, !tbaa !150, !noalias !3702
  store i64 %i.agd, ptr %i.aey, align 16, !tbaa !150, !noalias !3702
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i188 unwind label %bb.fz

.noexc.i.i.i.i.i.i.i.i.i188:                      ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !3702
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  unreachable

bb.fv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  %i.agg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.agh = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.aez
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %i.agj = load i64, ptr %i.aez, align 8, !tbaa !150
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %i.agl = extractvalue { i64, i1 } %i.age, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agm = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aga
  br i1 %i.agm, label %bb.fs, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !105

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fr
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fr ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlaE_clESX_a.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.agn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i140, align 8, !tbaa !1017, !nonnull !196, !align !378
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !372 ; 5 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 144 ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !389 ; 2 uses
  %i.agr = icmp eq ptr %i.agq, null
  br i1 %i.agr, label %bb.fw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i160

bb.fw:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKaPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.ags = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ago)
          to label %.noexc19.i.i.i.i.i.i.i.i.i184 unwind label %bb.fz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i184:                    ; preds = %bb.fw
  %.pre.i.i.i.i.i.i.i.i.i.i.i185 = load ptr, ptr %i.agp, align 8, !tbaa !389
end_hunk_9
begin_hunk_10_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1296:                                       ; preds = %bb.hz, %bb.ia
  %indvars.iv.i.i.i.i.i.i3871295 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i393, %bb.ia ], [ 0, %bb.hz ] ; 2 uses
  %i.anx = lshr exact i64 %indvars.iv.i.i.i.i.i.i3871295, 3
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.anx
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !227
  %i.aoa = icmp eq i64 %i.anz, -1
  br i1 %i.aoa, label %bb.ia, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i389:                     ; preds = %bb.ia, %bb.hz
  %.not38.i.i.i.i.i.i.i.i390 = icmp eq i32 %i.anq, %i.anv
  br i1 %.not38.i.i.i.i.i.i.i.i390, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, label %bb.ib

bb.ib:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i389
  %i.aob = lshr i32 %i.anq, 6
  %i.aoc = and i32 %i.anq, 63
  %i.aod = zext nneg i32 %i.aoc to i64
  %notmask.i40.i.i.i.i.i.i.i.i391 = shl nsw i64 -1, %i.aod
  %i.aoe = zext nneg i32 %i.aob to i64
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aoe
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i392 = or i64 %i.aog, %notmask.i40.i.i.i.i.i.i.i.i391
  %i.aoh = icmp eq i64 %.demorgan.i.i.i.i.i.i392, -1
  %i.aoi = zext i1 %i.aoh to i16
  %i.aoj = or disjoint i16 %i.aoi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264: ; preds = %.lr.ph1296, %bb.ib, %.critedge.i.i.i.i.i.i.i.i389, %bb.hy, %bb.hx, %bb.hw
  %.sroa.0.0.insert.ext.i.i.i.i.i.i265 = phi i16 [ 256, %bb.hx ], [ 256, %bb.hw ], [ 257, %bb.hy ], [ 257, %.critedge.i.i.i.i.i.i.i.i389 ], [ %i.aoj, %bb.ib ], [ 256, %.lr.ph1296 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265, ptr %i.ani, align 4
  %i.aok = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394
  %.0.in.i.i.i.i.i.i267 = phi i8 [ %.0.in.pre.i.i.i.i.i.i395, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394 ], [ %i.aok, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264 ]
  %.0.i.i.i.i.i.i268 = trunc nuw i8 %.0.in.i.i.i.i.i.i267 to i1
  br i1 %.0.i.i.i.i.i.i268, label %bb.ic, label %bb.it

bb.ic:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !266 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !261 ; 2 uses
  %i.aop = icmp slt i32 %i.aoo, %i.aom
  br i1 %i.aop, label %.lr.ph.i.i.i.i.i365, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i365:                              ; preds = %bb.ic, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.apw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.aoo, %bb.ic ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.id

bb.id:                                            ; preds = %.lr.ph.i.i.i.i.i365
  %i.aoq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aor = extractvalue { ptr, i32 } %i.aoq, 0    ; 2 uses
  %i.aos = extractvalue { ptr, i32 } %i.aoq, 1    ; 2 uses
  %i.aot = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.aou = icmp eq i32 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.aov = call ptr @__cxa_begin_catch(ptr %i.aor) #42
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !399 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 144
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !157 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 152
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !158
  %i.apc = icmp eq i64 %i.apb, 4
  br i1 %i.apc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, label %.loopexit.i.i.i.i.i371

.lr.ph.i.i.i.i.preheader.i.i.i.i.i373:            ; preds = %bb.ie
  %i.apd = load i8, ptr %i.aoz, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i374 = icmp eq i8 %i.apd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i374, label %tailrecurse.i.i.i.i.i.i.i.i.i375, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.i.i.i.i.i375:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i376 = icmp eq i8 %i.apf, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i376, label %tailrecurse.i.i.i.i.1.i.i.i.i.i377, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.1.i.i.i.i.i377:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i375
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i378 = icmp eq i8 %i.aph, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i378, label %tailrecurse.i.i.i.i.2.i.i.i.i.i379, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.2.i.i.i.i.i379:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i377
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i380 = icmp eq i8 %i.apj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i380, label %tailrecurse.i.i.i.i.3.i.i.i.i.i381, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.3.i.i.i.i.i381:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %25) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.im unwind label %bb.io

.loopexit.i.i.i.i.i371:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379, %tailrecurse.i.i.i.i.1.i.i.i.i.i377, %tailrecurse.i.i.i.i.i.i.i.i.i375, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, %bb.ie
  invoke void @__cxa_rethrow() #44
          to label %bb.is unwind label %bb.il

bb.if:                                            ; preds = %bb.id
  %i.apk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.apl = icmp eq i32 %i.aos, %i.apk
  br i1 %i.apl, label %bb.ig, label %.body396

bb.ig:                                            ; preds = %bb.if
  %i.apm = call ptr @__cxa_begin_catch(ptr %i.aor) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %24) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.apn = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i.i.i.i368, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ig
  %i.apo = landingpad { ptr, i32 }
          cleanup
  %i.app = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i366 = icmp eq ptr %i.app, null
  br i1 %.not.i4.i.i.i.i.i366, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.il:                                            ; preds = %.loopexit.i.i.i.i.i371
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.im:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.apr = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i384 = icmp eq ptr %i.apr, null
  br i1 %.not.i6.i.i.i.i.i384, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385: ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.io:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.aps = landingpad { ptr, i32 }
          cleanup
  %i.apt = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i382 = icmp eq ptr %i.apt, null
  br i1 %.not.i8.i.i.i.i.i382, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383: ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %bb.iq

bb.iq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, %bb.il
  %.pn.i.i.i.i.i.i372 = phi { ptr, i32 } [ %i.aps, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383 ], [ %i.apq, %bb.il ]
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367
  %i.apu = landingpad { ptr, i32 }
          catch ptr null
  %i.apv = extractvalue { ptr, i32 } %i.apu, 0
  call void @__clang_call_terminate(ptr %i.apv) #41
  unreachable

bb.is:                                            ; preds = %.loopexit.i.i.i.i.i371
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i365
  %i.apw = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i370 = icmp eq i32 %i.apw, %i.aom
  br i1 %exitcond.not.i.i.i.i.i370, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i365, !llvm.loop !3685

bb.it:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.apx = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !261 ; 6 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269 = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %27, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270 = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %26, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271, align 8
  store i8 1, ptr %23, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.apx, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272, align 8
  %.not.i.i.i.i.i.i.i.i273 = icmp slt i32 %i.apz, %i.aqb
  br i1 %.not.i.i.i.i.i.i.i.i273, label %bb.iu, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.aqc = add i32 %i.apz, 63                     ; 2 uses
  %i.aqd = srem i32 %i.aqc, 64
  %i.aqe = sub nsw i32 %i.aqc, %i.aqd             ; 6 uses
  %i.aqf = and i32 %i.aqb, -64                    ; 4 uses
  %i.aqg = icmp slt i32 %i.aqf, %i.aqe
  br i1 %i.aqg, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.aqh = and i32 %i.aqb, 63
  %i.aqi = zext nneg i32 %i.aqh to i64
  %notmask.i.i.i.i.i.i.i.i.i363 = shl nsw i64 -1, %i.aqi
  %i.aqj = xor i64 %notmask.i.i.i.i.i.i.i.i.i363, -1
  %i.aqk = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aql = zext nneg i32 %i.aqk to i64
  %notmask.i.i.i.i.i.i.i.i.i.i364 = shl nsw i64 -1, %i.aql
  %i.aqm = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i364, -1
  %i.aqn = sub nsw i32 64, %i.aqk
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = shl i64 %i.aqm, %i.aqo
  %i.aqq = and i64 %i.aqp, %i.aqj
  br label %.invoke1118

bb.iw:                                            ; preds = %bb.iu
  %.not32.i.i.i.i.i.i.i.i274 = icmp eq i32 %i.apz, %i.aqe
  br i1 %.not32.i.i.i.i.i.i.i.i274, label %.noexc400, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqr = sdiv i32 %i.apz, 64
  %i.aqs = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aqt = zext nneg i32 %i.aqs to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i275 = shl nsw i64 -1, %i.aqt
  %i.aqu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i275, -1
  %i.aqv = sub nsw i32 64, %i.aqs
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = shl i64 %i.aqu, %i.aqw
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %23, i32 noundef %i.aqr, i64 noundef %i.aqx)
          to label %.noexc400 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc400:                                        ; preds = %bb.ix, %bb.iw
  %i.aqy = add nsw i32 %i.aqe, 64                 ; 2 uses
  %.not3352.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aqy, %i.aqf
  br i1 %.not3352.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i.i276

._crit_edge.i.i.i.i.i.i.i.i278:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc400
  %.not34.i.i.i.i.i.i.i.i279 = icmp eq i32 %i.aqb, %i.aqf
  br i1 %.not34.i.i.i.i.i.i.i.i279, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.kp

.lr.ph.i.i.i.i.i.i.i.i276:                        ; preds = %.noexc400, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aqz = phi i32 [ %i.ayf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqy, %.noexc400 ] ; 2 uses
  %.053.i.i.i.i.i.i.i.i = phi i32 [ %i.aqz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqe, %.noexc400 ] ; 2 uses
  %i.ara = sdiv i32 %.053.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.apx, i64 %i.arb
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ard, label %.lr.ph.i.i.i.i10.i.i.i.i.i324 [
    i64 -1, label %bb.iy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i324:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.are = shl nsw i32 %i.ara, 6
  br label %bb.ju

bb.iy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.arf = shl nsw i32 %i.ara, 6                  ; 2 uses
  %i.arg = add i32 %i.arf, 64
  %i.arh = sext i32 %i.arg to i64
  %.0.off.i.i.i.i.i.i.i.i281 = add i32 %.053.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i282 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i281, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i282, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i283

.lr.ph62.i.i.i.i.i.i.i.i.i283:                    ; preds = %bb.iy
  %i.ari = sext i32 %i.arf to i64
  br label %bb.iz

bb.iz:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i283
  %.060.i.i.i.i.i.i.i.i.i284 = phi i64 [ %i.ari, %.lr.ph62.i.i.i.i.i.i.i.i.i283 ], [ %i.aur, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.arj = trunc i64 %.060.i.i.i.i.i.i.i.i.i284 to i32 ; 3 uses
  %i.ark = load ptr, ptr %.sroa.46.0..sroa_idx.i.i260, align 8, !tbaa !1019, !nonnull !196, !align !378
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !370 ; 2 uses
  %i.arm = load ptr, ptr %.sroa.57.0..sroa_idx.i.i261, align 8, !tbaa !1020, !nonnull !196, !align !378
  %i.arn = load ptr, ptr %.sroa.6.0..sroa_idx.i.i262, align 8, !tbaa !1021, !nonnull !196, !align !378
  %i.aro = getelementptr i8, ptr %i.arl, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i285 = load ptr, ptr %i.aro, align 8, !tbaa !294
  %i.arp = getelementptr i8, ptr %i.arl, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i286 = load ptr, ptr %i.arp, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.arm, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i288 = load ptr, ptr %i.arn, align 8
  %i.arq = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.arj, ptr %.val.i.i.i.i.i.i.i.i.i.i285, ptr %.val4.i.i.i.i.i.i.i.i.i.i286, ptr %.val5.i.i.i.i.i.i.i.i.i.i287, ptr %.val6.i.i.i.i.i.i.i.i.i.i288, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %.noexc.i.i.i.i.i.i.i.i.i310 unwind label %bb.je

.noexc.i.i.i.i.i.i.i.i.i310:                      ; preds = %bb.iz
  %i.arr = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.ars = trunc nuw i8 %i.arr to i1
  %i.art = load ptr, ptr %.sroa.7.0..sroa_idx.i.i263, align 8, !tbaa !1022, !nonnull !196, !align !378
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !372 ; 8 uses
  br i1 %i.ars, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.arw, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i321 unwind label %bb.je

.noexc19.i.i.i.i.i.i.i.i.i321:                    ; preds = %bb.ja
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 32
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !390 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 44
  %i.asa = load i8, ptr %i.arz, align 4, !tbaa !395
  %i.asb = and i8 %i.asa, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i322 = icmp eq i8 %i.asb, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i322, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i321
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !396
  %i.ase = lshr i64 %.060.i.i.i.i.i.i.i.i.i284, 3
  %i.asf = and i64 %i.ase, 536870911
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.asf ; 2 uses
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !150
  %i.asi = and i64 %.060.i.i.i.i.i.i.i.i.i284, 7
  %i.asj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.asi
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !150
  %i.asl = and i8 %i.ask, %i.ash
  store i8 %i.asl, ptr %i.asg, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aru, i64 144 ; 2 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !389 ; 2 uses
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %bb.jc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

bb.jc:                                            ; preds = %bb.jb
  %i.asp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aru)
          to label %.noexc21.i.i.i.i.i.i.i.i.i319 unwind label %bb.je ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i319:                    ; preds = %bb.jc
  %.pre.i.i.i.i.i.i.i.i.i.i.i320 = load ptr, ptr %i.asm, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i319, %bb.jb
  %i.asq = phi ptr [ %i.asn, %bb.jb ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i320, %.noexc21.i.i.i.i.i.i.i.i.i319 ]
  %sext.i.i.i.i.i.i.i.i.i.i312 = shl i64 %.060.i.i.i.i.i.i.i.i.i284, 32
  %i.asr = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i312, 29
  %i.ass = getelementptr inbounds i8, ptr %i.asq, i64 %i.asr
  store i64 %i.arq, ptr %i.ass, align 8, !tbaa !227
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aru, i64 32 ; 2 uses
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i313 = icmp eq ptr %i.asu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i313, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIalLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.asw, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i314 unwind label %bb.je

.noexc22.i.i.i.i.i.i.i.i.i314:                    ; preds = %bb.jd
  %i.asx = load ptr, ptr %i.ast, align 8, !tbaa !390 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 44
  %i.asz = load i8, ptr %i.asy, align 4, !tbaa !395
  %i.ata = and i8 %i.asz, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315 = icmp eq i8 %i.ata, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

.invoke.i.i.i.i.i.i.i.i.i316:                     ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314, %.noexc19.i.i.i.i.i.i.i.i.i321
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i317 unwind label %bb.je

.cont.i.i.i.i.i.i.i.i.i317:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i316
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318: ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !396
end_hunk_10
begin_hunk_11_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1302:                                       ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i.i.i.i.i1301 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.pr = lshr exact i64 %indvars.iv.i.i.i.i.i.i1301, 3
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !227
  %i.pu = icmp eq i64 %i.pt, -1
  br i1 %i.pu, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.pk, %i.pp
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.pv = lshr i32 %i.pk, 6
  %i.pw = and i32 %i.pk, 63
  %i.px = zext nneg i32 %i.pw to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.px
  %i.py = zext nneg i32 %i.pv to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.py
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.qa, %notmask.i40.i.i.i.i.i.i.i.i
  %i.qb = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.qc = zext i1 %i.qb to i16
  %i.qd = or disjoint i16 %i.qc, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1302, %bb.bs, %.critedge.i.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.qd, %bb.bs ], [ 256, %.lr.ph1302 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.pc, align 4
  %i.qe = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.qe, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bt, label %bb.ck

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !266 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !261 ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %i.qg
  br i1 %i.qj, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.033.i.i.i.i.i = phi i32 [ %i.rq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.qi, %bb.bt ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef %.033.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0      ; 2 uses
  %i.qm = extractvalue { ptr, i32 } %i.qk, 1      ; 2 uses
  %i.qn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qp = call ptr @__cxa_begin_catch(ptr %i.ql) #42
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !399 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 144
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !157 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 152
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !158
  %i.qw = icmp eq i64 %i.qv, 4
  br i1 %i.qw, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bv
  %i.qx = load i8, ptr %i.qt, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.qz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.rb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 3
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.rd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %53) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.cd unwind label %bb.cf

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bv
  invoke void @__cxa_rethrow() #44
          to label %bb.cj unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.re = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.rf = icmp eq i32 %i.qm, %i.re
  br i1 %i.rf, label %bb.bx, label %.body128

bb.bx:                                            ; preds = %bb.bw
  %i.rg = call ptr @__cxa_begin_catch(ptr %i.ql) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %52) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.rh = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.ri = landingpad { ptr, i32 }
          cleanup
  %i.rj = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rl = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.cc
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.rk, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #41
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.rq = add i32 %.033.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.rq, %i.qg
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3769

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.rr = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !261 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  store ptr %55, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  store ptr %54, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %51, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.rr, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.rt, %i.rv
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.rw = add i32 %i.rt, 63                       ; 2 uses
  %i.rx = srem i32 %i.rw, 64
  %i.ry = sub nsw i32 %i.rw, %i.rx                ; 6 uses
  %i.rz = and i32 %i.rv, -64                      ; 4 uses
  %i.sa = icmp slt i32 %i.rz, %i.ry
  br i1 %i.sa, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sb = and i32 %i.rv, 63
  %i.sc = zext nneg i32 %i.sb to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sc
  %i.sd = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.se = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sf = zext nneg i32 %i.se to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sf
  %i.sg = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.sh = sub nsw i32 64, %i.se
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %i.sg, %i.si
  %i.sk = and i64 %i.sj, %i.sd
  br label %.invoke1116

bb.cn:                                            ; preds = %bb.cl
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.rt, %i.ry
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc132, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sl = sdiv i32 %i.rt, 64
  %i.sm = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sn = zext nneg i32 %i.sm to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sn
  %i.so = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.sp = sub nsw i32 64, %i.sm
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl i64 %i.so, %i.sq
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %51, i32 noundef %i.sl, i64 noundef %i.sr)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.co, %bb.cn
  %i.ss = add nsw i32 %i.ry, 64                   ; 2 uses
  %.not3363.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ss, %i.rz
  br i1 %.not3363.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc132
  %i.st = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.sv = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.cp

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc132
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.rv, %i.rz
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.el

bb.cp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.sw = phi i32 [ %i.ss, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aba, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.064.i.i.i.i.i.i.i.i = phi i32 [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.sw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sx = sdiv i32 %.064.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ta, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.cp
  %i.tb = shl nsw i32 %i.sx, 6
  br label %bb.dm

bb.cq:                                            ; preds = %bb.cp
  %i.tc = shl nsw i32 %i.sx, 6                    ; 2 uses
  %i.td = add i32 %i.tc, 64
  %i.te = sext i32 %i.td to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.064.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i

.lr.ph62.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cq
  %i.tf = sext i32 %i.tc to i64
  br label %bb.cr

bb.cr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tf, %.lr.ph62.i.i.i.i.i.i.i.i.i ], [ %i.wo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #42
  %i.tg = trunc i64 %.060.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.th = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1029, !nonnull !196, !align !378
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !370 ; 2 uses
  %i.tj = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1030, !nonnull !196, !align !378
  %i.tk = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1031, !nonnull !196, !align !378
  %i.tl = getelementptr i8, ptr %i.ti, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tl, align 8, !tbaa !294
  %i.tm = getelementptr i8, ptr %i.ti, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tm, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tj, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tk, align 8
  %i.tn = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.tg, ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val4.i.i.i.i.i.i.i.i.i.i, ptr %.val5.i.i.i.i.i.i.i.i.i.i, ptr %.val6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cr
  %i.to = load i8, ptr %i.l, align 1, !tbaa !135, !range !205, !noundef !196
  %i.tp = trunc nuw i8 %i.to to i1
  %i.tq = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1032, !nonnull !196, !align !378
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !372 ; 8 uses
  br i1 %i.tp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.tt, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cs
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !390 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 44
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !395
  %i.ty = and i8 %i.tx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !396
  %i.ub = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.uc = and i64 %i.ub, 536870911
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.uc ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !150
  %i.uf = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.ug = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !150
  %i.ui = and i8 %i.uh, %i.ue
  store i8 %i.ui, ptr %i.ud, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tr, i64 144 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !389 ; 2 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %bb.cu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.um = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.tr)
          to label %.noexc21.i.i.i.i.i.i.i.i.i unwind label %bb.cw ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cu
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.uj, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i, %bb.ct
  %i.un = phi ptr [ %i.uk, %bb.ct ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i.i.i.i ]
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.uo = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 29
  %i.up = getelementptr inbounds i8, ptr %i.un, i64 %i.uo
  store i64 %i.tn, ptr %i.up, align 8, !tbaa !227
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tr, i64 32 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.ut, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc22.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cv
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !390 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 44
  %i.uw = load i8, ptr %i.uv, align 4, !tbaa !395
  %i.ux = and i8 %i.uw, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ux, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc22.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.cw

end_hunk_11
begin_hunk_12_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1299:                                       ; preds = %bb.eq, %bb.er
  %indvars.iv.i.i.i.i.i.i2331298 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i239, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %i.abv = lshr exact i64 %indvars.iv.i.i.i.i.i.i2331298, 3
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abv
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !227
  %i.aby = icmp eq i64 %i.abx, -1
  br i1 %i.aby, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i235:                     ; preds = %bb.er, %bb.eq
  %.not38.i.i.i.i.i.i.i.i236 = icmp eq i32 %i.abo, %i.abt
  br i1 %.not38.i.i.i.i.i.i.i.i236, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, label %bb.es

bb.es:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i235
  %i.abz = lshr i32 %i.abo, 6
  %i.aca = and i32 %i.abo, 63
  %i.acb = zext nneg i32 %i.aca to i64
  %notmask.i40.i.i.i.i.i.i.i.i237 = shl nsw i64 -1, %i.acb
  %i.acc = zext nneg i32 %i.abz to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acc
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i238 = or i64 %i.ace, %notmask.i40.i.i.i.i.i.i.i.i237
  %i.acf = icmp eq i64 %.demorgan.i.i.i.i.i.i238, -1
  %i.acg = zext i1 %i.acf to i16
  %i.ach = or disjoint i16 %i.acg, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141: ; preds = %.lr.ph1299, %bb.es, %.critedge.i.i.i.i.i.i.i.i235, %bb.ep, %bb.eo, %bb.en
  %.sroa.0.0.insert.ext.i.i.i.i.i.i142 = phi i16 [ 256, %bb.eo ], [ 256, %bb.en ], [ 257, %bb.ep ], [ 257, %.critedge.i.i.i.i.i.i.i.i235 ], [ %i.ach, %bb.es ], [ 256, %.lr.ph1299 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142, ptr %i.abg, align 4
  %i.aci = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240
  %.0.in.i.i.i.i.i.i144 = phi i8 [ %.0.in.pre.i.i.i.i.i.i241, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240 ], [ %i.aci, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141 ]
  %.0.i.i.i.i.i.i145 = trunc nuw i8 %.0.in.i.i.i.i.i.i144 to i1
  br i1 %.0.i.i.i.i.i.i145, label %bb.et, label %bb.fk

bb.et:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !266 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !261 ; 2 uses
  %i.acn = icmp slt i32 %i.acm, %i.ack
  br i1 %i.acn, label %.lr.ph.i.i.i.i.i211, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.adu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.acm, %bb.et ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.aco = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.acp = extractvalue { ptr, i32 } %i.aco, 0    ; 2 uses
  %i.acq = extractvalue { ptr, i32 } %i.aco, 1    ; 2 uses
  %i.acr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.acs = icmp eq i32 %i.acq, %i.acr
  br i1 %i.acs, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.act = call ptr @__cxa_begin_catch(ptr %i.acp) #42
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !399 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 144
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !157 ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 152
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !158
  %i.ada = icmp eq i64 %i.acz, 4
  br i1 %i.ada, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, label %.loopexit.i.i.i.i.i217

.lr.ph.i.i.i.i.preheader.i.i.i.i.i219:            ; preds = %bb.ev
  %i.adb = load i8, ptr %i.acx, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i220 = icmp eq i8 %i.adb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i220, label %tailrecurse.i.i.i.i.i.i.i.i.i221, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.i.i.i.i.i221:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 1
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i222 = icmp eq i8 %i.add, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i222, label %tailrecurse.i.i.i.i.1.i.i.i.i.i223, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.1.i.i.i.i.i223:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i221
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acx, i64 2
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i224 = icmp eq i8 %i.adf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i224, label %tailrecurse.i.i.i.i.2.i.i.i.i.i225, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.2.i.i.i.i.i225:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i223
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acx, i64 3
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i226 = icmp eq i8 %i.adh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i226, label %tailrecurse.i.i.i.i.3.i.i.i.i.i227, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.3.i.i.i.i.i227:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fd unwind label %bb.ff

.loopexit.i.i.i.i.i217:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225, %tailrecurse.i.i.i.i.1.i.i.i.i.i223, %tailrecurse.i.i.i.i.i.i.i.i.i221, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, %bb.ev
  invoke void @__cxa_rethrow() #44
          to label %bb.fj unwind label %bb.fc

bb.ew:                                            ; preds = %bb.eu
  %i.adi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.adj = icmp eq i32 %i.acq, %i.adi
  br i1 %i.adj, label %bb.ex, label %.body128

bb.ex:                                            ; preds = %bb.ew
  %i.adk = call ptr @__cxa_begin_catch(ptr %i.acp) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adl = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.adm = landingpad { ptr, i32 }
          cleanup
  %i.adn = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i212 = icmp eq ptr %i.adn, null
  br i1 %.not.i4.i.i.i.i.i212, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fc:                                            ; preds = %.loopexit.i.i.i.i.i217
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adp = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i230 = icmp eq ptr %i.adp, null
  br i1 %.not.i6.i.i.i.i.i230, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ff:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adq = landingpad { ptr, i32 }
          cleanup
  %i.adr = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i228 = icmp eq ptr %i.adr, null
  br i1 %.not.i8.i.i.i.i.i228, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, %bb.fc
  %.pn.i.i.i.i.i.i218 = phi { ptr, i32 } [ %i.adq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229 ], [ %i.ado, %bb.fc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213
  %i.ads = landingpad { ptr, i32 }
          catch ptr null
  %i.adt = extractvalue { ptr, i32 } %i.ads, 0
  call void @__clang_call_terminate(ptr %i.adt) #41
  unreachable

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i217
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i211
  %i.adu = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i216 = icmp eq i32 %i.adu, %i.ack
  br i1 %exitcond.not.i.i.i.i.i216, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i211, !llvm.loop !3775

bb.fk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.adv = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !261 ; 6 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.adv, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149, align 8
  %.not.i.i.i.i.i.i.i.i150 = icmp slt i32 %i.adx, %i.adz
  br i1 %.not.i.i.i.i.i.i.i.i150, label %bb.fl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.aea = add i32 %i.adx, 63                     ; 2 uses
  %i.aeb = srem i32 %i.aea, 64
  %i.aec = sub nsw i32 %i.aea, %i.aeb             ; 6 uses
  %i.aed = and i32 %i.adz, -64                    ; 4 uses
  %i.aee = icmp slt i32 %i.aed, %i.aec
  br i1 %i.aee, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aef = and i32 %i.adz, 63
  %i.aeg = zext nneg i32 %i.aef to i64
  %notmask.i.i.i.i.i.i.i.i.i209 = shl nsw i64 -1, %i.aeg
  %i.aeh = xor i64 %notmask.i.i.i.i.i.i.i.i.i209, -1
  %i.aei = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aej = zext nneg i32 %i.aei to i64
  %notmask.i.i.i.i.i.i.i.i.i.i210 = shl nsw i64 -1, %i.aej
  %i.aek = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i210, -1
  %i.ael = sub nsw i32 64, %i.aei
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = shl i64 %i.aek, %i.aem
  %i.aeo = and i64 %i.aen, %i.aeh
  br label %.invoke

bb.fn:                                            ; preds = %bb.fl
  %.not32.i.i.i.i.i.i.i.i151 = icmp eq i32 %i.adx, %i.aec
  br i1 %.not32.i.i.i.i.i.i.i.i151, label %.noexc246, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aep = sdiv i32 %i.adx, 64
  %i.aeq = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aer = zext nneg i32 %i.aeq to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i152 = shl nsw i64 -1, %i.aer
  %i.aes = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i152, -1
  %i.aet = sub nsw i32 64, %i.aeq
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = shl i64 %i.aes, %i.aeu
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.aep, i64 noundef %i.aev)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.fo, %bb.fn
  %i.aew = add nsw i32 %i.aec, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aew, %i.aed
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i153:                        ; preds = %.noexc246
  %i.aex = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aey = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aez = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.afb = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.afc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fp

._crit_edge.i.i.i.i.i.i.i.i155:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc246
  %.not34.i.i.i.i.i.i.i.i156 = icmp eq i32 %i.adz, %i.aed
  br i1 %.not34.i.i.i.i.i.i.i.i156, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hn

bb.fp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i153
  %i.afd = phi i32 [ %i.aew, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.ami, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.aec, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.afd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afe = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.aff
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.afh, label %.lr.ph.i.i.i.i10.i.i.i.i.i189 [
    i64 -1, label %bb.fq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i189:                    ; preds = %bb.fp
  %i.afi = shl nsw i32 %i.afe, 6
  br label %bb.gp

bb.fq:                                            ; preds = %bb.fp
  %i.afj = shl nsw i32 %i.afe, 6                  ; 2 uses
  %i.afk = add i32 %i.afj, 64
  %i.afl = sext i32 %i.afk to i64
  %.0.off.i.i.i.i.i.i.i.i158 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i158, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fq
  %i.afm = sext i32 %i.afj to i64
  br label %bb.fr

bb.fr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afm, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.aiv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.afn = load ptr, ptr %.sroa.46.0..sroa_idx.i.i137, align 8, !tbaa !1034, !nonnull !196, !align !378
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !370 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afp, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i159 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.afq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i159, 32 ; 3 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !151 ; 2 uses
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fr
  %i.afu = load ptr, ptr %.sroa.57.0..sroa_idx.i.i138, align 8, !tbaa !1035, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i186 = load ptr, ptr %i.afu, align 8
  %i.afv = getelementptr i8, ptr %i.afo, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i187 = load ptr, ptr %i.afv, align 8, !tbaa !294
  %i.afw = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i187, i64 %i.afq
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !151 ; 2 uses
  %i.afy = add nsw i32 %i.afx, %i.afs
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i186, align 8, !tbaa !776
  %i.afz = sext i32 %i.afx to i64
  %i.aga = sext i32 %i.afy to i64
  br label %bb.fs

bb.fs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.agb = getelementptr inbounds [2 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.agc = load i16, ptr %i.agb, align 2, !tbaa !487
  %i.agd = sext i16 %i.agc to i64                 ; 2 uses
  %i.age = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agd) ; 2 uses
  %i.agf = extractvalue { i64, i1 } %i.age, 1
  br i1 %i.agf, label %bb.ft, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !3800
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !3800
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aex, align 16, !tbaa !150, !noalias !3800
  store i64 %i.agd, ptr %i.aey, align 16, !tbaa !150, !noalias !3800
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i188 unwind label %bb.fz

.noexc.i.i.i.i.i.i.i.i.i188:                      ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !3800
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  unreachable

bb.fv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  %i.agg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.agh = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.aez
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %i.agj = load i64, ptr %i.aez, align 8, !tbaa !150
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %i.agl = extractvalue { i64, i1 } %i.age, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agm = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aga
  br i1 %i.agm, label %bb.fs, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !108

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fr
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fr ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRlsE_clESX_s.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.agn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i140, align 8, !tbaa !1036, !nonnull !196, !align !378
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !372 ; 5 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 144 ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !389 ; 2 uses
  %i.agr = icmp eq ptr %i.agq, null
  br i1 %i.agr, label %bb.fw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i160

bb.fw:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKsPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.ags = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ago)
          to label %.noexc19.i.i.i.i.i.i.i.i.i184 unwind label %bb.fz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i184:                    ; preds = %bb.fw
  %.pre.i.i.i.i.i.i.i.i.i.i.i185 = load ptr, ptr %i.agp, align 8, !tbaa !389
end_hunk_12
begin_hunk_13_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1296:                                       ; preds = %bb.hz, %bb.ia
  %indvars.iv.i.i.i.i.i.i3871295 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i393, %bb.ia ], [ 0, %bb.hz ] ; 2 uses
  %i.anx = lshr exact i64 %indvars.iv.i.i.i.i.i.i3871295, 3
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.anx
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !227
  %i.aoa = icmp eq i64 %i.anz, -1
  br i1 %i.aoa, label %bb.ia, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i389:                     ; preds = %bb.ia, %bb.hz
  %.not38.i.i.i.i.i.i.i.i390 = icmp eq i32 %i.anq, %i.anv
  br i1 %.not38.i.i.i.i.i.i.i.i390, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, label %bb.ib

bb.ib:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i389
  %i.aob = lshr i32 %i.anq, 6
  %i.aoc = and i32 %i.anq, 63
  %i.aod = zext nneg i32 %i.aoc to i64
  %notmask.i40.i.i.i.i.i.i.i.i391 = shl nsw i64 -1, %i.aod
  %i.aoe = zext nneg i32 %i.aob to i64
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aoe
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i392 = or i64 %i.aog, %notmask.i40.i.i.i.i.i.i.i.i391
  %i.aoh = icmp eq i64 %.demorgan.i.i.i.i.i.i392, -1
  %i.aoi = zext i1 %i.aoh to i16
  %i.aoj = or disjoint i16 %i.aoi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264: ; preds = %.lr.ph1296, %bb.ib, %.critedge.i.i.i.i.i.i.i.i389, %bb.hy, %bb.hx, %bb.hw
  %.sroa.0.0.insert.ext.i.i.i.i.i.i265 = phi i16 [ 256, %bb.hx ], [ 256, %bb.hw ], [ 257, %bb.hy ], [ 257, %.critedge.i.i.i.i.i.i.i.i389 ], [ %i.aoj, %bb.ib ], [ 256, %.lr.ph1296 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265, ptr %i.ani, align 4
  %i.aok = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394
  %.0.in.i.i.i.i.i.i267 = phi i8 [ %.0.in.pre.i.i.i.i.i.i395, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394 ], [ %i.aok, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264 ]
  %.0.i.i.i.i.i.i268 = trunc nuw i8 %.0.in.i.i.i.i.i.i267 to i1
  br i1 %.0.i.i.i.i.i.i268, label %bb.ic, label %bb.it

bb.ic:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !266 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !261 ; 2 uses
  %i.aop = icmp slt i32 %i.aoo, %i.aom
  br i1 %i.aop, label %.lr.ph.i.i.i.i.i365, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i365:                              ; preds = %bb.ic, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.apw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.aoo, %bb.ic ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.id

bb.id:                                            ; preds = %.lr.ph.i.i.i.i.i365
  %i.aoq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aor = extractvalue { ptr, i32 } %i.aoq, 0    ; 2 uses
  %i.aos = extractvalue { ptr, i32 } %i.aoq, 1    ; 2 uses
  %i.aot = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.aou = icmp eq i32 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.aov = call ptr @__cxa_begin_catch(ptr %i.aor) #42
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !399 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 144
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !157 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 152
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !158
  %i.apc = icmp eq i64 %i.apb, 4
  br i1 %i.apc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, label %.loopexit.i.i.i.i.i371

.lr.ph.i.i.i.i.preheader.i.i.i.i.i373:            ; preds = %bb.ie
  %i.apd = load i8, ptr %i.aoz, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i374 = icmp eq i8 %i.apd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i374, label %tailrecurse.i.i.i.i.i.i.i.i.i375, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.i.i.i.i.i375:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i376 = icmp eq i8 %i.apf, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i376, label %tailrecurse.i.i.i.i.1.i.i.i.i.i377, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.1.i.i.i.i.i377:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i375
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i378 = icmp eq i8 %i.aph, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i378, label %tailrecurse.i.i.i.i.2.i.i.i.i.i379, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.2.i.i.i.i.i379:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i377
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i380 = icmp eq i8 %i.apj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i380, label %tailrecurse.i.i.i.i.3.i.i.i.i.i381, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.3.i.i.i.i.i381:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %25) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.im unwind label %bb.io

.loopexit.i.i.i.i.i371:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379, %tailrecurse.i.i.i.i.1.i.i.i.i.i377, %tailrecurse.i.i.i.i.i.i.i.i.i375, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, %bb.ie
  invoke void @__cxa_rethrow() #44
          to label %bb.is unwind label %bb.il

bb.if:                                            ; preds = %bb.id
  %i.apk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.apl = icmp eq i32 %i.aos, %i.apk
  br i1 %i.apl, label %bb.ig, label %.body396

bb.ig:                                            ; preds = %bb.if
  %i.apm = call ptr @__cxa_begin_catch(ptr %i.aor) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %24) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.apn = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i.i.i.i368, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ig
  %i.apo = landingpad { ptr, i32 }
          cleanup
  %i.app = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i366 = icmp eq ptr %i.app, null
  br i1 %.not.i4.i.i.i.i.i366, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.il:                                            ; preds = %.loopexit.i.i.i.i.i371
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.im:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.apr = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i384 = icmp eq ptr %i.apr, null
  br i1 %.not.i6.i.i.i.i.i384, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385: ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.io:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.aps = landingpad { ptr, i32 }
          cleanup
  %i.apt = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i382 = icmp eq ptr %i.apt, null
  br i1 %.not.i8.i.i.i.i.i382, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383: ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %bb.iq

bb.iq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, %bb.il
  %.pn.i.i.i.i.i.i372 = phi { ptr, i32 } [ %i.aps, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383 ], [ %i.apq, %bb.il ]
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367
  %i.apu = landingpad { ptr, i32 }
          catch ptr null
  %i.apv = extractvalue { ptr, i32 } %i.apu, 0
  call void @__clang_call_terminate(ptr %i.apv) #41
  unreachable

bb.is:                                            ; preds = %.loopexit.i.i.i.i.i371
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i365
  %i.apw = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i370 = icmp eq i32 %i.apw, %i.aom
  br i1 %exitcond.not.i.i.i.i.i370, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i365, !llvm.loop !3783

bb.it:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.apx = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !261 ; 6 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269 = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %27, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270 = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %26, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271, align 8
  store i8 1, ptr %23, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.apx, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272, align 8
  %.not.i.i.i.i.i.i.i.i273 = icmp slt i32 %i.apz, %i.aqb
  br i1 %.not.i.i.i.i.i.i.i.i273, label %bb.iu, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.aqc = add i32 %i.apz, 63                     ; 2 uses
  %i.aqd = srem i32 %i.aqc, 64
  %i.aqe = sub nsw i32 %i.aqc, %i.aqd             ; 6 uses
  %i.aqf = and i32 %i.aqb, -64                    ; 4 uses
  %i.aqg = icmp slt i32 %i.aqf, %i.aqe
  br i1 %i.aqg, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.aqh = and i32 %i.aqb, 63
  %i.aqi = zext nneg i32 %i.aqh to i64
  %notmask.i.i.i.i.i.i.i.i.i363 = shl nsw i64 -1, %i.aqi
  %i.aqj = xor i64 %notmask.i.i.i.i.i.i.i.i.i363, -1
  %i.aqk = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aql = zext nneg i32 %i.aqk to i64
  %notmask.i.i.i.i.i.i.i.i.i.i364 = shl nsw i64 -1, %i.aql
  %i.aqm = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i364, -1
  %i.aqn = sub nsw i32 64, %i.aqk
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = shl i64 %i.aqm, %i.aqo
  %i.aqq = and i64 %i.aqp, %i.aqj
  br label %.invoke1118

bb.iw:                                            ; preds = %bb.iu
  %.not32.i.i.i.i.i.i.i.i274 = icmp eq i32 %i.apz, %i.aqe
  br i1 %.not32.i.i.i.i.i.i.i.i274, label %.noexc400, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqr = sdiv i32 %i.apz, 64
  %i.aqs = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aqt = zext nneg i32 %i.aqs to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i275 = shl nsw i64 -1, %i.aqt
  %i.aqu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i275, -1
  %i.aqv = sub nsw i32 64, %i.aqs
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = shl i64 %i.aqu, %i.aqw
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %23, i32 noundef %i.aqr, i64 noundef %i.aqx)
          to label %.noexc400 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc400:                                        ; preds = %bb.ix, %bb.iw
  %i.aqy = add nsw i32 %i.aqe, 64                 ; 2 uses
  %.not3352.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aqy, %i.aqf
  br i1 %.not3352.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i.i276

._crit_edge.i.i.i.i.i.i.i.i278:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc400
  %.not34.i.i.i.i.i.i.i.i279 = icmp eq i32 %i.aqb, %i.aqf
  br i1 %.not34.i.i.i.i.i.i.i.i279, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.kp

.lr.ph.i.i.i.i.i.i.i.i276:                        ; preds = %.noexc400, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aqz = phi i32 [ %i.ayf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqy, %.noexc400 ] ; 2 uses
  %.053.i.i.i.i.i.i.i.i = phi i32 [ %i.aqz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqe, %.noexc400 ] ; 2 uses
  %i.ara = sdiv i32 %.053.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.apx, i64 %i.arb
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ard, label %.lr.ph.i.i.i.i10.i.i.i.i.i324 [
    i64 -1, label %bb.iy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i324:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.are = shl nsw i32 %i.ara, 6
  br label %bb.ju

bb.iy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.arf = shl nsw i32 %i.ara, 6                  ; 2 uses
  %i.arg = add i32 %i.arf, 64
  %i.arh = sext i32 %i.arg to i64
  %.0.off.i.i.i.i.i.i.i.i281 = add i32 %.053.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i282 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i281, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i282, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i283

.lr.ph62.i.i.i.i.i.i.i.i.i283:                    ; preds = %bb.iy
  %i.ari = sext i32 %i.arf to i64
  br label %bb.iz

bb.iz:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i283
  %.060.i.i.i.i.i.i.i.i.i284 = phi i64 [ %i.ari, %.lr.ph62.i.i.i.i.i.i.i.i.i283 ], [ %i.aur, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.arj = trunc i64 %.060.i.i.i.i.i.i.i.i.i284 to i32 ; 3 uses
  %i.ark = load ptr, ptr %.sroa.46.0..sroa_idx.i.i260, align 8, !tbaa !1038, !nonnull !196, !align !378
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !370 ; 2 uses
  %i.arm = load ptr, ptr %.sroa.57.0..sroa_idx.i.i261, align 8, !tbaa !1039, !nonnull !196, !align !378
  %i.arn = load ptr, ptr %.sroa.6.0..sroa_idx.i.i262, align 8, !tbaa !1040, !nonnull !196, !align !378
  %i.aro = getelementptr i8, ptr %i.arl, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i285 = load ptr, ptr %i.aro, align 8, !tbaa !294
  %i.arp = getelementptr i8, ptr %i.arl, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i286 = load ptr, ptr %i.arp, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.arm, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i288 = load ptr, ptr %i.arn, align 8
  %i.arq = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.arj, ptr %.val.i.i.i.i.i.i.i.i.i.i285, ptr %.val4.i.i.i.i.i.i.i.i.i.i286, ptr %.val5.i.i.i.i.i.i.i.i.i.i287, ptr %.val6.i.i.i.i.i.i.i.i.i.i288, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %.noexc.i.i.i.i.i.i.i.i.i310 unwind label %bb.je

.noexc.i.i.i.i.i.i.i.i.i310:                      ; preds = %bb.iz
  %i.arr = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.ars = trunc nuw i8 %i.arr to i1
  %i.art = load ptr, ptr %.sroa.7.0..sroa_idx.i.i263, align 8, !tbaa !1041, !nonnull !196, !align !378
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !372 ; 8 uses
  br i1 %i.ars, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.arw, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i321 unwind label %bb.je

.noexc19.i.i.i.i.i.i.i.i.i321:                    ; preds = %bb.ja
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 32
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !390 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 44
  %i.asa = load i8, ptr %i.arz, align 4, !tbaa !395
  %i.asb = and i8 %i.asa, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i322 = icmp eq i8 %i.asb, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i322, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i321
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !396
  %i.ase = lshr i64 %.060.i.i.i.i.i.i.i.i.i284, 3
  %i.asf = and i64 %i.ase, 536870911
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.asf ; 2 uses
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !150
  %i.asi = and i64 %.060.i.i.i.i.i.i.i.i.i284, 7
  %i.asj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.asi
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !150
  %i.asl = and i8 %i.ask, %i.ash
  store i8 %i.asl, ptr %i.asg, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aru, i64 144 ; 2 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !389 ; 2 uses
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %bb.jc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

bb.jc:                                            ; preds = %bb.jb
  %i.asp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aru)
          to label %.noexc21.i.i.i.i.i.i.i.i.i319 unwind label %bb.je ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i319:                    ; preds = %bb.jc
  %.pre.i.i.i.i.i.i.i.i.i.i.i320 = load ptr, ptr %i.asm, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i319, %bb.jb
  %i.asq = phi ptr [ %i.asn, %bb.jb ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i320, %.noexc21.i.i.i.i.i.i.i.i.i319 ]
  %sext.i.i.i.i.i.i.i.i.i.i312 = shl i64 %.060.i.i.i.i.i.i.i.i.i284, 32
  %i.asr = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i312, 29
  %i.ass = getelementptr inbounds i8, ptr %i.asq, i64 %i.asr
  store i64 %i.arq, ptr %i.ass, align 8, !tbaa !227
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aru, i64 32 ; 2 uses
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i313 = icmp eq ptr %i.asu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i313, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIslLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.asw, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i314 unwind label %bb.je

.noexc22.i.i.i.i.i.i.i.i.i314:                    ; preds = %bb.jd
  %i.asx = load ptr, ptr %i.ast, align 8, !tbaa !390 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 44
  %i.asz = load i8, ptr %i.asy, align 4, !tbaa !395
  %i.ata = and i8 %i.asz, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315 = icmp eq i8 %i.ata, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

.invoke.i.i.i.i.i.i.i.i.i316:                     ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314, %.noexc19.i.i.i.i.i.i.i.i.i321
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i317 unwind label %bb.je

.cont.i.i.i.i.i.i.i.i.i317:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i316
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318: ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !396
end_hunk_13
begin_hunk_14_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1302:                                       ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i.i.i.i.i1301 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.pr = lshr exact i64 %indvars.iv.i.i.i.i.i.i1301, 3
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !227
  %i.pu = icmp eq i64 %i.pt, -1
  br i1 %i.pu, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.pk, %i.pp
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.pv = lshr i32 %i.pk, 6
  %i.pw = and i32 %i.pk, 63
  %i.px = zext nneg i32 %i.pw to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.px
  %i.py = zext nneg i32 %i.pv to i64
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.po, i64 %i.py
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.qa, %notmask.i40.i.i.i.i.i.i.i.i
  %i.qb = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.qc = zext i1 %i.qb to i16
  %i.qd = or disjoint i16 %i.qc, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1302, %bb.bs, %.critedge.i.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.qd, %bb.bs ], [ 256, %.lr.ph1302 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.pc, align 4
  %i.qe = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.qe, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bt, label %bb.ck

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.qf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !266 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !261 ; 2 uses
  %i.qj = icmp slt i32 %i.qi, %i.qg
  br i1 %i.qj, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.033.i.i.i.i.i = phi i32 [ %i.rq, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.qi, %bb.bt ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef %.033.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qk = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ql = extractvalue { ptr, i32 } %i.qk, 0      ; 2 uses
  %i.qm = extractvalue { ptr, i32 } %i.qk, 1      ; 2 uses
  %i.qn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.qo = icmp eq i32 %i.qm, %i.qn
  br i1 %i.qo, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qp = call ptr @__cxa_begin_catch(ptr %i.ql) #42
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !399 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 144
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !157 ; 4 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 152
  %i.qv = load i64, ptr %i.qu, align 8, !tbaa !158
  %i.qw = icmp eq i64 %i.qv, 4
  br i1 %i.qw, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bv
  %i.qx = load i8, ptr %i.qt, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qx, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qt, i64 1
  %i.qz = load i8, ptr %i.qy, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.qz, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 2
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.rb, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qt, i64 3
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.rd, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %53) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.cd unwind label %bb.cf

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bv
  invoke void @__cxa_rethrow() #44
          to label %bb.cj unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.re = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.rf = icmp eq i32 %i.qm, %i.re
  br i1 %i.rf, label %bb.bx, label %.body128

bb.bx:                                            ; preds = %bb.bw
  %i.rg = call ptr @__cxa_begin_catch(ptr %i.ql) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %52) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.rh = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.rh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.ri = landingpad { ptr, i32 }
          cleanup
  %i.rj = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.rj, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.rk = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rl = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.rl, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rm = landingpad { ptr, i32 }
          cleanup
  %i.rn = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.rn, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.cc
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rm, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.rk, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.ro = landingpad { ptr, i32 }
          catch ptr null
  %i.rp = extractvalue { ptr, i32 } %i.ro, 0
  call void @__clang_call_terminate(ptr %i.rp) #41
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.rq = add i32 %.033.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.rq, %i.qg
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3867

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.rr = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rt = load i32, ptr %i.rs, align 4, !tbaa !261 ; 6 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  store ptr %55, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  store ptr %54, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %51, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.rr, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.rt, %i.rv
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.rw = add i32 %i.rt, 63                       ; 2 uses
  %i.rx = srem i32 %i.rw, 64
  %i.ry = sub nsw i32 %i.rw, %i.rx                ; 6 uses
  %i.rz = and i32 %i.rv, -64                      ; 4 uses
  %i.sa = icmp slt i32 %i.rz, %i.ry
  br i1 %i.sa, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sb = and i32 %i.rv, 63
  %i.sc = zext nneg i32 %i.sb to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sc
  %i.sd = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.se = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sf = zext nneg i32 %i.se to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sf
  %i.sg = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.sh = sub nsw i32 64, %i.se
  %i.si = zext nneg i32 %i.sh to i64
  %i.sj = shl i64 %i.sg, %i.si
  %i.sk = and i64 %i.sj, %i.sd
  br label %.invoke1116

bb.cn:                                            ; preds = %bb.cl
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.rt, %i.ry
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc132, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sl = sdiv i32 %i.rt, 64
  %i.sm = sub nsw i32 %i.ry, %i.rt                ; 2 uses
  %i.sn = zext nneg i32 %i.sm to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.sn
  %i.so = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.sp = sub nsw i32 64, %i.sm
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = shl i64 %i.so, %i.sq
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %51, i32 noundef %i.sl, i64 noundef %i.sr)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.co, %bb.cn
  %i.ss = add nsw i32 %i.ry, 64                   ; 2 uses
  %.not3363.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ss, %i.rz
  br i1 %.not3363.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc132
  %i.st = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.su = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.sv = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.cp

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc132
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.rv, %i.rz
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.el

bb.cp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.sw = phi i32 [ %i.ss, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aba, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.064.i.i.i.i.i.i.i.i = phi i32 [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.sw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.sx = sdiv i32 %.064.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rr, i64 %i.sy
  %i.ta = load i64, ptr %i.sz, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ta, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.cp
  %i.tb = shl nsw i32 %i.sx, 6
  br label %bb.dm

bb.cq:                                            ; preds = %bb.cp
  %i.tc = shl nsw i32 %i.sx, 6                    ; 2 uses
  %i.td = add i32 %i.tc, 64
  %i.te = sext i32 %i.td to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.064.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i

.lr.ph62.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cq
  %i.tf = sext i32 %i.tc to i64
  br label %bb.cr

bb.cr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.tf, %.lr.ph62.i.i.i.i.i.i.i.i.i ], [ %i.wo, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #42
  %i.tg = trunc i64 %.060.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.th = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1048, !nonnull !196, !align !378
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !370 ; 2 uses
  %i.tj = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1049, !nonnull !196, !align !378
  %i.tk = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1050, !nonnull !196, !align !378
  %i.tl = getelementptr i8, ptr %i.ti, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tl, align 8, !tbaa !294
  %i.tm = getelementptr i8, ptr %i.ti, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tm, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tj, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tk, align 8
  %i.tn = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.tg, ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val4.i.i.i.i.i.i.i.i.i.i, ptr %.val5.i.i.i.i.i.i.i.i.i.i, ptr %.val6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cr
  %i.to = load i8, ptr %i.l, align 1, !tbaa !135, !range !205, !noundef !196
  %i.tp = trunc nuw i8 %i.to to i1
  %i.tq = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1051, !nonnull !196, !align !378
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !372 ; 8 uses
  br i1 %i.tp, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.tt, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cs
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 32
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !390 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 44
  %i.tx = load i8, ptr %i.tw, align 4, !tbaa !395
  %i.ty = and i8 %i.tx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ty, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !396
  %i.ub = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.uc = and i64 %i.ub, 536870911
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.uc ; 2 uses
  %i.ue = load i8, ptr %i.ud, align 1, !tbaa !150
  %i.uf = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.ug = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.uf
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !150
  %i.ui = and i8 %i.uh, %i.ue
  store i8 %i.ui, ptr %i.ud, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.tr, i64 144 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !389 ; 2 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %bb.cu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.um = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.tr)
          to label %.noexc21.i.i.i.i.i.i.i.i.i unwind label %bb.cw ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cu
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.uj, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i, %bb.ct
  %i.un = phi ptr [ %i.uk, %bb.ct ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i.i.i.i ]
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.uo = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 29
  %i.up = getelementptr inbounds i8, ptr %i.un, i64 %i.uo
  store i64 %i.tn, ptr %i.up, align 8, !tbaa !227
  %i.uq = getelementptr inbounds nuw i8, ptr %i.tr, i64 32 ; 2 uses
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %i.tr, i64 56
  %i.ut = load i32, ptr %i.us, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.tr, i32 noundef %i.ut, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc22.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cv
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !390 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 44
  %i.uw = load i8, ptr %i.uv, align 4, !tbaa !395
  %i.ux = and i8 %i.uw, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ux, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc22.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.cw

end_hunk_14
begin_hunk_15_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1299:                                       ; preds = %bb.eq, %bb.er
  %indvars.iv.i.i.i.i.i.i2331298 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i239, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %i.abv = lshr exact i64 %indvars.iv.i.i.i.i.i.i2331298, 3
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 %i.abv
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !227
  %i.aby = icmp eq i64 %i.abx, -1
  br i1 %i.aby, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i235:                     ; preds = %bb.er, %bb.eq
  %.not38.i.i.i.i.i.i.i.i236 = icmp eq i32 %i.abo, %i.abt
  br i1 %.not38.i.i.i.i.i.i.i.i236, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, label %bb.es

bb.es:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i235
  %i.abz = lshr i32 %i.abo, 6
  %i.aca = and i32 %i.abo, 63
  %i.acb = zext nneg i32 %i.aca to i64
  %notmask.i40.i.i.i.i.i.i.i.i237 = shl nsw i64 -1, %i.acb
  %i.acc = zext nneg i32 %i.abz to i64
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abs, i64 %i.acc
  %i.ace = load i64, ptr %i.acd, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i238 = or i64 %i.ace, %notmask.i40.i.i.i.i.i.i.i.i237
  %i.acf = icmp eq i64 %.demorgan.i.i.i.i.i.i238, -1
  %i.acg = zext i1 %i.acf to i16
  %i.ach = or disjoint i16 %i.acg, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141: ; preds = %.lr.ph1299, %bb.es, %.critedge.i.i.i.i.i.i.i.i235, %bb.ep, %bb.eo, %bb.en
  %.sroa.0.0.insert.ext.i.i.i.i.i.i142 = phi i16 [ 256, %bb.eo ], [ 256, %bb.en ], [ 257, %bb.ep ], [ 257, %.critedge.i.i.i.i.i.i.i.i235 ], [ %i.ach, %bb.es ], [ 256, %.lr.ph1299 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142, ptr %i.abg, align 4
  %i.aci = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240
  %.0.in.i.i.i.i.i.i144 = phi i8 [ %.0.in.pre.i.i.i.i.i.i241, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240 ], [ %i.aci, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141 ]
  %.0.i.i.i.i.i.i145 = trunc nuw i8 %.0.in.i.i.i.i.i.i144 to i1
  br i1 %.0.i.i.i.i.i.i145, label %bb.et, label %bb.fk

bb.et:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.acj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ack = load i32, ptr %i.acj, align 8, !tbaa !266 ; 2 uses
  %i.acl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !261 ; 2 uses
  %i.acn = icmp slt i32 %i.acm, %i.ack
  br i1 %i.acn, label %.lr.ph.i.i.i.i.i211, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.adu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.acm, %bb.et ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.aco = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.acp = extractvalue { ptr, i32 } %i.aco, 0    ; 2 uses
  %i.acq = extractvalue { ptr, i32 } %i.aco, 1    ; 2 uses
  %i.acr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.acs = icmp eq i32 %i.acq, %i.acr
  br i1 %i.acs, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.act = call ptr @__cxa_begin_catch(ptr %i.acp) #42
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 8
  %i.acv = load ptr, ptr %i.acu, align 8, !tbaa !399 ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acv, i64 144
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !157 ; 4 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acv, i64 152
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !158
  %i.ada = icmp eq i64 %i.acz, 4
  br i1 %i.ada, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, label %.loopexit.i.i.i.i.i217

.lr.ph.i.i.i.i.preheader.i.i.i.i.i219:            ; preds = %bb.ev
  %i.adb = load i8, ptr %i.acx, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i220 = icmp eq i8 %i.adb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i220, label %tailrecurse.i.i.i.i.i.i.i.i.i221, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.i.i.i.i.i221:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219
  %i.adc = getelementptr inbounds nuw i8, ptr %i.acx, i64 1
  %i.add = load i8, ptr %i.adc, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i222 = icmp eq i8 %i.add, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i222, label %tailrecurse.i.i.i.i.1.i.i.i.i.i223, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.1.i.i.i.i.i223:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i221
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acx, i64 2
  %i.adf = load i8, ptr %i.ade, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i224 = icmp eq i8 %i.adf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i224, label %tailrecurse.i.i.i.i.2.i.i.i.i.i225, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.2.i.i.i.i.i225:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i223
  %i.adg = getelementptr inbounds nuw i8, ptr %i.acx, i64 3
  %i.adh = load i8, ptr %i.adg, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i226 = icmp eq i8 %i.adh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i226, label %tailrecurse.i.i.i.i.3.i.i.i.i.i227, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.3.i.i.i.i.i227:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fd unwind label %bb.ff

.loopexit.i.i.i.i.i217:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225, %tailrecurse.i.i.i.i.1.i.i.i.i.i223, %tailrecurse.i.i.i.i.i.i.i.i.i221, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, %bb.ev
  invoke void @__cxa_rethrow() #44
          to label %bb.fj unwind label %bb.fc

bb.ew:                                            ; preds = %bb.eu
  %i.adi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.adj = icmp eq i32 %i.acq, %i.adi
  br i1 %i.adj, label %bb.ex, label %.body128

bb.ex:                                            ; preds = %bb.ew
  %i.adk = call ptr @__cxa_begin_catch(ptr %i.acp) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adl = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.adl, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.adm = landingpad { ptr, i32 }
          cleanup
  %i.adn = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i212 = icmp eq ptr %i.adn, null
  br i1 %.not.i4.i.i.i.i.i212, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fc:                                            ; preds = %.loopexit.i.i.i.i.i217
  %i.ado = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adp = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i230 = icmp eq ptr %i.adp, null
  br i1 %.not.i6.i.i.i.i.i230, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ff:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adq = landingpad { ptr, i32 }
          cleanup
  %i.adr = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i228 = icmp eq ptr %i.adr, null
  br i1 %.not.i8.i.i.i.i.i228, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, %bb.fc
  %.pn.i.i.i.i.i.i218 = phi { ptr, i32 } [ %i.adq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229 ], [ %i.ado, %bb.fc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213
  %i.ads = landingpad { ptr, i32 }
          catch ptr null
  %i.adt = extractvalue { ptr, i32 } %i.ads, 0
  call void @__clang_call_terminate(ptr %i.adt) #41
  unreachable

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i217
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i211
  %i.adu = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i216 = icmp eq i32 %i.adu, %i.ack
  br i1 %exitcond.not.i.i.i.i.i216, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i211, !llvm.loop !3873

bb.fk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.adv = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !261 ; 6 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adz = load i32, ptr %i.ady, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.adv, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149, align 8
  %.not.i.i.i.i.i.i.i.i150 = icmp slt i32 %i.adx, %i.adz
  br i1 %.not.i.i.i.i.i.i.i.i150, label %bb.fl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.aea = add i32 %i.adx, 63                     ; 2 uses
  %i.aeb = srem i32 %i.aea, 64
  %i.aec = sub nsw i32 %i.aea, %i.aeb             ; 6 uses
  %i.aed = and i32 %i.adz, -64                    ; 4 uses
  %i.aee = icmp slt i32 %i.aed, %i.aec
  br i1 %i.aee, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.aef = and i32 %i.adz, 63
  %i.aeg = zext nneg i32 %i.aef to i64
  %notmask.i.i.i.i.i.i.i.i.i209 = shl nsw i64 -1, %i.aeg
  %i.aeh = xor i64 %notmask.i.i.i.i.i.i.i.i.i209, -1
  %i.aei = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aej = zext nneg i32 %i.aei to i64
  %notmask.i.i.i.i.i.i.i.i.i.i210 = shl nsw i64 -1, %i.aej
  %i.aek = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i210, -1
  %i.ael = sub nsw i32 64, %i.aei
  %i.aem = zext nneg i32 %i.ael to i64
  %i.aen = shl i64 %i.aek, %i.aem
  %i.aeo = and i64 %i.aen, %i.aeh
  br label %.invoke

bb.fn:                                            ; preds = %bb.fl
  %.not32.i.i.i.i.i.i.i.i151 = icmp eq i32 %i.adx, %i.aec
  br i1 %.not32.i.i.i.i.i.i.i.i151, label %.noexc246, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aep = sdiv i32 %i.adx, 64
  %i.aeq = sub nsw i32 %i.aec, %i.adx             ; 2 uses
  %i.aer = zext nneg i32 %i.aeq to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i152 = shl nsw i64 -1, %i.aer
  %i.aes = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i152, -1
  %i.aet = sub nsw i32 64, %i.aeq
  %i.aeu = zext nneg i32 %i.aet to i64
  %i.aev = shl i64 %i.aes, %i.aeu
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.aep, i64 noundef %i.aev)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.fo, %bb.fn
  %i.aew = add nsw i32 %i.aec, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aew, %i.aed
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i153:                        ; preds = %.noexc246
  %i.aex = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aey = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aez = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.afb = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.afc = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fp

._crit_edge.i.i.i.i.i.i.i.i155:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc246
  %.not34.i.i.i.i.i.i.i.i156 = icmp eq i32 %i.adz, %i.aed
  br i1 %.not34.i.i.i.i.i.i.i.i156, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hn

bb.fp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i153
  %i.afd = phi i32 [ %i.aew, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.ami, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.aec, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.afd, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afe = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aff = sext i32 %i.afe to i64
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.aff
  %i.afh = load i64, ptr %i.afg, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.afh, label %.lr.ph.i.i.i.i10.i.i.i.i.i189 [
    i64 -1, label %bb.fq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i189:                    ; preds = %bb.fp
  %i.afi = shl nsw i32 %i.afe, 6
  br label %bb.gp

bb.fq:                                            ; preds = %bb.fp
  %i.afj = shl nsw i32 %i.afe, 6                  ; 2 uses
  %i.afk = add i32 %i.afj, 64
  %i.afl = sext i32 %i.afk to i64
  %.0.off.i.i.i.i.i.i.i.i158 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i158, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fq
  %i.afm = sext i32 %i.afj to i64
  br label %bb.fr

bb.fr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afm, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.aiv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.afn = load ptr, ptr %.sroa.46.0..sroa_idx.i.i137, align 8, !tbaa !1053, !nonnull !196, !align !378
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !370 ; 2 uses
  %i.afp = getelementptr i8, ptr %i.afo, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.afp, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i159 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.afq = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i159, 32 ; 3 uses
  %i.afr = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.afq
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !151 ; 2 uses
  %i.aft = icmp sgt i32 %i.afs, 0
  br i1 %i.aft, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fr
  %i.afu = load ptr, ptr %.sroa.57.0..sroa_idx.i.i138, align 8, !tbaa !1054, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i186 = load ptr, ptr %i.afu, align 8
  %i.afv = getelementptr i8, ptr %i.afo, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i187 = load ptr, ptr %i.afv, align 8, !tbaa !294
  %i.afw = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i187, i64 %i.afq
  %i.afx = load i32, ptr %i.afw, align 4, !tbaa !151 ; 2 uses
  %i.afy = add nsw i32 %i.afx, %i.afs
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i186, align 8, !tbaa !441
  %i.afz = sext i32 %i.afx to i64
  %i.aga = sext i32 %i.afy to i64
  br label %bb.fs

bb.fs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afz, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.agb = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.agc = load i32, ptr %i.agb, align 4, !tbaa !151
  %i.agd = sext i32 %i.agc to i64                 ; 2 uses
  %i.age = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.agd) ; 2 uses
  %i.agf = extractvalue { i64, i1 } %i.age, 1
  br i1 %i.agf, label %bb.ft, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !3898
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !3898
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aex, align 16, !tbaa !150, !noalias !3898
  store i64 %i.agd, ptr %i.aey, align 16, !tbaa !150, !noalias !3898
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i188 unwind label %bb.fz

.noexc.i.i.i.i.i.i.i.i.i188:                      ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !3898
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  unreachable

bb.fv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  %i.agg = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.agh = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.agi = icmp eq ptr %i.agh, %i.aez
  br i1 %i.agi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %i.agj = load i64, ptr %i.aez, align 8, !tbaa !150
  %i.agk = add i64 %i.agj, 1
  call void @_ZdlPvm(ptr noundef %i.agh, i64 noundef %i.agk) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %i.agl = extractvalue { i64, i1 } %i.age, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agm = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.aga
  br i1 %i.agm, label %bb.fs, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !111

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fr
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fr ], [ %i.agl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRliE_clESX_i.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.agn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i140, align 8, !tbaa !1055, !nonnull !196, !align !378
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !372 ; 5 uses
  %i.agp = getelementptr inbounds nuw i8, ptr %i.ago, i64 144 ; 2 uses
  %i.agq = load ptr, ptr %i.agp, align 8, !tbaa !389 ; 2 uses
  %i.agr = icmp eq ptr %i.agq, null
  br i1 %i.agr, label %bb.fw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i160

bb.fw:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKiPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.ags = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ago)
          to label %.noexc19.i.i.i.i.i.i.i.i.i184 unwind label %bb.fz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i184:                    ; preds = %bb.fw
  %.pre.i.i.i.i.i.i.i.i.i.i.i185 = load ptr, ptr %i.agp, align 8, !tbaa !389
end_hunk_15
begin_hunk_16_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1296:                                       ; preds = %bb.hz, %bb.ia
  %indvars.iv.i.i.i.i.i.i3871295 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i393, %bb.ia ], [ 0, %bb.hz ] ; 2 uses
  %i.anx = lshr exact i64 %indvars.iv.i.i.i.i.i.i3871295, 3
  %i.any = getelementptr inbounds nuw i8, ptr %i.anu, i64 %i.anx
  %i.anz = load i64, ptr %i.any, align 8, !tbaa !227
  %i.aoa = icmp eq i64 %i.anz, -1
  br i1 %i.aoa, label %bb.ia, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i389:                     ; preds = %bb.ia, %bb.hz
  %.not38.i.i.i.i.i.i.i.i390 = icmp eq i32 %i.anq, %i.anv
  br i1 %.not38.i.i.i.i.i.i.i.i390, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, label %bb.ib

bb.ib:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i389
  %i.aob = lshr i32 %i.anq, 6
  %i.aoc = and i32 %i.anq, 63
  %i.aod = zext nneg i32 %i.aoc to i64
  %notmask.i40.i.i.i.i.i.i.i.i391 = shl nsw i64 -1, %i.aod
  %i.aoe = zext nneg i32 %i.aob to i64
  %i.aof = getelementptr inbounds nuw [8 x i8], ptr %i.anu, i64 %i.aoe
  %i.aog = load i64, ptr %i.aof, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i392 = or i64 %i.aog, %notmask.i40.i.i.i.i.i.i.i.i391
  %i.aoh = icmp eq i64 %.demorgan.i.i.i.i.i.i392, -1
  %i.aoi = zext i1 %i.aoh to i16
  %i.aoj = or disjoint i16 %i.aoi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264: ; preds = %.lr.ph1296, %bb.ib, %.critedge.i.i.i.i.i.i.i.i389, %bb.hy, %bb.hx, %bb.hw
  %.sroa.0.0.insert.ext.i.i.i.i.i.i265 = phi i16 [ 256, %bb.hx ], [ 256, %bb.hw ], [ 257, %bb.hy ], [ 257, %.critedge.i.i.i.i.i.i.i.i389 ], [ %i.aoj, %bb.ib ], [ 256, %.lr.ph1296 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265, ptr %i.ani, align 4
  %i.aok = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394
  %.0.in.i.i.i.i.i.i267 = phi i8 [ %.0.in.pre.i.i.i.i.i.i395, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394 ], [ %i.aok, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264 ]
  %.0.i.i.i.i.i.i268 = trunc nuw i8 %.0.in.i.i.i.i.i.i267 to i1
  br i1 %.0.i.i.i.i.i.i268, label %bb.ic, label %bb.it

bb.ic:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.aol = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aom = load i32, ptr %i.aol, align 8, !tbaa !266 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aoo = load i32, ptr %i.aon, align 4, !tbaa !261 ; 2 uses
  %i.aop = icmp slt i32 %i.aoo, %i.aom
  br i1 %i.aop, label %.lr.ph.i.i.i.i.i365, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i365:                              ; preds = %bb.ic, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.apw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.aoo, %bb.ic ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.id

bb.id:                                            ; preds = %.lr.ph.i.i.i.i.i365
  %i.aoq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aor = extractvalue { ptr, i32 } %i.aoq, 0    ; 2 uses
  %i.aos = extractvalue { ptr, i32 } %i.aoq, 1    ; 2 uses
  %i.aot = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.aou = icmp eq i32 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.aov = call ptr @__cxa_begin_catch(ptr %i.aor) #42
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 8
  %i.aox = load ptr, ptr %i.aow, align 8, !tbaa !399 ; 2 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 144
  %i.aoz = load ptr, ptr %i.aoy, align 8, !tbaa !157 ; 4 uses
  %i.apa = getelementptr inbounds nuw i8, ptr %i.aox, i64 152
  %i.apb = load i64, ptr %i.apa, align 8, !tbaa !158
  %i.apc = icmp eq i64 %i.apb, 4
  br i1 %i.apc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, label %.loopexit.i.i.i.i.i371

.lr.ph.i.i.i.i.preheader.i.i.i.i.i373:            ; preds = %bb.ie
  %i.apd = load i8, ptr %i.aoz, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i374 = icmp eq i8 %i.apd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i374, label %tailrecurse.i.i.i.i.i.i.i.i.i375, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.i.i.i.i.i375:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aoz, i64 1
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i376 = icmp eq i8 %i.apf, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i376, label %tailrecurse.i.i.i.i.1.i.i.i.i.i377, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.1.i.i.i.i.i377:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i375
  %i.apg = getelementptr inbounds nuw i8, ptr %i.aoz, i64 2
  %i.aph = load i8, ptr %i.apg, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i378 = icmp eq i8 %i.aph, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i378, label %tailrecurse.i.i.i.i.2.i.i.i.i.i379, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.2.i.i.i.i.i379:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i377
  %i.api = getelementptr inbounds nuw i8, ptr %i.aoz, i64 3
  %i.apj = load i8, ptr %i.api, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i380 = icmp eq i8 %i.apj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i380, label %tailrecurse.i.i.i.i.3.i.i.i.i.i381, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.3.i.i.i.i.i381:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %25) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.im unwind label %bb.io

.loopexit.i.i.i.i.i371:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379, %tailrecurse.i.i.i.i.1.i.i.i.i.i377, %tailrecurse.i.i.i.i.i.i.i.i.i375, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, %bb.ie
  invoke void @__cxa_rethrow() #44
          to label %bb.is unwind label %bb.il

bb.if:                                            ; preds = %bb.id
  %i.apk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.apl = icmp eq i32 %i.aos, %i.apk
  br i1 %i.apl, label %bb.ig, label %.body396

bb.ig:                                            ; preds = %bb.if
  %i.apm = call ptr @__cxa_begin_catch(ptr %i.aor) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %24) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.apn = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.apn, null
  br i1 %.not.i.i.i.i.i.i368, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ig
  %i.apo = landingpad { ptr, i32 }
          cleanup
  %i.app = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i366 = icmp eq ptr %i.app, null
  br i1 %.not.i4.i.i.i.i.i366, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.il:                                            ; preds = %.loopexit.i.i.i.i.i371
  %i.apq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.im:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.apr = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i384 = icmp eq ptr %i.apr, null
  br i1 %.not.i6.i.i.i.i.i384, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385: ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.io:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.aps = landingpad { ptr, i32 }
          cleanup
  %i.apt = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i382 = icmp eq ptr %i.apt, null
  br i1 %.not.i8.i.i.i.i.i382, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383: ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %bb.iq

bb.iq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, %bb.il
  %.pn.i.i.i.i.i.i372 = phi { ptr, i32 } [ %i.aps, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383 ], [ %i.apq, %bb.il ]
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367
  %i.apu = landingpad { ptr, i32 }
          catch ptr null
  %i.apv = extractvalue { ptr, i32 } %i.apu, 0
  call void @__clang_call_terminate(ptr %i.apv) #41
  unreachable

bb.is:                                            ; preds = %.loopexit.i.i.i.i.i371
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i365
  %i.apw = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i370 = icmp eq i32 %i.apw, %i.aom
  br i1 %exitcond.not.i.i.i.i.i370, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i365, !llvm.loop !3881

bb.it:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.apx = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !261 ; 6 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269 = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %27, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270 = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %26, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271, align 8
  store i8 1, ptr %23, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.apx, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272, align 8
  %.not.i.i.i.i.i.i.i.i273 = icmp slt i32 %i.apz, %i.aqb
  br i1 %.not.i.i.i.i.i.i.i.i273, label %bb.iu, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.aqc = add i32 %i.apz, 63                     ; 2 uses
  %i.aqd = srem i32 %i.aqc, 64
  %i.aqe = sub nsw i32 %i.aqc, %i.aqd             ; 6 uses
  %i.aqf = and i32 %i.aqb, -64                    ; 4 uses
  %i.aqg = icmp slt i32 %i.aqf, %i.aqe
  br i1 %i.aqg, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.aqh = and i32 %i.aqb, 63
  %i.aqi = zext nneg i32 %i.aqh to i64
  %notmask.i.i.i.i.i.i.i.i.i363 = shl nsw i64 -1, %i.aqi
  %i.aqj = xor i64 %notmask.i.i.i.i.i.i.i.i.i363, -1
  %i.aqk = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aql = zext nneg i32 %i.aqk to i64
  %notmask.i.i.i.i.i.i.i.i.i.i364 = shl nsw i64 -1, %i.aql
  %i.aqm = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i364, -1
  %i.aqn = sub nsw i32 64, %i.aqk
  %i.aqo = zext nneg i32 %i.aqn to i64
  %i.aqp = shl i64 %i.aqm, %i.aqo
  %i.aqq = and i64 %i.aqp, %i.aqj
  br label %.invoke1118

bb.iw:                                            ; preds = %bb.iu
  %.not32.i.i.i.i.i.i.i.i274 = icmp eq i32 %i.apz, %i.aqe
  br i1 %.not32.i.i.i.i.i.i.i.i274, label %.noexc400, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqr = sdiv i32 %i.apz, 64
  %i.aqs = sub nsw i32 %i.aqe, %i.apz             ; 2 uses
  %i.aqt = zext nneg i32 %i.aqs to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i275 = shl nsw i64 -1, %i.aqt
  %i.aqu = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i275, -1
  %i.aqv = sub nsw i32 64, %i.aqs
  %i.aqw = zext nneg i32 %i.aqv to i64
  %i.aqx = shl i64 %i.aqu, %i.aqw
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %23, i32 noundef %i.aqr, i64 noundef %i.aqx)
          to label %.noexc400 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc400:                                        ; preds = %bb.ix, %bb.iw
  %i.aqy = add nsw i32 %i.aqe, 64                 ; 2 uses
  %.not3352.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aqy, %i.aqf
  br i1 %.not3352.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i.i276

._crit_edge.i.i.i.i.i.i.i.i278:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc400
  %.not34.i.i.i.i.i.i.i.i279 = icmp eq i32 %i.aqb, %i.aqf
  br i1 %.not34.i.i.i.i.i.i.i.i279, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.kp

.lr.ph.i.i.i.i.i.i.i.i276:                        ; preds = %.noexc400, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aqz = phi i32 [ %i.ayf, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqy, %.noexc400 ] ; 2 uses
  %.053.i.i.i.i.i.i.i.i = phi i32 [ %i.aqz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqe, %.noexc400 ] ; 2 uses
  %i.ara = sdiv i32 %.053.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.arb = sext i32 %i.ara to i64
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.apx, i64 %i.arb
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.ard, label %.lr.ph.i.i.i.i10.i.i.i.i.i324 [
    i64 -1, label %bb.iy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i324:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.are = shl nsw i32 %i.ara, 6
  br label %bb.ju

bb.iy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.arf = shl nsw i32 %i.ara, 6                  ; 2 uses
  %i.arg = add i32 %i.arf, 64
  %i.arh = sext i32 %i.arg to i64
  %.0.off.i.i.i.i.i.i.i.i281 = add i32 %.053.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i282 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i281, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i282, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i283

.lr.ph62.i.i.i.i.i.i.i.i.i283:                    ; preds = %bb.iy
  %i.ari = sext i32 %i.arf to i64
  br label %bb.iz

bb.iz:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i283
  %.060.i.i.i.i.i.i.i.i.i284 = phi i64 [ %i.ari, %.lr.ph62.i.i.i.i.i.i.i.i.i283 ], [ %i.aur, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.arj = trunc i64 %.060.i.i.i.i.i.i.i.i.i284 to i32 ; 3 uses
  %i.ark = load ptr, ptr %.sroa.46.0..sroa_idx.i.i260, align 8, !tbaa !1057, !nonnull !196, !align !378
  %i.arl = load ptr, ptr %i.ark, align 8, !tbaa !370 ; 2 uses
  %i.arm = load ptr, ptr %.sroa.57.0..sroa_idx.i.i261, align 8, !tbaa !1058, !nonnull !196, !align !378
  %i.arn = load ptr, ptr %.sroa.6.0..sroa_idx.i.i262, align 8, !tbaa !1059, !nonnull !196, !align !378
  %i.aro = getelementptr i8, ptr %i.arl, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i285 = load ptr, ptr %i.aro, align 8, !tbaa !294
  %i.arp = getelementptr i8, ptr %i.arl, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i286 = load ptr, ptr %i.arp, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.arm, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i288 = load ptr, ptr %i.arn, align 8
  %i.arq = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.arj, ptr %.val.i.i.i.i.i.i.i.i.i.i285, ptr %.val4.i.i.i.i.i.i.i.i.i.i286, ptr %.val5.i.i.i.i.i.i.i.i.i.i287, ptr %.val6.i.i.i.i.i.i.i.i.i.i288, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %.noexc.i.i.i.i.i.i.i.i.i310 unwind label %bb.je

.noexc.i.i.i.i.i.i.i.i.i310:                      ; preds = %bb.iz
  %i.arr = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.ars = trunc nuw i8 %i.arr to i1
  %i.art = load ptr, ptr %.sroa.7.0..sroa_idx.i.i263, align 8, !tbaa !1060, !nonnull !196, !align !378
  %i.aru = load ptr, ptr %i.art, align 8, !tbaa !372 ; 8 uses
  br i1 %i.ars, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.arw = load i32, ptr %i.arv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.arw, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i321 unwind label %bb.je

.noexc19.i.i.i.i.i.i.i.i.i321:                    ; preds = %bb.ja
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 32
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !390 ; 2 uses
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ary, i64 44
  %i.asa = load i8, ptr %i.arz, align 4, !tbaa !395
  %i.asb = and i8 %i.asa, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i322 = icmp eq i8 %i.asb, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i322, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i321
  %i.asc = getelementptr inbounds nuw i8, ptr %i.ary, i64 16
  %i.asd = load ptr, ptr %i.asc, align 8, !tbaa !396
  %i.ase = lshr i64 %.060.i.i.i.i.i.i.i.i.i284, 3
  %i.asf = and i64 %i.ase, 536870911
  %i.asg = getelementptr inbounds nuw i8, ptr %i.asd, i64 %i.asf ; 2 uses
  %i.ash = load i8, ptr %i.asg, align 1, !tbaa !150
  %i.asi = and i64 %.060.i.i.i.i.i.i.i.i.i284, 7
  %i.asj = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.asi
  %i.ask = load i8, ptr %i.asj, align 1, !tbaa !150
  %i.asl = and i8 %i.ask, %i.ash
  store i8 %i.asl, ptr %i.asg, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.asm = getelementptr inbounds nuw i8, ptr %i.aru, i64 144 ; 2 uses
  %i.asn = load ptr, ptr %i.asm, align 8, !tbaa !389 ; 2 uses
  %i.aso = icmp eq ptr %i.asn, null
  br i1 %i.aso, label %bb.jc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

bb.jc:                                            ; preds = %bb.jb
  %i.asp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.aru)
          to label %.noexc21.i.i.i.i.i.i.i.i.i319 unwind label %bb.je ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i319:                    ; preds = %bb.jc
  %.pre.i.i.i.i.i.i.i.i.i.i.i320 = load ptr, ptr %i.asm, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i319, %bb.jb
  %i.asq = phi ptr [ %i.asn, %bb.jb ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i320, %.noexc21.i.i.i.i.i.i.i.i.i319 ]
  %sext.i.i.i.i.i.i.i.i.i.i312 = shl i64 %.060.i.i.i.i.i.i.i.i.i284, 32
  %i.asr = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i312, 29
  %i.ass = getelementptr inbounds i8, ptr %i.asq, i64 %i.asr
  store i64 %i.arq, ptr %i.ass, align 8, !tbaa !227
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aru, i64 32 ; 2 uses
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i313 = icmp eq ptr %i.asu, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i313, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIilLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.asw = load i32, ptr %i.asv, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.aru, i32 noundef %i.asw, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i314 unwind label %bb.je

.noexc22.i.i.i.i.i.i.i.i.i314:                    ; preds = %bb.jd
  %i.asx = load ptr, ptr %i.ast, align 8, !tbaa !390 ; 2 uses
  %i.asy = getelementptr inbounds nuw i8, ptr %i.asx, i64 44
  %i.asz = load i8, ptr %i.asy, align 4, !tbaa !395
  %i.ata = and i8 %i.asz, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315 = icmp eq i8 %i.ata, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

.invoke.i.i.i.i.i.i.i.i.i316:                     ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314, %.noexc19.i.i.i.i.i.i.i.i.i321
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i317 unwind label %bb.je

.cont.i.i.i.i.i.i.i.i.i317:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i316
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318: ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314
  %i.atb = getelementptr inbounds nuw i8, ptr %i.asx, i64 16
  %i.atc = load ptr, ptr %i.atb, align 8, !tbaa !396
end_hunk_16
begin_hunk_17_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1302:                                       ; preds = %bb.bq, %bb.br
  %indvars.iv.i.i.i.i.i.i1301 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.br ], [ 0, %bb.bq ] ; 2 uses
  %i.pi = lshr exact i64 %indvars.iv.i.i.i.i.i.i1301, 3
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pf, i64 %i.pi
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !227
  %i.pl = icmp eq i64 %i.pk, -1
  br i1 %i.pl, label %bb.br, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.br, %bb.bq
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.pb, %i.pg
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.pm = lshr i32 %i.pb, 6
  %i.pn = and i32 %i.pb, 63
  %i.po = zext nneg i32 %i.pn to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.po
  %i.pp = zext nneg i32 %i.pm to i64
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %i.pp
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.pr, %notmask.i40.i.i.i.i.i.i.i.i
  %i.ps = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.pt = zext i1 %i.ps to i16
  %i.pu = or disjoint i16 %i.pt, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1302, %bb.bs, %.critedge.i.i.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bn
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bo ], [ 256, %bb.bn ], [ 257, %bb.bp ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.pu, %bb.bs ], [ 256, %.lr.ph1302 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.ot, align 4
  %i.pv = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.pv, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bt, label %bb.ck

bb.bt:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.pw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !266 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !261 ; 2 uses
  %i.qa = icmp slt i32 %i.pz, %i.px
  br i1 %i.qa, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bt, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.033.i.i.i.i.i = phi i32 [ %i.rh, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.pz, %bb.bt ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %55, i32 noundef %.033.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bu

bb.bu:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.qb = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.qc = extractvalue { ptr, i32 } %i.qb, 0      ; 2 uses
  %i.qd = extractvalue { ptr, i32 } %i.qb, 1      ; 2 uses
  %i.qe = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.qf = icmp eq i32 %i.qd, %i.qe
  br i1 %i.qf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.qg = call ptr @__cxa_begin_catch(ptr %i.qc) #42
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !399 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 144
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !157 ; 4 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 152
  %i.qm = load i64, ptr %i.ql, align 8, !tbaa !158
  %i.qn = icmp eq i64 %i.qm, 4
  br i1 %i.qn, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.bv
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.qo, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qk, i64 1
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.qq, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qk, i64 2
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.qs, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qk, i64 3
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.qu, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %53) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %53)
          to label %bb.cd unwind label %bb.cf

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.bv
  invoke void @__cxa_rethrow() #44
          to label %bb.cj unwind label %bb.cc

bb.bw:                                            ; preds = %bb.bu
  %i.qv = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.qw = icmp eq i32 %i.qd, %i.qv
  br i1 %i.qw, label %bb.bx, label %.body128

bb.bx:                                            ; preds = %bb.bw
  %i.qx = call ptr @__cxa_begin_catch(ptr %i.qc) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %52) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.033.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %52)
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.qy = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qy, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bx
  %i.qz = landingpad { ptr, i32 }
          cleanup
  %i.ra = load ptr, ptr %52, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.ra, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %52) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.cb, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.cc:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.cd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rc = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.rc, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ce, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cf:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.rd = landingpad { ptr, i32 }
          cleanup
  %i.re = load ptr, ptr %53, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.re, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %53) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cg, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #42
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.cc
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.rd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.rb, %bb.cc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.rf = landingpad { ptr, i32 }
          catch ptr null
  %i.rg = extractvalue { ptr, i32 } %i.rf, 0
  call void @__clang_call_terminate(ptr %i.rg) #41
  unreachable

bb.cj:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.rh = add i32 %.033.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.rh, %i.px
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !3965

bb.ck:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.ri = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !261 ; 6 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  store ptr %55, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 24
  store ptr %54, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %51, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 8
  store ptr %i.ri, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.rk, %i.rm
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.cl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.rn = add i32 %i.rk, 63                       ; 2 uses
  %i.ro = srem i32 %i.rn, 64
  %i.rp = sub nsw i32 %i.rn, %i.ro                ; 6 uses
  %i.rq = and i32 %i.rm, -64                      ; 4 uses
  %i.rr = icmp slt i32 %i.rq, %i.rp
  br i1 %i.rr, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.rs = and i32 %i.rm, 63
  %i.rt = zext nneg i32 %i.rs to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.rt
  %i.ru = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.rv = sub nsw i32 %i.rp, %i.rk                ; 2 uses
  %i.rw = zext nneg i32 %i.rv to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.rw
  %i.rx = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.ry = sub nsw i32 64, %i.rv
  %i.rz = zext nneg i32 %i.ry to i64
  %i.sa = shl i64 %i.rx, %i.rz
  %i.sb = and i64 %i.sa, %i.ru
  br label %.invoke1116

bb.cn:                                            ; preds = %bb.cl
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.rk, %i.rp
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc132, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.sc = sdiv i32 %i.rk, 64
  %i.sd = sub nsw i32 %i.rp, %i.rk                ; 2 uses
  %i.se = zext nneg i32 %i.sd to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.se
  %i.sf = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.sg = sub nsw i32 64, %i.sd
  %i.sh = zext nneg i32 %i.sg to i64
  %i.si = shl i64 %i.sf, %i.sh
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %51, i32 noundef %i.sc, i64 noundef %i.si)
          to label %.noexc132 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc132:                                        ; preds = %bb.co, %bb.cn
  %i.sj = add nsw i32 %i.rp, 64                   ; 2 uses
  %.not3363.i.i.i.i.i.i.i.i = icmp sgt i32 %i.sj, %i.rq
  br i1 %.not3363.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc132
  %i.sk = getelementptr inbounds nuw i8, ptr %45, i64 16
  %i.sl = getelementptr inbounds nuw i8, ptr %45, i64 32
  %i.sm = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 2 uses
  br label %bb.cp

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc132
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.rm, %i.rq
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.el

bb.cp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.sn = phi i32 [ %i.sj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.aaq, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.064.i.i.i.i.i.i.i.i = phi i32 [ %i.rp, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.sn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.so = sdiv i32 %.064.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.sp = sext i32 %i.so to i64
  %i.sq = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.sp
  %i.sr = load i64, ptr %i.sq, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.sr, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %bb.cp
  %i.ss = shl nsw i32 %i.so, 6
  br label %bb.dm

bb.cq:                                            ; preds = %bb.cp
  %i.st = shl nsw i32 %i.so, 6                    ; 2 uses
  %i.su = add i32 %i.st, 64
  %i.sv = sext i32 %i.su to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.064.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i

.lr.ph62.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cq
  %i.sw = sext i32 %i.st to i64
  br label %bb.cr

bb.cr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sw, %.lr.ph62.i.i.i.i.i.i.i.i.i ], [ %i.wf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #42
  %i.sx = trunc i64 %.060.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.sy = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1067, !nonnull !196, !align !378
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !370 ; 2 uses
  %i.ta = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1068, !nonnull !196, !align !378
  %i.tb = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1069, !nonnull !196, !align !378
  %i.tc = getelementptr i8, ptr %i.sz, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tc, align 8, !tbaa !294
  %i.td = getelementptr i8, ptr %i.sz, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.td, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ta, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.tb, align 8
  %i.te = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.sx, ptr %.val.i.i.i.i.i.i.i.i.i.i, ptr %.val4.i.i.i.i.i.i.i.i.i.i, ptr %.val5.i.i.i.i.i.i.i.i.i.i, ptr %.val6.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(1) %i.l)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.cr
  %i.tf = load i8, ptr %i.l, align 1, !tbaa !135, !range !205, !noundef !196
  %i.tg = trunc nuw i8 %i.tf to i1
  %i.th = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1070, !nonnull !196, !align !378
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !372 ; 8 uses
  br i1 %i.tg, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 56
  %i.tk = load i32, ptr %i.tj, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ti, i32 noundef %i.tk, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc19.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cs
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 32
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !390 ; 2 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 44
  %i.to = load i8, ptr %i.tn, align 4, !tbaa !395
  %i.tp = and i8 %i.to, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.tp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tm, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !396
  %i.ts = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.tt = and i64 %i.ts, 536870911
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tr, i64 %i.tt ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !150
  %i.tw = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.tx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.tw
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !150
  %i.tz = and i8 %i.ty, %i.tv
  store i8 %i.tz, ptr %i.tu, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i

bb.ct:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ua = getelementptr inbounds nuw i8, ptr %i.ti, i64 144 ; 2 uses
  %i.ub = load ptr, ptr %i.ua, align 8, !tbaa !389 ; 2 uses
  %i.uc = icmp eq ptr %i.ub, null
  br i1 %i.uc, label %bb.cu, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cu:                                            ; preds = %bb.ct
  %i.ud = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ti)
          to label %.noexc21.i.i.i.i.i.i.i.i.i unwind label %bb.cw ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cu
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ua, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i, %bb.ct
  %i.ue = phi ptr [ %i.ub, %bb.ct ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc21.i.i.i.i.i.i.i.i.i ]
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.uf = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 29
  %i.ug = getelementptr inbounds i8, ptr %i.ue, i64 %i.uf
  store i64 %i.te, ptr %i.ug, align 8, !tbaa !227
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ti, i64 32 ; 2 uses
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ui, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clImEEDaSU_.exit.i.i.i.i.i.i.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ti, i64 56
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ti, i32 noundef %i.uk, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i unwind label %bb.cw

.noexc22.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cv
  %i.ul = load ptr, ptr %i.uh, align 8, !tbaa !390 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 44
  %i.un = load i8, ptr %i.um, align 4, !tbaa !395
  %i.uo = and i8 %i.un, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.uo, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

.invoke.i.i.i.i.i.i.i.i.i:                        ; preds = %.noexc22.i.i.i.i.i.i.i.i.i, %.noexc19.i.i.i.i.i.i.i.i.i
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i unwind label %bb.cw

end_hunk_17
begin_hunk_18_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1299:                                       ; preds = %bb.eq, %bb.er
  %indvars.iv.i.i.i.i.i.i2331298 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i239, %bb.er ], [ 0, %bb.eq ] ; 2 uses
  %i.abl = lshr exact i64 %indvars.iv.i.i.i.i.i.i2331298, 3
  %i.abm = getelementptr inbounds nuw i8, ptr %i.abi, i64 %i.abl
  %i.abn = load i64, ptr %i.abm, align 8, !tbaa !227
  %i.abo = icmp eq i64 %i.abn, -1
  br i1 %i.abo, label %bb.er, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i235:                     ; preds = %bb.er, %bb.eq
  %.not38.i.i.i.i.i.i.i.i236 = icmp eq i32 %i.abe, %i.abj
  br i1 %.not38.i.i.i.i.i.i.i.i236, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, label %bb.es

bb.es:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i235
  %i.abp = lshr i32 %i.abe, 6
  %i.abq = and i32 %i.abe, 63
  %i.abr = zext nneg i32 %i.abq to i64
  %notmask.i40.i.i.i.i.i.i.i.i237 = shl nsw i64 -1, %i.abr
  %i.abs = zext nneg i32 %i.abp to i64
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %i.abs
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i238 = or i64 %i.abu, %notmask.i40.i.i.i.i.i.i.i.i237
  %i.abv = icmp eq i64 %.demorgan.i.i.i.i.i.i238, -1
  %i.abw = zext i1 %i.abv to i16
  %i.abx = or disjoint i16 %i.abw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141: ; preds = %.lr.ph1299, %bb.es, %.critedge.i.i.i.i.i.i.i.i235, %bb.ep, %bb.eo, %bb.en
  %.sroa.0.0.insert.ext.i.i.i.i.i.i142 = phi i16 [ 256, %bb.eo ], [ 256, %bb.en ], [ 257, %bb.ep ], [ 257, %.critedge.i.i.i.i.i.i.i.i235 ], [ %i.abx, %bb.es ], [ 256, %.lr.ph1299 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142, ptr %i.aaw, align 4
  %i.aby = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i142 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240
  %.0.in.i.i.i.i.i.i144 = phi i8 [ %.0.in.pre.i.i.i.i.i.i241, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i240 ], [ %i.aby, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i141 ]
  %.0.i.i.i.i.i.i145 = trunc nuw i8 %.0.in.i.i.i.i.i.i144 to i1
  br i1 %.0.i.i.i.i.i.i145, label %bb.et, label %bb.fk

bb.et:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.abz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aca = load i32, ptr %i.abz, align 8, !tbaa !266 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !261 ; 2 uses
  %i.acd = icmp slt i32 %i.acc, %i.aca
  br i1 %i.acd, label %.lr.ph.i.i.i.i.i211, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i211:                              ; preds = %bb.et, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.035.i.i.i.i.i = phi i32 [ %i.adk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.acc, %bb.et ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %42, i32 noundef %.035.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.eu

bb.eu:                                            ; preds = %.lr.ph.i.i.i.i.i211
  %i.ace = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.acf = extractvalue { ptr, i32 } %i.ace, 0    ; 2 uses
  %i.acg = extractvalue { ptr, i32 } %i.ace, 1    ; 2 uses
  %i.ach = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.aci = icmp eq i32 %i.acg, %i.ach
  br i1 %i.aci, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.acj = call ptr @__cxa_begin_catch(ptr %i.acf) #42
  %i.ack = getelementptr inbounds nuw i8, ptr %i.acj, i64 8
  %i.acl = load ptr, ptr %i.ack, align 8, !tbaa !399 ; 2 uses
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 144
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !157 ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acl, i64 152
  %i.acp = load i64, ptr %i.aco, align 8, !tbaa !158
  %i.acq = icmp eq i64 %i.acp, 4
  br i1 %i.acq, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, label %.loopexit.i.i.i.i.i217

.lr.ph.i.i.i.i.preheader.i.i.i.i.i219:            ; preds = %bb.ev
  %i.acr = load i8, ptr %i.acn, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i220 = icmp eq i8 %i.acr, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i220, label %tailrecurse.i.i.i.i.i.i.i.i.i221, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.i.i.i.i.i221:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acn, i64 1
  %i.act = load i8, ptr %i.acs, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i222 = icmp eq i8 %i.act, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i222, label %tailrecurse.i.i.i.i.1.i.i.i.i.i223, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.1.i.i.i.i.i223:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i221
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acn, i64 2
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i224 = icmp eq i8 %i.acv, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i224, label %tailrecurse.i.i.i.i.2.i.i.i.i.i225, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.2.i.i.i.i.i225:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i223
  %i.acw = getelementptr inbounds nuw i8, ptr %i.acn, i64 3
  %i.acx = load i8, ptr %i.acw, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i226 = icmp eq i8 %i.acx, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i226, label %tailrecurse.i.i.i.i.3.i.i.i.i.i227, label %.loopexit.i.i.i.i.i217

tailrecurse.i.i.i.i.3.i.i.i.i.i227:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %40) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.fd unwind label %bb.ff

.loopexit.i.i.i.i.i217:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i225, %tailrecurse.i.i.i.i.1.i.i.i.i.i223, %tailrecurse.i.i.i.i.i.i.i.i.i221, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i219, %bb.ev
  invoke void @__cxa_rethrow() #44
          to label %bb.fj unwind label %bb.fc

bb.ew:                                            ; preds = %bb.eu
  %i.acy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.acz = icmp eq i32 %i.acg, %i.acy
  br i1 %i.acz, label %bb.ex, label %.body128

bb.ex:                                            ; preds = %bb.ew
  %i.ada = call ptr @__cxa_begin_catch(ptr %i.acf) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %39) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.adb = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i.i.i.i.i.i214 = icmp eq ptr %i.adb, null
  br i1 %.not.i.i.i.i.i.i214, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215: ; preds = %bb.ez, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.fa:                                            ; preds = %bb.ex
  %i.adc = landingpad { ptr, i32 }
          cleanup
  %i.add = load ptr, ptr %39, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i212 = icmp eq ptr %i.add, null
  br i1 %.not.i4.i.i.i.i.i212, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %39) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213: ; preds = %bb.fb, %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #42
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fc:                                            ; preds = %.loopexit.i.i.i.i.i217
  %i.ade = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.fd:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adf = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i230 = icmp eq ptr %i.adf, null
  br i1 %.not.i6.i.i.i.i.i230, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231: ; preds = %bb.fe, %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.ff:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i227
  %i.adg = landingpad { ptr, i32 }
          cleanup
  %i.adh = load ptr, ptr %40, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i228 = icmp eq ptr %i.adh, null
  br i1 %.not.i8.i.i.i.i.i228, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %40) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229: ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #42
  br label %bb.fh

bb.fh:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229, %bb.fc
  %.pn.i.i.i.i.i.i218 = phi { ptr, i32 } [ %i.adg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i229 ], [ %i.ade, %bb.fc ]
  invoke void @__cxa_end_catch()
          to label %.body128 unwind label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i213
  %i.adi = landingpad { ptr, i32 }
          catch ptr null
  %i.adj = extractvalue { ptr, i32 } %i.adi, 0
  call void @__clang_call_terminate(ptr %i.adj) #41
  unreachable

bb.fj:                                            ; preds = %.loopexit.i.i.i.i.i217
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i231, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i215
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i211
  %i.adk = add i32 %.035.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i216 = icmp eq i32 %i.adk, %i.aca
  br i1 %exitcond.not.i.i.i.i.i216, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i211, !llvm.loop !3971

bb.fk:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i143
  %i.adl = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !261 ; 6 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.adp = load i32, ptr %i.ado, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146 = getelementptr inbounds nuw i8, ptr %38, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %38)
  store ptr %42, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i146, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %38, i64 24
  store ptr %41, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i147, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148 = getelementptr inbounds nuw i8, ptr %38, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i148, align 8
  store i8 1, ptr %38, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149 = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.adl, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i149, align 8
  %.not.i.i.i.i.i.i.i.i150 = icmp slt i32 %i.adn, %i.adp
  br i1 %.not.i.i.i.i.i.i.i.i150, label %bb.fl, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.fl:                                            ; preds = %bb.fk
  %i.adq = add i32 %i.adn, 63                     ; 2 uses
  %i.adr = srem i32 %i.adq, 64
  %i.ads = sub nsw i32 %i.adq, %i.adr             ; 6 uses
  %i.adt = and i32 %i.adp, -64                    ; 4 uses
  %i.adu = icmp slt i32 %i.adt, %i.ads
  br i1 %i.adu, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  %i.adv = and i32 %i.adp, 63
  %i.adw = zext nneg i32 %i.adv to i64
  %notmask.i.i.i.i.i.i.i.i.i209 = shl nsw i64 -1, %i.adw
  %i.adx = xor i64 %notmask.i.i.i.i.i.i.i.i.i209, -1
  %i.ady = sub nsw i32 %i.ads, %i.adn             ; 2 uses
  %i.adz = zext nneg i32 %i.ady to i64
  %notmask.i.i.i.i.i.i.i.i.i.i210 = shl nsw i64 -1, %i.adz
  %i.aea = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i210, -1
  %i.aeb = sub nsw i32 64, %i.ady
  %i.aec = zext nneg i32 %i.aeb to i64
  %i.aed = shl i64 %i.aea, %i.aec
  %i.aee = and i64 %i.aed, %i.adx
  br label %.invoke

bb.fn:                                            ; preds = %bb.fl
  %.not32.i.i.i.i.i.i.i.i151 = icmp eq i32 %i.adn, %i.ads
  br i1 %.not32.i.i.i.i.i.i.i.i151, label %.noexc246, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.aef = sdiv i32 %i.adn, 64
  %i.aeg = sub nsw i32 %i.ads, %i.adn             ; 2 uses
  %i.aeh = zext nneg i32 %i.aeg to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i152 = shl nsw i64 -1, %i.aeh
  %i.aei = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i152, -1
  %i.aej = sub nsw i32 64, %i.aeg
  %i.aek = zext nneg i32 %i.aej to i64
  %i.ael = shl i64 %i.aei, %i.aek
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %38, i32 noundef %i.aef, i64 noundef %i.ael)
          to label %.noexc246 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc246:                                        ; preds = %bb.fo, %bb.fn
  %i.aem = add nsw i32 %i.ads, 64                 ; 2 uses
  %.not3356.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aem, %i.adt
  br i1 %.not3356.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i155, label %.lr.ph.i.i.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i.i.i153:                        ; preds = %.noexc246
  %i.aen = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.aeo = getelementptr inbounds nuw i8, ptr %32, i64 32
  %i.aep = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %30, i64 16
  %i.aer = getelementptr inbounds nuw i8, ptr %30, i64 32
  %i.aes = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  br label %bb.fp

._crit_edge.i.i.i.i.i.i.i.i155:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc246
  %.not34.i.i.i.i.i.i.i.i156 = icmp eq i32 %i.adp, %i.adt
  br i1 %.not34.i.i.i.i.i.i.i.i156, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.hn

bb.fp:                                            ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i153
  %i.aet = phi i32 [ %i.aem, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.alw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.057.i.i.i.i.i.i.i.i = phi i32 [ %i.ads, %.lr.ph.i.i.i.i.i.i.i.i153 ], [ %i.aet, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.aeu = sdiv i32 %.057.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aev = sext i32 %i.aeu to i64
  %i.aew = getelementptr inbounds [8 x i8], ptr %i.adl, i64 %i.aev
  %i.aex = load i64, ptr %i.aew, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aex, label %.lr.ph.i.i.i.i10.i.i.i.i.i189 [
    i64 -1, label %bb.fq
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i189:                    ; preds = %bb.fp
  %i.aey = shl nsw i32 %i.aeu, 6
  br label %bb.gp

bb.fq:                                            ; preds = %bb.fp
  %i.aez = shl nsw i32 %i.aeu, 6                  ; 2 uses
  %i.afa = add i32 %i.aez, 64
  %i.afb = sext i32 %i.afa to i64
  %.0.off.i.i.i.i.i.i.i.i158 = add i32 %.057.i.i.i.i.i.i.i.i, 127
  %.not65.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i158, 64
  br i1 %.not65.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS9_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph64.i.i.i.i.i.i.i.i.i

.lr.ph64.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.fq
  %i.afc = sext i32 %i.aez to i64
  br label %bb.fr

bb.fr:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph64.i.i.i.i.i.i.i.i.i
  %.061.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afc, %.lr.ph64.i.i.i.i.i.i.i.i.i ], [ %i.aik, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0EZNKS7_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.afd = load ptr, ptr %.sroa.46.0..sroa_idx.i.i137, align 8, !tbaa !1072, !nonnull !196, !align !378
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !370 ; 2 uses
  %i.aff = getelementptr i8, ptr %i.afe, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.aff, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i159 = shl i64 %.061.i.i.i.i.i.i.i.i.i, 32
  %i.afg = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i159, 32 ; 3 uses
  %i.afh = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i, i64 %i.afg
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !151 ; 2 uses
  %i.afj = icmp sgt i32 %i.afi, 0
  br i1 %i.afj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.fr
  %i.afk = load ptr, ptr %.sroa.57.0..sroa_idx.i.i138, align 8, !tbaa !1073, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i186 = load ptr, ptr %i.afk, align 8
  %i.afl = getelementptr i8, ptr %i.afe, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i187 = load ptr, ptr %i.afl, align 8, !tbaa !294
  %i.afm = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i187, i64 %i.afg
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !151 ; 2 uses
  %i.afo = add nsw i32 %i.afn, %i.afi
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val4.i.i.i.i.i.i.i.i.i.i186, align 8, !tbaa !363
  %i.afp = sext i32 %i.afn to i64
  %i.afq = sext i32 %i.afo to i64
  br label %bb.fs

bb.fs:                                            ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.afp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.024.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.aga, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.afr = getelementptr inbounds [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.afs = load i64, ptr %i.afr, align 8, !tbaa !227 ; 2 uses
  %i.aft = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.024.i.i.i.i.i.i.i.i.i.i.i, i64 %i.afs) ; 2 uses
  %i.afu = extractvalue { i64, i1 } %i.aft, 1
  br i1 %i.afu, label %bb.ft, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, !prof !152

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #42
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #42, !noalias !3996
  store ptr @.str.5, ptr %32, align 16, !tbaa !150, !noalias !3996
  store i64 %.024.i.i.i.i.i.i.i.i.i.i.i, ptr %i.aen, align 16, !tbaa !150, !noalias !3996
  store i64 %i.afs, ptr %i.aeo, align 16, !tbaa !150, !noalias !3996
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr nonnull @.str.36, i64 20, i64 828, ptr nonnull %32)
          to label %.noexc.i.i.i.i.i.i.i.i.i188 unwind label %bb.fz

.noexc.i.i.i.i.i.i.i.i.i188:                      ; preds = %bb.ft
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #42, !noalias !3996
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox11checkedPlusIlEET_S2_S2_PKcE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %33, ptr nonnull @.str.36) #44
          to label %bb.fu unwind label %bb.fv

bb.fu:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  unreachable

bb.fv:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i188
  %i.afv = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception
  %i.afw = load ptr, ptr %33, align 8, !tbaa !157 ; 2 uses
  %i.afx = icmp eq ptr %i.afw, %i.aep
  br i1 %i.afx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv
  %i.afy = load i64, ptr %i.aep, align 8, !tbaa !150
  %i.afz = add i64 %i.afy, 1
  call void @_ZdlPvm(ptr noundef %i.afw, i64 noundef %i.afz) #43
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #42
  br label %.body.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.fs
  %i.aga = extractvalue { i64, i1 } %i.aft, 0     ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.agb = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.afq
  br i1 %i.agb, label %bb.fs, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !114

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.fr
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.fr ], [ %i.aga, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_RbENKUlRllE_clESX_l.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.agc = load ptr, ptr %.sroa.7.0..sroa_idx.i.i140, align 8, !tbaa !1074, !nonnull !196, !align !378
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !372 ; 5 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 144 ; 2 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !389 ; 2 uses
  %i.agg = icmp eq ptr %i.agf, null
  br i1 %i.agg, label %bb.fw, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i160

bb.fw:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb0ERZNKS4_9applyFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKlPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEliPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.agh = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.agd)
          to label %.noexc19.i.i.i.i.i.i.i.i.i184 unwind label %bb.fz ; 0 uses

.noexc19.i.i.i.i.i.i.i.i.i184:                    ; preds = %bb.fw
  %.pre.i.i.i.i.i.i.i.i.i.i.i185 = load ptr, ptr %i.age, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i160
end_hunk_18
begin_hunk_19_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1296:                                       ; preds = %bb.hz, %bb.ia
  %indvars.iv.i.i.i.i.i.i3871295 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i393, %bb.ia ], [ 0, %bb.hz ] ; 2 uses
  %i.anl = lshr exact i64 %indvars.iv.i.i.i.i.i.i3871295, 3
  %i.anm = getelementptr inbounds nuw i8, ptr %i.ani, i64 %i.anl
  %i.ann = load i64, ptr %i.anm, align 8, !tbaa !227
  %i.ano = icmp eq i64 %i.ann, -1
  br i1 %i.ano, label %bb.ia, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i389:                     ; preds = %bb.ia, %bb.hz
  %.not38.i.i.i.i.i.i.i.i390 = icmp eq i32 %i.ane, %i.anj
  br i1 %.not38.i.i.i.i.i.i.i.i390, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, label %bb.ib

bb.ib:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i389
  %i.anp = lshr i32 %i.ane, 6
  %i.anq = and i32 %i.ane, 63
  %i.anr = zext nneg i32 %i.anq to i64
  %notmask.i40.i.i.i.i.i.i.i.i391 = shl nsw i64 -1, %i.anr
  %i.ans = zext nneg i32 %i.anp to i64
  %i.ant = getelementptr inbounds nuw [8 x i8], ptr %i.ani, i64 %i.ans
  %i.anu = load i64, ptr %i.ant, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i392 = or i64 %i.anu, %notmask.i40.i.i.i.i.i.i.i.i391
  %i.anv = icmp eq i64 %.demorgan.i.i.i.i.i.i392, -1
  %i.anw = zext i1 %i.anv to i16
  %i.anx = or disjoint i16 %i.anw, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264: ; preds = %.lr.ph1296, %bb.ib, %.critedge.i.i.i.i.i.i.i.i389, %bb.hy, %bb.hx, %bb.hw
  %.sroa.0.0.insert.ext.i.i.i.i.i.i265 = phi i16 [ 256, %bb.hx ], [ 256, %bb.hw ], [ 257, %bb.hy ], [ 257, %.critedge.i.i.i.i.i.i.i.i389 ], [ %i.anx, %bb.ib ], [ 256, %.lr.ph1296 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265, ptr %i.amw, align 4
  %i.any = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i265 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394
  %.0.in.i.i.i.i.i.i267 = phi i8 [ %.0.in.pre.i.i.i.i.i.i395, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i394 ], [ %i.any, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i264 ]
  %.0.i.i.i.i.i.i268 = trunc nuw i8 %.0.in.i.i.i.i.i.i267 to i1
  br i1 %.0.i.i.i.i.i.i268, label %bb.ic, label %bb.it

bb.ic:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.anz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aoa = load i32, ptr %i.anz, align 8, !tbaa !266 ; 2 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !261 ; 2 uses
  %i.aod = icmp slt i32 %i.aoc, %i.aoa
  br i1 %i.aod, label %.lr.ph.i.i.i.i.i365, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit

.lr.ph.i.i.i.i.i365:                              ; preds = %bb.ic, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.apk, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.aoc, %bb.ic ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.id

bb.id:                                            ; preds = %.lr.ph.i.i.i.i.i365
  %i.aoe = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.aof = extractvalue { ptr, i32 } %i.aoe, 0    ; 2 uses
  %i.aog = extractvalue { ptr, i32 } %i.aoe, 1    ; 2 uses
  %i.aoh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.aoi = icmp eq i32 %i.aog, %i.aoh
  br i1 %i.aoi, label %bb.ie, label %bb.if

bb.ie:                                            ; preds = %bb.id
  %i.aoj = call ptr @__cxa_begin_catch(ptr %i.aof) #42
  %i.aok = getelementptr inbounds nuw i8, ptr %i.aoj, i64 8
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !399 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aol, i64 144
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !157 ; 4 uses
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.aol, i64 152
  %i.aop = load i64, ptr %i.aoo, align 8, !tbaa !158
  %i.aoq = icmp eq i64 %i.aop, 4
  br i1 %i.aoq, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, label %.loopexit.i.i.i.i.i371

.lr.ph.i.i.i.i.preheader.i.i.i.i.i373:            ; preds = %bb.ie
  %i.aor = load i8, ptr %i.aon, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i374 = icmp eq i8 %i.aor, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i374, label %tailrecurse.i.i.i.i.i.i.i.i.i375, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.i.i.i.i.i375:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aon, i64 1
  %i.aot = load i8, ptr %i.aos, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i376 = icmp eq i8 %i.aot, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i376, label %tailrecurse.i.i.i.i.1.i.i.i.i.i377, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.1.i.i.i.i.i377:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i375
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aon, i64 2
  %i.aov = load i8, ptr %i.aou, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i378 = icmp eq i8 %i.aov, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i378, label %tailrecurse.i.i.i.i.2.i.i.i.i.i379, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.2.i.i.i.i.i379:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i377
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aon, i64 3
  %i.aox = load i8, ptr %i.aow, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i380 = icmp eq i8 %i.aox, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i380, label %tailrecurse.i.i.i.i.3.i.i.i.i.i381, label %.loopexit.i.i.i.i.i371

tailrecurse.i.i.i.i.3.i.i.i.i.i381:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %25) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.im unwind label %bb.io

.loopexit.i.i.i.i.i371:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i379, %tailrecurse.i.i.i.i.1.i.i.i.i.i377, %tailrecurse.i.i.i.i.i.i.i.i.i375, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i373, %bb.ie
  invoke void @__cxa_rethrow() #44
          to label %bb.is unwind label %bb.il

bb.if:                                            ; preds = %bb.id
  %i.aoy = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.aoz = icmp eq i32 %i.aog, %i.aoy
  br i1 %i.aoz, label %bb.ig, label %.body396

bb.ig:                                            ; preds = %bb.if
  %i.apa = call ptr @__cxa_begin_catch(ptr %i.aof) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %24) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.ih unwind label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %i.apb = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i.i.i.i.i.i368 = icmp eq ptr %i.apb, null
  br i1 %.not.i.i.i.i.i.i368, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369: ; preds = %bb.ii, %bb.ih
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ig
  %i.apc = landingpad { ptr, i32 }
          cleanup
  %i.apd = load ptr, ptr %24, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i366 = icmp eq ptr %i.apd, null
  br i1 %.not.i4.i.i.i.i.i366, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367: ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #42
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.il:                                            ; preds = %.loopexit.i.i.i.i.i371
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %bb.iq

bb.im:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.apf = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i384 = icmp eq ptr %i.apf, null
  br i1 %.not.i6.i.i.i.i.i384, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, label %bb.in

bb.in:                                            ; preds = %bb.im
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385: ; preds = %bb.in, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.io:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i381
  %i.apg = landingpad { ptr, i32 }
          cleanup
  %i.aph = load ptr, ptr %25, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i382 = icmp eq ptr %i.aph, null
  br i1 %.not.i8.i.i.i.i.i382, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %25) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383: ; preds = %bb.ip, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #42
  br label %bb.iq

bb.iq:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383, %bb.il
  %.pn.i.i.i.i.i.i372 = phi { ptr, i32 } [ %i.apg, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i383 ], [ %i.ape, %bb.il ]
  invoke void @__cxa_end_catch()
          to label %.body396 unwind label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i367
  %i.api = landingpad { ptr, i32 }
          catch ptr null
  %i.apj = extractvalue { ptr, i32 } %i.api, 0
  call void @__clang_call_terminate(ptr %i.apj) #41
  unreachable

bb.is:                                            ; preds = %.loopexit.i.i.i.i.i371
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i385, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i369
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i365
  %i.apk = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i370 = icmp eq i32 %i.apk, %i.aoa
  br i1 %exitcond.not.i.i.i.i.i370, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIlEE.exit, label %.lr.ph.i.i.i.i.i365, !llvm.loop !3979

bb.it:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i266
  %i.apl = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.apn = load i32, ptr %i.apm, align 4, !tbaa !261 ; 6 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.app = load i32, ptr %i.apo, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269 = getelementptr inbounds nuw i8, ptr %23, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  store ptr %27, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i269, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270 = getelementptr inbounds nuw i8, ptr %23, i64 24
  store ptr %26, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i270, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271 = getelementptr inbounds nuw i8, ptr %23, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i271, align 8
  store i8 1, ptr %23, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272 = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr %i.apl, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i272, align 8
  %.not.i.i.i.i.i.i.i.i273 = icmp slt i32 %i.apn, %i.app
  br i1 %.not.i.i.i.i.i.i.i.i273, label %bb.iu, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.iu:                                            ; preds = %bb.it
  %i.apq = add i32 %i.apn, 63                     ; 2 uses
  %i.apr = srem i32 %i.apq, 64
  %i.aps = sub nsw i32 %i.apq, %i.apr             ; 6 uses
  %i.apt = and i32 %i.app, -64                    ; 4 uses
  %i.apu = icmp slt i32 %i.apt, %i.aps
  br i1 %i.apu, label %bb.iv, label %bb.iw

bb.iv:                                            ; preds = %bb.iu
  %i.apv = and i32 %i.app, 63
  %i.apw = zext nneg i32 %i.apv to i64
  %notmask.i.i.i.i.i.i.i.i.i363 = shl nsw i64 -1, %i.apw
  %i.apx = xor i64 %notmask.i.i.i.i.i.i.i.i.i363, -1
  %i.apy = sub nsw i32 %i.aps, %i.apn             ; 2 uses
  %i.apz = zext nneg i32 %i.apy to i64
  %notmask.i.i.i.i.i.i.i.i.i.i364 = shl nsw i64 -1, %i.apz
  %i.aqa = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i364, -1
  %i.aqb = sub nsw i32 64, %i.apy
  %i.aqc = zext nneg i32 %i.aqb to i64
  %i.aqd = shl i64 %i.aqa, %i.aqc
  %i.aqe = and i64 %i.aqd, %i.apx
  br label %.invoke1118

bb.iw:                                            ; preds = %bb.iu
  %.not32.i.i.i.i.i.i.i.i274 = icmp eq i32 %i.apn, %i.aps
  br i1 %.not32.i.i.i.i.i.i.i.i274, label %.noexc400, label %bb.ix

bb.ix:                                            ; preds = %bb.iw
  %i.aqf = sdiv i32 %i.apn, 64
  %i.aqg = sub nsw i32 %i.aps, %i.apn             ; 2 uses
  %i.aqh = zext nneg i32 %i.aqg to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i275 = shl nsw i64 -1, %i.aqh
  %i.aqi = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i275, -1
  %i.aqj = sub nsw i32 64, %i.aqg
  %i.aqk = zext nneg i32 %i.aqj to i64
  %i.aql = shl i64 %i.aqi, %i.aqk
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %23, i32 noundef %i.aqf, i64 noundef %i.aql)
          to label %.noexc400 unwind label %.loopexit.split-lp566.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc400:                                        ; preds = %bb.ix, %bb.iw
  %i.aqm = add nsw i32 %i.aps, 64                 ; 2 uses
  %.not3352.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aqm, %i.apt
  br i1 %.not3352.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i.i276

._crit_edge.i.i.i.i.i.i.i.i278:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc400
  %.not34.i.i.i.i.i.i.i.i279 = icmp eq i32 %i.app, %i.apt
  br i1 %.not34.i.i.i.i.i.i.i.i279, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.kp

.lr.ph.i.i.i.i.i.i.i.i276:                        ; preds = %.noexc400, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aqn = phi i32 [ %i.axt, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aqm, %.noexc400 ] ; 2 uses
  %.053.i.i.i.i.i.i.i.i = phi i32 [ %i.aqn, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aps, %.noexc400 ] ; 2 uses
  %i.aqo = sdiv i32 %.053.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aqp = sext i32 %i.aqo to i64
  %i.aqq = getelementptr inbounds [8 x i8], ptr %i.apl, i64 %i.aqp
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aqr, label %.lr.ph.i.i.i.i10.i.i.i.i.i324 [
    i64 -1, label %bb.iy
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i324:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.aqs = shl nsw i32 %i.aqo, 6
  br label %bb.ju

bb.iy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i276
  %i.aqt = shl nsw i32 %i.aqo, 6                  ; 2 uses
  %i.aqu = add i32 %i.aqt, 64
  %i.aqv = sext i32 %i.aqu to i64
  %.0.off.i.i.i.i.i.i.i.i281 = add i32 %.053.i.i.i.i.i.i.i.i, 127
  %.not63.i.i.i.i.i.i.i.i.i282 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i281, 64
  br i1 %.not63.i.i.i.i.i.i.i.i.i282, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph62.i.i.i.i.i.i.i.i.i283

.lr.ph62.i.i.i.i.i.i.i.i.i283:                    ; preds = %bb.iy
  %i.aqw = sext i32 %i.aqt to i64
  br label %bb.iz

bb.iz:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph62.i.i.i.i.i.i.i.i.i283
  %.060.i.i.i.i.i.i.i.i.i284 = phi i64 [ %i.aqw, %.lr.ph62.i.i.i.i.i.i.i.i.i283 ], [ %i.auf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.aqx = trunc i64 %.060.i.i.i.i.i.i.i.i.i284 to i32 ; 3 uses
  %i.aqy = load ptr, ptr %.sroa.46.0..sroa_idx.i.i260, align 8, !tbaa !1076, !nonnull !196, !align !378
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !370 ; 2 uses
  %i.ara = load ptr, ptr %.sroa.57.0..sroa_idx.i.i261, align 8, !tbaa !1077, !nonnull !196, !align !378
  %i.arb = load ptr, ptr %.sroa.6.0..sroa_idx.i.i262, align 8, !tbaa !1078, !nonnull !196, !align !378
  %i.arc = getelementptr i8, ptr %i.aqz, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i285 = load ptr, ptr %i.arc, align 8, !tbaa !294
  %i.ard = getelementptr i8, ptr %i.aqz, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i286 = load ptr, ptr %i.ard, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.ara, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i288 = load ptr, ptr %i.arb, align 8
  %i.are = invoke fastcc noundef i64 @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEliPKSD_OT0_OT1_Rb(i32 noundef %i.aqx, ptr %.val.i.i.i.i.i.i.i.i.i.i285, ptr %.val4.i.i.i.i.i.i.i.i.i.i286, ptr %.val5.i.i.i.i.i.i.i.i.i.i287, ptr %.val6.i.i.i.i.i.i.i.i.i.i288, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
          to label %.noexc.i.i.i.i.i.i.i.i.i310 unwind label %bb.je

.noexc.i.i.i.i.i.i.i.i.i310:                      ; preds = %bb.iz
  %i.arf = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.arg = trunc nuw i8 %i.arf to i1
  %i.arh = load ptr, ptr %.sroa.7.0..sroa_idx.i.i263, align 8, !tbaa !1079, !nonnull !196, !align !378
  %i.ari = load ptr, ptr %i.arh, align 8, !tbaa !372 ; 8 uses
  br i1 %i.arg, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ari, i64 56
  %i.ark = load i32, ptr %i.arj, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ari, i32 noundef %i.ark, i1 noundef zeroext true)
          to label %.noexc19.i.i.i.i.i.i.i.i.i321 unwind label %bb.je

.noexc19.i.i.i.i.i.i.i.i.i321:                    ; preds = %bb.ja
  %i.arl = getelementptr inbounds nuw i8, ptr %i.ari, i64 32
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !390 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 44
  %i.aro = load i8, ptr %i.arn, align 4, !tbaa !395
  %i.arp = and i8 %i.aro, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i322 = icmp eq i8 %i.arp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i322, label %_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

_ZN8facebook5velox10FlatVectorIlE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i323: ; preds = %.noexc19.i.i.i.i.i.i.i.i.i321
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arm, i64 16
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !396
  %i.ars = lshr i64 %.060.i.i.i.i.i.i.i.i.i284, 3
  %i.art = and i64 %i.ars, 536870911
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 %i.art ; 2 uses
  %i.arv = load i8, ptr %i.aru, align 1, !tbaa !150
  %i.arw = and i64 %.060.i.i.i.i.i.i.i.i.i284, 7
  %i.arx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.arw
  %i.ary = load i8, ptr %i.arx, align 1, !tbaa !150
  %i.arz = and i8 %i.ary, %i.arv
  store i8 %i.arz, ptr %i.aru, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.jb:                                            ; preds = %.noexc.i.i.i.i.i.i.i.i.i310
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ari, i64 144 ; 2 uses
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !389 ; 2 uses
  %i.asc = icmp eq ptr %i.asb, null
  br i1 %i.asc, label %bb.jc, label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

bb.jc:                                            ; preds = %bb.jb
  %i.asd = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIlE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.ari)
          to label %.noexc21.i.i.i.i.i.i.i.i.i319 unwind label %bb.je ; 0 uses

.noexc21.i.i.i.i.i.i.i.i.i319:                    ; preds = %bb.jc
  %.pre.i.i.i.i.i.i.i.i.i.i.i320 = load ptr, ptr %i.asa, align 8, !tbaa !389
  br label %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311

_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i319, %bb.jb
  %i.ase = phi ptr [ %i.asb, %bb.jb ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i320, %.noexc21.i.i.i.i.i.i.i.i.i319 ]
  %sext.i.i.i.i.i.i.i.i.i.i312 = shl i64 %.060.i.i.i.i.i.i.i.i.i284, 32
  %i.asf = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i312, 29
  %i.asg = getelementptr inbounds i8, ptr %i.ase, i64 %i.asf
  store i64 %i.are, ptr %i.asg, align 8, !tbaa !227
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ari, i64 32 ; 2 uses
  %i.asi = load ptr, ptr %i.ash, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i313 = icmp eq ptr %i.asi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i313, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIllLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIlEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.jd

bb.jd:                                            ; preds = %_ZN8facebook5velox10FlatVectorIlE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i311
  %i.asj = getelementptr inbounds nuw i8, ptr %i.ari, i64 56
  %i.ask = load i32, ptr %i.asj, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.ari, i32 noundef %i.ask, i1 noundef zeroext true)
          to label %.noexc22.i.i.i.i.i.i.i.i.i314 unwind label %bb.je

.noexc22.i.i.i.i.i.i.i.i.i314:                    ; preds = %bb.jd
  %i.asl = load ptr, ptr %i.ash, align 8, !tbaa !390 ; 2 uses
  %i.asm = getelementptr inbounds nuw i8, ptr %i.asl, i64 44
  %i.asn = load i8, ptr %i.asm, align 4, !tbaa !395
  %i.aso = and i8 %i.asn, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315 = icmp eq i8 %i.aso, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i315, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318, label %.invoke.i.i.i.i.i.i.i.i.i316, !prof !228

.invoke.i.i.i.i.i.i.i.i.i316:                     ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314, %.noexc19.i.i.i.i.i.i.i.i.i321
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i317 unwind label %bb.je

.cont.i.i.i.i.i.i.i.i.i317:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i316
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i318: ; preds = %.noexc22.i.i.i.i.i.i.i.i.i314
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asl, i64 16
  %i.asq = load ptr, ptr %i.asp, align 8, !tbaa !396
end_hunk_19
begin_hunk_20_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1133:                                       ; preds = %bb.bm, %bb.bn
  %indvars.iv.i.i.i.i.i.i1132 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.bn ], [ 0, %bb.bm ] ; 2 uses
  %i.mg = lshr exact i64 %indvars.iv.i.i.i.i.i.i1132, 3
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 %i.mg
  %i.mi = load i64, ptr %i.mh, align 8, !tbaa !227
  %i.mj = icmp eq i64 %i.mi, -1
  br i1 %i.mj, label %bb.bn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.bn, %bb.bm
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.lz, %i.me
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.mk = lshr i32 %i.lz, 6
  %i.ml = and i32 %i.lz, 63
  %i.mm = zext nneg i32 %i.ml to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.mm
  %i.mn = zext nneg i32 %i.mk to i64
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.md, i64 %i.mn
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.mp, %notmask.i40.i.i.i.i.i.i.i.i
  %i.mq = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.mr = zext i1 %i.mq to i16
  %i.ms = or disjoint i16 %i.mr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1133, %bb.bo, %.critedge.i.i.i.i.i.i.i.i, %bb.bl, %bb.bk, %bb.bj
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bk ], [ 256, %bb.bj ], [ 257, %bb.bl ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.ms, %bb.bo ], [ 256, %.lr.ph1133 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.lr, align 4
  %i.mt = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.mt, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.mu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !266 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !261 ; 2 uses
  %i.my = icmp slt i32 %i.mx, %i.mv
  br i1 %i.my, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.031.i.i.i.i.i = phi i32 [ %i.of, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.mx, %bb.bp ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef %.031.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.mz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.na = extractvalue { ptr, i32 } %i.mz, 0      ; 2 uses
  %i.nb = extractvalue { ptr, i32 } %i.mz, 1      ; 2 uses
  %i.nc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.nd = icmp eq i32 %i.nb, %i.nc
  br i1 %i.nd, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.ne = call ptr @__cxa_begin_catch(ptr %i.na) #42
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !399 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 144
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !157 ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ng, i64 152
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !158
  %i.nl = icmp eq i64 %i.nk, 4
  br i1 %i.nl, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.br
  %i.nm = load i8, ptr %i.ni, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.nm, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ni, i64 1
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.no, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.np = getelementptr inbounds nuw i8, ptr %i.ni, i64 2
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.nq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 3
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.ns, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %45) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.031.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.bz unwind label %bb.cb

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.br
  invoke void @__cxa_rethrow() #44
          to label %bb.cf unwind label %bb.by

bb.bs:                                            ; preds = %bb.bq
  %i.nt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.nu = icmp eq i32 %i.nb, %i.nt
  br i1 %i.nu, label %bb.bt, label %.body117

bb.bt:                                            ; preds = %bb.bs
  %i.nv = call ptr @__cxa_begin_catch(ptr %i.na) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %44) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.031.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.nw = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nw, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.nx = landingpad { ptr, i32 }
          cleanup
  %i.ny = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.ny, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  invoke void @__cxa_end_catch()
          to label %.body117 unwind label %bb.ce

bb.by:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bz:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.oa = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cb:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.ob = landingpad { ptr, i32 }
          cleanup
  %i.oc = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.by
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ob, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.nz, %bb.by ]
  invoke void @__cxa_end_catch()
          to label %.body117 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.od = landingpad { ptr, i32 }
          catch ptr null
  %i.oe = extractvalue { ptr, i32 } %i.od, 0
  call void @__clang_call_terminate(ptr %i.oe) #41
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.of = add i32 %.031.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.of, %i.mv
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4053

bb.cg:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.og = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !261 ; 6 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  store ptr %47, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %46, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %43, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %i.og, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.oi, %i.ok
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ch, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.ol = add i32 %i.oi, 63                       ; 2 uses
  %i.om = srem i32 %i.ol, 64
  %i.on = sub nsw i32 %i.ol, %i.om                ; 6 uses
  %i.oo = and i32 %i.ok, -64                      ; 4 uses
  %i.op = icmp slt i32 %i.oo, %i.on
  br i1 %i.op, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oq = and i32 %i.ok, 63
  %i.or = zext nneg i32 %i.oq to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.or
  %i.os = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.ot = sub nsw i32 %i.on, %i.oi                ; 2 uses
  %i.ou = zext nneg i32 %i.ot to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ou
  %i.ov = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.ow = sub nsw i32 64, %i.ot
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = shl i64 %i.ov, %i.ox
  %i.oz = and i64 %i.oy, %i.os
  br label %.invoke981

bb.cj:                                            ; preds = %bb.ch
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.oi, %i.on
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc121, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pa = sdiv i32 %i.oi, 64
  %i.pb = sub nsw i32 %i.on, %i.oi                ; 2 uses
  %i.pc = zext nneg i32 %i.pb to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.pc
  %i.pd = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.pe = sub nsw i32 64, %i.pb
  %i.pf = zext nneg i32 %i.pe to i64
  %i.pg = shl i64 %i.pd, %i.pf
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %43, i32 noundef %i.pa, i64 noundef %i.pg)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.ck, %bb.cj
  %i.ph = add nsw i32 %i.on, 64                   ; 2 uses
  %.not3354.i.i.i.i.i.i.i.i = icmp sgt i32 %i.ph, %i.oo
  br i1 %.not3354.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc121
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.ok, %i.oo
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.ec

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc121, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.pi = phi i32 [ %i.xx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.ph, %.noexc121 ] ; 2 uses
  %.055.i.i.i.i.i.i.i.i = phi i32 [ %i.pi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.on, %.noexc121 ] ; 2 uses
  %i.pj = sdiv i32 %.055.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.og, i64 %i.pk
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.pm, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cl
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pn = shl nsw i32 %i.pj, 6
  br label %bb.dh

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.po = shl nsw i32 %i.pj, 6                    ; 2 uses
  %i.pp = add i32 %i.po, 64
  %i.pq = sext i32 %i.pp to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.055.i.i.i.i.i.i.i.i, 127
  %.not62.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not62.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph61.i.i.i.i.i.i.i.i.i

.lr.ph61.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cl
  %i.pr = sext i32 %i.po to i64
  br label %bb.cm

bb.cm:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph61.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pr, %.lr.ph61.i.i.i.i.i.i.i.i.i ], [ %i.ts, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.ps = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1086, !nonnull !196, !align !378
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !370 ; 2 uses
  %i.pu = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1087, !nonnull !196, !align !378
  %i.pv = getelementptr i8, ptr %i.pt, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pv, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pu, align 8
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.pw = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.px = getelementptr inbounds [4 x i8], ptr %.val4.i.i.i.i.i.i.i.i.i.i, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !151 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.py, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cm
  %i.pz = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1088, !nonnull !196, !align !378
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pz, align 8
  %i.qa = getelementptr i8, ptr %i.pt, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.qa, align 8, !tbaa !294
  %i.qb = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.pw
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !151 ; 2 uses
  %i.qd = add nsw i32 %i.qc, %i.py
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val6.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !363
  %i.qe = sext i32 %i.qc to i64
  %i.qf = sext i32 %i.qd to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.qe, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %bb.co ] ; 4 uses
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qq, %bb.co ]
  %i.qg = lshr i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.qh = and i64 %i.qg, 67108863
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.qh
  %i.qj = load i64, ptr %i.qi, align 8, !tbaa !227
  %i.qk = and i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.ql = shl nuw i64 1, %i.qk
  %i.qm = and i64 %i.qj, %i.ql
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qm, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val18.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !855
  %i.qn = getelementptr inbounds [4 x i8], ptr %.val18.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !840
  %i.qp = fpext float %i.qo to double
  %i.qq = fadd double %.05.i.i.i.i.i.i.i.i.i.i.i, %i.qp ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.qf
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !116

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  %i.qr = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1089, !nonnull !196, !align !378
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !859 ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  %i.qu = load i32, ptr %i.qt, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.qs, i32 noundef %i.qu, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cr

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !390 ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 44
  %i.qy = load i8, ptr %i.qx, align 4, !tbaa !395
  %i.qz = and i8 %i.qy, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.qz, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !396
  %i.rc = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.rd = and i64 %i.rc, 536870911
  %i.re = getelementptr inbounds nuw i8, ptr %i.rb, i64 %i.rd ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !150
  %i.rg = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.rh = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.rg
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !150
  %i.rj = and i8 %i.ri, %i.rf
  store i8 %i.rj, ptr %i.re, align 1, !tbaa !150
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKfPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.co, %bb.cm
  %.1.i.ph.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.cm ], [ %i.qq, %bb.co ]
  %i.rk = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1089, !nonnull !196, !align !378
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !859 ; 5 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 144 ; 2 uses
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !875 ; 2 uses
  %i.ro = icmp eq ptr %i.rn, null
  br i1 %i.ro, label %bb.cp, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.rp = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.rl)
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.cr ; 0 uses

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cp
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rm, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.rq = phi ptr [ %i.rn, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i.i.i.i ]
  %i.rr = getelementptr inbounds [8 x i8], ptr %i.rq, i64 %i.pw
end_hunk_20
begin_hunk_21_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1127:                                       ; preds = %bb.ho, %bb.hp
  %indvars.iv.i.i.i.i.i.i3491126 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i355, %bb.hp ], [ 0, %bb.ho ] ; 2 uses
  %i.alu = lshr exact i64 %indvars.iv.i.i.i.i.i.i3491126, 3
  %i.alv = getelementptr inbounds nuw i8, ptr %i.alr, i64 %i.alu
  %i.alw = load i64, ptr %i.alv, align 8, !tbaa !227
  %i.alx = icmp eq i64 %i.alw, -1
  br i1 %i.alx, label %bb.hp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i351:                     ; preds = %bb.hp, %bb.ho
  %.not38.i.i.i.i.i.i.i.i352 = icmp eq i32 %i.aln, %i.als
  br i1 %.not38.i.i.i.i.i.i.i.i352, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, label %bb.hq

bb.hq:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i351
  %i.aly = lshr i32 %i.aln, 6
  %i.alz = and i32 %i.aln, 63
  %i.ama = zext nneg i32 %i.alz to i64
  %notmask.i40.i.i.i.i.i.i.i.i353 = shl nsw i64 -1, %i.ama
  %i.amb = zext nneg i32 %i.aly to i64
  %i.amc = getelementptr inbounds nuw [8 x i8], ptr %i.alr, i64 %i.amb
  %i.amd = load i64, ptr %i.amc, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i354 = or i64 %i.amd, %notmask.i40.i.i.i.i.i.i.i.i353
  %i.ame = icmp eq i64 %.demorgan.i.i.i.i.i.i354, -1
  %i.amf = zext i1 %i.ame to i16
  %i.amg = or disjoint i16 %i.amf, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234: ; preds = %.lr.ph1127, %bb.hq, %.critedge.i.i.i.i.i.i.i.i351, %bb.hn, %bb.hm, %bb.hl
  %.sroa.0.0.insert.ext.i.i.i.i.i.i235 = phi i16 [ 256, %bb.hm ], [ 256, %bb.hl ], [ 257, %bb.hn ], [ 257, %.critedge.i.i.i.i.i.i.i.i351 ], [ %i.amg, %bb.hq ], [ 256, %.lr.ph1127 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i235, ptr %i.alf, align 4
  %i.amh = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i235 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i356
  %.0.in.i.i.i.i.i.i237 = phi i8 [ %.0.in.pre.i.i.i.i.i.i357, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i356 ], [ %i.amh, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234 ]
  %.0.i.i.i.i.i.i238 = trunc nuw i8 %.0.in.i.i.i.i.i.i237 to i1
  br i1 %.0.i.i.i.i.i.i238, label %bb.hr, label %bb.ii

bb.hr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236
  %i.ami = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.amj = load i32, ptr %i.ami, align 8, !tbaa !266 ; 2 uses
  %i.amk = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aml = load i32, ptr %i.amk, align 4, !tbaa !261 ; 2 uses
  %i.amm = icmp slt i32 %i.aml, %i.amj
  br i1 %i.amm, label %.lr.ph.i.i.i.i.i327, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i327:                              ; preds = %bb.hr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.ant, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.aml, %bb.hr ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i327
  %i.amn = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.amo = extractvalue { ptr, i32 } %i.amn, 0    ; 2 uses
  %i.amp = extractvalue { ptr, i32 } %i.amn, 1    ; 2 uses
  %i.amq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.amr = icmp eq i32 %i.amp, %i.amq
  br i1 %i.amr, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ams = call ptr @__cxa_begin_catch(ptr %i.amo) #42
  %i.amt = getelementptr inbounds nuw i8, ptr %i.ams, i64 8
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !399 ; 2 uses
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 144
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !157 ; 4 uses
  %i.amx = getelementptr inbounds nuw i8, ptr %i.amu, i64 152
  %i.amy = load i64, ptr %i.amx, align 8, !tbaa !158
  %i.amz = icmp eq i64 %i.amy, 4
  br i1 %i.amz, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335, label %.loopexit.i.i.i.i.i333

.lr.ph.i.i.i.i.preheader.i.i.i.i.i335:            ; preds = %bb.ht
  %i.ana = load i8, ptr %i.amw, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i336 = icmp eq i8 %i.ana, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i336, label %tailrecurse.i.i.i.i.i.i.i.i.i337, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.i.i.i.i.i337:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335
  %i.anb = getelementptr inbounds nuw i8, ptr %i.amw, i64 1
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i338 = icmp eq i8 %i.anc, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i338, label %tailrecurse.i.i.i.i.1.i.i.i.i.i339, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.1.i.i.i.i.i339:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i337
  %i.and = getelementptr inbounds nuw i8, ptr %i.amw, i64 2
  %i.ane = load i8, ptr %i.and, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i340 = icmp eq i8 %i.ane, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i340, label %tailrecurse.i.i.i.i.2.i.i.i.i.i341, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.2.i.i.i.i.i341:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i339
  %i.anf = getelementptr inbounds nuw i8, ptr %i.amw, i64 3
  %i.ang = load i8, ptr %i.anf, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i342 = icmp eq i8 %i.ang, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i342, label %tailrecurse.i.i.i.i.3.i.i.i.i.i343, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.3.i.i.i.i.i343:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i341
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ib unwind label %bb.id

.loopexit.i.i.i.i.i333:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i341, %tailrecurse.i.i.i.i.1.i.i.i.i.i339, %tailrecurse.i.i.i.i.i.i.i.i.i337, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335, %bb.ht
  invoke void @__cxa_rethrow() #44
          to label %bb.ih unwind label %bb.ia

bb.hu:                                            ; preds = %bb.hs
  %i.anh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.ani = icmp eq i32 %i.amp, %i.anh
  br i1 %i.ani, label %bb.hv, label %.body358

bb.hv:                                            ; preds = %bb.hu
  %i.anj = call ptr @__cxa_begin_catch(ptr %i.amo) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.ank = load ptr, ptr %22, align 8, !tbaa !313
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.ank, null
  br i1 %.not.i.i.i.i.i.i330, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331: ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hv
  %i.anl = landingpad { ptr, i32 }
          cleanup
  %i.anm = load ptr, ptr %22, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i328 = icmp eq ptr %i.anm, null
  br i1 %.not.i4.i.i.i.i.i328, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329: ; preds = %bb.hz, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.ig

bb.ia:                                            ; preds = %.loopexit.i.i.i.i.i333
  %i.ann = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ib:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i343
  %i.ano = load ptr, ptr %23, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i346 = icmp eq ptr %i.ano, null
  br i1 %.not.i6.i.i.i.i.i346, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347: ; preds = %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.id:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i343
  %i.anp = landingpad { ptr, i32 }
          cleanup
  %i.anq = load ptr, ptr %23, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i344 = icmp eq ptr %i.anq, null
  br i1 %.not.i8.i.i.i.i.i344, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345: ; preds = %bb.ie, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.if

bb.if:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345, %bb.ia
  %.pn.i.i.i.i.i.i334 = phi { ptr, i32 } [ %i.anp, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345 ], [ %i.ann, %bb.ia ]
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329
  %i.anr = landingpad { ptr, i32 }
          catch ptr null
  %i.ans = extractvalue { ptr, i32 } %i.anr, 0
  call void @__clang_call_terminate(ptr %i.ans) #41
  unreachable

bb.ih:                                            ; preds = %.loopexit.i.i.i.i.i333
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i327
  %i.ant = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i332 = icmp eq i32 %i.ant, %i.amj
  br i1 %exitcond.not.i.i.i.i.i332, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i327, !llvm.loop !4061

bb.ii:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236
  %i.anu = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.anw = load i32, ptr %i.anv, align 4, !tbaa !261 ; 6 uses
  %i.anx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.any = load i32, ptr %i.anx, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i239 = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %25, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i239, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i240 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %24, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i240, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i241 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i241, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i242 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.anu, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i242, align 8
  %.not.i.i.i.i.i.i.i.i243 = icmp slt i32 %i.anw, %i.any
  br i1 %.not.i.i.i.i.i.i.i.i243, label %bb.ij, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ii
  %i.anz = add i32 %i.anw, 63                     ; 2 uses
  %i.aoa = srem i32 %i.anz, 64
  %i.aob = sub nsw i32 %i.anz, %i.aoa             ; 6 uses
  %i.aoc = and i32 %i.any, -64                    ; 4 uses
  %i.aod = icmp slt i32 %i.aoc, %i.aob
  br i1 %i.aod, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.aoe = and i32 %i.any, 63
  %i.aof = zext nneg i32 %i.aoe to i64
  %notmask.i.i.i.i.i.i.i.i.i325 = shl nsw i64 -1, %i.aof
  %i.aog = xor i64 %notmask.i.i.i.i.i.i.i.i.i325, -1
  %i.aoh = sub nsw i32 %i.aob, %i.anw             ; 2 uses
  %i.aoi = zext nneg i32 %i.aoh to i64
  %notmask.i.i.i.i.i.i.i.i.i.i326 = shl nsw i64 -1, %i.aoi
  %i.aoj = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i326, -1
  %i.aok = sub nsw i32 64, %i.aoh
  %i.aol = zext nneg i32 %i.aok to i64
  %i.aom = shl i64 %i.aoj, %i.aol
  %i.aon = and i64 %i.aom, %i.aog
  br label %.invoke983

bb.il:                                            ; preds = %bb.ij
  %.not32.i.i.i.i.i.i.i.i244 = icmp eq i32 %i.anw, %i.aob
  br i1 %.not32.i.i.i.i.i.i.i.i244, label %.noexc362, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aoo = sdiv i32 %i.anw, 64
  %i.aop = sub nsw i32 %i.aob, %i.anw             ; 2 uses
  %i.aoq = zext nneg i32 %i.aop to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i245 = shl nsw i64 -1, %i.aoq
  %i.aor = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i245, -1
  %i.aos = sub nsw i32 64, %i.aop
  %i.aot = zext nneg i32 %i.aos to i64
  %i.aou = shl i64 %i.aor, %i.aot
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.aoo, i64 noundef %i.aou)
          to label %.noexc362 unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc362:                                        ; preds = %bb.im, %bb.il
  %i.aov = add nsw i32 %i.aob, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aov, %i.aoc
  br i1 %.not3351.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i248, label %.lr.ph.i.i.i.i.i.i.i.i246

._crit_edge.i.i.i.i.i.i.i.i248:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc362
  %.not34.i.i.i.i.i.i.i.i249 = icmp eq i32 %i.any, %i.aoc
  br i1 %.not34.i.i.i.i.i.i.i.i249, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.ke

.lr.ph.i.i.i.i.i.i.i.i246:                        ; preds = %.noexc362, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aow = phi i32 [ %i.awc, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aov, %.noexc362 ] ; 2 uses
  %.052.i.i.i.i.i.i.i.i = phi i32 [ %i.aow, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aob, %.noexc362 ] ; 2 uses
  %i.aox = sdiv i32 %.052.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = getelementptr inbounds [8 x i8], ptr %i.anu, i64 %i.aoy
  %i.apa = load i64, ptr %i.aoz, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.apa, label %.lr.ph.i.i.i.i10.i.i.i.i.i291 [
    i64 -1, label %bb.in
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i291:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i246
  %i.apb = shl nsw i32 %i.aox, 6
  br label %bb.jj

bb.in:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i246
  %i.apc = shl nsw i32 %i.aox, 6                  ; 2 uses
  %i.apd = add i32 %i.apc, 64
  %i.ape = sext i32 %i.apd to i64
  %.0.off.i.i.i.i.i.i.i.i251 = add i32 %.052.i.i.i.i.i.i.i.i, 127
  %.not62.i.i.i.i.i.i.i.i.i252 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i251, 64
  br i1 %.not62.i.i.i.i.i.i.i.i.i252, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph61.i.i.i.i.i.i.i.i.i253

.lr.ph61.i.i.i.i.i.i.i.i.i253:                    ; preds = %bb.in
  %i.apf = sext i32 %i.apc to i64
  br label %bb.io

bb.io:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph61.i.i.i.i.i.i.i.i.i253
  %.059.i.i.i.i.i.i.i.i.i = phi i64 [ %i.apf, %.lr.ph61.i.i.i.i.i.i.i.i.i253 ], [ %i.aso, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.apg = trunc i64 %.059.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.aph = load ptr, ptr %.sroa.46.0..sroa_idx.i.i230, align 8, !tbaa !1095, !nonnull !196, !align !378
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !370 ; 2 uses
  %i.apj = load ptr, ptr %.sroa.57.0..sroa_idx.i.i231, align 8, !tbaa !1096, !nonnull !196, !align !378
  %i.apk = load ptr, ptr %.sroa.6.0..sroa_idx.i.i232, align 8, !tbaa !1097, !nonnull !196, !align !378
  %i.apl = getelementptr i8, ptr %i.api, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i254 = load ptr, ptr %i.apl, align 8, !tbaa !294
  %i.apm = getelementptr i8, ptr %i.api, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i255 = load ptr, ptr %i.apm, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i256 = load ptr, ptr %i.apj, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i257 = load ptr, ptr %i.apk, align 8
  %i.apn = call fastcc noundef double @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb(i32 noundef %i.apg, ptr %.val.i.i.i.i.i.i.i.i.i.i254, ptr %.val4.i.i.i.i.i.i.i.i.i.i255, ptr %.val5.i.i.i.i.i.i.i.i.i.i256, ptr %.val6.i.i.i.i.i.i.i.i.i.i257, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.apo = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.app = trunc nuw i8 %i.apo to i1
  %i.apq = load ptr, ptr %.sroa.7.0..sroa_idx.i.i233, align 8, !tbaa !1098, !nonnull !196, !align !378
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !859 ; 8 uses
  br i1 %i.app, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 56
  %i.apt = load i32, ptr %i.aps, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.apr, i32 noundef %i.apt, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i.i.i288 unwind label %bb.it

.noexc.i.i.i.i.i.i.i.i.i288:                      ; preds = %bb.ip
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 32
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !390 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apv, i64 44
  %i.apx = load i8, ptr %i.apw, align 4, !tbaa !395
  %i.apy = and i8 %i.apx, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i289 = icmp eq i8 %i.apy, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i289, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i290, label %.invoke.i.i.i.i.i.i.i.i.i283, !prof !228

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i290: ; preds = %.noexc.i.i.i.i.i.i.i.i.i288
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apv, i64 16
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !396
  %i.aqb = lshr i64 %.059.i.i.i.i.i.i.i.i.i, 3
  %i.aqc = and i64 %i.aqb, 536870911
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.aqc ; 2 uses
  %i.aqe = load i8, ptr %i.aqd, align 1, !tbaa !150
  %i.aqf = and i64 %.059.i.i.i.i.i.i.i.i.i, 7
  %i.aqg = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.aqf
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !150
  %i.aqi = and i8 %i.aqh, %i.aqe
  store i8 %i.aqi, ptr %i.aqd, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.io
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.apr, i64 144 ; 2 uses
  %i.aqk = load ptr, ptr %i.aqj, align 8, !tbaa !875 ; 2 uses
  %i.aql = icmp eq ptr %i.aqk, null
  br i1 %i.aql, label %bb.ir, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258

bb.ir:                                            ; preds = %bb.iq
  %i.aqm = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.apr)
          to label %.noexc20.i.i.i.i.i.i.i.i.i286 unwind label %bb.it ; 0 uses

.noexc20.i.i.i.i.i.i.i.i.i286:                    ; preds = %bb.ir
  %.pre.i.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.aqj, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258: ; preds = %.noexc20.i.i.i.i.i.i.i.i.i286, %bb.iq
  %i.aqn = phi ptr [ %i.aqk, %bb.iq ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i287, %.noexc20.i.i.i.i.i.i.i.i.i286 ]
  %sext.i.i.i.i.i.i.i.i.i.i259 = shl i64 %.059.i.i.i.i.i.i.i.i.i, 32
  %i.aqo = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i259, 29
  %i.aqp = getelementptr inbounds i8, ptr %i.aqn, i64 %i.aqo
  store double %i.apn, ptr %i.aqp, align 8, !tbaa !842
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.apr, i64 32 ; 2 uses
  %i.aqr = load ptr, ptr %i.aqq, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i260 = icmp eq ptr %i.aqr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i260, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.is

bb.is:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.apr, i64 56
  %i.aqt = load i32, ptr %i.aqs, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.apr, i32 noundef %i.aqt, i1 noundef zeroext true)
          to label %.noexc21.i.i.i.i.i.i.i.i.i282 unwind label %bb.it

.noexc21.i.i.i.i.i.i.i.i.i282:                    ; preds = %bb.is
  %i.aqu = load ptr, ptr %i.aqq, align 8, !tbaa !390 ; 2 uses
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 44
  %i.aqw = load i8, ptr %i.aqv, align 4, !tbaa !395
  %i.aqx = and i8 %i.aqw, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aqx, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i285, label %.invoke.i.i.i.i.i.i.i.i.i283, !prof !228

.invoke.i.i.i.i.i.i.i.i.i283:                     ; preds = %.noexc21.i.i.i.i.i.i.i.i.i282, %.noexc.i.i.i.i.i.i.i.i.i288
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i284 unwind label %bb.it

.cont.i.i.i.i.i.i.i.i.i284:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i283
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i285: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i282
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqu, i64 16
  %i.aqz = load ptr, ptr %i.aqy, align 8, !tbaa !396
  %i.ara = lshr i64 %.059.i.i.i.i.i.i.i.i.i, 3
  %i.arb = and i64 %i.ara, 536870911
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 %i.arb ; 2 uses
end_hunk_21
begin_hunk_22_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph:                                           ; preds = %bb.kj, %bb.kk
  %indvars.iv.i.i.i.i.i.i4751124 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i481, %bb.kk ], [ 0, %bb.kj ] ; 2 uses
  %i.awv = lshr exact i64 %indvars.iv.i.i.i.i.i.i4751124, 3
  %i.aww = getelementptr inbounds nuw i8, ptr %i.aws, i64 %i.awv
  %i.awx = load i64, ptr %i.aww, align 8, !tbaa !227
  %i.awy = icmp eq i64 %i.awx, -1
  br i1 %i.awy, label %bb.kk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i477:                     ; preds = %bb.kk, %bb.kj
  %.not38.i.i.i.i.i.i.i.i478 = icmp eq i32 %i.awo, %i.awt
  br i1 %.not38.i.i.i.i.i.i.i.i478, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, label %bb.kl

bb.kl:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i477
  %i.awz = lshr i32 %i.awo, 6
  %i.axa = and i32 %i.awo, 63
  %i.axb = zext nneg i32 %i.axa to i64
  %notmask.i40.i.i.i.i.i.i.i.i479 = shl nsw i64 -1, %i.axb
  %i.axc = zext nneg i32 %i.awz to i64
  %i.axd = getelementptr inbounds nuw [8 x i8], ptr %i.aws, i64 %i.axc
  %i.axe = load i64, ptr %i.axd, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i480 = or i64 %i.axe, %notmask.i40.i.i.i.i.i.i.i.i479
  %i.axf = icmp eq i64 %.demorgan.i.i.i.i.i.i480, -1
  %i.axg = zext i1 %i.axf to i16
  %i.axh = or disjoint i16 %i.axg, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371: ; preds = %.lr.ph, %bb.kl, %.critedge.i.i.i.i.i.i.i.i477, %bb.ki, %bb.kh, %bb.kg
  %.sroa.0.0.insert.ext.i.i.i.i.i.i372 = phi i16 [ 256, %bb.kh ], [ 256, %bb.kg ], [ 257, %bb.ki ], [ 257, %.critedge.i.i.i.i.i.i.i.i477 ], [ %i.axh, %bb.kl ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i372, ptr %i.alf, align 4
  %i.axi = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i372 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i482
  %.0.in.i.i.i.i.i.i374 = phi i8 [ %.0.in.pre.i.i.i.i.i.i483, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i482 ], [ %i.axi, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371 ]
  %.0.i.i.i.i.i.i375 = trunc nuw i8 %.0.in.i.i.i.i.i.i374 to i1
  br i1 %.0.i.i.i.i.i.i375, label %bb.km, label %bb.ld

bb.km:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373
  %i.axj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.axk = load i32, ptr %i.axj, align 8, !tbaa !266 ; 2 uses
  %i.axl = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.axm = load i32, ptr %i.axl, align 4, !tbaa !261 ; 2 uses
  %i.axn = icmp slt i32 %i.axm, %i.axk
  br i1 %i.axn, label %.lr.ph.i.i.i.i.i453, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i453:                              ; preds = %bb.km, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.039.i.i.i.i.i = phi i32 [ %i.ayu, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.axm, %bb.km ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %.039.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.kn

bb.kn:                                            ; preds = %.lr.ph.i.i.i.i.i453
  %i.axo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.axp = extractvalue { ptr, i32 } %i.axo, 0    ; 2 uses
  %i.axq = extractvalue { ptr, i32 } %i.axo, 1    ; 2 uses
  %i.axr = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.axs = icmp eq i32 %i.axq, %i.axr
  br i1 %i.axs, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.axt = call ptr @__cxa_begin_catch(ptr %i.axp) #42
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axt, i64 8
  %i.axv = load ptr, ptr %i.axu, align 8, !tbaa !399 ; 2 uses
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axv, i64 144
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !157 ; 4 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axv, i64 152
  %i.axz = load i64, ptr %i.axy, align 8, !tbaa !158
  %i.aya = icmp eq i64 %i.axz, 4
  br i1 %i.aya, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461, label %.loopexit.i.i.i.i.i459

.lr.ph.i.i.i.i.preheader.i.i.i.i.i461:            ; preds = %bb.ko
  %i.ayb = load i8, ptr %i.axx, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i462 = icmp eq i8 %i.ayb, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i462, label %tailrecurse.i.i.i.i.i.i.i.i.i463, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.i.i.i.i.i463:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axx, i64 1
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i464 = icmp eq i8 %i.ayd, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i464, label %tailrecurse.i.i.i.i.1.i.i.i.i.i465, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.1.i.i.i.i.i465:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i463
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axx, i64 2
  %i.ayf = load i8, ptr %i.aye, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i466 = icmp eq i8 %i.ayf, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i466, label %tailrecurse.i.i.i.i.2.i.i.i.i.i467, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.2.i.i.i.i.i467:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i465
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.axx, i64 3
  %i.ayh = load i8, ptr %i.ayg, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i468 = icmp eq i8 %i.ayh, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i468, label %tailrecurse.i.i.i.i.3.i.i.i.i.i469, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.3.i.i.i.i.i469:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i467
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.kw unwind label %bb.ky

.loopexit.i.i.i.i.i459:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i467, %tailrecurse.i.i.i.i.1.i.i.i.i.i465, %tailrecurse.i.i.i.i.i.i.i.i.i463, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461, %bb.ko
  invoke void @__cxa_rethrow() #44
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.ayi = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.ayj = icmp eq i32 %i.axq, %i.ayi
  br i1 %i.ayj, label %bb.kq, label %.body358

bb.kq:                                            ; preds = %bb.kp
  %i.ayk = call ptr @__cxa_begin_catch(ptr %i.axp) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.ayl = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i.i.i.i.i.i456 = icmp eq ptr %i.ayl, null
  br i1 %.not.i.i.i.i.i.i456, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.aym = landingpad { ptr, i32 }
          cleanup
  %i.ayn = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i454 = icmp eq ptr %i.ayn, null
  br i1 %.not.i4.i.i.i.i.i454, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit.i.i.i.i.i459
  %i.ayo = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i469
  %i.ayp = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i472 = icmp eq ptr %i.ayp, null
  br i1 %.not.i6.i.i.i.i.i472, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i469
  %i.ayq = landingpad { ptr, i32 }
          cleanup
  %i.ayr = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i470 = icmp eq ptr %i.ayr, null
  br i1 %.not.i8.i.i.i.i.i470, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471, %bb.kv
  %.pn.i.i.i.i.i.i460 = phi { ptr, i32 } [ %i.ayq, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471 ], [ %i.ayo, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455
  %i.ays = landingpad { ptr, i32 }
          catch ptr null
  %i.ayt = extractvalue { ptr, i32 } %i.ays, 0
  call void @__clang_call_terminate(ptr %i.ayt) #41
  unreachable

bb.lc:                                            ; preds = %.loopexit.i.i.i.i.i459
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i453
  %i.ayu = add i32 %.039.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i458 = icmp eq i32 %i.ayu, %i.axk
  br i1 %exitcond.not.i.i.i.i.i458, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i453, !llvm.loop !4065

bb.ld:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373
  %i.ayv = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.ayw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ayx = load i32, ptr %i.ayw, align 4, !tbaa !261 ; 6 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ayz = load i32, ptr %i.ayy, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i376 = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %14, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i376, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i377 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %13, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i377, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i378 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i378, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i379 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ayv, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i379, align 8
  %.not.i.i.i.i.i.i.i.i380 = icmp slt i32 %i.ayx, %i.ayz
  br i1 %.not.i.i.i.i.i.i.i.i380, label %bb.le, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.le:                                            ; preds = %bb.ld
  %i.aza = add i32 %i.ayx, 63                     ; 2 uses
  %i.azb = srem i32 %i.aza, 64
  %i.azc = sub nsw i32 %i.aza, %i.azb             ; 6 uses
  %i.azd = and i32 %i.ayz, -64                    ; 4 uses
  %i.aze = icmp slt i32 %i.azd, %i.azc
  br i1 %i.aze, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.azf = and i32 %i.ayz, 63
  %i.azg = zext nneg i32 %i.azf to i64
  %notmask.i.i.i.i.i.i.i.i.i451 = shl nsw i64 -1, %i.azg
  %i.azh = xor i64 %notmask.i.i.i.i.i.i.i.i.i451, -1
  %i.azi = sub nsw i32 %i.azc, %i.ayx             ; 2 uses
  %i.azj = zext nneg i32 %i.azi to i64
  %notmask.i.i.i.i.i.i.i.i.i.i452 = shl nsw i64 -1, %i.azj
  %i.azk = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i452, -1
  %i.azl = sub nsw i32 64, %i.azi
  %i.azm = zext nneg i32 %i.azl to i64
  %i.azn = shl i64 %i.azk, %i.azm
  %i.azo = and i64 %i.azn, %i.azh
  br label %.invoke982

bb.lg:                                            ; preds = %bb.le
  %.not32.i.i.i.i.i.i.i.i381 = icmp eq i32 %i.ayx, %i.azc
  br i1 %.not32.i.i.i.i.i.i.i.i381, label %.noexc488, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.azp = sdiv i32 %i.ayx, 64
  %i.azq = sub nsw i32 %i.azc, %i.ayx             ; 2 uses
  %i.azr = zext nneg i32 %i.azq to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i382 = shl nsw i64 -1, %i.azr
  %i.azs = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i382, -1
  %i.azt = sub nsw i32 64, %i.azq
  %i.azu = zext nneg i32 %i.azt to i64
  %i.azv = shl i64 %i.azs, %i.azu
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.azp, i64 noundef %i.azv)
          to label %.noexc488 unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc488:                                        ; preds = %bb.lh, %bb.lg
  %i.azw = add nsw i32 %i.azc, 64                 ; 2 uses
  %.not3359.i.i.i.i.i.i.i.i = icmp sgt i32 %i.azw, %i.azd
  br i1 %.not3359.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i385, label %.lr.ph.i.i.i.i.i.i.i.i383

._crit_edge.i.i.i.i.i.i.i.i385:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc488
  %.not34.i.i.i.i.i.i.i.i386 = icmp eq i32 %i.ayz, %i.azd
  br i1 %.not34.i.i.i.i.i.i.i.i386, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.mx

.lr.ph.i.i.i.i.i.i.i.i383:                        ; preds = %.noexc488, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.azx = phi i32 [ %i.biw, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.azw, %.noexc488 ] ; 2 uses
  %.060.i.i.i.i.i.i.i.i = phi i32 [ %i.azx, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.azc, %.noexc488 ] ; 2 uses
  %i.azy = sdiv i32 %.060.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr inbounds [8 x i8], ptr %i.ayv, i64 %i.azz
  %i.bab = load i64, ptr %i.baa, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.bab, label %.lr.ph.i.i.i.i10.i.i.i.i.i428 [
    i64 -1, label %bb.li
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i428:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i383
  %i.bac = shl nsw i32 %i.azy, 6
  br label %bb.md

bb.li:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i383
  %i.bad = shl nsw i32 %i.azy, 6                  ; 2 uses
  %i.bae = add i32 %i.bad, 64
  %i.baf = sext i32 %i.bae to i64
  %.0.off.i.i.i.i.i.i.i.i388 = add i32 %.060.i.i.i.i.i.i.i.i, 127
  %.not64.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i388, 64
  br i1 %.not64.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph63.i.i.i.i.i.i.i.i.i

.lr.ph63.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.li
  %i.bag = sext i32 %i.bad to i64
  br label %bb.lj

bb.lj:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph63.i.i.i.i.i.i.i.i.i
  %.062.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bag, %.lr.ph63.i.i.i.i.i.i.i.i.i ], [ %i.bem, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.bah = load ptr, ptr %.sroa.46.0..sroa_idx.i.i367, align 8, !tbaa !1100, !nonnull !196, !align !378
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !370 ; 2 uses
  %i.baj = getelementptr i8, ptr %i.bai, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i389 = load ptr, ptr %i.baj, align 8, !tbaa !294
  %i.bak = getelementptr i8, ptr %i.bai, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i390 = load ptr, ptr %i.bak, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i391 = shl i64 %.062.i.i.i.i.i.i.i.i.i, 32
  %i.bal = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i391, 32 ; 3 uses
  %i.bam = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i389, i64 %i.bal
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !151 ; 4 uses
  %i.bao = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i390, i64 %i.bal
  %i.bap = load i32, ptr %i.bao, align 4, !tbaa !151 ; 2 uses
  %i.baq = add nsw i32 %i.bap, %i.ban             ; 3 uses
  %i.bar = icmp sgt i32 %i.bap, 0
  br i1 %i.bar, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i422:                  ; preds = %bb.lj
  %i.bas = load ptr, ptr %.sroa.57.0..sroa_idx.i.i368, align 8, !tbaa !1101, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i423 = load ptr, ptr %i.bas, align 8
  %i.bat = getelementptr i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i423, i64 8
  %.val.val.i.i.i.i.i.i.i.i.i.i.i424 = load ptr, ptr %i.bat, align 8, !tbaa !296 ; 5 uses
  %i.bau = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 16
  %i.bav = load ptr, ptr %i.bau, align 8, !tbaa !307 ; 3 uses
  %i.baw = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 58
  %i.bax = load i8, ptr %i.baw, align 2, !tbaa !308, !range !205, !noundef !196
  %i.bay = trunc nuw i8 %i.bax to i1
  %i.baz = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 8
  %i.bba = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 64
  br i1 %i.bay, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422
  %i.bbb = sext i32 %i.ban to i64
  %i.bbc = sext i32 %i.baq to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bbb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.us.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbd = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i
  %i.bbe = load float, ptr %i.bbd, align 4, !tbaa !840
  %i.bbf = fpext float %i.bbe to double
  %i.bbg = fadd double %.023.us.i.i.i.i.i.i.i.i.i.i.i, %i.bbf ; 2 uses
  %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbh = icmp slt i64 %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %i.bbc
  br i1 %i.bbh, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !118

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422
  %i.bbi = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 59
  %i.bbj = load i8, ptr %i.bbi, align 1, !tbaa !309, !range !205, !noundef !196
  %i.bbk = trunc nuw i8 %i.bbj to i1
  br i1 %i.bbk, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bbl = load i32, ptr %i.bba, align 8, !tbaa !311
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bbm
  %i.bbo = load float, ptr %i.bbn, align 4, !tbaa !840
  %i.bbp = fpext float %i.bbo to double
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.04.us5.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ban, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbr, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %.023.us6.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbq = fadd double %.023.us6.i.i.i.i.i.i.i.i.i.i.i, %i.bbp ; 2 uses
  %i.bbr = add nsw i32 %.04.us5.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbs = icmp slt i32 %i.bbr, %i.baq
  br i1 %i.bbs, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !118

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bbt = load ptr, ptr %i.baz, align 8, !tbaa !310
  %i.bbu = sext i32 %i.ban to i64
  %i.bbv = sext i32 %i.baq to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425 = phi i64 [ %i.bbu, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i.i.i.i.i.i426 = phi double [ 0.000000e+00, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bcc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbw = getelementptr inbounds [4 x i8], ptr %i.bbt, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425
  %i.bbx = load i32, ptr %i.bbw, align 4, !tbaa !151
  %i.bby = sext i32 %i.bbx to i64
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.bav, i64 %i.bby
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !840
  %i.bcb = fpext float %i.bca to double
  %i.bcc = fadd double %.023.i.i.i.i.i.i.i.i.i.i.i426, %i.bcb ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425, 1 ; 2 uses
  %i.bcd = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427, %i.bbv
  br i1 %i.bcd, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !118

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %bb.lj
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i392 = phi double [ 0.000000e+00, %bb.lj ], [ %i.bbg, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbq, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bcc, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bce = load ptr, ptr %.sroa.7.0..sroa_idx.i.i370, align 8, !tbaa !1102, !nonnull !196, !align !378
  %i.bcf = load ptr, ptr %i.bce, align 8, !tbaa !859 ; 5 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bcf, i64 144 ; 2 uses
  %i.bch = load ptr, ptr %i.bcg, align 8, !tbaa !875 ; 2 uses
  %i.bci = icmp eq ptr %i.bch, null
  br i1 %i.bci, label %bb.lk, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i393

bb.lk:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIfdLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.bcj = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bcf)
          to label %.noexc.i.i.i.i.i.i.i.i.i420 unwind label %bb.ln ; 0 uses
end_hunk_22
begin_hunk_23_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1133:                                       ; preds = %bb.bm, %bb.bn
  %indvars.iv.i.i.i.i.i.i1132 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i, %bb.bn ], [ 0, %bb.bm ] ; 2 uses
  %i.lx = lshr exact i64 %indvars.iv.i.i.i.i.i.i1132, 3
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.lx
  %i.lz = load i64, ptr %i.ly, align 8, !tbaa !227
  %i.ma = icmp eq i64 %i.lz, -1
  br i1 %i.ma, label %bb.bn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i:                        ; preds = %bb.bn, %bb.bm
  %.not38.i.i.i.i.i.i.i.i = icmp eq i32 %i.lq, %i.lv
  br i1 %.not38.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i
  %i.mb = lshr i32 %i.lq, 6
  %i.mc = and i32 %i.lq, 63
  %i.md = zext nneg i32 %i.mc to i64
  %notmask.i40.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.md
  %i.me = zext nneg i32 %i.mb to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %i.me
  %i.mg = load i64, ptr %i.mf, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i = or i64 %i.mg, %notmask.i40.i.i.i.i.i.i.i.i
  %i.mh = icmp eq i64 %.demorgan.i.i.i.i.i.i, -1
  %i.mi = zext i1 %i.mh to i16
  %i.mj = or disjoint i16 %i.mi, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i: ; preds = %.lr.ph1133, %bb.bo, %.critedge.i.i.i.i.i.i.i.i, %bb.bl, %bb.bk, %bb.bj
  %.sroa.0.0.insert.ext.i.i.i.i.i.i = phi i16 [ 256, %bb.bk ], [ 256, %bb.bj ], [ 257, %bb.bl ], [ 257, %.critedge.i.i.i.i.i.i.i.i ], [ %i.mj, %bb.bo ], [ 256, %.lr.ph1133 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i, ptr %i.li, align 4
  %i.mk = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i
  %.0.in.i.i.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i ], [ %i.mk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i ]
  %.0.i.i.i.i.i.i = trunc nuw i8 %.0.in.i.i.i.i.i.i to i1
  br i1 %.0.i.i.i.i.i.i, label %bb.bp, label %bb.cg

bb.bp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !266 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !261 ; 2 uses
  %i.mp = icmp slt i32 %i.mo, %i.mm
  br i1 %i.mp, label %.lr.ph.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bp, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i
  %.031.i.i.i.i.i = phi i32 [ %i.nw, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i ], [ %i.mo, %bb.bp ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEvS9_SC_PKSD_SL_OT0_OT1_ENKUlT_E_clIiEEDaSU_(ptr noundef nonnull align 8 dereferenceable(40) %47, i32 noundef %.031.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %bb.bq

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.mq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.mr = extractvalue { ptr, i32 } %i.mq, 0      ; 2 uses
  %i.ms = extractvalue { ptr, i32 } %i.mq, 1      ; 2 uses
  %i.mt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.mu = icmp eq i32 %i.ms, %i.mt
  br i1 %i.mu, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.mv = call ptr @__cxa_begin_catch(ptr %i.mr) #42
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !399 ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 144
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !157 ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 152
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !158
  %i.nc = icmp eq i64 %i.nb, 4
  br i1 %i.nc, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, label %.loopexit.i.i.i.i.i

.lr.ph.i.i.i.i.preheader.i.i.i.i.i:               ; preds = %bb.br
  %i.nd = load i8, ptr %i.mz, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.nd, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i = icmp eq i8 %i.nf, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.1.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i = icmp eq i8 %i.nh, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.2.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 3
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i = icmp eq i8 %i.nj, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i, label %tailrecurse.i.i.i.i.3.i.i.i.i.i, label %.loopexit.i.i.i.i.i

tailrecurse.i.i.i.i.3.i.i.i.i.i:                  ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %45) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.031.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.bz unwind label %bb.cb

.loopexit.i.i.i.i.i:                              ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i, %tailrecurse.i.i.i.i.1.i.i.i.i.i, %tailrecurse.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i, %bb.br
  invoke void @__cxa_rethrow() #44
          to label %bb.cf unwind label %bb.by

bb.bs:                                            ; preds = %bb.bq
  %i.nk = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.nl = icmp eq i32 %i.ms, %i.nk
  br i1 %i.nl, label %bb.bt, label %.body117

bb.bt:                                            ; preds = %bb.bs
  %i.nm = call ptr @__cxa_begin_catch(ptr %i.mr) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %44) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.031.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.nn = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i.i.i.i.i.i = icmp eq ptr %i.nn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i: ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.bw:                                            ; preds = %bb.bt
  %i.no = landingpad { ptr, i32 }
          cleanup
  %i.np = load ptr, ptr %44, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.np, null
  br i1 %.not.i4.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %44) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i: ; preds = %bb.bx, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #42
  invoke void @__cxa_end_catch()
          to label %.body117 unwind label %bb.ce

bb.by:                                            ; preds = %.loopexit.i.i.i.i.i
  %i.nq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bz:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.nr = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i = icmp eq ptr %i.nr, null
  br i1 %.not.i6.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i: ; preds = %bb.ca, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i

bb.cb:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i
  %i.ns = landingpad { ptr, i32 }
          cleanup
  %i.nt = load ptr, ptr %45, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i = icmp eq ptr %i.nt, null
  br i1 %.not.i8.i.i.i.i.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %45) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i: ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #42
  br label %bb.cd

bb.cd:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i, %bb.by
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ns, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i ], [ %i.nq, %bb.by ]
  invoke void @__cxa_end_catch()
          to label %.body117 unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i
  %i.nu = landingpad { ptr, i32 }
          catch ptr null
  %i.nv = extractvalue { ptr, i32 } %i.nu, 0
  call void @__clang_call_terminate(ptr %i.nv) #41
  unreachable

bb.cf:                                            ; preds = %.loopexit.i.i.i.i.i
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clIiEEDaSV_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.nw = add i32 %.031.i.i.i.i.i, 1              ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i32 %i.nw, %i.mm
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !4107

bb.cg:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i
  %i.nx = load ptr, ptr %1, align 8, !tbaa !264   ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !261 ; 6 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %43)
  store ptr %47, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 24
  store ptr %46, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i, align 8
  store i8 1, ptr %43, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr %i.nx, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i, align 8
  %.not.i.i.i.i.i.i.i.i = icmp slt i32 %i.nz, %i.ob
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ch, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.oc = add i32 %i.nz, 63                       ; 2 uses
  %i.od = srem i32 %i.oc, 64
  %i.oe = sub nsw i32 %i.oc, %i.od                ; 6 uses
  %i.of = and i32 %i.ob, -64                      ; 4 uses
  %i.og = icmp slt i32 %i.of, %i.oe
  br i1 %i.og, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.oh = and i32 %i.ob, 63
  %i.oi = zext nneg i32 %i.oh to i64
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.oi
  %i.oj = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.ok = sub nsw i32 %i.oe, %i.nz                ; 2 uses
  %i.ol = zext nneg i32 %i.ok to i64
  %notmask.i.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ol
  %i.om = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i, -1
  %i.on = sub nsw i32 64, %i.ok
  %i.oo = zext nneg i32 %i.on to i64
  %i.op = shl i64 %i.om, %i.oo
  %i.oq = and i64 %i.op, %i.oj
  br label %.invoke981

bb.cj:                                            ; preds = %bb.ch
  %.not32.i.i.i.i.i.i.i.i = icmp eq i32 %i.nz, %i.oe
  br i1 %.not32.i.i.i.i.i.i.i.i, label %.noexc121, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.or = sdiv i32 %i.nz, 64
  %i.os = sub nsw i32 %i.oe, %i.nz                ; 2 uses
  %i.ot = zext nneg i32 %i.os to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.ot
  %i.ou = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i, -1
  %i.ov = sub nsw i32 64, %i.os
  %i.ow = zext nneg i32 %i.ov to i64
  %i.ox = shl i64 %i.ou, %i.ow
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %43, i32 noundef %i.or, i64 noundef %i.ox)
          to label %.noexc121 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc121:                                        ; preds = %bb.ck, %bb.cj
  %i.oy = add nsw i32 %i.oe, 64                   ; 2 uses
  %.not3354.i.i.i.i.i.i.i.i = icmp sgt i32 %i.oy, %i.of
  br i1 %.not3354.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc121
  %.not34.i.i.i.i.i.i.i.i = icmp eq i32 %i.ob, %i.of
  br i1 %.not34.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iiSX_.exit.i.i.i.i.i, label %bb.ec

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc121, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.oz = phi i32 [ %i.xm, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.oy, %.noexc121 ] ; 2 uses
  %.055.i.i.i.i.i.i.i.i = phi i32 [ %i.oz, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.oe, %.noexc121 ] ; 2 uses
  %i.pa = sdiv i32 %.055.i.i.i.i.i.i.i.i, 64      ; 3 uses
  %i.pb = sext i32 %i.pa to i64
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.nx, i64 %i.pb
  %i.pd = load i64, ptr %i.pc, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.pd, label %.lr.ph.i.i.i.i10.i.i.i.i.i [
    i64 -1, label %bb.cl
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pe = shl nsw i32 %i.pa, 6
  br label %bb.dh

bb.cl:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.pf = shl nsw i32 %i.pa, 6                    ; 2 uses
  %i.pg = add i32 %i.pf, 64
  %i.ph = sext i32 %i.pg to i64
  %.0.off.i.i.i.i.i.i.i.i = add i32 %.055.i.i.i.i.i.i.i.i, 127
  %.not62.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i, 64
  br i1 %.not62.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SL_SO_EUliE0_EEvSE_SF_PKSG_SO_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISY_EEvSE_SX_EUlSX_E_EEvSE_SX_ST_EUlSX_E_EEvSJ_iibSX_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph61.i.i.i.i.i.i.i.i.i

.lr.ph61.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cl
  %i.pi = sext i32 %i.pf to i64
  br label %bb.cm

bb.cm:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph61.i.i.i.i.i.i.i.i.i
  %.060.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pi, %.lr.ph61.i.i.i.i.i.i.i.i.i ], [ %i.ti, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i ] ; 8 uses
  %i.pj = load ptr, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !tbaa !1105, !nonnull !196, !align !378
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !370 ; 2 uses
  %i.pl = load ptr, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !tbaa !1106, !nonnull !196, !align !378
  %i.pm = getelementptr i8, ptr %i.pk, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pm, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pl, align 8
  %sext.i.i.i.i.i.i.i.i.i.i = shl i64 %.060.i.i.i.i.i.i.i.i.i, 32
  %i.pn = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i, 32 ; 3 uses
  %i.po = getelementptr inbounds [4 x i8], ptr %.val4.i.i.i.i.i.i.i.i.i.i, i64 %i.pn
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !151 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i = icmp sgt i32 %i.pp, 0
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cm
  %i.pq = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !1107, !nonnull !196, !align !378
  %.val6.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pq, align 8
  %i.pr = getelementptr i8, ptr %i.pk, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.pr, align 8, !tbaa !294
  %i.ps = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i, i64 %i.pn
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !151 ; 2 uses
  %i.pu = add nsw i32 %i.pt, %i.pp
  %.val.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val6.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !363
  %i.pv = sext i32 %i.pt to i64
  %i.pw = sext i32 %i.pu to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.pv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %bb.co ] ; 4 uses
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.qg, %bb.co ]
  %i.px = lshr i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 6
  %i.py = and i64 %i.px, 67108863
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i, i64 %i.py
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !227
  %i.qb = and i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 63
  %i.qc = shl nuw i64 1, %i.qb
  %i.qd = and i64 %i.qa, %i.qc
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.qd, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.val18.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val5.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !895
  %i.qe = getelementptr inbounds [8 x i8], ptr %.val18.val.i.i.i.i.i.i.i.i.i.i.i, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.qf = load double, ptr %i.qe, align 8, !tbaa !842
  %i.qg = fadd double %.05.i.i.i.i.i.i.i.i.i.i.i, %i.qf ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %i.pw
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.cn, label %.loopexit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !119

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cn
  %i.qh = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1108, !nonnull !196, !align !378
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !859 ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 56
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.qi, i32 noundef %i.qk, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.cr

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1ERZNKS4_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SI_SL_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 32
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !390 ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 44
  %i.qo = load i8, ptr %i.qn, align 4, !tbaa !395
  %i.qp = and i8 %i.qo, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.qp, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i, label %.invoke.i.i.i.i.i.i.i.i.i, !prof !228

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !396
  %i.qs = lshr i64 %.060.i.i.i.i.i.i.i.i.i, 3
  %i.qt = and i64 %i.qs, 536870911
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.qt ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !150
  %i.qw = and i64 %.060.i.i.i.i.i.i.i.i.i, 7
  %i.qx = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.qw
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !150
  %i.qz = and i8 %i.qy, %i.qv
  store i8 %i.qz, ptr %i.qu, align 1, !tbaa !150
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_9applyFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorEPKmPKdPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SJ_SM_EUliE0_EEvSC_SD_PKSE_SM_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISW_EEvSC_SV_EUlSV_E_EEvSC_SV_SR_ENKUlSV_E_clImEEDaSV_.exit.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.co, %bb.cm
  %.1.i.ph.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.cm ], [ %i.qg, %bb.co ]
  %i.ra = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !1108, !nonnull !196, !align !378
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !859 ; 5 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 144 ; 2 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !875 ; 2 uses
  %i.re = icmp eq ptr %i.rd, null
  br i1 %i.re, label %bb.cp, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

bb.cp:                                            ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.rf = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.rb)
          to label %.noexc20.i.i.i.i.i.i.i.i.i unwind label %bb.cr ; 0 uses

.noexc20.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.cp
  %.pre.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.rc, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc20.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %i.rg = phi ptr [ %i.rd, %.loopexit.i.i.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i, %.noexc20.i.i.i.i.i.i.i.i.i ]
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.rg, i64 %i.pn
  store double %.1.i.ph.i.i.i.i.i.i.i.i.i.i, ptr %i.rh, align 8, !tbaa !842
end_hunk_23
begin_hunk_24_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph1127:                                       ; preds = %bb.ho, %bb.hp
  %indvars.iv.i.i.i.i.i.i3491126 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i355, %bb.hp ], [ 0, %bb.ho ] ; 2 uses
  %i.alg = lshr exact i64 %indvars.iv.i.i.i.i.i.i3491126, 3
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ald, i64 %i.alg
  %i.ali = load i64, ptr %i.alh, align 8, !tbaa !227
  %i.alj = icmp eq i64 %i.ali, -1
  br i1 %i.alj, label %bb.hp, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i351:                     ; preds = %bb.hp, %bb.ho
  %.not38.i.i.i.i.i.i.i.i352 = icmp eq i32 %i.akz, %i.ale
  br i1 %.not38.i.i.i.i.i.i.i.i352, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, label %bb.hq

bb.hq:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i351
  %i.alk = lshr i32 %i.akz, 6
  %i.all = and i32 %i.akz, 63
  %i.alm = zext nneg i32 %i.all to i64
  %notmask.i40.i.i.i.i.i.i.i.i353 = shl nsw i64 -1, %i.alm
  %i.aln = zext nneg i32 %i.alk to i64
  %i.alo = getelementptr inbounds nuw [8 x i8], ptr %i.ald, i64 %i.aln
  %i.alp = load i64, ptr %i.alo, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i354 = or i64 %i.alp, %notmask.i40.i.i.i.i.i.i.i.i353
  %i.alq = icmp eq i64 %.demorgan.i.i.i.i.i.i354, -1
  %i.alr = zext i1 %i.alq to i16
  %i.als = or disjoint i16 %i.alr, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234: ; preds = %.lr.ph1127, %bb.hq, %.critedge.i.i.i.i.i.i.i.i351, %bb.hn, %bb.hm, %bb.hl
  %.sroa.0.0.insert.ext.i.i.i.i.i.i235 = phi i16 [ 256, %bb.hm ], [ 256, %bb.hl ], [ 257, %bb.hn ], [ 257, %.critedge.i.i.i.i.i.i.i.i351 ], [ %i.als, %bb.hq ], [ 256, %.lr.ph1127 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i235, ptr %i.akr, align 4
  %i.alt = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i235 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i356
  %.0.in.i.i.i.i.i.i237 = phi i8 [ %.0.in.pre.i.i.i.i.i.i357, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i356 ], [ %i.alt, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i234 ]
  %.0.i.i.i.i.i.i238 = trunc nuw i8 %.0.in.i.i.i.i.i.i237 to i1
  br i1 %.0.i.i.i.i.i.i238, label %bb.hr, label %bb.ii

bb.hr:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236
  %i.alu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.alv = load i32, ptr %i.alu, align 8, !tbaa !266 ; 2 uses
  %i.alw = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !261 ; 2 uses
  %i.aly = icmp slt i32 %i.alx, %i.alv
  br i1 %i.aly, label %.lr.ph.i.i.i.i.i327, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i327:                              ; preds = %bb.hr, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i32 [ %i.anf, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.alx, %bb.hr ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %25, i32 noundef %.029.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.hs

bb.hs:                                            ; preds = %.lr.ph.i.i.i.i.i327
  %i.alz = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.ama = extractvalue { ptr, i32 } %i.alz, 0    ; 2 uses
  %i.amb = extractvalue { ptr, i32 } %i.alz, 1    ; 2 uses
  %i.amc = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.amd = icmp eq i32 %i.amb, %i.amc
  br i1 %i.amd, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ame = call ptr @__cxa_begin_catch(ptr %i.ama) #42
  %i.amf = getelementptr inbounds nuw i8, ptr %i.ame, i64 8
  %i.amg = load ptr, ptr %i.amf, align 8, !tbaa !399 ; 2 uses
  %i.amh = getelementptr inbounds nuw i8, ptr %i.amg, i64 144
  %i.ami = load ptr, ptr %i.amh, align 8, !tbaa !157 ; 4 uses
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amg, i64 152
  %i.amk = load i64, ptr %i.amj, align 8, !tbaa !158
  %i.aml = icmp eq i64 %i.amk, 4
  br i1 %i.aml, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335, label %.loopexit.i.i.i.i.i333

.lr.ph.i.i.i.i.preheader.i.i.i.i.i335:            ; preds = %bb.ht
  %i.amm = load i8, ptr %i.ami, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i336 = icmp eq i8 %i.amm, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i336, label %tailrecurse.i.i.i.i.i.i.i.i.i337, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.i.i.i.i.i337:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335
  %i.amn = getelementptr inbounds nuw i8, ptr %i.ami, i64 1
  %i.amo = load i8, ptr %i.amn, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i338 = icmp eq i8 %i.amo, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i338, label %tailrecurse.i.i.i.i.1.i.i.i.i.i339, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.1.i.i.i.i.i339:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i337
  %i.amp = getelementptr inbounds nuw i8, ptr %i.ami, i64 2
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i340 = icmp eq i8 %i.amq, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i340, label %tailrecurse.i.i.i.i.2.i.i.i.i.i341, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.2.i.i.i.i.i341:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i339
  %i.amr = getelementptr inbounds nuw i8, ptr %i.ami, i64 3
  %i.ams = load i8, ptr %i.amr, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i342 = icmp eq i8 %i.ams, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i342, label %tailrecurse.i.i.i.i.3.i.i.i.i.i343, label %.loopexit.i.i.i.i.i333

tailrecurse.i.i.i.i.3.i.i.i.i.i343:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i341
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %23) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ib unwind label %bb.id

.loopexit.i.i.i.i.i333:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i341, %tailrecurse.i.i.i.i.1.i.i.i.i.i339, %tailrecurse.i.i.i.i.i.i.i.i.i337, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i335, %bb.ht
  invoke void @__cxa_rethrow() #44
          to label %bb.ih unwind label %bb.ia

bb.hu:                                            ; preds = %bb.hs
  %i.amt = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.amu = icmp eq i32 %i.amb, %i.amt
  br i1 %i.amu, label %bb.hv, label %.body358

bb.hv:                                            ; preds = %bb.hu
  %i.amv = call ptr @__cxa_begin_catch(ptr %i.ama) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %22) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.029.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.hw unwind label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.amw = load ptr, ptr %22, align 8, !tbaa !313
  %.not.i.i.i.i.i.i330 = icmp eq ptr %i.amw, null
  br i1 %.not.i.i.i.i.i.i330, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331: ; preds = %bb.hx, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.hy:                                            ; preds = %bb.hv
  %i.amx = landingpad { ptr, i32 }
          cleanup
  %i.amy = load ptr, ptr %22, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i328 = icmp eq ptr %i.amy, null
  br i1 %.not.i4.i.i.i.i.i328, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %22) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329: ; preds = %bb.hz, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #42
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.ig

bb.ia:                                            ; preds = %.loopexit.i.i.i.i.i333
  %i.amz = landingpad { ptr, i32 }
          cleanup
  br label %bb.if

bb.ib:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i343
  %i.ana = load ptr, ptr %23, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i346 = icmp eq ptr %i.ana, null
  br i1 %.not.i6.i.i.i.i.i346, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347: ; preds = %bb.ic, %bb.ib
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.id:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i343
  %i.anb = landingpad { ptr, i32 }
          cleanup
  %i.anc = load ptr, ptr %23, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i344 = icmp eq ptr %i.anc, null
  br i1 %.not.i8.i.i.i.i.i344, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345: ; preds = %bb.ie, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #42
  br label %bb.if

bb.if:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345, %bb.ia
  %.pn.i.i.i.i.i.i334 = phi { ptr, i32 } [ %i.anb, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i345 ], [ %i.amz, %bb.ia ]
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.ig

bb.ig:                                            ; preds = %bb.if, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i329
  %i.and = landingpad { ptr, i32 }
          catch ptr null
  %i.ane = extractvalue { ptr, i32 } %i.and, 0
  call void @__clang_call_terminate(ptr %i.ane) #41
  unreachable

bb.ih:                                            ; preds = %.loopexit.i.i.i.i.i333
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i347, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i331
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i327
  %i.anf = add i32 %.029.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i332 = icmp eq i32 %i.anf, %i.alv
  br i1 %exitcond.not.i.i.i.i.i332, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i327, !llvm.loop !4115

bb.ii:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i236
  %i.ang = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.anh = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !261 ; 6 uses
  %i.anj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ank = load i32, ptr %i.anj, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i239 = getelementptr inbounds nuw i8, ptr %21, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store ptr %25, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i239, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i240 = getelementptr inbounds nuw i8, ptr %21, i64 24
  store ptr %24, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i240, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i241 = getelementptr inbounds nuw i8, ptr %21, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i241, align 8
  store i8 1, ptr %21, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i242 = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.ang, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i242, align 8
  %.not.i.i.i.i.i.i.i.i243 = icmp slt i32 %i.ani, %i.ank
  br i1 %.not.i.i.i.i.i.i.i.i243, label %bb.ij, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.ij:                                            ; preds = %bb.ii
  %i.anl = add i32 %i.ani, 63                     ; 2 uses
  %i.anm = srem i32 %i.anl, 64
  %i.ann = sub nsw i32 %i.anl, %i.anm             ; 6 uses
  %i.ano = and i32 %i.ank, -64                    ; 4 uses
  %i.anp = icmp slt i32 %i.ano, %i.ann
  br i1 %i.anp, label %bb.ik, label %bb.il

bb.ik:                                            ; preds = %bb.ij
  %i.anq = and i32 %i.ank, 63
  %i.anr = zext nneg i32 %i.anq to i64
  %notmask.i.i.i.i.i.i.i.i.i325 = shl nsw i64 -1, %i.anr
  %i.ans = xor i64 %notmask.i.i.i.i.i.i.i.i.i325, -1
  %i.ant = sub nsw i32 %i.ann, %i.ani             ; 2 uses
  %i.anu = zext nneg i32 %i.ant to i64
  %notmask.i.i.i.i.i.i.i.i.i.i326 = shl nsw i64 -1, %i.anu
  %i.anv = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i326, -1
  %i.anw = sub nsw i32 64, %i.ant
  %i.anx = zext nneg i32 %i.anw to i64
  %i.any = shl i64 %i.anv, %i.anx
  %i.anz = and i64 %i.any, %i.ans
  br label %.invoke983

bb.il:                                            ; preds = %bb.ij
  %.not32.i.i.i.i.i.i.i.i244 = icmp eq i32 %i.ani, %i.ann
  br i1 %.not32.i.i.i.i.i.i.i.i244, label %.noexc362, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.aoa = sdiv i32 %i.ani, 64
  %i.aob = sub nsw i32 %i.ann, %i.ani             ; 2 uses
  %i.aoc = zext nneg i32 %i.aob to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i245 = shl nsw i64 -1, %i.aoc
  %i.aod = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i245, -1
  %i.aoe = sub nsw i32 64, %i.aob
  %i.aof = zext nneg i32 %i.aoe to i64
  %i.aog = shl i64 %i.aod, %i.aof
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %21, i32 noundef %i.aoa, i64 noundef %i.aog)
          to label %.noexc362 unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc362:                                        ; preds = %bb.im, %bb.il
  %i.aoh = add nsw i32 %i.ann, 64                 ; 2 uses
  %.not3351.i.i.i.i.i.i.i.i = icmp sgt i32 %i.aoh, %i.ano
  br i1 %.not3351.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i248, label %.lr.ph.i.i.i.i.i.i.i.i246

._crit_edge.i.i.i.i.i.i.i.i248:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc362
  %.not34.i.i.i.i.i.i.i.i249 = icmp eq i32 %i.ank, %i.ano
  br i1 %.not34.i.i.i.i.i.i.i.i249, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.ke

.lr.ph.i.i.i.i.i.i.i.i246:                        ; preds = %.noexc362, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.aoi = phi i32 [ %i.avo, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.aoh, %.noexc362 ] ; 2 uses
  %.052.i.i.i.i.i.i.i.i = phi i32 [ %i.aoi, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.ann, %.noexc362 ] ; 2 uses
  %i.aoj = sdiv i32 %.052.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.aok = sext i32 %i.aoj to i64
  %i.aol = getelementptr inbounds [8 x i8], ptr %i.ang, i64 %i.aok
  %i.aom = load i64, ptr %i.aol, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.aom, label %.lr.ph.i.i.i.i10.i.i.i.i.i291 [
    i64 -1, label %bb.in
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i291:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i246
  %i.aon = shl nsw i32 %i.aoj, 6
  br label %bb.jj

bb.in:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i246
  %i.aoo = shl nsw i32 %i.aoj, 6                  ; 2 uses
  %i.aop = add i32 %i.aoo, 64
  %i.aoq = sext i32 %i.aop to i64
  %.0.off.i.i.i.i.i.i.i.i251 = add i32 %.052.i.i.i.i.i.i.i.i, 127
  %.not62.i.i.i.i.i.i.i.i.i252 = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i251, 64
  br i1 %.not62.i.i.i.i.i.i.i.i.i252, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS9_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb1EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph61.i.i.i.i.i.i.i.i.i253

.lr.ph61.i.i.i.i.i.i.i.i.i253:                    ; preds = %bb.in
  %i.aor = sext i32 %i.aoo to i64
  br label %bb.io

bb.io:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph61.i.i.i.i.i.i.i.i.i253
  %.059.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aor, %.lr.ph61.i.i.i.i.i.i.i.i.i253 ], [ %i.asa, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS7_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb1EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #42
  %i.aos = trunc i64 %.059.i.i.i.i.i.i.i.i.i to i32 ; 3 uses
  %i.aot = load ptr, ptr %.sroa.46.0..sroa_idx.i.i230, align 8, !tbaa !1114, !nonnull !196, !align !378
  %i.aou = load ptr, ptr %i.aot, align 8, !tbaa !370 ; 2 uses
  %i.aov = load ptr, ptr %.sroa.57.0..sroa_idx.i.i231, align 8, !tbaa !1115, !nonnull !196, !align !378
  %i.aow = load ptr, ptr %.sroa.6.0..sroa_idx.i.i232, align 8, !tbaa !1116, !nonnull !196, !align !378
  %i.aox = getelementptr i8, ptr %i.aou, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i254 = load ptr, ptr %i.aox, align 8, !tbaa !294
  %i.aoy = getelementptr i8, ptr %i.aou, i64 120
  %.val4.i.i.i.i.i.i.i.i.i.i255 = load ptr, ptr %i.aoy, align 8, !tbaa !295
  %.val5.i.i.i.i.i.i.i.i.i.i256 = load ptr, ptr %i.aov, align 8
  %.val6.i.i.i.i.i.i.i.i.i.i257 = load ptr, ptr %i.aow, align 8
  %i.aoz = call fastcc noundef double @_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1ERZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb(i32 noundef %i.aos, ptr %.val.i.i.i.i.i.i.i.i.i.i254, ptr %.val4.i.i.i.i.i.i.i.i.i.i255, ptr %.val5.i.i.i.i.i.i.i.i.i.i256, ptr %.val6.i.i.i.i.i.i.i.i.i.i257, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  %i.apa = load i8, ptr %i.d, align 1, !tbaa !135, !range !205, !noundef !196
  %i.apb = trunc nuw i8 %i.apa to i1
  %i.apc = load ptr, ptr %.sroa.7.0..sroa_idx.i.i233, align 8, !tbaa !1117, !nonnull !196, !align !378
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !859 ; 8 uses
  br i1 %i.apb, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  %i.apf = load i32, ptr %i.ape, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.apd, i32 noundef %i.apf, i1 noundef zeroext true)
          to label %.noexc.i.i.i.i.i.i.i.i.i288 unwind label %bb.it

.noexc.i.i.i.i.i.i.i.i.i288:                      ; preds = %bb.ip
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apd, i64 32
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !390 ; 2 uses
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 44
  %i.apj = load i8, ptr %i.api, align 4, !tbaa !395
  %i.apk = and i8 %i.apj, 2
  %.not.i3.i.i.i.i.i.i.i.i.i.i.i289 = icmp eq i8 %i.apk, 0
  br i1 %.not.i3.i.i.i.i.i.i.i.i.i.i.i289, label %_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i290, label %.invoke.i.i.i.i.i.i.i.i.i283, !prof !228

_ZN8facebook5velox10FlatVectorIdE7setNullEib.exit.i.i.i.i.i.i.i.i.i.i290: ; preds = %.noexc.i.i.i.i.i.i.i.i.i288
  %i.apl = getelementptr inbounds nuw i8, ptr %i.aph, i64 16
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !396
  %i.apn = lshr i64 %.059.i.i.i.i.i.i.i.i.i, 3
  %i.apo = and i64 %i.apn, 536870911
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 %i.apo ; 2 uses
  %i.apq = load i8, ptr %i.app, align 1, !tbaa !150
  %i.apr = and i64 %.059.i.i.i.i.i.i.i.i.i, 7
  %i.aps = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.apr
  %i.apt = load i8, ptr %i.aps, align 1, !tbaa !150
  %i.apu = and i8 %i.apt, %i.apq
  store i8 %i.apu, ptr %i.app, align 1, !tbaa !150
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i

bb.iq:                                            ; preds = %bb.io
  %i.apv = getelementptr inbounds nuw i8, ptr %i.apd, i64 144 ; 2 uses
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !875 ; 2 uses
  %i.apx = icmp eq ptr %i.apw, null
  br i1 %i.apx, label %bb.ir, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258

bb.ir:                                            ; preds = %bb.iq
  %i.apy = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.apd)
          to label %.noexc20.i.i.i.i.i.i.i.i.i286 unwind label %bb.it ; 0 uses

.noexc20.i.i.i.i.i.i.i.i.i286:                    ; preds = %bb.ir
  %.pre.i.i.i.i.i.i.i.i.i.i.i287 = load ptr, ptr %i.apv, align 8, !tbaa !875
  br label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258

_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258: ; preds = %.noexc20.i.i.i.i.i.i.i.i.i286, %bb.iq
  %i.apz = phi ptr [ %i.apw, %bb.iq ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i287, %.noexc20.i.i.i.i.i.i.i.i.i286 ]
  %sext.i.i.i.i.i.i.i.i.i.i259 = shl i64 %.059.i.i.i.i.i.i.i.i.i, 32
  %i.aqa = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i259, 29
  %i.aqb = getelementptr inbounds i8, ptr %i.apz, i64 %i.aqa
  store double %i.aoz, ptr %i.aqb, align 8, !tbaa !842
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apd, i64 32 ; 2 uses
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !390
  %.not.i.i.i.i.i.i.i.i.i.i.i260 = icmp eq ptr %i.aqd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i260, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb1EZNKS4_12applyNonFlatILb1EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb1EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clImEEDaSS_.exit.i.i.i.i.i.i.i.i.i, label %bb.is

bb.is:                                            ; preds = %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i258
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apd, i64 56
  %i.aqf = load i32, ptr %i.aqe, align 8, !tbaa !262
  invoke void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(200) %i.apd, i32 noundef %i.aqf, i1 noundef zeroext true)
          to label %.noexc21.i.i.i.i.i.i.i.i.i282 unwind label %bb.it

.noexc21.i.i.i.i.i.i.i.i.i282:                    ; preds = %bb.is
  %i.aqg = load ptr, ptr %i.aqc, align 8, !tbaa !390 ; 2 uses
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 44
  %i.aqi = load i8, ptr %i.aqh, align 4, !tbaa !395
  %i.aqj = and i8 %i.aqi, 2
  %.not.i3.i7.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aqj, 0
  br i1 %.not.i3.i7.i.i.i.i.i.i.i.i.i.i, label %_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i285, label %.invoke.i.i.i.i.i.i.i.i.i283, !prof !228

.invoke.i.i.i.i.i.i.i.i.i283:                     ; preds = %.noexc21.i.i.i.i.i.i.i.i.i282, %.noexc.i.i.i.i.i.i.i.i.i288
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #44
          to label %.cont.i.i.i.i.i.i.i.i.i284 unwind label %bb.it

.cont.i.i.i.i.i.i.i.i.i284:                       ; preds = %.invoke.i.i.i.i.i.i.i.i.i283
  unreachable

_ZN8facebook5velox10BaseVector7setNullEib.exit.i.i.i.i.i.i.i.i.i.i.i285: ; preds = %.noexc21.i.i.i.i.i.i.i.i.i282
  %i.aqk = getelementptr inbounds nuw i8, ptr %i.aqg, i64 16
  %i.aql = load ptr, ptr %i.aqk, align 8, !tbaa !396
  %i.aqm = lshr i64 %.059.i.i.i.i.i.i.i.i.i, 3
  %i.aqn = and i64 %i.aqm, 536870911
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aql, i64 %i.aqn ; 2 uses
end_hunk_24
begin_hunk_25_@_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a

.lr.ph:                                           ; preds = %bb.kj, %bb.kk
  %indvars.iv.i.i.i.i.i.i4751124 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i481, %bb.kk ], [ 0, %bb.kj ] ; 2 uses
  %i.awh = lshr exact i64 %indvars.iv.i.i.i.i.i.i4751124, 3
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awh
  %i.awj = load i64, ptr %i.awi, align 8, !tbaa !227
  %i.awk = icmp eq i64 %i.awj, -1
  br i1 %i.awk, label %bb.kk, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, !llvm.loop !8

.critedge.i.i.i.i.i.i.i.i477:                     ; preds = %bb.kk, %bb.kj
  %.not38.i.i.i.i.i.i.i.i478 = icmp eq i32 %i.awa, %i.awf
  br i1 %.not38.i.i.i.i.i.i.i.i478, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, label %bb.kl

bb.kl:                                            ; preds = %.critedge.i.i.i.i.i.i.i.i477
  %i.awl = lshr i32 %i.awa, 6
  %i.awm = and i32 %i.awa, 63
  %i.awn = zext nneg i32 %i.awm to i64
  %notmask.i40.i.i.i.i.i.i.i.i479 = shl nsw i64 -1, %i.awn
  %i.awo = zext nneg i32 %i.awl to i64
  %i.awp = getelementptr inbounds nuw [8 x i8], ptr %i.awe, i64 %i.awo
  %i.awq = load i64, ptr %i.awp, align 8, !tbaa !227
  %.demorgan.i.i.i.i.i.i480 = or i64 %i.awq, %notmask.i40.i.i.i.i.i.i.i.i479
  %i.awr = icmp eq i64 %.demorgan.i.i.i.i.i.i480, -1
  %i.aws = zext i1 %i.awr to i16
  %i.awt = or disjoint i16 %i.aws, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371: ; preds = %.lr.ph, %bb.kl, %.critedge.i.i.i.i.i.i.i.i477, %bb.ki, %bb.kh, %bb.kg
  %.sroa.0.0.insert.ext.i.i.i.i.i.i372 = phi i16 [ 256, %bb.kh ], [ 256, %bb.kg ], [ 257, %bb.ki ], [ 257, %.critedge.i.i.i.i.i.i.i.i477 ], [ %i.awt, %bb.kl ], [ 256, %.lr.ph ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i372, ptr %i.akr, align 4
  %i.awu = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i.i.i372 to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i482
  %.0.in.i.i.i.i.i.i374 = phi i8 [ %.0.in.pre.i.i.i.i.i.i483, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i.i.i482 ], [ %i.awu, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i.i.i371 ]
  %.0.i.i.i.i.i.i375 = trunc nuw i8 %.0.in.i.i.i.i.i.i374 to i1
  br i1 %.0.i.i.i.i.i.i375, label %bb.km, label %bb.ld

bb.km:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373
  %i.awv = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aww = load i32, ptr %i.awv, align 8, !tbaa !266 ; 2 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !261 ; 2 uses
  %i.awz = icmp slt i32 %i.awy, %i.aww
  br i1 %i.awz, label %.lr.ph.i.i.i.i.i453, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit

.lr.ph.i.i.i.i.i453:                              ; preds = %bb.km, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i
  %.039.i.i.i.i.i = phi i32 [ %i.ayg, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i ], [ %i.awy, %bb.km ] ; 4 uses
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEvS9_SC_PKSD_SJ_OT0_OT1_ENKUlT_E_clIiEEDaSS_(ptr noundef nonnull align 8 dereferenceable(40) %14, i32 noundef %.039.i.i.i.i.i)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %bb.kn

bb.kn:                                            ; preds = %.lr.ph.i.i.i.i.i453
  %i.axa = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.axb = extractvalue { ptr, i32 } %i.axa, 0    ; 2 uses
  %i.axc = extractvalue { ptr, i32 } %i.axa, 1    ; 2 uses
  %i.axd = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #42
  %i.axe = icmp eq i32 %i.axc, %i.axd
  br i1 %i.axe, label %bb.ko, label %bb.kp

bb.ko:                                            ; preds = %bb.kn
  %i.axf = call ptr @__cxa_begin_catch(ptr %i.axb) #42
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 8
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !399 ; 2 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 144
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !157 ; 4 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %i.axh, i64 152
  %i.axl = load i64, ptr %i.axk, align 8, !tbaa !158
  %i.axm = icmp eq i64 %i.axl, 4
  br i1 %i.axm, label %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461, label %.loopexit.i.i.i.i.i459

.lr.ph.i.i.i.i.preheader.i.i.i.i.i461:            ; preds = %bb.ko
  %i.axn = load i8, ptr %i.axj, align 1, !tbaa !150
  %or.cond.not.i.i.i.i.i.i.i.i462 = icmp eq i8 %i.axn, 85
  br i1 %or.cond.not.i.i.i.i.i.i.i.i462, label %tailrecurse.i.i.i.i.i.i.i.i.i463, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.i.i.i.i.i463:                 ; preds = %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axj, i64 1
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !150
  %or.cond.not.i.i.i.1.i.i.i.i.i464 = icmp eq i8 %i.axp, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i.i.i464, label %tailrecurse.i.i.i.i.1.i.i.i.i.i465, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.1.i.i.i.i.i465:               ; preds = %tailrecurse.i.i.i.i.i.i.i.i.i463
  %i.axq = getelementptr inbounds nuw i8, ptr %i.axj, i64 2
  %i.axr = load i8, ptr %i.axq, align 1, !tbaa !150
  %or.cond.not.i.i.i.2.i.i.i.i.i466 = icmp eq i8 %i.axr, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i.i.i466, label %tailrecurse.i.i.i.i.2.i.i.i.i.i467, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.2.i.i.i.i.i467:               ; preds = %tailrecurse.i.i.i.i.1.i.i.i.i.i465
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axj, i64 3
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !150
  %or.cond.not.i.i.i.3.i.i.i.i.i468 = icmp eq i8 %i.axt, 82
  br i1 %or.cond.not.i.i.i.3.i.i.i.i.i468, label %tailrecurse.i.i.i.i.3.i.i.i.i.i469, label %.loopexit.i.i.i.i.i459

tailrecurse.i.i.i.i.3.i.i.i.i.i469:               ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i467
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %12) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.kw unwind label %bb.ky

.loopexit.i.i.i.i.i459:                           ; preds = %tailrecurse.i.i.i.i.2.i.i.i.i.i467, %tailrecurse.i.i.i.i.1.i.i.i.i.i465, %tailrecurse.i.i.i.i.i.i.i.i.i463, %.lr.ph.i.i.i.i.preheader.i.i.i.i.i461, %bb.ko
  invoke void @__cxa_rethrow() #44
          to label %bb.lc unwind label %bb.kv

bb.kp:                                            ; preds = %bb.kn
  %i.axu = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #42
  %i.axv = icmp eq i32 %i.axc, %i.axu
  br i1 %i.axv, label %bb.kq, label %.body358

bb.kq:                                            ; preds = %bb.kp
  %i.axw = call ptr @__cxa_begin_catch(ptr %i.axb) #42 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #42
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %11) #42
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %4, i32 noundef %.039.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %bb.kr unwind label %bb.kt

bb.kr:                                            ; preds = %bb.kq
  %i.axx = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i.i.i.i.i.i456 = icmp eq ptr %i.axx, null
  br i1 %.not.i.i.i.i.i.i456, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457: ; preds = %bb.ks, %bb.kr
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.kt:                                            ; preds = %bb.kq
  %i.axy = landingpad { ptr, i32 }
          cleanup
  %i.axz = load ptr, ptr %11, align 8, !tbaa !313
  %.not.i4.i.i.i.i.i454 = icmp eq ptr %i.axz, null
  br i1 %.not.i4.i.i.i.i.i454, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %11) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455: ; preds = %bb.ku, %bb.kt
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #42
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.lb

bb.kv:                                            ; preds = %.loopexit.i.i.i.i.i459
  %i.aya = landingpad { ptr, i32 }
          cleanup
  br label %bb.la

bb.kw:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i469
  %i.ayb = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i6.i.i.i.i.i472 = icmp eq ptr %i.ayb, null
  br i1 %.not.i6.i.i.i.i.i472, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473: ; preds = %bb.kx, %bb.kw
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i

bb.ky:                                            ; preds = %tailrecurse.i.i.i.i.3.i.i.i.i.i469
  %i.ayc = landingpad { ptr, i32 }
          cleanup
  %i.ayd = load ptr, ptr %12, align 8, !tbaa !313
  %.not.i8.i.i.i.i.i470 = icmp eq ptr %i.ayd, null
  br i1 %.not.i8.i.i.i.i.i470, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %12) #42
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471: ; preds = %bb.kz, %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #42
  br label %bb.la

bb.la:                                            ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471, %bb.kv
  %.pn.i.i.i.i.i.i460 = phi { ptr, i32 } [ %i.ayc, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit9.i.i.i.i.i471 ], [ %i.aya, %bb.kv ]
  invoke void @__cxa_end_catch()
          to label %.body358 unwind label %bb.lb

bb.lb:                                            ; preds = %bb.la, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit5.i.i.i.i.i455
  %i.aye = landingpad { ptr, i32 }
          catch ptr null
  %i.ayf = extractvalue { ptr, i32 } %i.aye, 0
  call void @__clang_call_terminate(ptr %i.ayf) #41
  unreachable

bb.lc:                                            ; preds = %.loopexit.i.i.i.i.i459
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit7.i.i.i.i.i473, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit.i.i.i.i.i457
  invoke void @__cxa_end_catch()
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.i.i.i.i.i: ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clIiEEDaST_.exit.sink.split.i.i.i.i.i, %.lr.ph.i.i.i.i.i453
  %i.ayg = add i32 %.039.i.i.i.i.i, 1             ; 2 uses
  %exitcond.not.i.i.i.i.i458 = icmp eq i32 %i.ayg, %i.aww
  br i1 %exitcond.not.i.i.i.i.i458, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEE.exit, label %.lr.ph.i.i.i.i.i453, !llvm.loop !4119

bb.ld:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i.i.i373
  %i.ayh = load ptr, ptr %1, align 8, !tbaa !264  ; 2 uses
  %i.ayi = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !261 ; 6 uses
  %i.ayk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ayl = load i32, ptr %i.ayk, align 8, !tbaa !266 ; 6 uses
  %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i376 = getelementptr inbounds nuw i8, ptr %10, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  store ptr %14, ptr %.sroa.39.0..sroa_idx.i.i.i.i.i.i.i376, align 8
  %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i377 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %13, ptr %.sroa.5.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i377, align 8
  %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i378 = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %4, ptr %.sroa.54.0..sroa.39.0..sroa_idx.i.sroa_idx.i.i.i.i.i.i378, align 8
  store i8 1, ptr %10, align 8
  %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i379 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ayh, ptr %.sroa.28.0..sroa_idx.i.i.i.i.i.i.i379, align 8
  %.not.i.i.i.i.i.i.i.i380 = icmp slt i32 %i.ayj, %i.ayl
  br i1 %.not.i.i.i.i.i.i.i.i380, label %bb.le, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i

bb.le:                                            ; preds = %bb.ld
  %i.aym = add i32 %i.ayj, 63                     ; 2 uses
  %i.ayn = srem i32 %i.aym, 64
  %i.ayo = sub nsw i32 %i.aym, %i.ayn             ; 6 uses
  %i.ayp = and i32 %i.ayl, -64                    ; 4 uses
  %i.ayq = icmp slt i32 %i.ayp, %i.ayo
  br i1 %i.ayq, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.ayr = and i32 %i.ayl, 63
  %i.ays = zext nneg i32 %i.ayr to i64
  %notmask.i.i.i.i.i.i.i.i.i451 = shl nsw i64 -1, %i.ays
  %i.ayt = xor i64 %notmask.i.i.i.i.i.i.i.i.i451, -1
  %i.ayu = sub nsw i32 %i.ayo, %i.ayj             ; 2 uses
  %i.ayv = zext nneg i32 %i.ayu to i64
  %notmask.i.i.i.i.i.i.i.i.i.i452 = shl nsw i64 -1, %i.ayv
  %i.ayw = xor i64 %notmask.i.i.i.i.i.i.i.i.i.i452, -1
  %i.ayx = sub nsw i32 64, %i.ayu
  %i.ayy = zext nneg i32 %i.ayx to i64
  %i.ayz = shl i64 %i.ayw, %i.ayy
  %i.aza = and i64 %i.ayz, %i.ayt
  br label %.invoke982

bb.lg:                                            ; preds = %bb.le
  %.not32.i.i.i.i.i.i.i.i381 = icmp eq i32 %i.ayj, %i.ayo
  br i1 %.not32.i.i.i.i.i.i.i.i381, label %.noexc488, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.azb = sdiv i32 %i.ayj, 64
  %i.azc = sub nsw i32 %i.ayo, %i.ayj             ; 2 uses
  %i.azd = zext nneg i32 %i.azc to i64
  %notmask.i.i35.i.i.i.i.i.i.i.i382 = shl nsw i64 -1, %i.azd
  %i.aze = xor i64 %notmask.i.i35.i.i.i.i.i.i.i.i382, -1
  %i.azf = sub nsw i32 64, %i.azc
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = shl i64 %i.aze, %i.azg
  invoke fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 dereferenceable(40) %10, i32 noundef %i.azb, i64 noundef %i.azh)
          to label %.noexc488 unwind label %.loopexit.split-lp540.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc488:                                        ; preds = %bb.lh, %bb.lg
  %i.azi = add nsw i32 %i.ayo, 64                 ; 2 uses
  %.not3359.i.i.i.i.i.i.i.i = icmp sgt i32 %i.azi, %i.ayp
  br i1 %.not3359.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i385, label %.lr.ph.i.i.i.i.i.i.i.i383

._crit_edge.i.i.i.i.i.i.i.i385:                   ; preds = %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, %.noexc488
  %.not34.i.i.i.i.i.i.i.i386 = icmp eq i32 %i.ayl, %i.ayp
  br i1 %.not34.i.i.i.i.i.i.i.i386, label %_ZN8facebook5velox4bits13forEachSetBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiiSV_.exit.i.i.i.i.i, label %bb.mx

.lr.ph.i.i.i.i.i.i.i.i383:                        ; preds = %.noexc488, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  %i.azj = phi i32 [ %i.bic, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.azi, %.noexc488 ] ; 2 uses
  %.060.i.i.i.i.i.i.i.i = phi i32 [ %i.azj, %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i ], [ %i.ayo, %.noexc488 ] ; 2 uses
  %i.azk = sdiv i32 %.060.i.i.i.i.i.i.i.i, 64     ; 3 uses
  %i.azl = sext i32 %i.azk to i64
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.ayh, i64 %i.azl
  %i.azn = load i64, ptr %i.azm, align 8, !tbaa !227 ; 2 uses
  switch i64 %i.azn, label %.lr.ph.i.i.i.i10.i.i.i.i.i428 [
    i64 -1, label %bb.li
    i64 0, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i
  ]

.lr.ph.i.i.i.i10.i.i.i.i.i428:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i383
  %i.azo = shl nsw i32 %i.azk, 6
  br label %bb.md

bb.li:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i383
  %i.azp = shl nsw i32 %i.azk, 6                  ; 2 uses
  %i.azq = add i32 %i.azp, 64
  %i.azr = sext i32 %i.azq to i64
  %.0.off.i.i.i.i.i.i.i.i388 = add i32 %.060.i.i.i.i.i.i.i.i, 127
  %.not64.i.i.i.i.i.i.i.i.i = icmp ult i32 %.0.off.i.i.i.i.i.i.i.i388, 64
  br i1 %.not64.i.i.i.i.i.i.i.i.i, label %_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS9_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS4_PNS0_11ArrayVectorERNS3_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKSB_ILb0EEEvSE_SF_SH_SJ_SM_EUliE0_EEvSE_SF_PKSG_SM_OT0_OT1_EUlT_E_ZNS4_22applyToSelectedNoThrowISW_EEvSE_SV_EUlSV_E_EEvSE_SV_SR_EUlSV_E_EEvPKmiibSV_ENKUliE_clEi.exit.i.i.i.i.i.i.i.i, label %.lr.ph63.i.i.i.i.i.i.i.i.i

.lr.ph63.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.li
  %i.azs = sext i32 %i.azp to i64
  br label %bb.lj

bb.lj:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph63.i.i.i.i.i.i.i.i.i
  %.062.i.i.i.i.i.i.i.i.i = phi i64 [ %i.azs, %.lr.ph63.i.i.i.i.i.i.i.i.i ], [ %i.bdv, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0EZNKS7_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERS2_PNS0_11ArrayVectorERNS1_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_ZNKS9_ILb0EEEvSC_SD_SF_SH_SK_EUliE0_EEvSC_SD_PKSE_SK_OT0_OT1_EUlT_E_ZNS2_22applyToSelectedNoThrowISU_EEvSC_ST_EUlST_E_EEvSC_ST_SP_ENKUlST_E_clImEEDaST_.exit.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.azt = load ptr, ptr %.sroa.46.0..sroa_idx.i.i367, align 8, !tbaa !1119, !nonnull !196, !align !378
  %i.azu = load ptr, ptr %i.azt, align 8, !tbaa !370 ; 2 uses
  %i.azv = getelementptr i8, ptr %i.azu, i64 104
  %.val.i.i.i.i.i.i.i.i.i.i389 = load ptr, ptr %i.azv, align 8, !tbaa !294
  %i.azw = getelementptr i8, ptr %i.azu, i64 120
  %.val3.i.i.i.i.i.i.i.i.i.i390 = load ptr, ptr %i.azw, align 8, !tbaa !295
  %sext.i.i.i.i.i.i.i.i.i.i391 = shl i64 %.062.i.i.i.i.i.i.i.i.i, 32
  %i.azx = ashr exact i64 %sext.i.i.i.i.i.i.i.i.i.i391, 32 ; 3 uses
  %i.azy = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i.i.i.i.i389, i64 %i.azx
  %i.azz = load i32, ptr %i.azy, align 4, !tbaa !151 ; 4 uses
  %i.baa = getelementptr inbounds [4 x i8], ptr %.val3.i.i.i.i.i.i.i.i.i.i390, i64 %i.azx
  %i.bab = load i32, ptr %i.baa, align 4, !tbaa !151 ; 2 uses
  %i.bac = add nsw i32 %i.bab, %i.azz             ; 3 uses
  %i.bad = icmp sgt i32 %i.bab, 0
  br i1 %i.bad, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i422:                  ; preds = %bb.lj
  %i.bae = load ptr, ptr %.sroa.57.0..sroa_idx.i.i368, align 8, !tbaa !1120, !nonnull !196, !align !378
  %.val4.i.i.i.i.i.i.i.i.i.i423 = load ptr, ptr %i.bae, align 8
  %i.baf = getelementptr i8, ptr %.val4.i.i.i.i.i.i.i.i.i.i423, i64 8
  %.val.val.i.i.i.i.i.i.i.i.i.i.i424 = load ptr, ptr %i.baf, align 8, !tbaa !296 ; 5 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 16
  %i.bah = load ptr, ptr %i.bag, align 8, !tbaa !307 ; 3 uses
  %i.bai = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 58
  %i.baj = load i8, ptr %i.bai, align 2, !tbaa !308, !range !205, !noundef !196
  %i.bak = trunc nuw i8 %i.baj to i1
  %i.bal = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 8
  %i.bam = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 64
  br i1 %i.bak, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422
  %i.ban = sext i32 %i.azz to i64
  %i.bao = sext i32 %i.bac to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ban, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.us.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.preheader.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bar, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bap = getelementptr inbounds [8 x i8], ptr %i.bah, i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i
  %i.baq = load double, ptr %i.bap, align 8, !tbaa !842
  %i.bar = fadd double %.023.us.i.i.i.i.i.i.i.i.i.i.i, %i.baq ; 2 uses
  %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv16.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bas = icmp slt i64 %indvars.iv.next17.i.i.i.i.i.i.i.i.i.i.i, %i.bao
  br i1 %i.bas, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !121

.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i422
  %i.bat = getelementptr inbounds nuw i8, ptr %.val.val.i.i.i.i.i.i.i.i.i.i.i424, i64 59
  %i.bau = load i8, ptr %i.bat, align 1, !tbaa !309, !range !205, !noundef !196
  %i.bav = trunc nuw i8 %i.bau to i1
  br i1 %i.bav, label %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.baw = load i32, ptr %i.bam, align 8, !tbaa !311
  %i.bax = sext i32 %i.baw to i64
  %i.bay = getelementptr inbounds [8 x i8], ptr %i.bah, i64 %i.bax
  %i.baz = load double, ptr %i.bay, align 8, !tbaa !842
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i
  %.04.us5.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.azz, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbb, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %.023.us6.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.split.split.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bba, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bba = fadd double %i.baz, %.023.us6.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bbb = add nsw i32 %.04.us5.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bbc = icmp slt i32 %i.bbb, %i.bac
  br i1 %i.bbc, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !121

.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %.lr.ph.split.i.i.i.i.i.i.i.i.i.i.i
  %i.bbd = load ptr, ptr %i.bal, align 8, !tbaa !310
  %i.bbe = sext i32 %i.azz to i64
  %i.bbf = sext i32 %i.bac to i64
  br label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i

_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425 = phi i64 [ %i.bbe, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.023.i.i.i.i.i.i.i.i.i.i.i426 = phi double [ 0.000000e+00, %.lr.ph.split.split.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbg = getelementptr inbounds [4 x i8], ptr %i.bbd, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425
  %i.bbh = load i32, ptr %i.bbg, align 4, !tbaa !151
  %i.bbi = sext i32 %i.bbh to i64
  %i.bbj = getelementptr inbounds [8 x i8], ptr %i.bah, i64 %i.bbi
  %i.bbk = load double, ptr %i.bbj, align 8, !tbaa !842
  %i.bbl = fadd double %.023.i.i.i.i.i.i.i.i.i.i.i426, %i.bbk ; 2 uses
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i425, 1 ; 2 uses
  %i.bbm = icmp slt i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i427, %i.bbf
  br i1 %i.bbm, label %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !121

_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i, %bb.lj
  %.02.lcssa.i.i.i.i.i.i.i.i.i.i.i392 = phi double [ 0.000000e+00, %bb.lj ], [ %i.bar, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bba, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.us7.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bbl, %_ZZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNS9_18LocalDecodedVectorEPNS0_10FlatVectorIdEEENKUliE_clEi.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.bbn = load ptr, ptr %.sroa.7.0..sroa_idx.i.i370, align 8, !tbaa !1121, !nonnull !196, !align !378
  %i.bbo = load ptr, ptr %i.bbn, align 8, !tbaa !859 ; 5 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbo, i64 144 ; 2 uses
  %i.bbq = load ptr, ptr %i.bbp, align 8, !tbaa !875 ; 2 uses
  %i.bbr = icmp eq ptr %i.bbq, null
  br i1 %i.bbr, label %bb.lk, label %_ZN8facebook5velox10FlatVectorIdE12ensureValuesEv.exit.i.i.i.i.i.i.i.i.i.i.i393

bb.lk:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_116ArraySumFunctionIddLb1EE9applyCoreILb0ERZNKS4_12applyNonFlatILb0EEEvRKNS0_17SelectivityVectorERNS0_4exec7EvalCtxEPNS0_11ArrayVectorERNSA_18LocalDecodedVectorEPNS0_10FlatVectorIdEEEUliE_RZNKS6_ILb0EEEvS9_SC_SE_SG_SJ_EUliE0_EEdiPKSD_OT0_OT1_Rb.exit.i.i.i.i.i.i.i.i.i.i
  %i.bbs = invoke noundef ptr @_ZN8facebook5velox10FlatVectorIdE16mutableRawValuesEv(ptr noundef nonnull align 8 dereferenceable(200) %i.bbo)
          to label %.noexc.i.i.i.i.i.i.i.i.i420 unwind label %bb.ln ; 0 uses

.noexc.i.i.i.i.i.i.i.i.i420:                      ; preds = %bb.lk
  %.pre.i.i.i.i.i.i.i.i.i.i.i421 = load ptr, ptr %i.bbp, align 8, !tbaa !875
end_hunk_25
